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
  -- Try pfQuest locale table first
  if MT:IsPfQuestAvailable() then
    local name = pfDB["items"]["loc"][itemID]
    if name then return name end
  end

  -- Fallback: WoW API (works for cached items)
  local itemName = GetItemInfo(itemID)
  if itemName then return itemName end

  -- Fallback: RecipeDB name field (if item is a crafted item)
  if MT_RecipeDB and MT_RecipeDB[itemID] and MT_RecipeDB[itemID].name then
    return MT_RecipeDB[itemID].name
  end

  return nil
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
-- MOB DROP ZONE DATA
-- ============================================================================

-- Parse a mob level string like "24-25" into minLevel, maxLevel
-- Handles: "24-25" → 24, 25 | "30" → 30, 30 | nil → 0, 0
function MT:ParseMobLevel(lvlString)
  if not lvlString or lvlString == "" then return 0, 0 end

  local _, _, minStr, maxStr = string.find(lvlString, "(%d+)%-(%d+)")
  if minStr and maxStr then
    return tonumber(minStr), tonumber(maxStr)
  end

  local _, _, single = string.find(lvlString, "(%d+)")
  if single then
    local lvl = tonumber(single)
    return lvl, lvl
  end

  return 0, 0
end

-- Get mob drop data for an item, aggregated by zone
-- Returns: { [zoneName] = { totalSpawns = N, mobs = { {name, lvl, dropRate, spawns}, ... } } }
-- Returns nil if pfQuest is not available or item has no mob drops
function MT:GetMobDropZones(itemID)
  if not pfDB or not pfDB["items"] or not pfDB["items"]["data"] then return nil end
  if not pfDB["units"] or not pfDB["units"]["data"] then return nil end

  local itemData = pfDB["items"]["data"][itemID]
  if not itemData or not itemData.U then return nil end

  local zones = {}

  for mobID, dropRate in pairs(itemData.U) do
    local unitData = pfDB["units"]["data"][mobID]
    if unitData and unitData.coords then
      local mobName = "Unknown"
      if pfDB["units"]["loc"] and pfDB["units"]["loc"][mobID] then
        mobName = pfDB["units"]["loc"][mobID]
      end

      local lvlString = unitData.lvl or ""

      -- Aggregate spawns per zone for this mob
      local mobZoneSpawns = {}  -- { [zoneID] = totalSpawns }
      for _, coord in pairs(unitData.coords) do
        -- coord format: {x, y, zoneID, spawnCount}
        local zoneID = coord[3]
        local spawnCount = coord[4] or 1
        if zoneID then
          mobZoneSpawns[zoneID] = (mobZoneSpawns[zoneID] or 0) + spawnCount
        end
      end

      -- Add to zone results
      for zoneID, spawns in pairs(mobZoneSpawns) do
        local zoneName = nil
        if pfDB["zones"] and pfDB["zones"]["loc"] and pfDB["zones"]["loc"][zoneID] then
          zoneName = pfDB["zones"]["loc"][zoneID]
        end

        if zoneName then
          if not zones[zoneName] then
            zones[zoneName] = { totalSpawns = 0, mobs = {} }
          end
          zones[zoneName].totalSpawns = zones[zoneName].totalSpawns + spawns
          table.insert(zones[zoneName].mobs, {
            name = mobName,
            lvl = lvlString,
            dropRate = dropRate,
            spawns = spawns
          })
        end
      end
    end
  end

  -- Return nil if no zones found
  local hasZones = false
  for _ in pairs(zones) do hasZones = true; break end
  if not hasZones then return nil end

  return zones
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
