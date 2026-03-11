--[[
  MaterialTracker - Project Creation GUI

  Dialog window for creating new projects and adding materials to existing goals.
]]--

local MT = MaterialTracker

-- ============================================================================
-- CONFIGURATION
-- ============================================================================

local DIALOG_WIDTH = 400
local DIALOG_HEIGHT = 500
local SEARCH_RESULT_HEIGHT = 20
local MAX_RESULTS = 15

-- Font settings
local function GetFont()
  if pfUI and pfUI.font_default then
    return pfUI.font_default, 12
  else
    return "Fonts\\FRIZQT__.TTF", 12
  end
end

-- ============================================================================
-- CREATION DIALOG FRAME
-- ============================================================================

MT.CreationDialog = CreateFrame("Frame", "MaterialTrackerCreationDialog", UIParent)
local dialog = MT.CreationDialog

dialog:Hide()
dialog:SetWidth(DIALOG_WIDTH)
dialog:SetHeight(DIALOG_HEIGHT)
dialog:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
dialog:SetFrameStrata("DIALOG")
dialog:SetMovable(true)
dialog:EnableMouse(true)
dialog:SetClampedToScreen(true)

-- Make dialog movable by dragging
dialog:SetScript("OnMouseDown", function()
  this:StartMoving()
end)

dialog:SetScript("OnMouseUp", function()
  this:StopMovingOrSizing()
end)

-- Close on Escape key
dialog:SetScript("OnKeyDown", function()
  if arg1 == "ESCAPE" then
    dialog:Hide()
  end
end)

-- ============================================================================
-- BACKDROP
-- ============================================================================

dialog.backdrop = CreateFrame("Frame", nil, dialog)
dialog.backdrop:SetAllPoints()
dialog.backdrop.bg = dialog.backdrop:CreateTexture(nil, "BACKGROUND")
dialog.backdrop.bg:SetTexture(0, 0, 0, 0.9)
dialog.backdrop.bg:SetAllPoints()

-- Border
dialog.border = CreateFrame("Frame", nil, dialog)
dialog.border:SetAllPoints()
dialog.border:SetBackdrop({
  edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
  edgeSize = 16,
  insets = { left = 4, right = 4, top = 4, bottom = 4 }
})

-- ============================================================================
-- HEADER
-- ============================================================================

dialog.header = CreateFrame("Frame", nil, dialog)
dialog.header:SetPoint("TOPLEFT", 0, 0)
dialog.header:SetPoint("TOPRIGHT", 0, 0)
dialog.header:SetHeight(40)

dialog.header.bg = dialog.header:CreateTexture(nil, "BACKGROUND")
dialog.header.bg:SetTexture(0.2, 0.2, 0.2, 1)
dialog.header.bg:SetAllPoints()

dialog.header.title = dialog.header:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
dialog.header.title:SetFont(GetFont())
dialog.header.title:SetPoint("LEFT", 10, 0)
dialog.header.title:SetTextColor(0.2, 1, 0.8)
dialog.header.title:SetText("Create Material Project")

-- Close button
dialog.closeButton = CreateFrame("Button", nil, dialog.header)
dialog.closeButton:SetPoint("TOPRIGHT", -5, -5)
dialog.closeButton:SetWidth(30)
dialog.closeButton:SetHeight(30)
dialog.closeButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Up")
dialog.closeButton:SetPushedTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Down")
dialog.closeButton:SetHighlightTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight")
dialog.closeButton:SetScript("OnClick", function()
  dialog:Hide()
end)

-- ============================================================================
-- SEARCH SECTION
-- ============================================================================

-- Search label
dialog.searchLabel = dialog:CreateFontString(nil, "OVERLAY")
local font, size = GetFont()
dialog.searchLabel:SetFont(font, 13, "THICKOUTLINE")
dialog.searchLabel:SetPoint("TOPLEFT", 10, -50)
dialog.searchLabel:SetTextColor(1, 1, 1)
dialog.searchLabel:SetText("Search for Item:")

-- Search input box
dialog.searchBox = CreateFrame("EditBox", "MaterialTrackerSearchBox", dialog)
dialog.searchBox:SetPoint("TOPLEFT", 10, -70)
dialog.searchBox:SetWidth(DIALOG_WIDTH - 20)
dialog.searchBox:SetHeight(30)
dialog.searchBox:SetAutoFocus(false)
dialog.searchBox:SetFont(GetFont())
dialog.searchBox:SetTextColor(1, 1, 1)
dialog.searchBox:SetMaxLetters(50)

-- Search box backdrop
dialog.searchBox.backdrop = CreateFrame("Frame", nil, dialog.searchBox)
dialog.searchBox.backdrop:SetAllPoints()
dialog.searchBox.backdrop:SetBackdrop({
  bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
  edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
  tile = true,
  tileSize = 16,
  edgeSize = 12,
  insets = { left = 3, right = 3, top = 3, bottom = 3 }
})
dialog.searchBox.backdrop:SetBackdropColor(0.1, 0.1, 0.1, 0.9)
dialog.searchBox.backdrop:SetBackdropBorderColor(0.4, 0.4, 0.4, 1)

-- Handle search on text change
dialog.searchBox:SetScript("OnTextChanged", function()
  local searchText = this:GetText()
  if searchText and string.len(searchText) > 0 then
    MT:PerformSearch(searchText)
  else
    MT:ClearSearchResults()
  end
end)

dialog.searchBox:SetScript("OnEnterPressed", function()
  this:ClearFocus()
end)

dialog.searchBox:SetScript("OnEscapePressed", function()
  this:ClearFocus()
  dialog:Hide()
end)

-- ============================================================================
-- RESULTS SECTION
-- ============================================================================

-- Results label
dialog.resultsLabel = dialog:CreateFontString(nil, "OVERLAY")
dialog.resultsLabel:SetFont(font, 13, "THICKOUTLINE")
dialog.resultsLabel:SetPoint("TOPLEFT", 10, -115)
dialog.resultsLabel:SetTextColor(1, 1, 1)
dialog.resultsLabel:SetText("Results:")

-- Results scroll frame container
dialog.resultsContainer = CreateFrame("Frame", nil, dialog)
dialog.resultsContainer:SetPoint("TOPLEFT", 10, -140)
dialog.resultsContainer:SetPoint("BOTTOMRIGHT", -10, 100)

dialog.resultsContainer.backdrop = CreateFrame("Frame", nil, dialog.resultsContainer)
dialog.resultsContainer.backdrop:SetAllPoints()
dialog.resultsContainer.backdrop:SetBackdrop({
  bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
  edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
  tile = true,
  tileSize = 16,
  edgeSize = 12,
  insets = { left = 3, right = 3, top = 3, bottom = 3 }
})
dialog.resultsContainer.backdrop:SetBackdropColor(0.05, 0.05, 0.05, 0.9)
dialog.resultsContainer.backdrop:SetBackdropBorderColor(0.4, 0.4, 0.4, 1)

-- Result buttons (reusable pool)
dialog.resultButtons = {}

local function CreateResultButton(index)
  local button = CreateFrame("Button", nil, dialog.resultsContainer)
  button:SetWidth(DIALOG_WIDTH - 40)
  button:SetHeight(SEARCH_RESULT_HEIGHT)
  button:EnableMouse(true)

  button.bg = button:CreateTexture(nil, "BACKGROUND")
  button.bg:SetAllPoints()
  button.bg:SetTexture(0.2, 0.2, 0.2, 0.3)
  button.bg:Hide()

  button.text = button:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
  button.text:SetFont(GetFont())
  button.text:SetPoint("LEFT", 5, 0)
  button.text:SetJustifyH("LEFT")

  button:SetScript("OnEnter", function()
    this.bg:Show()
  end)

  button:SetScript("OnLeave", function()
    this.bg:Hide()
  end)

  button:SetScript("OnClick", function()
    if this.itemID then
      MT:SelectItem(this.itemID, this.itemName)
    end
  end)

  button:Hide()
  return button
end

local function GetResultButton(index)
  if not dialog.resultButtons[index] then
    dialog.resultButtons[index] = CreateResultButton(index)
  end
  return dialog.resultButtons[index]
end

-- ============================================================================
-- SELECTED ITEM SECTION
-- ============================================================================

-- Selected item label
dialog.selectedLabel = dialog:CreateFontString(nil, "OVERLAY")
dialog.selectedLabel:SetFont(font, 13, "THICKOUTLINE")
dialog.selectedLabel:SetPoint("BOTTOMLEFT", 10, 85)
dialog.selectedLabel:SetTextColor(1, 1, 1)
dialog.selectedLabel:SetText("Selected Item:")

-- Selected item display
dialog.selectedItem = dialog:CreateFontString(nil, "OVERLAY")
dialog.selectedItem:SetFont(font, 13, "THICKOUTLINE")
dialog.selectedItem:SetPoint("LEFT", dialog.selectedLabel, "RIGHT", 5, 0)
dialog.selectedItem:SetTextColor(1, 1, 0)
dialog.selectedItem:SetText("(none)")

-- Quantity label
dialog.quantityLabel = dialog:CreateFontString(nil, "OVERLAY")
dialog.quantityLabel:SetFont(font, 13, "THICKOUTLINE")
dialog.quantityLabel:SetPoint("BOTTOMLEFT", 10, 55)
dialog.quantityLabel:SetTextColor(1, 1, 1)
dialog.quantityLabel:SetText("Target Quantity:")

-- Quantity input
dialog.quantityBox = CreateFrame("EditBox", "MaterialTrackerQuantityBox", dialog)
dialog.quantityBox:SetPoint("LEFT", dialog.quantityLabel, "RIGHT", 10, 0)
dialog.quantityBox:SetWidth(80)
dialog.quantityBox:SetHeight(25)
dialog.quantityBox:SetAutoFocus(false)
dialog.quantityBox:SetFont(GetFont())
dialog.quantityBox:SetTextColor(1, 1, 1)
dialog.quantityBox:SetJustifyH("CENTER")
dialog.quantityBox:SetTextInsets(5, 5, 0, 0)
dialog.quantityBox:SetMaxLetters(5)
dialog.quantityBox:SetNumeric(true)
dialog.quantityBox:SetText("1")

dialog.quantityBox.backdrop = CreateFrame("Frame", nil, dialog.quantityBox)
dialog.quantityBox.backdrop:SetAllPoints()
dialog.quantityBox.backdrop:SetBackdrop({
  bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
  edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
  tile = true,
  tileSize = 16,
  edgeSize = 12,
  insets = { left = 3, right = 3, top = 3, bottom = 3 }
})
dialog.quantityBox.backdrop:SetBackdropColor(0.1, 0.1, 0.1, 0.9)
dialog.quantityBox.backdrop:SetBackdropBorderColor(0.4, 0.4, 0.4, 1)

dialog.quantityBox:SetScript("OnEnterPressed", function()
  this:ClearFocus()
end)

dialog.quantityBox:SetScript("OnEscapePressed", function()
  this:ClearFocus()
end)

dialog.quantityBox:SetScript("OnEditFocusGained", function()
  this:HighlightText()
end)

dialog.quantityBox:SetScript("OnEditFocusLost", function()
  this:HighlightText(0, 0)
end)

-- ============================================================================
-- RECIPE CHECKBOX
-- ============================================================================

-- Include materials checkbox (for crafted items)
dialog.recipeCheckbox = CreateFrame("CheckButton", "MaterialTrackerRecipeCheckbox", dialog)
dialog.recipeCheckbox:SetPoint("BOTTOMLEFT", dialog.quantityLabel, "BOTTOMLEFT", 0, -30)
dialog.recipeCheckbox:SetWidth(20)
dialog.recipeCheckbox:SetHeight(20)
dialog.recipeCheckbox:SetNormalTexture("Interface\\Buttons\\UI-CheckBox-Up")
dialog.recipeCheckbox:SetPushedTexture("Interface\\Buttons\\UI-CheckBox-Down")
dialog.recipeCheckbox:SetHighlightTexture("Interface\\Buttons\\UI-CheckBox-Highlight")
dialog.recipeCheckbox:SetCheckedTexture("Interface\\Buttons\\UI-CheckBox-Check")
dialog.recipeCheckbox:SetChecked(true) -- Default checked
dialog.recipeCheckbox:Hide() -- Hidden until we select a crafted item

dialog.recipeCheckbox.label = dialog:CreateFontString(nil, "OVERLAY")
dialog.recipeCheckbox.label:SetFont(font, 13, "THICKOUTLINE")
dialog.recipeCheckbox.label:SetPoint("LEFT", dialog.recipeCheckbox, "RIGHT", 5, 0)
dialog.recipeCheckbox.label:SetTextColor(0.2, 1, 0.8)
dialog.recipeCheckbox.label:SetText("Include materials automatically")

-- Store recipe info for tooltip
dialog.recipeCheckbox.recipe = nil

dialog.recipeCheckbox:SetScript("OnEnter", function()
  if this.recipe and this.recipe.materials then
    GameTooltip:SetOwner(this, "ANCHOR_RIGHT")
    GameTooltip:SetText("Recipe Materials:")
    for _, mat in ipairs(this.recipe.materials) do
      local matName = MT:GetItemNameByID(mat.itemID) or "Item " .. mat.itemID
      GameTooltip:AddLine(mat.count .. "x " .. matName, 1, 1, 1)
    end
    GameTooltip:Show()
  end
end)

dialog.recipeCheckbox:SetScript("OnLeave", function()
  GameTooltip:Hide()
end)

-- ============================================================================
-- ACTION BUTTONS
-- ============================================================================

-- Create Project button
dialog.createButton = CreateFrame("Button", nil, dialog)
dialog.createButton:SetPoint("BOTTOMLEFT", 10, 10)
dialog.createButton:SetWidth(180)
dialog.createButton:SetHeight(30)

-- Button backdrop
dialog.createButton.backdrop = CreateFrame("Frame", nil, dialog.createButton)
dialog.createButton.backdrop:SetAllPoints()
dialog.createButton.backdrop:SetBackdrop({
  bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
  edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
  tile = true,
  tileSize = 16,
  edgeSize = 12,
  insets = { left = 3, right = 3, top = 3, bottom = 3 }
})
dialog.createButton.backdrop:SetBackdropColor(0.2, 0.5, 0.2, 0.9)
dialog.createButton.backdrop:SetBackdropBorderColor(0.5, 0.8, 0.5, 1)

dialog.createButton.text = dialog.createButton:CreateFontString(nil, "OVERLAY", "GameFontNormal")
dialog.createButton.text:SetFont(GetFont())
dialog.createButton.text:SetAllPoints()
dialog.createButton.text:SetTextColor(1, 1, 1)
dialog.createButton.text:SetText("Create New Project")

dialog.createButton:SetScript("OnClick", function()
  MT:CreateProjectFromDialog()
end)

dialog.createButton:SetScript("OnEnter", function()
  this.backdrop:SetBackdropColor(0.3, 0.7, 0.3, 1)
end)

dialog.createButton:SetScript("OnLeave", function()
  this.backdrop:SetBackdropColor(0.2, 0.5, 0.2, 0.9)
end)

-- Cancel button
dialog.cancelButton = CreateFrame("Button", nil, dialog)
dialog.cancelButton:SetPoint("BOTTOMRIGHT", -10, 10)
dialog.cancelButton:SetWidth(100)
dialog.cancelButton:SetHeight(30)

-- Button backdrop
dialog.cancelButton.backdrop = CreateFrame("Frame", nil, dialog.cancelButton)
dialog.cancelButton.backdrop:SetAllPoints()
dialog.cancelButton.backdrop:SetBackdrop({
  bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
  edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
  tile = true,
  tileSize = 16,
  edgeSize = 12,
  insets = { left = 3, right = 3, top = 3, bottom = 3 }
})
dialog.cancelButton.backdrop:SetBackdropColor(0.5, 0.2, 0.2, 0.9)
dialog.cancelButton.backdrop:SetBackdropBorderColor(0.8, 0.5, 0.5, 1)

dialog.cancelButton.text = dialog.cancelButton:CreateFontString(nil, "OVERLAY", "GameFontNormal")
dialog.cancelButton.text:SetFont(GetFont())
dialog.cancelButton.text:SetAllPoints()
dialog.cancelButton.text:SetTextColor(1, 1, 1)
dialog.cancelButton.text:SetText("Cancel")

dialog.cancelButton:SetScript("OnClick", function()
  dialog:Hide()
end)

dialog.cancelButton:SetScript("OnEnter", function()
  this.backdrop:SetBackdropColor(0.7, 0.3, 0.3, 1)
end)

dialog.cancelButton:SetScript("OnLeave", function()
  this.backdrop:SetBackdropColor(0.5, 0.2, 0.2, 0.9)
end)

-- ============================================================================
-- DIALOG FUNCTIONS
-- ============================================================================

-- Store selected item
dialog.selectedItemID = nil
dialog.selectedItemName = nil
dialog.parentGoal = nil  -- For adding to existing projects

-- Open dialog for creating new project
function MT:OpenCreationDialog()
  dialog.selectedItemID = nil
  dialog.selectedItemName = nil
  dialog.parentGoal = nil

  dialog.header.title:SetText("Create Material Project")
  dialog.createButton.text:SetText("Create New Project")
  dialog.selectedItem:SetText("(none)")
  dialog.searchBox:SetText("")
  dialog.quantityBox:SetText("1")

  MT:ClearSearchResults()
  dialog:Show()
  dialog.searchBox:SetFocus()
end

-- Open dialog for adding material to existing goal
function MT:OpenAddMaterialDialog(parentGoal)
  dialog.selectedItemID = nil
  dialog.selectedItemName = nil
  dialog.parentGoal = parentGoal

  dialog.header.title:SetText("Add Material to " .. parentGoal.itemName)
  dialog.createButton.text:SetText("Add Material")
  dialog.selectedItem:SetText("(none)")
  dialog.searchBox:SetText("")
  dialog.quantityBox:SetText("1")

  MT:ClearSearchResults()
  dialog:Show()
  dialog.searchBox:SetFocus()
end

-- Perform item search
function MT:PerformSearch(searchText)
  local results = MT:SearchItems(searchText)
  local formatted = MT:FormatSearchResults(results)

  -- Hide all buttons first
  for _, button in pairs(dialog.resultButtons) do
    button:Hide()
  end

  -- Display results
  local count = math.min(MAX_RESULTS, table.getn(formatted))

  for i = 1, count do
    local button = GetResultButton(i)
    local item = formatted[i]

    button.itemID = item.id
    button.itemName = item.name
    button.text:SetText(item.name .. " (ID: " .. item.id .. ")")

    button:SetPoint("TOPLEFT", dialog.resultsContainer, "TOPLEFT", 10, -(i - 1) * SEARCH_RESULT_HEIGHT - 5)
    button:Show()
  end

  -- Update results label
  if count == 0 then
    dialog.resultsLabel:SetText("Results: No items found")
  elseif table.getn(formatted) > MAX_RESULTS then
    dialog.resultsLabel:SetText(string.format("Results: Showing %d of %d", count, table.getn(formatted)))
  else
    dialog.resultsLabel:SetText(string.format("Results: %d items", count))
  end
end

-- Clear search results
function MT:ClearSearchResults()
  for _, button in pairs(dialog.resultButtons) do
    button:Hide()
  end
  dialog.resultsLabel:SetText("Results:")

  -- Also hide recipe checkbox when clearing
  dialog.recipeCheckbox:Hide()
end

-- Select an item from results
function MT:SelectItem(itemID, itemName)
  dialog.selectedItemID = itemID
  dialog.selectedItemName = itemName
  dialog.selectedItem:SetText(itemName)

  MT:Debug("Selected item: " .. itemName .. " (ID: " .. itemID .. ")")

  -- Check if this item has a recipe
  local recipe = MT:GetRecipe(itemID)
  if recipe and recipe.materials then
    -- Show recipe checkbox
    dialog.recipeCheckbox.recipe = recipe
    dialog.recipeCheckbox:Show()

    -- Update label with material count
    local matCount = table.getn(recipe.materials)
    dialog.recipeCheckbox.label:SetText("Include materials automatically (" .. matCount .. " items)")
  else
    -- Hide recipe checkbox
    dialog.recipeCheckbox:Hide()
  end
end

-- Create project or add material from dialog
function MT:CreateProjectFromDialog()
  if not dialog.selectedItemID then
    MT:Print("Please select an item first")
    return
  end

  local quantity = tonumber(dialog.quantityBox:GetText())
  if not quantity or quantity <= 0 then
    MT:Print("Please enter a valid quantity")
    return
  end

  -- Check if we should include recipe materials
  local includeRecipe = dialog.recipeCheckbox:IsShown() and dialog.recipeCheckbox:GetChecked()

  if dialog.parentGoal then
    -- Adding to existing goal
    local childGoal = MT:AddChildGoal(dialog.parentGoal, dialog.selectedItemID, quantity)

    if childGoal then
      -- Expand with recipe if checkbox is checked
      if includeRecipe then
        MT:ExpandGoalWithRecipe(childGoal, quantity)
      end

      MT:UpdateAllProjectCounts()
      MT:UpdateTrackerDisplay()
      MT:Print("Added " .. dialog.selectedItemName .. " to " .. dialog.parentGoal.itemName)
      dialog:Hide()
    end
  else
    -- Creating new project
    local project

    if includeRecipe then
      -- Use recipe-aware creation
      project = MT:CreateProjectWithRecipe(dialog.selectedItemName, dialog.selectedItemID, quantity, true)
    else
      -- Create simple project
      project = MT:CreateProject(dialog.selectedItemName, dialog.selectedItemID, quantity)
    end

    if project then
      MT:UpdateAllProjectCounts()
      MT:UpdateTrackerDisplay()
      MT:Print("Created project: " .. dialog.selectedItemName)
      dialog:Hide()
    end
  end
end

-- ============================================================================
-- PUBLIC API
-- ============================================================================

function MT:ShowCreationDialog()
  MT:OpenCreationDialog()
end

function MT:ShowAddMaterialDialog(parentGoal)
  MT:OpenAddMaterialDialog(parentGoal)
end
