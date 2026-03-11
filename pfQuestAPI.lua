--[[
  pfQuest API Integration for MaterialTracker

  This file provides helper functions for integrating with pfQuest's
  item database for searching and retrieving item information.
]]--

local MT = MaterialTracker

-- ============================================================================
-- PFQUEST DATABASE ACCESS
-- ============================================================================

--[[
  pfQuest Database Structure:

  pfDB["items"]["loc"] = Localized item names (itemID → name)
    Example: pfDB["items"]["loc"][2770] = "Copper Ore"

  pfDB["items"]["data"] = Item drop/vendor data (itemID → {U = units, V = vendors})
    Example: pfDB["items"]["data"][2770] = { U = { [mobID] = droprate } }

  Key API Functions (from pfDatabase global):
  - pfDatabase:GetIDByName(name, "items", partial)
      Returns: table of {itemID = itemName} for all matches

      partial modes:
        true     = Fuzzy match (substring, case-insensitive)
        "LOWER"  = Exact match (case-insensitive)
        nil      = Exact match (case-sensitive)
]]--

-- ============================================================================
-- HELPER FUNCTIONS
-- ============================================================================

-- Check if pfQuest is available
function MT:IsPfQuestAvailable()
  return pfDB and pfDB["items"] and pfDB["items"]["loc"] and pfDatabase
end

-- Get item name from ID
-- Returns: itemName (string) or nil
function MT:GetItemNameByID(itemID)
  if not MT:IsPfQuestAvailable() then
    -- Fallback to WoW API
    local itemName = GetItemInfo(itemID)
    return itemName
  end

  return pfDB["items"]["loc"][itemID]
end

-- Get item ID from name (exact match, case-insensitive)
-- Returns: itemID (number) or nil
function MT:GetItemIDByName(itemName)
  if not MT:IsPfQuestAvailable() then
    MT:Print("pfQuest not available - cannot search by name")
    return nil
  end

  local results = pfDatabase:GetIDByName(itemName, "items", "LOWER")

  -- Return the first match (should only be one for exact match)
  for itemID, name in pairs(results) do
    return itemID
  end

  return nil
end

-- Search for items by partial name match
-- Returns: table of {itemID = itemName} for all matches
function MT:SearchItems(searchText)
  if not MT:IsPfQuestAvailable() then
    MT:Print("pfQuest not available - cannot search items")
    return {}
  end

  if not searchText or searchText == "" then
    return {}
  end

  -- Use fuzzy matching (substring search)
  return pfDatabase:GetIDByName(searchText, "items", true)
end

-- Get multiple item names at once (for efficiency)
-- Takes: array of itemIDs
-- Returns: table of {itemID = itemName}
function MT:GetItemNames(itemIDs)
  local names = {}

  for _, itemID in ipairs(itemIDs) do
    local name = MT:GetItemNameByID(itemID)
    if name then
      names[itemID] = name
    end
  end

  return names
end

-- ============================================================================
-- SEARCH RESULT FORMATTING
-- ============================================================================

-- Format search results for display
-- Takes: results table from SearchItems()
-- Returns: sorted array of {id, name} tables
function MT:FormatSearchResults(results)
  local formatted = {}

  for itemID, itemName in pairs(results) do
    table.insert(formatted, {
      id = itemID,
      name = itemName
    })
  end

  -- Sort by name
  table.sort(formatted, function(a, b)
    return a.name < b.name
  end)

  return formatted
end

-- ============================================================================
-- TESTING/DEBUGGING FUNCTIONS
-- ============================================================================

-- Test the pfQuest integration
function MT:TestPfQuestIntegration()
  MT:Print("Testing pfQuest integration...")

  if not MT:IsPfQuestAvailable() then
    MT:Print("|cffff5555ERROR:|r pfQuest not available!")
    return
  end

  MT:Print("|cff33ff33SUCCESS:|r pfQuest database accessible")

  -- Test 1: Get item name by ID
  local copperOreName = MT:GetItemNameByID(2770)
  MT:Print("Test 1 - Get name for ID 2770: " .. (copperOreName or "FAILED"))

  -- Test 2: Get item ID by name
  local copperOreID = MT:GetItemIDByName("Copper Ore")
  MT:Print("Test 2 - Get ID for 'Copper Ore': " .. (copperOreID or "FAILED"))

  -- Test 3: Search for items
  MT:Print("Test 3 - Search for 'Copper':")
  local results = MT:SearchItems("Copper")
  local count = 0
  for itemID, itemName in pairs(results) do
    count = count + 1
    if count <= 5 then  -- Only show first 5
      MT:Print("  - " .. itemName .. " (ID: " .. itemID .. ")")
    end
  end
  MT:Print("  Total matches: " .. count)

  MT:Print("Integration test complete!")
end
