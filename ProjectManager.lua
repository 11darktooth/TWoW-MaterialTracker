--[[
  Project and Goal Management for MaterialTracker

  This file handles creation, modification, and deletion of
  material tracking projects and their hierarchical goal trees.
]]--

local MT = MaterialTracker

-- ============================================================================
-- PROJECT ID GENERATION
-- ============================================================================

-- Generate a unique project ID
function MT:GenerateProjectID()
  -- Use timestamp + random number for uniqueness
  local timestamp = time()
  local random = math.random(1000, 9999)
  return "project_" .. timestamp .. "_" .. random
end

-- ============================================================================
-- PROJECT CREATION
-- ============================================================================

-- Create a new project (empty or with first root goal)
-- Returns: project table
function MT:CreateProject(projectName, rootItemID, rootTarget)
  local project = {
    id = MT:GenerateProjectID(),
    name = projectName,
    collapsed = false,
    createdAt = time(),
    goals = {}  -- Array of root-level goals
  }

  -- If rootItemID provided, add it as first goal
  if rootItemID and rootTarget then
    local itemName = MT:GetItemNameByID(rootItemID)
    if not itemName then
      MT:Print("Error: Invalid item ID " .. rootItemID)
      return nil
    end

    -- Set project name to item name if not provided
    if not projectName then
      project.name = itemName
    end

    local rootGoal = {
      itemID = rootItemID,
      itemName = itemName,
      current = 0,
      target = rootTarget,
      completed = false,
      children = {}
    }

    table.insert(project.goals, rootGoal)
  end

  table.insert(MaterialTrackerDB.projects, project)
  MT:Debug("Created project: " .. project.name .. " (ID: " .. project.id .. ")")

  return project
end

-- Add a root-level goal to a project
-- Returns: the new goal
function MT:AddRootGoal(project, itemID, target)
  if not itemID or not target then
    MT:Print("Error: Missing itemID or target")
    return nil
  end

  local itemName = MT:GetItemNameByID(itemID)
  if not itemName then
    MT:Print("Error: Invalid item ID " .. itemID)
    return nil
  end

  -- Check if this item already exists at root level
  for _, goal in ipairs(project.goals) do
    if goal.itemID == itemID then
      MT:Print("Warning: " .. itemName .. " already exists in this project")
      return goal
    end
  end

  local newGoal = {
    itemID = itemID,
    itemName = itemName,
    current = 0,
    target = target,
    completed = false,
    children = {}
  }

  table.insert(project.goals, newGoal)
  MT:Debug("Added root goal: " .. itemName .. " to project " .. project.name)

  return newGoal
end

-- ============================================================================
-- PROJECT MANAGEMENT
-- ============================================================================

-- Get a project by ID
function MT:GetProject(projectID)
  for _, project in ipairs(MaterialTrackerDB.projects) do
    if project.id == projectID then
      return project
    end
  end
  return nil
end

-- Get a project by index (for iteration)
function MT:GetProjectByIndex(index)
  return MaterialTrackerDB.projects[index]
end

-- Get total number of projects
function MT:GetProjectCount()
  return table.getn(MaterialTrackerDB.projects)
end

-- Delete a project by ID
function MT:DeleteProject(projectID)
  for i, project in ipairs(MaterialTrackerDB.projects) do
    if project.id == projectID then
      table.remove(MaterialTrackerDB.projects, i)
      MT:Debug("Deleted project: " .. project.name)
      return true
    end
  end
  return false
end

-- Clear all projects
function MT:ClearAllProjects()
  local count = MT:GetProjectCount()
  MaterialTrackerDB.projects = {}
  MT:Print("Cleared " .. count .. " projects")
end

-- ============================================================================
-- GOAL TREE MANIPULATION
-- ============================================================================

-- Add a child goal to a parent goal
-- Returns: the new child goal
function MT:AddChildGoal(parentGoal, childItemID, childTarget)
  if not childItemID or not childTarget then
    MT:Print("Error: Missing itemID or target")
    return nil
  end

  -- Get item name
  local itemName = MT:GetItemNameByID(childItemID)
  if not itemName then
    MT:Print("Error: Invalid item ID " .. childItemID)
    return nil
  end

  -- Check if this item already exists as a child
  for _, child in ipairs(parentGoal.children) do
    if child.itemID == childItemID then
      MT:Print("Warning: " .. itemName .. " already exists in this goal")
      return child
    end
  end

  local childGoal = {
    itemID = childItemID,
    itemName = itemName,
    current = 0,
    target = childTarget,
    completed = false,
    children = {}
  }

  table.insert(parentGoal.children, childGoal)
  MT:Debug("Added child goal: " .. itemName .. " to " .. parentGoal.itemName)

  return childGoal
end

-- Remove a child goal by itemID
function MT:RemoveChildGoal(parentGoal, childItemID)
  for i, child in ipairs(parentGoal.children) do
    if child.itemID == childItemID then
      table.remove(parentGoal.children, i)
      MT:Debug("Removed child goal: " .. child.itemName)
      return true
    end
  end
  return false
end

-- Remove a root goal from a project by itemID
function MT:RemoveRootGoal(project, goalItemID)
  for i, goal in ipairs(project.goals) do
    if goal.itemID == goalItemID then
      table.remove(project.goals, i)
      MT:Debug("Removed root goal: " .. goal.itemName .. " from project " .. project.name)
      return true
    end
  end
  return false
end

-- Remove a goal from anywhere in the project tree
function MT:RemoveGoal(project, goal, parentGoal)
  if parentGoal then
    -- Remove from parent's children
    return MT:RemoveChildGoal(parentGoal, goal.itemID)
  else
    -- Remove from project's root goals
    return MT:RemoveRootGoal(project, goal.itemID)
  end
end

-- Find parent goal of a given goal within a project
function MT:FindParentGoal(project, targetGoal)
  -- Check if it's a root goal
  for _, rootGoal in ipairs(project.goals) do
    if rootGoal == targetGoal then
      return nil  -- No parent, it's a root goal
    end
  end

  -- Search recursively for parent
  for _, rootGoal in ipairs(project.goals) do
    local parent = MT:FindParentGoalRecursive(rootGoal, targetGoal)
    if parent then return parent end
  end

  return nil
end

-- Recursive helper for finding parent goal
function MT:FindParentGoalRecursive(currentGoal, targetGoal)
  -- Check if target is a direct child
  for _, child in ipairs(currentGoal.children) do
    if child == targetGoal then
      return currentGoal
    end
  end

  -- Recursively search children's children
  for _, child in ipairs(currentGoal.children) do
    local parent = MT:FindParentGoalRecursive(child, targetGoal)
    if parent then return parent end
  end

  return nil
end

-- Find a goal by itemID within a project (recursive search)
function MT:FindGoalByItemID(project, itemID)
  if not project or not project.goals then return nil end

  -- Search through all root goals
  for _, rootGoal in ipairs(project.goals) do
    local found = MT:FindGoalByItemIDRecursive(rootGoal, itemID)
    if found then return found end
  end

  return nil
end

-- Recursive helper for finding goals
function MT:FindGoalByItemIDRecursive(goal, itemID)
  if goal.itemID == itemID then
    return goal
  end

  for _, child in ipairs(goal.children) do
    local found = MT:FindGoalByItemIDRecursive(child, itemID)
    if found then return found end
  end

  return nil
end

-- ============================================================================
-- BAG COUNT UPDATES
-- ============================================================================

-- Update all project counts based on current bag contents
function MT:UpdateAllProjectCounts()
  local bagCounts = MT:ScanBags()
  local bankCounts = {}
  local altCounts = {}

  if MT.ScanBank and MaterialTrackerDB.settings.includeBank then
    bankCounts = MT:ScanBank()
  end
  if MT.ScanAlts and MaterialTrackerDB.settings.includeAlts then
    altCounts = MT:ScanAlts()
  end

  for _, project in ipairs(MaterialTrackerDB.projects) do
    -- Update all root goals in the project
    for _, rootGoal in ipairs(project.goals) do
      MT:UpdateGoalCounts(rootGoal, bagCounts, nil, bankCounts, altCounts)
    end
  end

  -- Rebuild tooltip index
  if MT.RebuildTrackedItemIndex then
    MT:RebuildTrackedItemIndex()
  end

  MT:Debug("Updated all project counts")
end

-- Recursively update goal counts
-- effectiveTarget: optional, passed down from parent to reflect dynamic remaining needs
-- bankCounts, altCounts: optional tables from Bagshui integration
function MT:UpdateGoalCounts(goal, bagCounts, effectiveTarget, bankCounts, altCounts)
  -- Set effective target (root goals use their static target)
  goal.effectiveTarget = effectiveTarget or goal.target

  -- Update this goal's count
  goal.current = bagCounts[goal.itemID] or 0
  goal.bankCount = (bankCounts and bankCounts[goal.itemID]) or 0
  goal.altCount = (altCounts and altCounts[goal.itemID]) or 0
  goal.totalCount = goal.current + goal.bankCount + goal.altCount
  goal.completed = goal.totalCount >= goal.effectiveTarget

  -- Calculate how many more of this item we still need to craft/gather
  local remaining = math.max(0, goal.effectiveTarget - goal.totalCount)

  -- Recursively update children with reduced targets based on remaining
  for _, child in ipairs(goal.children) do
    local childET = MT:CalculateChildEffectiveTarget(goal, child, remaining)
    MT:UpdateGoalCounts(child, bagCounts, childET, bankCounts, altCounts)
  end
end

-- Calculate a child's effective target based on how many parent items still need crafting
function MT:CalculateChildEffectiveTarget(parentGoal, childGoal, parentRemaining)
  local recipe = MT:GetRecipe(parentGoal.itemID)
  if not recipe or not recipe.materials then
    -- Fallback: proportional scaling for manually-added children without recipes
    if parentGoal.target > 0 then
      return math.ceil(childGoal.target * (parentRemaining / parentGoal.target))
    end
    return childGoal.target
  end

  -- Find this child's material count in the recipe
  local materialCount = 0
  for _, mat in ipairs(recipe.materials) do
    if mat.itemID == childGoal.itemID then
      materialCount = mat.count
      break
    end
  end

  if materialCount == 0 then return childGoal.target end

  local yield = recipe.yield or 1
  local craftsNeeded = math.ceil(parentRemaining / yield)
  return craftsNeeded * materialCount
end

-- ============================================================================
-- PROJECT STATISTICS
-- ============================================================================

-- Get statistics for a project
function MT:GetProjectStats(project)
  local stats = {
    totalGoals = 0,
    completedGoals = 0,
    itemTypes = 0,
  }

  -- Calculate stats for all root goals
  for _, rootGoal in ipairs(project.goals) do
    MT:CalculateGoalStats(rootGoal, stats)
  end

  return stats
end

-- Recursive helper for calculating stats
function MT:CalculateGoalStats(goal, stats)
  stats.totalGoals = stats.totalGoals + 1
  stats.itemTypes = stats.itemTypes + 1

  if goal.completed then
    stats.completedGoals = stats.completedGoals + 1
  end

  for _, child in ipairs(goal.children) do
    MT:CalculateGoalStats(child, stats)
  end
end

-- Check if a project is fully completed
function MT:IsProjectComplete(project)
  -- Project is complete if all root goals are complete
  for _, rootGoal in ipairs(project.goals) do
    if not rootGoal.completed or not MT:AreAllChildrenComplete(rootGoal) then
      return false
    end
  end
  return true
end

-- Recursive check for all children being complete
function MT:AreAllChildrenComplete(goal)
  for _, child in ipairs(goal.children) do
    if not child.completed then
      return false
    end
    if not MT:AreAllChildrenComplete(child) then
      return false
    end
  end
  return true
end

-- Aggregate leaf-node demands and counts under a goal subtree
-- demands: {[itemID] = totalEffectiveTarget} (accumulated)
-- counts:  {[itemID] = totalCount} (from bags/bank/alts)
function MT:AggregateLeafDemands(goal, demands, counts)
  if table.getn(goal.children) == 0 then
    local et = goal.effectiveTarget or goal.target
    demands[goal.itemID] = (demands[goal.itemID] or 0) + et
    counts[goal.itemID] = goal.totalCount or goal.current or 0
    return
  end
  for _, child in ipairs(goal.children) do
    MT:AggregateLeafDemands(child, demands, counts)
  end
end

-- Check if a goal is craftable: all raw materials in the subtree are available
-- Solves both upward propagation and shared-inventory double-counting
function MT:IsGoalCraftable(goal)
  if goal.completed then return true end
  if table.getn(goal.children) == 0 then return false end

  local demands = {}
  local counts = {}
  MT:AggregateLeafDemands(goal, demands, counts)

  for itemID, needed in pairs(demands) do
    if (counts[itemID] or 0) < needed then
      return false
    end
  end
  return true
end

-- ============================================================================
-- DEBUG / UTILITY FUNCTIONS
-- ============================================================================

-- Print a project's structure (for debugging)
function MT:PrintProjectStructure(project, indent)
  indent = indent or 0
  local prefix = string.rep("  ", indent)

  MT:Print(prefix .. "Project: " .. project.name)

  -- Print all root goals
  for _, rootGoal in ipairs(project.goals) do
    MT:PrintGoalStructure(rootGoal, indent + 1)
  end
end

-- Print a goal's structure recursively
function MT:PrintGoalStructure(goal, indent)
  indent = indent or 0
  local prefix = string.rep("  ", indent)

  local displayTarget = goal.effectiveTarget or goal.target
  local status = goal.completed and "|cff33ff33DONE|r" or "|cffff5555TODO|r"
  MT:Print(prefix .. status .. " " .. goal.itemName .. " (" .. goal.current .. "/" .. displayTarget .. ")")

  for _, child in ipairs(goal.children) do
    MT:PrintGoalStructure(child, indent + 1)
  end
end

-- List all projects
function MT:ListAllProjects()
  local count = MT:GetProjectCount()

  if count == 0 then
    MT:Print("No active projects")
    return
  end

  MT:Print("Active Projects (" .. count .. "):")

  for i, project in ipairs(MaterialTrackerDB.projects) do
    local stats = MT:GetProjectStats(project)
    local completion = string.format("%.0f%%", (stats.completedGoals / stats.totalGoals) * 100)

    MT:Print(i .. ". " .. project.name .. " (" .. completion .. " complete)")
  end
end

-- ============================================================================
-- RECIPE DATABASE FUNCTIONS
-- ============================================================================

-- Get recipe for an item (if it exists)
-- Returns: recipe table or nil
function MT:GetRecipe(itemID)
  if not MT_RecipeDB then
    MT:Debug("Recipe database not loaded")
    return nil
  end

  return MT_RecipeDB[itemID]
end

-- Check if an item is crafted (has a recipe)
-- Returns: boolean
function MT:IsItemCrafted(itemID)
  return MT:GetRecipe(itemID) ~= nil
end

-- Get count of recipes in database
function MT:GetRecipeCount()
  if not MT_RecipeDB then return 0 end

  local count = 0
  for _ in pairs(MT_RecipeDB) do
    count = count + 1
  end
  return count
end

-- Create a project with automatic recipe expansion
-- If includeRecipes is true, automatically adds materials as children
-- Returns: project table
function MT:CreateProjectWithRecipe(projectName, rootItemID, rootTarget, includeRecipes)
  -- Create base project
  local project = MT:CreateProject(projectName, rootItemID, rootTarget)

  if not project then
    return nil
  end

  -- If includeRecipes is true, auto-populate materials for the first root goal
  if includeRecipes and project.goals[1] then
    MT:ExpandGoalWithRecipe(project.goals[1], rootTarget)
  end

  return project
end

-- Recursively expand a goal with its recipe materials
-- This creates the full crafting tree automatically
function MT:ExpandGoalWithRecipe(goal, parentQuantity)
  local recipe = MT:GetRecipe(goal.itemID)

  if not recipe or not recipe.materials then
    -- No recipe or no materials, stop recursion
    return
  end

  MT:Debug("Expanding recipe for " .. goal.itemName)

  -- Add each material as a child goal
  for _, material in ipairs(recipe.materials) do
    local materialItemID = material.itemID
    local materialCount = material.count

    -- Calculate how many materials needed based on parent quantity
    local yield = recipe.yield or 1
    local totalNeeded = math.ceil((parentQuantity / yield) * materialCount)

    -- Get material name
    local materialName = MT:GetItemNameByID(materialItemID)

    if materialName then
      -- Add child goal
      local childGoal = MT:AddChildGoal(goal, materialItemID, totalNeeded)

      if childGoal then
        -- Recursively expand this material if it also has a recipe
        MT:ExpandGoalWithRecipe(childGoal, totalNeeded)
      end
    else
      MT:Print("|cffff8800Warning:|r Could not resolve item " .. materialItemID .. " in recipe for " .. goal.itemName .. ". Material skipped.")
    end
  end
end

-- ============================================================================
-- RECIPE REFRESH
-- ============================================================================

-- Refresh recipe expansion for a single project
-- Re-expands all root goals that have recipes, preserving root targets
function MT:RefreshProjectRecipes(project)
  local refreshed = 0

  for _, rootGoal in ipairs(project.goals) do
    local recipe = MT:GetRecipe(rootGoal.itemID)
    if recipe then
      -- Clear existing children and re-expand
      rootGoal.children = {}
      MT:ExpandGoalWithRecipe(rootGoal, rootGoal.target)
      refreshed = refreshed + 1
    end
  end

  return refreshed
end

-- Refresh all projects or a specific one by name
function MT:RefreshAllProjectRecipes(projectName)
  local totalRefreshed = 0

  for _, project in ipairs(MaterialTrackerDB.projects) do
    if not projectName or string.lower(project.name) == projectName then
      local count = MT:RefreshProjectRecipes(project)
      totalRefreshed = totalRefreshed + count
      if projectName then
        MT:Print("Refreshed " .. count .. " recipes in project: " .. project.name)
        return
      end
    end
  end

  if projectName then
    MT:Print("No project found matching: " .. projectName)
  else
    MT:Print("Refreshed " .. totalRefreshed .. " recipes across all projects")
  end
end

-- ============================================================================
-- SHOPPING LIST MODE (Aggregate Leaf Nodes Across All Projects)
-- ============================================================================

-- Aggregate all leaf nodes (raw materials) across all projects
-- Returns: table of { itemID -> { itemName, target, current, completed } }
function MT:AggregateAllMaterials()
  local aggregated = {}
  local bagCounts = MT:ScanBags()
  local bankCounts = {}
  local altCounts = {}
  if MT.ScanBank and MaterialTrackerDB.settings.includeBank then
    bankCounts = MT:ScanBank()
  end
  if MT.ScanAlts and MaterialTrackerDB.settings.includeAlts then
    altCounts = MT:ScanAlts()
  end

  -- Iterate through all projects
  for _, project in ipairs(MaterialTrackerDB.projects) do
    for _, rootGoal in ipairs(project.goals) do
      MT:AggregateGoalRecursive(rootGoal, aggregated)
    end
  end

  -- Update current counts from scanned sources (not per-goal values)
  for itemID, data in pairs(aggregated) do
    data.current = bagCounts[itemID] or 0
    data.bankCount = bankCounts[itemID] or 0
    data.altCount = altCounts[itemID] or 0
    data.totalCount = data.current + data.bankCount + data.altCount
    data.completed = data.totalCount >= data.target
  end

  return aggregated
end

-- Recursively aggregate leaf nodes (goals with no children)
function MT:AggregateGoalRecursive(goal, aggregated)
  local hasChildren = table.getn(goal.children) > 0

  -- Only aggregate leaf nodes (items with no children)
  if not hasChildren then
    if not aggregated[goal.itemID] then
      aggregated[goal.itemID] = {
        itemID = goal.itemID,
        itemName = goal.itemName,
        target = 0,
        current = 0,
        bankCount = 0,
        altCount = 0,
        totalCount = 0,
        completed = false
      }
    end

    -- Add this goal's effective target to the total
    aggregated[goal.itemID].target = aggregated[goal.itemID].target + (goal.effectiveTarget or goal.target)
  end

  -- Recursively process children to find their leaf nodes
  for _, child in ipairs(goal.children) do
    MT:AggregateGoalRecursive(child, aggregated)
  end
end
