--[[
  MaterialTracker - A crafting/gathering material tracker for Turtle WoW
  Version: 0.1.0

  This addon tracks materials in your bags and displays progress toward goals.
]]--

-- ============================================================================
-- NAMESPACE & INITIALIZATION
-- ============================================================================

-- Create a global table to hold all our addon functions and data
-- This prevents polluting the global namespace and keeps our code organized
MaterialTracker = MaterialTracker or {}
local MT = MaterialTracker  -- Local shorthand for faster access

-- Version info
MT.Version = "0.1.0"

-- ============================================================================
-- SAVED VARIABLES
-- ============================================================================

-- This function initializes the SavedVariables structure
-- SavedVariables are automatically loaded/saved by the game client
function MT:InitializeSavedVariables()
  -- If this is the first time loading, create the default structure
  if not MaterialTrackerDB then
    MaterialTrackerDB = {
      version = MT.Version,
      projects = {},  -- Will hold our material tracking projects
      settings = {
        locked = false,        -- Whether the tracker frame is locked in place
        showCompleted = true,  -- Show completed items in green
        hideCompleted = false, -- Hide completed goals from tracker
        autoCollapse = false,  -- Auto-collapse completed categories
        displayMode = "projects", -- "projects" or "overall"
        includeBank = true,      -- Include bank items (via Bagshui)
        includeAlts = true       -- Include alt items (via Bagshui)
      }
    }
  end

  -- Always update version number
  MaterialTrackerDB.version = MT.Version

  -- Migrate old data structures to new format
  MT:MigrateData()

  -- Ensure new settings exist for existing SavedVariables
  if MaterialTrackerDB.settings.includeBank == nil then
    MaterialTrackerDB.settings.includeBank = true
  end
  if MaterialTrackerDB.settings.includeAlts == nil then
    MaterialTrackerDB.settings.includeAlts = true
  end
  if MaterialTrackerDB.settings.notifications == nil then
    MaterialTrackerDB.settings.notifications = true
  end
  if MaterialTrackerDB.settings.hardcoreMode == nil then
    MaterialTrackerDB.settings.hardcoreMode = false
  end
  if MaterialTrackerDB.settings.zoneCount == nil then
    MaterialTrackerDB.settings.zoneCount = 5
  end
end

-- Migrate old project data to new format
function MT:MigrateData()
  if not MaterialTrackerDB or not MaterialTrackerDB.projects then return end

  local migrated = 0

  for _, project in ipairs(MaterialTrackerDB.projects) do
    -- Check if project uses old single-goal format
    if project.goal and not project.goals then
      -- Migrate: wrap single goal in goals array
      project.goals = { project.goal }
      project.goal = nil
      migrated = migrated + 1
    end
  end

  if migrated > 0 then
    MT:Print("Migrated " .. migrated .. " projects to new format")
  end
end

-- ============================================================================
-- DEPENDENCY CHECKS
-- ============================================================================

function MT:CheckDependencies()
  local deps = {
    pfQuest = pfDB and pfDB["items"],
    pfQuestTurtle = pfQuest_turtlecount,
    pfUI = pfUI,
    Bagshui = Bagshui
  }

  -- Report what we found
  if deps.pfQuest then
    MT:Print("pfQuest detected - item database available")
  else
    MT:Print("pfQuest not found - limited functionality")
  end

  if deps.pfQuestTurtle then
    MT:Print("pfQuest-turtle detected")
  end

  if deps.pfUI then
    MT:Print("pfUI detected - theme integration available")
  end

  if deps.Bagshui then
    MT:Print("Bagshui detected - bank scanning available")
  end

  return deps
end

-- ============================================================================
-- UTILITY FUNCTIONS
-- ============================================================================

-- Print a message to chat with addon prefix
function MT:Print(msg)
  DEFAULT_CHAT_FRAME:AddMessage("|cff33ffccMaterialTracker:|r " .. tostring(msg))
end

-- Debug print (only shows if debug mode is enabled)
function MT:Debug(msg)
  if MaterialTrackerDB and MaterialTrackerDB.settings and MaterialTrackerDB.settings.debug then
    DEFAULT_CHAT_FRAME:AddMessage("|cffcccccc[MT Debug]|r " .. tostring(msg))
  end
end

-- ============================================================================
-- GATHERING NOTIFICATIONS
-- ============================================================================

-- Store previous bag counts for delta detection
MT.previousBagCounts = {}

-- Find the Loot chat frame (or fall back to default)
function MT:GetLootChatFrame()
  for i = 1, 7 do
    local frame = getglobal("ChatFrame" .. i)
    if frame then
      -- Check if this frame has the LOOT message group
      local tab = getglobal("ChatFrame" .. i .. "Tab")
      if tab then
        local name = tab:GetText()
        if name and (string.lower(name) == "loot" or string.lower(name) == "combat log") then
          return frame
        end
      end
    end
  end
  return DEFAULT_CHAT_FRAME
end

-- Check for tracked item changes and notify
function MT:CheckAndNotifyChanges(oldCounts, newCounts)
  if not MaterialTrackerDB.settings.notifications then return end
  if not MT.TrackedItemIndex then return end

  local lootFrame = MT:GetLootChatFrame()

  for itemID, entries in pairs(MT.TrackedItemIndex) do
    local oldCount = oldCounts[itemID] or 0
    local newCount = newCounts[itemID] or 0
    local delta = newCount - oldCount

    if delta > 0 then
      -- Item was gained — find the best goal info to display
      local itemName = MT:GetItemNameByID(itemID) or ("Item " .. itemID)
      local bestTarget = 0
      local bestTotal = 0
      for _, entry in ipairs(entries) do
        bestTarget = bestTarget + entry.remaining
      end
      bestTotal = bestTarget -- remaining across all projects

      -- Get current total count (including bank/alts if enabled)
      local totalNow = newCount
      -- Look up the goal for full totalCount
      for _, project in ipairs(MaterialTrackerDB.projects) do
        for _, rootGoal in ipairs(project.goals) do
          local goal = MT:FindGoalByItemID(rootGoal, itemID)
          if goal then
            totalNow = goal.totalCount or newCount
            bestTarget = goal.effectiveTarget or goal.target
            local color = "|cffff4444"  -- red
            if totalNow >= bestTarget then
              color = "|cff44ff44"  -- green
            end
            lootFrame:AddMessage("|cff33ffccMT:|r " .. itemName .. ": " .. color .. totalNow .. "/" .. bestTarget .. "|r (+" .. delta .. ")")
            return  -- one notification per item per bag update
          end
        end
      end
    end
  end
end

-- Find a goal by itemID recursively
function MT:FindGoalByItemID(goal, itemID)
  if goal.itemID == itemID then return goal end
  for _, child in ipairs(goal.children) do
    local found = MT:FindGoalByItemID(child, itemID)
    if found then return found end
  end
  return nil
end

-- ============================================================================
-- ZONE FARMING GUIDANCE
-- ============================================================================

-- Calculate hardcore level multiplier for a mob relative to player level
-- Returns a multiplier between 0.05 and 1.0
function MT:GetHardcoreLevelMultiplier(mobMinLevel, mobMaxLevel)
  if not MaterialTrackerDB.settings.hardcoreMode then return 1.0 end

  local playerLevel = UnitLevel("player") or 60
  -- Use average mob level for comparison
  local mobLevel = (mobMinLevel + mobMaxLevel) / 2
  local diff = playerLevel - mobLevel  -- positive = player is higher

  if diff >= 3 then
    return 1.0    -- mob 3+ levels below: safe
  elseif diff >= 0 then
    -- mob 0-2 below player: linear 0.6 to 0.9
    return 0.6 + (diff / 2) * 0.3
  elseif diff >= -2 then
    -- mob 1-2 above player: 0.15 to 0.3
    return 0.3 + (diff + 2) * 0.075
  else
    return 0.05   -- mob 3+ above: death risk
  end
end

function MT:ShowFarmingZones(zoneCount)
  -- Gather all incomplete goals and their remaining needs
  local neededItems = {}  -- { [itemID] = { name, remaining } }
  for _, project in ipairs(MaterialTrackerDB.projects) do
    for _, rootGoal in ipairs(project.goals) do
      MT:CollectNeededItems(rootGoal, neededItems)
    end
  end

  -- Check if anything is needed
  local hasNeeds = false
  for _ in pairs(neededItems) do hasNeeds = true; break end
  if not hasNeeds then
    MT:Print("All materials complete! Nothing to farm.")
    return
  end

  -- Phase 1: Node data from MT_ZoneData
  -- Track raw (unpenalized) and HC-adjusted scores separately
  local zoneNodeScoresRaw = {}  -- for normalization denominator
  local zoneNodeScoresHC = {}   -- HC-adjusted, for ranking
  local zoneNodeItems = {}      -- { [zoneName] = { {name, nodes}, ... } }
  local maxNodeRaw = 0

  if MT_ZoneData then
    for itemID, info in pairs(neededItems) do
      local zones = MT_ZoneData[itemID]
      if zones then
        for _, zoneEntry in ipairs(zones) do
          local zoneName = zoneEntry.zone
          if MT_ZoneLevels and MT_ZoneLevels[zoneName] then
            local mult = 1.0
            if MT_ZoneLevels and MT_ZoneLevels[zoneName] then
              local zl = MT_ZoneLevels[zoneName]
              mult = MT:GetHardcoreLevelMultiplier(zl[1], zl[2])
            end
            local weightedNodes = zoneEntry.nodes * info.remaining
            zoneNodeScoresRaw[zoneName] = (zoneNodeScoresRaw[zoneName] or 0) + weightedNodes
            zoneNodeScoresHC[zoneName] = (zoneNodeScoresHC[zoneName] or 0) + (weightedNodes * mult)
            if not zoneNodeItems[zoneName] then
              zoneNodeItems[zoneName] = {}
            end
            table.insert(zoneNodeItems[zoneName], {
              name = info.name,
              nodes = zoneEntry.nodes
            })
          end
        end
      end
    end
    for _, score in pairs(zoneNodeScoresRaw) do
      if score > maxNodeRaw then maxNodeRaw = score end
    end
  end

  -- Phase 2: Mob drop data from pfQuest
  -- Track raw and HC-adjusted scores separately
  local zoneDropScoresRaw = {}  -- for normalization denominator
  local zoneDropScoresHC = {}   -- HC-adjusted, for ranking
  local zoneDropMobs = {}       -- { [zoneName] = { {itemName, mobName, lvl, dropRate}, ... } }
  local maxDropRaw = 0

  for itemID, info in pairs(neededItems) do
    local mobZones = MT:GetMobDropZones(itemID)
    if mobZones then
      for zoneName, zoneData in pairs(mobZones) do
        if MT_ZoneLevels and MT_ZoneLevels[zoneName] then
          if not zoneDropScoresRaw[zoneName] then
            zoneDropScoresRaw[zoneName] = 0
            zoneDropScoresHC[zoneName] = 0
            zoneDropMobs[zoneName] = {}
          end

          for _, mob in ipairs(zoneData.mobs) do
            local minLvl, maxLvl = MT:ParseMobLevel(mob.lvl)
            local levelMult = MT:GetHardcoreLevelMultiplier(minLvl, maxLvl)

            -- Hard-filter: skip unkillable mobs in hardcore mode
            if levelMult > 0.05 then
              local rawScore = mob.spawns * (mob.dropRate / 100) * info.remaining
              zoneDropScoresRaw[zoneName] = zoneDropScoresRaw[zoneName] + rawScore
              zoneDropScoresHC[zoneName] = zoneDropScoresHC[zoneName] + (rawScore * levelMult)

              table.insert(zoneDropMobs[zoneName], {
                itemName = info.name,
                mobName = mob.name,
                lvl = mob.lvl,
                dropRate = mob.dropRate
              })
            end
          end
        end
      end
    end
  end
  for _, score in pairs(zoneDropScoresRaw) do
    if score > maxDropRaw then maxDropRaw = score end
  end

  -- Combine all zone names
  local allZones = {}
  for zoneName in pairs(zoneNodeScoresRaw) do allZones[zoneName] = true end
  for zoneName in pairs(zoneDropScoresRaw) do allZones[zoneName] = true end

  -- Normalize HC scores against unpenalized maximums
  -- This preserves HC penalties: penalized zones score lower than unpenalized ones
  local sorted = {}
  for zoneName in pairs(allZones) do
    local normalizedNode = 0
    if maxNodeRaw > 0 and zoneNodeScoresHC[zoneName] then
      normalizedNode = (zoneNodeScoresHC[zoneName] / maxNodeRaw) * 100
    end
    local normalizedDrop = 0
    if maxDropRaw > 0 and zoneDropScoresHC[zoneName] then
      normalizedDrop = (zoneDropScoresHC[zoneName] / maxDropRaw) * 100
    end

    table.insert(sorted, {
      zone = zoneName,
      score = normalizedNode + normalizedDrop,
      nodeItems = zoneNodeItems[zoneName],
      dropMobs = zoneDropMobs[zoneName]
    })
  end

  table.sort(sorted, function(a, b) return a.score > b.score end)

  local displayCount = zoneCount or MaterialTrackerDB.settings.zoneCount or 5
  local count = math.min(displayCount, table.getn(sorted))
  if count == 0 then
    MT:Print("No zone data available for your needed materials.")
    return
  end

  MT:Print("Best farming zones:")
  for i = 1, count do
    local z = sorted[i]
    MT:Print("  " .. i .. ". " .. z.zone .. " (Score: " .. math.floor(z.score + 0.5) .. "):")

    -- Node details
    if z.nodeItems then
      for _, item in ipairs(z.nodeItems) do
        MT:Print("     Nodes: " .. item.name .. " (" .. item.nodes .. " nodes)")
      end
    end

    -- Drop details: filter <3%, deduplicate, sort by drop rate, show top 5
    if z.dropMobs then
      local seen = {}
      local filtered = {}
      for _, mob in ipairs(z.dropMobs) do
        local key = mob.itemName .. "|" .. mob.mobName
        if not seen[key] and mob.dropRate >= 3 then
          seen[key] = true
          table.insert(filtered, mob)
        end
      end
      -- Sort by drop rate descending
      table.sort(filtered, function(a, b) return a.dropRate > b.dropRate end)
      local dropCount = math.min(5, table.getn(filtered))
      for j = 1, dropCount do
        local mob = filtered[j]
        local lvlStr = ""
        if mob.lvl and mob.lvl ~= "" then
          lvlStr = " (lvl " .. mob.lvl .. ", ~" .. mob.dropRate .. "%)"
        else
          lvlStr = " (~" .. mob.dropRate .. "%)"
        end
        MT:Print("     Drops: " .. mob.itemName .. " from " .. mob.mobName .. lvlStr)
      end
    end
  end
end

-- Recursively collect incomplete leaf goals
function MT:CollectNeededItems(goal, neededItems)
  local effectiveTarget = goal.effectiveTarget or goal.target
  local totalCount = goal.totalCount or goal.current or 0
  local remaining = effectiveTarget - totalCount

  if remaining > 0 then
    -- This node still needs materials (leaf or farmable parent)
    if not neededItems[goal.itemID] then
      neededItems[goal.itemID] = {
        name = goal.itemName,
        remaining = remaining
      }
    else
      neededItems[goal.itemID].remaining = neededItems[goal.itemID].remaining + remaining
    end
  end

  for _, child in ipairs(goal.children) do
    MT:CollectNeededItems(child, neededItems)
  end
end

-- ============================================================================
-- BAG SCANNING
-- ============================================================================

-- Scans all bags and returns a count of each item by ItemID
function MT:ScanBags()
  local itemCounts = {}

  -- Loop through all bag slots (0 = backpack, 1-4 = bags)
  for bag = 0, 4 do
    local numSlots = GetContainerNumSlots(bag)

    -- Loop through each slot in the bag
    for slot = 1, numSlots do
      local itemLink = GetContainerItemLink(bag, slot)

      if itemLink then
        -- Extract ItemID from the item link
        -- Item links look like: "|cffffffff|Hitem:2770:0:0:0|h[Copper Ore]|h|r"
        local _, _, itemID = string.find(itemLink, "item:(%d+)")
        itemID = tonumber(itemID)

        if itemID then
          -- Get the stack size
          local _, itemCount = GetContainerItemInfo(bag, slot)

          -- Add to our counts
          itemCounts[itemID] = (itemCounts[itemID] or 0) + itemCount
        end
      end
    end
  end

  return itemCounts
end

-- ============================================================================
-- EVENT HANDLING
-- ============================================================================

-- Create a frame to handle events
MT.EventFrame = CreateFrame("Frame")

-- Register events we want to listen for
MT.EventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")  -- Fired when player logs in or zones
MT.EventFrame:RegisterEvent("BAG_UPDATE")              -- Fired when bag contents change
MT.EventFrame:RegisterEvent("ADDON_LOADED")            -- Fired when addons load

-- Event handler function
MT.EventFrame:SetScript("OnEvent", function()
  if event == "ADDON_LOADED" and arg1 == "MaterialTracker" then
    -- Our addon just loaded
    MT:OnLoad()

  elseif event == "PLAYER_ENTERING_WORLD" then
    -- Player entered world (login, reload, or zone change)
    MT:OnPlayerEnteringWorld()

  elseif event == "BAG_UPDATE" then
    -- Bag contents changed (arg1 = bag number)
    MT:OnBagUpdate(arg1)
  end
end)

-- ============================================================================
-- EVENT CALLBACKS
-- ============================================================================

function MT:OnLoad()
  MT:Print("Addon loaded! Version " .. MT.Version)
  MT:InitializeSavedVariables()
  MT:CheckDependencies()
end

function MT:OnPlayerEnteringWorld()
  MT:Debug("Player entering world")

  -- Perform a full bag scan and update project counts
  local itemCounts = MT:ScanBags()

  -- Debug: Show what we found
  local totalItems = 0
  for itemID, count in pairs(itemCounts) do
    totalItems = totalItems + 1
  end

  MT:Debug("Found " .. totalItems .. " unique items in bags")

  -- Initialize previous bag counts for notification deltas
  MT.previousBagCounts = itemCounts

  -- Update all project counts on login
  if MT:GetProjectCount() > 0 then
    MT:UpdateAllProjectCounts()
  end
end

function MT:OnBagUpdate(bagID)
  MT:Debug("Bag " .. tostring(bagID) .. " updated")

  -- Update all project counts when bags change
  if MT:GetProjectCount() > 0 then
    -- Snapshot current bag counts before updating
    local oldBagCounts = MT.previousBagCounts or {}

    MT:UpdateAllProjectCounts()

    -- Check for gathering notifications
    local newBagCounts = MT:ScanBags()
    MT:CheckAndNotifyChanges(oldBagCounts, newBagCounts)
    MT.previousBagCounts = newBagCounts

    -- Update tracker display
    if MT.UpdateTrackerDisplay then
      MT:UpdateTrackerDisplay()
    end
  end
end

-- ============================================================================
-- SLASH COMMANDS
-- ============================================================================

-- Define slash commands for the addon
SLASH_MATERIALTRACKER1 = "/mt"
SLASH_MATERIALTRACKER2 = "/materialtracker"

SlashCmdList["MATERIALTRACKER"] = function(msg)
  msg = string.lower(msg)

  if msg == "" or msg == "help" then
    MT:Print("MaterialTracker Commands:")
    MT:Print("/mt add - Create a new project")
    MT:Print("/mt projects - List all projects")
    MT:Print("/mt show - Show the tracker")
    MT:Print("/mt hide - Hide the tracker")
    MT:Print("/mt lock - Lock tracker in place")
    MT:Print("/mt unlock - Unlock tracker")
    MT:Print("/mt hidecompleted - Toggle hiding completed goals")
    MT:Print("/mt mode - Toggle projects/overall mode")
    MT:Print("/mt bank - Toggle bank count inclusion (Bagshui)")
    MT:Print("/mt alts - Toggle alt count inclusion (Bagshui)")
    MT:Print("/mt notifications - Toggle gathering notifications")
    MT:Print("/mt refresh [name] - Re-expand recipes (fixes missing materials)")
    MT:Print("/mt zones [N] - Show best farming zones (default 5)")
    MT:Print("/mt hardcore - Toggle hardcore mode (penalizes high-level mobs)")
    MT:Print("/mt debug - Toggle debug messages")

  elseif msg == "add" or msg == "create" or msg == "new" then
    if MT.ShowCreationDialog then
      MT:ShowCreationDialog()
    else
      MT:Print("Creation dialog not initialized yet")
    end

  elseif msg == "projects" then
    MT:ListAllProjects()

  elseif msg == "show" then
    if MT.ShowTracker then
      MT:ShowTracker()
    else
      MT:Print("Tracker not initialized yet")
    end

  elseif msg == "hide" then
    if MT.HideTracker then
      MT:HideTracker()
    else
      MT:Print("Tracker not initialized yet")
    end

  elseif msg == "lock" then
    if MT.SetTrackerLocked then
      MT:SetTrackerLocked(true)
    else
      MT:Print("Tracker not initialized yet")
    end

  elseif msg == "unlock" then
    if MT.SetTrackerLocked then
      MT:SetTrackerLocked(false)
    else
      MT:Print("Tracker not initialized yet")
    end

  elseif msg == "hidecompleted" or msg == "hc" then
    MaterialTrackerDB.settings.hideCompleted = not MaterialTrackerDB.settings.hideCompleted
    MT:Print("Hide completed goals: " .. (MaterialTrackerDB.settings.hideCompleted and "ON" or "OFF"))

    if MT.UpdateTrackerDisplay then
      MT:UpdateTrackerDisplay()
    end

  elseif msg == "mode" then
    if MaterialTrackerDB.settings.displayMode == "projects" then
      MaterialTrackerDB.settings.displayMode = "overall"
      MT:Print("Display mode: SHOPPING LIST (raw materials needed)")
    else
      MaterialTrackerDB.settings.displayMode = "projects"
      MT:Print("Display mode: PROJECTS (organized by project)")
    end

    if MT.UpdateTrackerDisplay then
      MT:UpdateTrackerDisplay()
    end

  elseif msg == "bank" then
    MaterialTrackerDB.settings.includeBank = not MaterialTrackerDB.settings.includeBank
    MT:Print("Include bank items: " .. (MaterialTrackerDB.settings.includeBank and "ON" or "OFF"))

    if MT.UpdateAllProjectCounts then
      MT:UpdateAllProjectCounts()
    end
    if MT.UpdateTrackerDisplay then
      MT:UpdateTrackerDisplay()
    end

  elseif msg == "alts" then
    MaterialTrackerDB.settings.includeAlts = not MaterialTrackerDB.settings.includeAlts
    MT:Print("Include alt items: " .. (MaterialTrackerDB.settings.includeAlts and "ON" or "OFF"))

    if MT.UpdateAllProjectCounts then
      MT:UpdateAllProjectCounts()
    end
    if MT.UpdateTrackerDisplay then
      MT:UpdateTrackerDisplay()
    end

  elseif msg == "notifications" or msg == "notify" then
    MaterialTrackerDB.settings.notifications = not MaterialTrackerDB.settings.notifications
    MT:Print("Gathering notifications: " .. (MaterialTrackerDB.settings.notifications and "ON" or "OFF"))

  elseif msg == "refresh" or string.find(msg, "^refresh ") then
    local projectName = nil
    if string.find(msg, "^refresh ") then
      projectName = string.sub(msg, 9)  -- strip "refresh "
      if projectName == "" then projectName = nil end
    end
    MT:RefreshAllProjectRecipes(projectName)
    MT:UpdateAllProjectCounts()
    if MT.UpdateTrackerDisplay then
      MT:UpdateTrackerDisplay()
    end

  elseif msg == "zones" or string.find(msg, "^zones ") then
    local zoneCount = nil
    local _, _, numStr = string.find(msg, "^zones%s+(%d+)")
    if numStr then
      zoneCount = tonumber(numStr)
      if zoneCount and zoneCount > 0 then
        MaterialTrackerDB.settings.zoneCount = zoneCount
      end
    end
    MT:ShowFarmingZones(zoneCount)

  elseif msg == "hardcore" or msg == "hc mode" then
    MaterialTrackerDB.settings.hardcoreMode = not MaterialTrackerDB.settings.hardcoreMode
    MT:Print("Hardcore mode: " .. (MaterialTrackerDB.settings.hardcoreMode and "|cffff4444ON|r (high-level mobs penalized)" or "|cff44ff44OFF|r"))

  elseif msg == "bankdebug" then
    if MT.BankDebugReport then
      MT:BankDebugReport()
    else
      MT:Print("Bagshui integration not loaded")
    end

  elseif msg == "debug" then
    MaterialTrackerDB.settings.debug = not MaterialTrackerDB.settings.debug
    MT:Print("Debug mode: " .. (MaterialTrackerDB.settings.debug and "ON" or "OFF"))

  else
    MT:Print("Unknown command. Type /mt help for available commands.")
  end
end

-- ============================================================================
-- ADDON LOADED
-- ============================================================================

MT:Print("MaterialTracker initialized. Type /mt help for commands.")
