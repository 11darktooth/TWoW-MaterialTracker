--[[
  MaterialTracker - Tooltip Hooks

  Injects "MT: Need X for [ProjectName]" lines into item tooltips
  for any item tracked in a project.
]]--

local MT = MaterialTracker

MT.TrackedItemIndex = {}

-- ============================================================================
-- TRACKED ITEM INDEX
-- ============================================================================

-- Rebuild reverse index: { [itemID] = { {projectName, remaining}, ... } }
function MT:RebuildTrackedItemIndex()
  MT.TrackedItemIndex = {}
  for _, project in ipairs(MaterialTrackerDB.projects) do
    for _, rootGoal in ipairs(project.goals) do
      MT:IndexGoalRecursive(rootGoal, project.name)
    end
  end
end

function MT:IndexGoalRecursive(goal, projectName)
  local effectiveTarget = goal.effectiveTarget or goal.target
  local totalCount = goal.totalCount or goal.current or 0
  local remaining = effectiveTarget - totalCount
  if remaining > 0 then
    MT.TrackedItemIndex[goal.itemID] = MT.TrackedItemIndex[goal.itemID] or {}
    table.insert(MT.TrackedItemIndex[goal.itemID], {
      projectName = projectName,
      remaining = remaining
    })
  end
  for _, child in ipairs(goal.children) do
    MT:IndexGoalRecursive(child, projectName)
  end
end

-- ============================================================================
-- TOOLTIP INJECTION
-- ============================================================================

-- Inject lines into GameTooltip for a given itemID
function MT:InjectTooltipLines(itemID)
  local entries = MT.TrackedItemIndex[itemID]
  if not entries then return end
  for i, entry in ipairs(entries) do
    if i > 5 then break end
    GameTooltip:AddLine(
      "MT: Need " .. entry.remaining .. " for " .. entry.projectName,
      0.2, 1, 0.8
    )
  end
  GameTooltip:Show()
end

-- Extract itemID from an item link string
local function ExtractItemID(link)
  if not link then return nil end
  local _, _, id = string.find(link, "item:(%d+)")
  if id then return tonumber(id) end
  return nil
end

-- ============================================================================
-- HOOK TOOLTIP METHODS
-- ============================================================================

-- Hook GameTooltip:SetBagItem
local OriginalSetBagItem = GameTooltip.SetBagItem
GameTooltip.SetBagItem = function(self, bag, slot)
  OriginalSetBagItem(self, bag, slot)
  local link = GetContainerItemLink(bag, slot)
  local itemID = ExtractItemID(link)
  if itemID then
    MT:InjectTooltipLines(itemID)
  end
end

-- Hook GameTooltip:SetLootItem
local OriginalSetLootItem = GameTooltip.SetLootItem
GameTooltip.SetLootItem = function(self, slot)
  OriginalSetLootItem(self, slot)
  local link = GetLootSlotLink(slot)
  local itemID = ExtractItemID(link)
  if itemID then
    MT:InjectTooltipLines(itemID)
  end
end

-- Hook GameTooltip:SetMerchantItem
local OriginalSetMerchantItem = GameTooltip.SetMerchantItem
GameTooltip.SetMerchantItem = function(self, slot)
  OriginalSetMerchantItem(self, slot)
  local link = GetMerchantItemLink(slot)
  local itemID = ExtractItemID(link)
  if itemID then
    MT:InjectTooltipLines(itemID)
  end
end

-- Hook GameTooltip:SetAuctionItem
local OriginalSetAuctionItem = GameTooltip.SetAuctionItem
GameTooltip.SetAuctionItem = function(self, atype, index)
  OriginalSetAuctionItem(self, atype, index)
  local link = GetAuctionItemLink(atype, index)
  local itemID = ExtractItemID(link)
  if itemID then
    MT:InjectTooltipLines(itemID)
  end
end
