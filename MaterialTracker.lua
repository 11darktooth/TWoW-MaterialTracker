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
        locked = false,       -- Whether the tracker frame is locked in place
        showCompleted = true, -- Show completed items in green
        autoCollapse = false, -- Auto-collapse completed categories
      }
    }
  end

  -- Always update version number
  MaterialTrackerDB.version = MT.Version
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

  -- Update all project counts on login
  if MT:GetProjectCount() > 0 then
    MT:UpdateAllProjectCounts()
  end
end

function MT:OnBagUpdate(bagID)
  MT:Debug("Bag " .. tostring(bagID) .. " updated")

  -- Update all project counts when bags change
  if MT:GetProjectCount() > 0 then
    MT:UpdateAllProjectCounts()

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
    MT:Print("Commands:")
    MT:Print("/mt add - Open project creation dialog")
    MT:Print("/mt show - Show the tracker")
    MT:Print("/mt hide - Hide the tracker")
    MT:Print("/mt toggle - Toggle tracker visibility")
    MT:Print("/mt lock - Lock the tracker in place")
    MT:Print("/mt unlock - Unlock the tracker")
    MT:Print("/mt debug - Toggle debug mode")
    MT:Print("/mt scan - Scan bags and report findings")
    MT:Print("/mt test - Test pfQuest integration")
    MT:Print("/mt search <item> - Search for items by name")
    MT:Print("/mt testproject - Create a test Bronze Bar project")
    MT:Print("/mt projects - List all projects")
    MT:Print("/mt showproject <#> - Show project structure")
    MT:Print("/mt clear - Clear all projects")

  elseif msg == "debug" then
    MaterialTrackerDB.settings.debug = not MaterialTrackerDB.settings.debug
    MT:Print("Debug mode: " .. (MaterialTrackerDB.settings.debug and "ON" or "OFF"))

  elseif msg == "scan" then
    MT:Print("Scanning bags...")
    local itemCounts = MT:ScanBags()

    -- Show results
    for itemID, count in pairs(itemCounts) do
      -- Try to get item name from game
      local itemName = GetItemInfo(itemID)
      if itemName then
        MT:Print(itemName .. " (ID: " .. itemID .. "): " .. count)
      else
        MT:Print("Item ID " .. itemID .. ": " .. count)
      end
    end

  elseif msg == "test" then
    MT:TestPfQuestIntegration()

  elseif string.find(msg, "^search ") then
    local searchText = string.sub(msg, 8)  -- Everything after "search "
    MT:Print("Searching for: " .. searchText)

    local results = MT:SearchItems(searchText)
    local formatted = MT:FormatSearchResults(results)

    if table.getn(formatted) == 0 then
      MT:Print("No items found matching '" .. searchText .. "'")
    else
      MT:Print("Found " .. table.getn(formatted) .. " items:")
      for i = 1, math.min(10, table.getn(formatted)) do
        MT:Print("  " .. formatted[i].name .. " (ID: " .. formatted[i].id .. ")")
      end

      if table.getn(formatted) > 10 then
        MT:Print("  ... and " .. (table.getn(formatted) - 10) .. " more")
      end
    end

  elseif msg == "testproject" then
    MT:Print("Creating test project...")

    -- Create Bronze Bar project (need 10 bronze bars)
    local project = MT:CreateProject("Bronze Bar Farming", 2841, 10)

    if project then
      -- Bronze Bar requires: Copper Bar + Tin Bar
      local copperBarGoal = MT:AddChildGoal(project.goal, 2840, 10)  -- 10 Copper Bars
      local tinBarGoal = MT:AddChildGoal(project.goal, 3576, 10)     -- 10 Tin Bars

      -- Copper Bar requires 1 Copper Ore per bar (10 bars = 10 ore)
      MT:AddChildGoal(copperBarGoal, 2770, 10)  -- 10 Copper Ore

      -- Tin Bar requires 1 Tin Ore per bar (10 bars = 10 ore)
      MT:AddChildGoal(tinBarGoal, 2771, 10)     -- 10 Tin Ore

      -- Update counts from current bags
      MT:UpdateAllProjectCounts()

      -- Update tracker display
      if MT.UpdateTrackerDisplay then
        MT:UpdateTrackerDisplay()
      end

      MT:Print("Test project created!")
      MT:PrintProjectStructure(project)
    end

  elseif msg == "projects" then
    MT:ListAllProjects()

  elseif string.find(msg, "^showproject ") then
    local projectNum = tonumber(string.sub(msg, 13))

    if not projectNum then
      MT:Print("Usage: /mt showproject <number>")
      return
    end

    local project = MT:GetProjectByIndex(projectNum)

    if not project then
      MT:Print("Project #" .. projectNum .. " not found")
      return
    end

    MT:PrintProjectStructure(project)

  elseif msg == "clear" or msg == "clearprojects" then
    MT:ClearAllProjects()

    -- Update tracker display
    if MT.UpdateTrackerDisplay then
      MT:UpdateTrackerDisplay()
    end

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

  elseif msg == "toggle" then
    if MT.ToggleTracker then
      MT:ToggleTracker()
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

  elseif msg == "add" or msg == "create" or msg == "new" then
    if MT.ShowCreationDialog then
      MT:ShowCreationDialog()
    else
      MT:Print("Creation dialog not initialized yet")
    end

  else
    MT:Print("Unknown command. Type /mt help for available commands.")
  end
end

-- ============================================================================
-- ADDON LOADED
-- ============================================================================

MT:Print("MaterialTracker initialized. Type /mt help for commands.")
