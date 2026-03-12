--[[
  MaterialTracker - Bagshui Integration

  Reads bank and alt character inventories from Bagshui's SavedVariables
  to provide cross-character material tracking.
]]--

local MT = MaterialTracker

-- ============================================================================
-- AVAILABILITY CHECK
-- ============================================================================

function MT:IsBagshuiAvailable()
  return BagshuiData and BagshuiData.characters
end

function MT:GetBagshuiCharacterKey()
  if not MT.bagshuiCharKey then
    MT.bagshuiCharKey = UnitName("player") .. " - " .. GetRealmName()
  end
  return MT.bagshuiCharKey
end

-- ============================================================================
-- SCANNING FUNCTIONS
-- ============================================================================

-- Scan a single Bagshui character's inventory section (bags or bank)
-- section: the inventory table (e.g., character.bags.inventory or character.bank.inventory)
-- Returns item counts added to the provided table
local function ScanBagshuiSection(section, itemCounts)
  if not section then return end
  for bagNum, bag in pairs(section) do
    if type(bag) == "table" then
      for slotNum, slot in pairs(bag) do
        if type(slot) == "table" and slot.id and slot.count and (not slot.emptySlot or slot.emptySlot == 0) then
          itemCounts[slot.id] = (itemCounts[slot.id] or 0) + slot.count
        end
      end
    end
  end
end

-- Scan current character's bank via Bagshui
-- Returns: { [itemID] = count }
function MT:ScanBank()
  local itemCounts = {}

  if not MT:IsBagshuiAvailable() then
    MT:Debug("ScanBank: Bagshui not available")
    return itemCounts
  end

  local charKey = MT:GetBagshuiCharacterKey()
  MT:Debug("ScanBank: charKey = '" .. tostring(charKey) .. "'")

  local character = BagshuiData.characters[charKey]

  if not character then
    MT:Debug("ScanBank: No character entry found for key")
    return itemCounts
  end
  if not character.bank then
    MT:Debug("ScanBank: Character has no bank data")
    return itemCounts
  end
  if character.bank.neverOnline then
    MT:Debug("ScanBank: Bank marked as neverOnline")
    return itemCounts
  end

  ScanBagshuiSection(character.bank.inventory, itemCounts)

  local count = 0
  for _ in pairs(itemCounts) do count = count + 1 end
  MT:Debug("ScanBank: Found " .. count .. " unique items in bank")

  return itemCounts
end

-- Print a full diagnostic report for bank integration
function MT:BankDebugReport()
  MT:Print("=== Bank Debug Report ===")

  -- Check Bagshui globals
  MT:Print("BagshuiData exists: " .. tostring(BagshuiData ~= nil))
  if not BagshuiData then return end
  MT:Print("BagshuiData.characters exists: " .. tostring(BagshuiData.characters ~= nil))
  if not BagshuiData.characters then return end

  -- List all character keys Bagshui knows about
  MT:Print("Bagshui character keys:")
  for key, _ in pairs(BagshuiData.characters) do
    MT:Print("  '" .. tostring(key) .. "'")
  end

  -- Check our key
  local charKey = MT:GetBagshuiCharacterKey()
  MT:Print("Our charKey: '" .. tostring(charKey) .. "'")

  local character = BagshuiData.characters[charKey]
  if not character then
    MT:Print("ERROR: No match for our charKey in Bagshui data!")
    MT:Print("Check if the key format differs (case, spacing, realm name)")
    return
  end

  MT:Print("Character entry found: YES")
  MT:Print("Has .bank: " .. tostring(character.bank ~= nil))
  if character.bank then
    MT:Print("bank.neverOnline: " .. tostring(character.bank.neverOnline))
    MT:Print("Has .bank.inventory: " .. tostring(character.bank.inventory ~= nil))
    if character.bank.inventory then
      local bagCount = 0
      local itemCount = 0
      for bagNum, bag in pairs(character.bank.inventory) do
        if type(bag) == "table" then
          bagCount = bagCount + 1
          for slotNum, slot in pairs(bag) do
            if type(slot) == "table" and slot.id then
              itemCount = itemCount + 1
            end
          end
        end
      end
      MT:Print("Bank bags: " .. bagCount .. ", slots with items: " .. itemCount)
    end
  end

  -- Check setting
  MT:Print("includeBank setting: " .. tostring(MaterialTrackerDB.settings.includeBank))

  -- Try actual scan
  local results = MT:ScanBank()
  local total = 0
  for _ in pairs(results) do total = total + 1 end
  MT:Print("ScanBank returned " .. total .. " unique items")
  MT:Print("=== End Report ===")
end

-- Scan all other characters' bags and banks via Bagshui
-- Returns: { [itemID] = count } aggregated from all alts
function MT:ScanAlts()
  local itemCounts = {}

  if not MT:IsBagshuiAvailable() then return itemCounts end

  local currentChar = MT:GetBagshuiCharacterKey()

  for charKey, character in pairs(BagshuiData.characters) do
    if charKey ~= currentChar and type(character) == "table" then
      -- Scan alt's bags
      if character.bags and character.bags.inventory then
        ScanBagshuiSection(character.bags.inventory, itemCounts)
      end
      -- Scan alt's bank
      if character.bank and character.bank.inventory and not character.bank.neverOnline then
        ScanBagshuiSection(character.bank.inventory, itemCounts)
      end
    end
  end

  return itemCounts
end
