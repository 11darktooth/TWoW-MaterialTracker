--[[
  MaterialTracker - Project Creation GUI

  Dialog window for creating new projects and adding materials to existing goals.
]]--

local MT = MaterialTracker

-- ============================================================================
-- CONFIGURATION
-- ============================================================================

local DIALOG_WIDTH = 400
local DIALOG_HEIGHT = 620
local SEARCH_RESULT_HEIGHT = 20
local MAX_RESULTS = 8
local MAX_CART_ROWS = 6

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

-- Search label (created on dialog.border so it renders above the backdrop child frame)
dialog.searchLabel = dialog.border:CreateFontString(nil, "OVERLAY")
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
dialog.resultsLabel = dialog.border:CreateFontString(nil, "OVERLAY")
dialog.resultsLabel:SetFont(font, 13, "THICKOUTLINE")
dialog.resultsLabel:SetPoint("TOPLEFT", 10, -115)
dialog.resultsLabel:SetTextColor(1, 1, 1)
dialog.resultsLabel:SetText("Results:")

-- Results scroll frame container
dialog.resultsContainer = CreateFrame("Frame", nil, dialog)
dialog.resultsContainer:SetPoint("TOPLEFT", 10, -140)
dialog.resultsContainer:SetPoint("TOPRIGHT", -10, -140)
dialog.resultsContainer:SetHeight(MAX_RESULTS * SEARCH_RESULT_HEIGHT + 10)

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
-- STAGING ROW (appears when user clicks a search result)
-- ============================================================================

local STAGING_TOP = -140 - (MAX_RESULTS * SEARCH_RESULT_HEIGHT + 10) - 10

dialog.staging = CreateFrame("Frame", nil, dialog)
dialog.staging:SetPoint("TOPLEFT", 10, STAGING_TOP)
dialog.staging:SetPoint("TOPRIGHT", -10, STAGING_TOP)
dialog.staging:SetHeight(55)
dialog.staging:Hide()

dialog.staging.bg = dialog.staging:CreateTexture(nil, "BACKGROUND")
dialog.staging.bg:SetAllPoints()
dialog.staging.bg:SetTexture(0.15, 0.15, 0.15, 0.8)

-- Item name display
dialog.staging.nameText = dialog.staging:CreateFontString(nil, "OVERLAY")
dialog.staging.nameText:SetFont(font, 12, "THICKOUTLINE")
dialog.staging.nameText:SetPoint("TOPLEFT", 5, -5)
dialog.staging.nameText:SetTextColor(1, 1, 0)
dialog.staging.nameText:SetText("")

-- Quantity label
dialog.staging.qtyLabel = dialog.staging:CreateFontString(nil, "OVERLAY")
dialog.staging.qtyLabel:SetFont(font, 11, "THICKOUTLINE")
dialog.staging.qtyLabel:SetPoint("BOTTOMLEFT", 5, 5)
dialog.staging.qtyLabel:SetTextColor(1, 1, 1)
dialog.staging.qtyLabel:SetText("Qty:")

-- Quantity input
dialog.staging.quantityBox = CreateFrame("EditBox", "MaterialTrackerStagingQtyBox", dialog.staging)
dialog.staging.quantityBox:SetPoint("LEFT", dialog.staging.qtyLabel, "RIGHT", 5, 0)
dialog.staging.quantityBox:SetWidth(50)
dialog.staging.quantityBox:SetHeight(20)
dialog.staging.quantityBox:SetAutoFocus(false)
dialog.staging.quantityBox:SetFont(GetFont())
dialog.staging.quantityBox:SetTextColor(1, 1, 1)
dialog.staging.quantityBox:SetJustifyH("CENTER")
dialog.staging.quantityBox:SetTextInsets(3, 3, 0, 0)
dialog.staging.quantityBox:SetMaxLetters(5)
dialog.staging.quantityBox:SetNumeric(true)
dialog.staging.quantityBox:SetText("1")

dialog.staging.quantityBox.backdrop = CreateFrame("Frame", nil, dialog.staging.quantityBox)
dialog.staging.quantityBox.backdrop:SetAllPoints()
dialog.staging.quantityBox.backdrop:SetBackdrop({
  bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
  edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
  tile = true,
  tileSize = 16,
  edgeSize = 12,
  insets = { left = 3, right = 3, top = 3, bottom = 3 }
})
dialog.staging.quantityBox.backdrop:SetBackdropColor(0.1, 0.1, 0.1, 0.9)
dialog.staging.quantityBox.backdrop:SetBackdropBorderColor(0.4, 0.4, 0.4, 1)

dialog.staging.quantityBox:SetScript("OnEnterPressed", function()
  MT:AddStagingToCart()
end)

dialog.staging.quantityBox:SetScript("OnEscapePressed", function()
  this:ClearFocus()
end)

dialog.staging.quantityBox:SetScript("OnEditFocusGained", function()
  this:HighlightText()
end)

dialog.staging.quantityBox:SetScript("OnEditFocusLost", function()
  this:HighlightText(0, 0)
end)

-- Recipe checkbox (inline in staging row)
dialog.staging.recipeCheckbox = CreateFrame("CheckButton", "MaterialTrackerStagingRecipeCheckbox", dialog.staging)
dialog.staging.recipeCheckbox:SetPoint("LEFT", dialog.staging.quantityBox, "RIGHT", 10, 0)
dialog.staging.recipeCheckbox:SetWidth(16)
dialog.staging.recipeCheckbox:SetHeight(16)
dialog.staging.recipeCheckbox:SetNormalTexture("Interface\\Buttons\\UI-CheckBox-Up")
dialog.staging.recipeCheckbox:SetPushedTexture("Interface\\Buttons\\UI-CheckBox-Down")
dialog.staging.recipeCheckbox:SetHighlightTexture("Interface\\Buttons\\UI-CheckBox-Highlight")
dialog.staging.recipeCheckbox:SetCheckedTexture("Interface\\Buttons\\UI-CheckBox-Check")
dialog.staging.recipeCheckbox:SetChecked(true)
dialog.staging.recipeCheckbox:Hide()

dialog.staging.recipeCheckbox.label = dialog.staging:CreateFontString(nil, "OVERLAY")
dialog.staging.recipeCheckbox.label:SetFont(font, 11, "THICKOUTLINE")
dialog.staging.recipeCheckbox.label:SetPoint("LEFT", dialog.staging.recipeCheckbox, "RIGHT", 3, 0)
dialog.staging.recipeCheckbox.label:SetTextColor(0.2, 1, 0.8)
dialog.staging.recipeCheckbox.label:SetText("Recipe")

dialog.staging.recipeCheckbox.recipe = nil

dialog.staging.recipeCheckbox:SetScript("OnEnter", function()
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

dialog.staging.recipeCheckbox:SetScript("OnLeave", function()
  GameTooltip:Hide()
end)

-- "Add" button
dialog.staging.addButton = CreateFrame("Button", nil, dialog.staging)
dialog.staging.addButton:SetPoint("RIGHT", -5, 0)
dialog.staging.addButton:SetWidth(50)
dialog.staging.addButton:SetHeight(22)

dialog.staging.addButton.backdrop = CreateFrame("Frame", nil, dialog.staging.addButton)
dialog.staging.addButton.backdrop:SetAllPoints()
dialog.staging.addButton.backdrop:SetBackdrop({
  bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
  edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
  tile = true,
  tileSize = 16,
  edgeSize = 12,
  insets = { left = 3, right = 3, top = 3, bottom = 3 }
})
dialog.staging.addButton.backdrop:SetBackdropColor(0.2, 0.4, 0.6, 0.9)
dialog.staging.addButton.backdrop:SetBackdropBorderColor(0.4, 0.6, 0.8, 1)

dialog.staging.addButton.text = dialog.staging.addButton:CreateFontString(nil, "OVERLAY")
dialog.staging.addButton.text:SetFont(font, 11, "THICKOUTLINE")
dialog.staging.addButton.text:SetAllPoints()
dialog.staging.addButton.text:SetTextColor(1, 1, 1)
dialog.staging.addButton.text:SetText("Add")

dialog.staging.addButton:SetScript("OnClick", function()
  MT:AddStagingToCart()
end)

dialog.staging.addButton:SetScript("OnEnter", function()
  this.backdrop:SetBackdropColor(0.3, 0.5, 0.7, 1)
end)

dialog.staging.addButton:SetScript("OnLeave", function()
  this.backdrop:SetBackdropColor(0.2, 0.4, 0.6, 0.9)
end)

-- Staging state
dialog.staging.itemID = nil
dialog.staging.itemName = nil

-- ============================================================================
-- CART SECTION
-- ============================================================================

local CART_TOP = STAGING_TOP - 60

dialog.cartLabel = dialog.border:CreateFontString(nil, "OVERLAY")
dialog.cartLabel:SetFont(font, 13, "THICKOUTLINE")
dialog.cartLabel:SetPoint("TOPLEFT", 10, CART_TOP)
dialog.cartLabel:SetTextColor(1, 1, 1)
dialog.cartLabel:SetText("Cart:")

dialog.cartContainer = CreateFrame("Frame", nil, dialog)
dialog.cartContainer:SetPoint("TOPLEFT", 10, CART_TOP - 20)
dialog.cartContainer:SetPoint("TOPRIGHT", -10, CART_TOP - 20)
dialog.cartContainer:SetHeight(MAX_CART_ROWS * 22)

dialog.cart = {}
dialog.cartRows = {}

local function CreateCartRow(index)
  local row = CreateFrame("Frame", nil, dialog.cartContainer)
  row:SetWidth(DIALOG_WIDTH - 40)
  row:SetHeight(20)
  row:SetPoint("TOPLEFT", 0, -(index - 1) * 22)

  row.bg = row:CreateTexture(nil, "BACKGROUND")
  row.bg:SetAllPoints()
  row.bg:SetTexture(0.1, 0.1, 0.1, 0.5)

  row.text = row:CreateFontString(nil, "OVERLAY")
  row.text:SetFont(font, 11, "THICKOUTLINE")
  row.text:SetPoint("LEFT", 5, 0)
  row.text:SetPoint("RIGHT", -25, 0)
  row.text:SetJustifyH("LEFT")
  row.text:SetTextColor(1, 1, 1)

  -- Remove button
  row.removeBtn = CreateFrame("Button", nil, row)
  row.removeBtn:SetPoint("RIGHT", -2, 0)
  row.removeBtn:SetWidth(18)
  row.removeBtn:SetHeight(18)

  row.removeBtn.text = row.removeBtn:CreateFontString(nil, "OVERLAY")
  row.removeBtn.text:SetFont(font, 11, "THICKOUTLINE")
  row.removeBtn.text:SetAllPoints()
  row.removeBtn.text:SetTextColor(1, 0.3, 0.3)
  row.removeBtn.text:SetText("X")

  row.removeBtn:SetScript("OnClick", function()
    local idx = this:GetParent().cartIndex
    if idx then
      table.remove(dialog.cart, idx)
      MT:UpdateCartDisplay()
    end
  end)

  row.removeBtn:SetScript("OnEnter", function()
    this.text:SetTextColor(1, 0.6, 0.6)
  end)

  row.removeBtn:SetScript("OnLeave", function()
    this.text:SetTextColor(1, 0.3, 0.3)
  end)

  row:Hide()
  return row
end

local function GetCartRow(index)
  if not dialog.cartRows[index] then
    dialog.cartRows[index] = CreateCartRow(index)
  end
  return dialog.cartRows[index]
end

-- ============================================================================
-- PROJECT NAME FIELD (only shown when creating new project)
-- ============================================================================

local PROJECT_NAME_TOP = CART_TOP - 20 - (MAX_CART_ROWS * 22) - 10

dialog.projectNameLabel = dialog.border:CreateFontString(nil, "OVERLAY")
dialog.projectNameLabel:SetFont(font, 13, "THICKOUTLINE")
dialog.projectNameLabel:SetPoint("TOPLEFT", 10, PROJECT_NAME_TOP)
dialog.projectNameLabel:SetTextColor(1, 1, 1)
dialog.projectNameLabel:SetText("Project Name:")

dialog.projectNameBox = CreateFrame("EditBox", "MaterialTrackerProjectNameBox", dialog)
dialog.projectNameBox:SetPoint("LEFT", dialog.projectNameLabel, "RIGHT", 10, 0)
dialog.projectNameBox:SetWidth(200)
dialog.projectNameBox:SetHeight(25)
dialog.projectNameBox:SetAutoFocus(false)
dialog.projectNameBox:SetFont(GetFont())
dialog.projectNameBox:SetTextColor(1, 1, 1)
dialog.projectNameBox:SetMaxLetters(50)
dialog.projectNameBox:SetNumeric(false)
dialog.projectNameBox:SetTextInsets(5, 5, 0, 0)

dialog.projectNameBox.backdrop = CreateFrame("Frame", nil, dialog.projectNameBox)
dialog.projectNameBox.backdrop:SetAllPoints()
dialog.projectNameBox.backdrop:SetBackdrop({
  bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
  edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
  tile = true,
  tileSize = 16,
  edgeSize = 12,
  insets = { left = 3, right = 3, top = 3, bottom = 3 }
})
dialog.projectNameBox.backdrop:SetBackdropColor(0.1, 0.1, 0.1, 0.9)
dialog.projectNameBox.backdrop:SetBackdropBorderColor(0.4, 0.4, 0.4, 1)

dialog.projectNameBox:SetScript("OnEnterPressed", function()
  this:ClearFocus()
end)

dialog.projectNameBox:SetScript("OnEscapePressed", function()
  this:ClearFocus()
end)

-- Track manual edits so auto-populate doesn't overwrite user input
dialog.userEditedName = false
dialog.projectNameBox.hasFocus = false

dialog.projectNameBox:SetScript("OnEditFocusGained", function()
  this.hasFocus = true
end)

dialog.projectNameBox:SetScript("OnEditFocusLost", function()
  this.hasFocus = false
end)

dialog.projectNameBox:SetScript("OnTextChanged", function()
  if this.hasFocus then
    dialog.userEditedName = true
  end
end)

-- Hidden by default; only shown during new project creation
dialog.projectNameLabel:Hide()
dialog.projectNameBox:Hide()

-- ============================================================================
-- ACTION BUTTONS
-- ============================================================================

-- Create Project button
dialog.createButton = CreateFrame("Button", nil, dialog)
dialog.createButton:SetPoint("BOTTOMLEFT", 10, 10)
dialog.createButton:SetWidth(180)
dialog.createButton:SetHeight(30)

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

-- Clean up cart state when dialog is hidden
dialog:SetScript("OnHide", function()
  dialog.cart = {}
  dialog.staging:Hide()
  dialog.staging.itemID = nil
  dialog.staging.itemName = nil
  for _, row in pairs(dialog.cartRows) do
    row:Hide()
  end
end)

-- ============================================================================
-- DIALOG FUNCTIONS
-- ============================================================================

-- Dialog mode state
dialog.parentGoal = nil     -- For adding as child to a goal
dialog.targetProject = nil  -- For adding as root-level to a project

-- Reset cart and staging state for a fresh dialog
local function ResetDialogState()
  dialog.cart = {}
  dialog.staging:Hide()
  dialog.staging.itemID = nil
  dialog.staging.itemName = nil
  dialog.staging.recipeCheckbox:Hide()
  dialog.parentGoal = nil
  dialog.targetProject = nil
  dialog.searchBox:SetText("")
  dialog.userEditedName = false
  MT:ClearSearchResults()
  MT:UpdateCartDisplay()
end

-- Open dialog for creating new project
function MT:OpenCreationDialog()
  ResetDialogState()

  dialog.header.title:SetText("Create Material Project")
  dialog.createButton.text:SetText("Create New Project")

  -- Show project name field for new project creation
  dialog.projectNameLabel:Show()
  dialog.projectNameBox:Show()
  dialog.projectNameBox:SetText("")

  dialog:Show()
  dialog.searchBox:SetFocus()
end

-- Open dialog for adding material to existing goal (as child)
function MT:OpenAddMaterialDialog(parentGoal)
  ResetDialogState()
  dialog.parentGoal = parentGoal

  dialog.header.title:SetText("Add Material to " .. parentGoal.itemName)
  dialog.createButton.text:SetText("Add Materials")

  -- Hide project name field when adding material
  dialog.projectNameLabel:Hide()
  dialog.projectNameBox:Hide()

  dialog:Show()
  dialog.searchBox:SetFocus()
end

-- Open dialog for adding material to project (as root goal)
function MT:OpenAddMaterialToProjectDialog(project)
  ResetDialogState()
  dialog.targetProject = project

  dialog.header.title:SetText("Add Material to " .. project.name)
  dialog.createButton.text:SetText("Add Materials")

  -- Hide project name field when adding material
  dialog.projectNameLabel:Hide()
  dialog.projectNameBox:Hide()

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
end

-- Select an item from search results — populates the staging row
function MT:SelectItem(itemID, itemName)
  dialog.staging.itemID = itemID
  dialog.staging.itemName = itemName
  dialog.staging.nameText:SetText(itemName)
  dialog.staging.quantityBox:SetText("1")
  dialog.staging:Show()

  -- Auto-populate project name from first item if user hasn't edited it
  if not dialog.userEditedName and dialog.projectNameBox:IsShown() then
    if table.getn(dialog.cart) == 0 then
      dialog.projectNameBox:SetText(itemName)
    end
  end

  MT:Debug("Staged item: " .. itemName .. " (ID: " .. itemID .. ")")

  -- Check if this item has a recipe
  local recipe = MT:GetRecipe(itemID)
  if recipe and recipe.materials then
    dialog.staging.recipeCheckbox.recipe = recipe
    dialog.staging.recipeCheckbox:Show()
    dialog.staging.recipeCheckbox:SetChecked(true)
    dialog.staging.recipeCheckbox.label:SetText("Recipe")
  else
    dialog.staging.recipeCheckbox:Hide()
  end

  dialog.staging.quantityBox:SetFocus()
end

-- Add the currently staged item to the cart
function MT:AddStagingToCart()
  if not dialog.staging.itemID then return end

  local qty = tonumber(dialog.staging.quantityBox:GetText())
  if not qty or qty <= 0 then
    MT:Print("Please enter a valid quantity")
    return
  end

  local includeRecipe = dialog.staging.recipeCheckbox:IsShown() and dialog.staging.recipeCheckbox:GetChecked()

  -- Check for duplicate — merge quantities if same item
  for _, entry in ipairs(dialog.cart) do
    if entry.itemID == dialog.staging.itemID then
      entry.quantity = entry.quantity + qty
      entry.includeRecipe = entry.includeRecipe or includeRecipe
      MT:Debug("Merged into existing cart entry: " .. entry.itemName .. " x" .. entry.quantity)
      dialog.staging:Hide()
      dialog.staging.itemID = nil
      dialog.staging.itemName = nil
      MT:UpdateCartDisplay()
      dialog.searchBox:SetText("")
      dialog.searchBox:SetFocus()
      return
    end
  end

  local entry = {
    itemID = dialog.staging.itemID,
    itemName = dialog.staging.itemName,
    quantity = qty,
    includeRecipe = includeRecipe
  }
  table.insert(dialog.cart, entry)

  dialog.staging:Hide()
  dialog.staging.itemID = nil
  dialog.staging.itemName = nil
  MT:UpdateCartDisplay()
  dialog.searchBox:SetText("")
  dialog.searchBox:SetFocus()
end

-- Update the cart display rows
function MT:UpdateCartDisplay()
  -- Hide all cart rows first
  for _, row in pairs(dialog.cartRows) do
    row:Hide()
  end

  local count = table.getn(dialog.cart)

  for i = 1, math.min(count, MAX_CART_ROWS) do
    local row = GetCartRow(i)
    local entry = dialog.cart[i]

    local label = entry.itemName .. " x" .. entry.quantity
    if entry.includeRecipe then
      label = label .. " |cff33ffcc[+Recipe]|r"
    end
    row.text:SetText(label)
    row.cartIndex = i
    row:Show()
  end

  -- Update cart label
  if count == 0 then
    dialog.cartLabel:SetText("Cart: (empty)")
  else
    dialog.cartLabel:SetText("Cart: (" .. count .. " items)")
  end
end

-- Create project or add materials from cart
function MT:CreateProjectFromDialog()
  if table.getn(dialog.cart) == 0 then
    MT:Print("Please add at least one item to the cart")
    return
  end

  if dialog.targetProject then
    -- Adding to existing project (as root goals)
    for _, entry in ipairs(dialog.cart) do
      local rootGoal = MT:AddRootGoal(dialog.targetProject, entry.itemID, entry.quantity)
      if rootGoal and entry.includeRecipe then
        MT:ExpandGoalWithRecipe(rootGoal, entry.quantity)
      end
    end
    MT:UpdateAllProjectCounts()
    MT:UpdateTrackerDisplay()
    MT:Print("Added " .. table.getn(dialog.cart) .. " item(s) to " .. dialog.targetProject.name)
    dialog:Hide()

  elseif dialog.parentGoal then
    -- Adding to existing goal (as children)
    for _, entry in ipairs(dialog.cart) do
      local childGoal = MT:AddChildGoal(dialog.parentGoal, entry.itemID, entry.quantity)
      if childGoal and entry.includeRecipe then
        MT:ExpandGoalWithRecipe(childGoal, entry.quantity)
      end
    end
    MT:UpdateAllProjectCounts()
    MT:UpdateTrackerDisplay()
    MT:Print("Added " .. table.getn(dialog.cart) .. " item(s) to " .. dialog.parentGoal.itemName)
    dialog:Hide()

  else
    -- Creating new project
    local projectName = nil
    if dialog.projectNameBox:IsShown() then
      local customName = dialog.projectNameBox:GetText()
      if customName and string.len(customName) > 0 then
        projectName = customName
      end
    end
    if not projectName then
      projectName = dialog.cart[1].itemName
    end

    local project = MT:CreateProject(projectName)
    if project then
      for _, entry in ipairs(dialog.cart) do
        local rootGoal = MT:AddRootGoal(project, entry.itemID, entry.quantity)
        if rootGoal and entry.includeRecipe then
          MT:ExpandGoalWithRecipe(rootGoal, entry.quantity)
        end
      end
      MT:UpdateAllProjectCounts()
      MT:UpdateTrackerDisplay()
      MT:Print("Created project: " .. projectName .. " with " .. table.getn(dialog.cart) .. " item(s)")
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

function MT:ShowAddMaterialToProjectDialog(project)
  MT:OpenAddMaterialToProjectDialog(project)
end

-- ============================================================================
-- EDIT QUANTITY DIALOG
-- ============================================================================

-- Simple input dialog for editing quantity
function MT:ShowEditQuantityDialog(goal)
  StaticPopupDialogs["MT_EDIT_QUANTITY"] = {
    text = "Edit quantity for " .. goal.itemName .. ":",
    button1 = "Update",
    button2 = "Cancel",
    hasEditBox = 1,
    maxLetters = 5,
    OnAccept = function()
      local editBox = getglobal(this:GetName().."EditBox")
      if not editBox then editBox = getglobal(this:GetParent():GetName().."EditBox") end
      if not editBox then return end
      local newQuantity = tonumber(editBox:GetText())
      if newQuantity and newQuantity > 0 and math.floor(newQuantity) == newQuantity then
        goal.target = newQuantity
        MT:UpdateAllProjectCounts()
        MT:UpdateTrackerDisplay()
        MT:Print("Updated " .. goal.itemName .. " target to " .. newQuantity)
      else
        MT:Print("Please enter a valid whole number greater than 0")
      end
    end,
    OnShow = function()
      local editBox = getglobal(this:GetName().."EditBox")
      if not editBox then return end
      editBox:SetText(tostring(goal.target))
      editBox:SetNumeric(true)
      editBox:HighlightText()
      editBox:SetFocus()
    end,
    OnHide = function()
      local editBox = getglobal(this:GetName().."EditBox")
      if not editBox then return end
      editBox:SetText("")
    end,
    EditBoxOnEnterPressed = function()
      local parent = this:GetParent()
      local newQuantity = tonumber(this:GetText())
      if newQuantity and newQuantity > 0 and math.floor(newQuantity) == newQuantity then
        goal.target = newQuantity
        MT:UpdateAllProjectCounts()
        MT:UpdateTrackerDisplay()
        MT:Print("Updated " .. goal.itemName .. " target to " .. newQuantity)
      else
        MT:Print("Please enter a valid whole number greater than 0")
      end
      parent:Hide()
    end,
    EditBoxOnEscapePressed = function()
      this:GetParent():Hide()
    end,
    timeout = 0,
    whileDead = 1,
    hideOnEscape = 1
  }

  StaticPopup_Show("MT_EDIT_QUANTITY")
end

-- ============================================================================
-- REMOVE GOAL CONFIRMATION
-- ============================================================================

function MT:ConfirmRemoveGoal(goal, project)
  if not project then
    MT:Print("Error: Cannot remove goal - project not found")
    return
  end

  StaticPopupDialogs["MT_CONFIRM_REMOVE"] = {
    text = "Remove " .. goal.itemName .. " from " .. project.name .. "?",
    button1 = "Remove",
    button2 = "Cancel",
    OnAccept = function()
      local parentGoal = MT:FindParentGoal(project, goal)
      if MT:RemoveGoal(project, goal, parentGoal) then
        MT:UpdateAllProjectCounts()
        MT:UpdateTrackerDisplay()
        MT:Print("Removed " .. goal.itemName)
      else
        MT:Print("Error: Could not remove goal")
      end
    end,
    timeout = 0,
    whileDead = 1,
    hideOnEscape = 1
  }

  StaticPopup_Show("MT_CONFIRM_REMOVE")
end

-- ============================================================================
-- RENAME PROJECT DIALOG
-- ============================================================================

function MT:ShowRenameProjectDialog(project)
  StaticPopupDialogs["MT_RENAME_PROJECT"] = {
    text = "Rename project '" .. project.name .. "':",
    button1 = "Rename",
    button2 = "Cancel",
    hasEditBox = 1,
    maxLetters = 50,
    OnAccept = function()
      local editBox = getglobal(this:GetName().."EditBox")
      if not editBox then editBox = getglobal(this:GetParent():GetName().."EditBox") end
      if not editBox then return end
      local newName = editBox:GetText()
      if newName and string.len(newName) > 0 then
        local oldName = project.name
        project.name = newName
        MT:UpdateTrackerDisplay()
        MT:Print("Renamed '" .. oldName .. "' to '" .. newName .. "'")
      else
        MT:Print("Please enter a valid project name")
      end
    end,
    OnShow = function()
      local editBox = getglobal(this:GetName().."EditBox")
      if not editBox then return end
      editBox:SetText(project.name)
      editBox:HighlightText()
      editBox:SetFocus()
    end,
    OnHide = function()
      local editBox = getglobal(this:GetName().."EditBox")
      if not editBox then return end
      editBox:SetText("")
    end,
    EditBoxOnEnterPressed = function()
      local parent = this:GetParent()
      local newName = this:GetText()
      if newName and string.len(newName) > 0 then
        local oldName = project.name
        project.name = newName
        MT:UpdateTrackerDisplay()
        MT:Print("Renamed '" .. oldName .. "' to '" .. newName .. "'")
      else
        MT:Print("Please enter a valid project name")
      end
      parent:Hide()
    end,
    EditBoxOnEscapePressed = function()
      this:GetParent():Hide()
    end,
    timeout = 0,
    whileDead = 1,
    hideOnEscape = 1
  }

  StaticPopup_Show("MT_RENAME_PROJECT")
end

-- ============================================================================
-- DELETE PROJECT CONFIRMATION
-- ============================================================================

function MT:ConfirmDeleteProject(project)
  StaticPopupDialogs["MT_CONFIRM_DELETE_PROJECT"] = {
    text = "Delete project '" .. project.name .. "'?\n\nThis cannot be undone.",
    button1 = "Delete",
    button2 = "Cancel",
    OnAccept = function()
      local projectName = project.name
      if MT:DeleteProject(project.id) then
        MT:UpdateAllProjectCounts()
        MT:UpdateTrackerDisplay()
        MT:Print("Deleted project: " .. projectName)
      else
        MT:Print("Error: Could not delete project")
      end
    end,
    timeout = 0,
    whileDead = 1,
    hideOnEscape = 1
  }

  StaticPopup_Show("MT_CONFIRM_DELETE_PROJECT")
end

