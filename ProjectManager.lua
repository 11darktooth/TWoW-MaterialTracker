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

-- Create a new project with a root goal
-- Returns: project table
function MT:CreateProject(projectName, rootItemID, rootTarget)
  if not rootItemID or not rootTarget then
    MT:Print("Error: Missing itemID or target")
    return nil
  end

  -- Get item name
  local itemName = MT:GetItemNameByID(rootItemID)
  if not itemName then
    MT:Print("Error: Invalid item ID " .. rootItemID)
    return nil
  end

  local project = {
    id = MT:GenerateProjectID(),
    name = projectName or itemName,
    collapsed = false,
    createdAt = time(),

    goal = {
      itemID = rootItemID,
      itemName = itemName,
      current = 0,
      target = rootTarget,
      completed = false,
      children = {}
    }
  }

  table.insert(MaterialTrackerDB.projects, project)
  MT:Debug("Created project: " .. project.name .. " (ID: " .. project.id .. ")")

  return project
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

-- Find a goal by itemID within a project (recursive search)
function MT:FindGoalByItemID(project, itemID)
  if not project or not project.goal then return nil end
  return MT:FindGoalByItemIDRecursive(project.goal, itemID)
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

  for _, project in ipairs(MaterialTrackerDB.projects) do
    MT:UpdateGoalCounts(project.goal, bagCounts)
  end

  MT:Debug("Updated all project counts")
end

-- Recursively update goal counts
function MT:UpdateGoalCounts(goal, bagCounts)
  -- Update this goal's count
  goal.current = bagCounts[goal.itemID] or 0
  goal.completed = goal.current >= goal.target

  -- Recursively update children
  for _, child in ipairs(goal.children) do
    MT:UpdateGoalCounts(child, bagCounts)
  end
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

  MT:CalculateGoalStats(project.goal, stats)

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
  return project.goal.completed and MT:AreAllChildrenComplete(project.goal)
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

-- ============================================================================
-- DEBUG / UTILITY FUNCTIONS
-- ============================================================================

-- Print a project's structure (for debugging)
function MT:PrintProjectStructure(project, indent)
  indent = indent or 0
  local prefix = string.rep("  ", indent)

  MT:Print(prefix .. "Project: " .. project.name)
  MT:PrintGoalStructure(project.goal, indent + 1)
end

-- Print a goal's structure recursively
function MT:PrintGoalStructure(goal, indent)
  indent = indent or 0
  local prefix = string.rep("  ", indent)

  local status = goal.completed and "|cff33ff33DONE|r" or "|cffff5555TODO|r"
  MT:Print(prefix .. status .. " " .. goal.itemName .. " (" .. goal.current .. "/" .. goal.target .. ")")

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

  -- If includeRecipes is true, auto-populate materials
  if includeRecipes then
    MT:ExpandGoalWithRecipe(project.goal, rootTarget)
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
      MT:Debug("Warning: Could not find name for item " .. materialItemID)
    end
  end
end
