--[[
  MaterialTracker - Tracker Frame UI

  Visual design inspired by pfQuest's quest tracker.
  Pure Lua implementation with fallbacks for optional dependencies.
]]--

local MT = MaterialTracker

-- ============================================================================
-- CONFIGURATION
-- ============================================================================

local FONTSIZE = 12
local ENTRY_HEIGHT = 20
local INDENT_WIDTH = 20
local PANEL_HEIGHT = 16

-- Font fallbacks (pfUI → Game Fonts)
local function GetFont()
  if pfUI and pfUI.font_default then
    return pfUI.font_default, FONTSIZE
  else
    return "Fonts\\FRIZQT__.TTF", FONTSIZE
  end
end

-- Color definitions
local COLOR_INCOMPLETE = {1, 0.33, 0.33}  -- Red
local COLOR_CRAFTABLE = {1, 0.82, 0}      -- Yellow/gold (materials ready, needs crafting)
local COLOR_COMPLETE = {0.2, 1, 0.2}      -- Green
local COLOR_HEADER = {0.2, 1, 0.8}        -- Cyan (project name)

-- ============================================================================
-- TRACKER FRAME CREATION
-- ============================================================================

-- Create the main tracker frame
-- Design pattern adapted from pfQuest tracker.lua
MT.TrackerFrame = CreateFrame("Frame", "MaterialTrackerFrame", UIParent)
local tracker = MT.TrackerFrame

tracker:Hide()
tracker:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 20, -100)
tracker:SetWidth(250)
tracker:SetHeight(400)
tracker:SetMovable(true)
tracker:EnableMouse(true)
tracker:SetClampedToScreen(true)

-- ============================================================================
-- BACKDROP
-- ============================================================================

tracker.backdrop = CreateFrame("Frame", nil, tracker)
tracker.backdrop:SetAllPoints(tracker)
tracker.backdrop.bg = tracker.backdrop:CreateTexture(nil, "BACKGROUND")
tracker.backdrop.bg:SetTexture(0, 0, 0, 0.2)
tracker.backdrop.bg:SetAllPoints()
tracker.backdrop:SetAlpha(1)

-- ============================================================================
-- PANEL (Header with title and buttons)
-- ============================================================================

tracker.panel = CreateFrame("Frame", nil, tracker.backdrop)
tracker.panel:SetPoint("TOPLEFT", 0, 0)
tracker.panel:SetPoint("TOPRIGHT", 0, 0)
tracker.panel:SetHeight(PANEL_HEIGHT)

-- Panel background
tracker.panel.bg = tracker.panel:CreateTexture(nil, "BACKGROUND")
tracker.panel.bg:SetTexture(0, 0, 0, 0.5)
tracker.panel.bg:SetAllPoints()

-- Title text
tracker.panel.title = tracker.panel:CreateFontString(nil, "OVERLAY", "GameFontNormal")
tracker.panel.title:SetFont(GetFont())
tracker.panel.title:SetPoint("LEFT", 5, 0)
tracker.panel.title:SetTextColor(COLOR_HEADER[1], COLOR_HEADER[2], COLOR_HEADER[3])
tracker.panel.title:SetText("MaterialTracker")

-- ============================================================================
-- MOVEMENT & LOCKING
-- ============================================================================

tracker:SetScript("OnMouseDown", function()
  if not MaterialTrackerDB.settings.locked then
    this:StartMoving()
  end
end)

tracker:SetScript("OnMouseUp", function()
  this:StopMovingOrSizing()

  -- Save position
  local point, _, _, x, y = this:GetPoint()
  MaterialTrackerDB.settings.trackerPoint = point or "TOPLEFT"
  MaterialTrackerDB.settings.trackerX = x
  MaterialTrackerDB.settings.trackerY = y
end)

-- ============================================================================
-- ALPHA TRANSITIONS (like pfQuest)
-- ============================================================================

tracker:SetScript("OnUpdate", function()
  -- Fade backdrop based on mouse hover
  local alpha = this.backdrop:GetAlpha()
  local hasContent = MT:GetProjectCount() > 0
  local goal

  if hasContent and not MouseIsOver(this) then
    goal = 0.3  -- Faded when not hovering
  elseif not hasContent and not MouseIsOver(this) then
    goal = 0.5  -- Medium when empty
  else
    goal = 1    -- Full when hovering
  end

  if math.ceil(alpha * 10) ~= math.ceil(goal * 10) then
    local step = (goal - alpha) > 0 and 0.1 or -0.1
    this.backdrop:SetAlpha(alpha + step)
  end
end)

-- ============================================================================
-- ENTRY ROWS (for displaying goals)
-- ============================================================================

tracker.rows = {}

-- Create a reusable row for displaying a goal
local function CreateRow(index)
  local row = CreateFrame("Button", nil, tracker)
  row:SetWidth(tracker:GetWidth())
  row:SetHeight(ENTRY_HEIGHT)
  row:EnableMouse(true)

  -- Icon (for expand/collapse indicator)
  row.icon = row:CreateTexture(nil, "ARTWORK")
  row.icon:SetWidth(12)
  row.icon:SetHeight(12)
  row.icon:SetPoint("LEFT", 5, 0)
  row.icon:SetTexture("Interface\\Buttons\\UI-PlusButton-Up")

  -- Text
  row.text = row:CreateFontString(nil, "OVERLAY", "GameFontNormal")
  row.text:SetFont(GetFont())
  row.text:SetPoint("LEFT", 20, 0)
  row.text:SetJustifyH("LEFT")

  -- Register for both mouse buttons
  row:RegisterForClicks("LeftButtonUp", "RightButtonUp")

  -- Click handler
  row:SetScript("OnClick", function()
    if arg1 == "RightButton" then
      if this.goal then
        -- Right-click on goal: Show context menu
        MT:ShowGoalContextMenu(this.goal, this.parentProject)
      elseif this.project then
        -- Right-click on project header: Show context menu
        MT:ShowProjectContextMenu(this.project)
      end
    elseif arg1 == "LeftButton" and this.onClick then
      -- Left-click: Expand/collapse
      this.onClick()
    end
  end)

  -- Tooltip
  row:SetScript("OnEnter", function()
    if this.tooltip then
      GameTooltip:SetOwner(this, "ANCHOR_RIGHT")
      GameTooltip:SetText(this.tooltip)
      GameTooltip:Show()
    end
  end)

  row:SetScript("OnLeave", function()
    GameTooltip:Hide()
  end)

  row:Hide()
  return row
end

-- Get or create a row
local function GetRow(index)
  if not tracker.rows[index] then
    tracker.rows[index] = CreateRow(index)
  end
  return tracker.rows[index]
end

-- ============================================================================
-- RENDERING
-- ============================================================================

-- Expand/collapse state storage
-- Uses goal/project table references as keys (not itemID) to avoid
-- shared state when the same item appears in multiple tree locations
MT.ExpandStates = MT.ExpandStates or {}

-- Render all projects and their goals
function MT:UpdateTrackerDisplay()
  local rowIndex = 1
  local yOffset = -PANEL_HEIGHT - 5

  -- Hide all rows initially
  for _, row in pairs(tracker.rows) do
    row:Hide()
  end

  -- Check display mode
  if MaterialTrackerDB.settings.displayMode == "overall" then
    -- Overall mode: Show aggregated materials
    rowIndex, yOffset = MT:RenderOverallMode(rowIndex, yOffset)
  else
    -- Projects mode: Show individual projects
    for i = 1, MT:GetProjectCount() do
      local project = MT:GetProjectByIndex(i)

      if project then
        rowIndex, yOffset = MT:RenderProject(project, rowIndex, yOffset, 0)
      end
    end
  end

  -- Update tracker height
  local totalHeight = math.abs(yOffset) + 10
  tracker:SetHeight(totalHeight)

  -- Show tracker if we have content
  if MT:GetProjectCount() > 0 then
    tracker:Show()
  else
    -- Optionally hide when empty, or show placeholder
    tracker:Show()
  end
end

-- Render a single project and its goals recursively
function MT:RenderProject(project, rowIndex, yOffset, indent)
  -- Render project header
  local row = GetRow(rowIndex)
  row:ClearAllPoints()
  row:SetPoint("TOPLEFT", indent * INDENT_WIDTH, yOffset)
  row:Show()

  -- Expand/collapse state (keyed by project table reference)
  local isExpanded = MT.ExpandStates[project]
  if isExpanded == nil then
    MT.ExpandStates[project] = true
    isExpanded = true
  end

  -- Icon
  row.icon:Show()
  row.icon:SetWidth(12)
  row.icon:SetHeight(12)
  if isExpanded then
    row.icon:SetTexture("Interface\\Buttons\\UI-MinusButton-Up")
  else
    row.icon:SetTexture("Interface\\Buttons\\UI-PlusButton-Up")
  end

  -- Text (project name with % complete)
  local stats = MT:GetProjectStats(project)
  local completion = stats.totalGoals > 0 and string.format("%.0f%%", (stats.completedGoals / stats.totalGoals) * 100) or "0%"
  row.text:SetText(project.name .. " (" .. completion .. ")")
  row.text:SetTextColor(COLOR_HEADER[1], COLOR_HEADER[2], COLOR_HEADER[3])

  -- Click handler
  row.onClick = function()
    MT.ExpandStates[project] = not MT.ExpandStates[project]
    MT:UpdateTrackerDisplay()
  end

  -- Tooltip
  local stats = MT:GetProjectStats(project)
  row.tooltip = string.format("%s\n%d/%d goals complete\n\nLeft-click: Expand/Collapse\nRight-click: Options", project.name, stats.completedGoals, stats.totalGoals)

  -- Store project reference (for context menu)
  row.project = project
  row.goal = nil  -- Projects don't have goal context menu

  rowIndex = rowIndex + 1
  yOffset = yOffset - ENTRY_HEIGHT

  -- Render all root goals if expanded
  if isExpanded then
    for _, rootGoal in ipairs(project.goals) do
      rowIndex, yOffset = MT:RenderGoal(rootGoal, rowIndex, yOffset, indent + 1, project)
    end
  end

  return rowIndex, yOffset
end

-- Render a goal and its children recursively
function MT:RenderGoal(goal, rowIndex, yOffset, indent, parentProject)
  -- Skip completed goals if hideCompleted is enabled
  if MaterialTrackerDB.settings.hideCompleted and goal.completed then
    return rowIndex, yOffset
  end

  -- Render goal entry
  local row = GetRow(rowIndex)
  row:ClearAllPoints()
  row:SetPoint("TOPLEFT", indent * INDENT_WIDTH, yOffset)
  row:Show()

  -- Check if has children
  local hasChildren = table.getn(goal.children) > 0
  -- Use goal table reference as key to avoid shared state when same item
  -- appears in multiple tree locations (e.g. Truesilver Ore under Ring AND Bar)
  local isExpanded = MT.ExpandStates[goal]
  if isExpanded == nil then
    MT.ExpandStates[goal] = true
    isExpanded = true
  end

  -- Icon
  row.icon:Show()
  if hasChildren then
    row.icon:SetWidth(12)
    row.icon:SetHeight(12)
    if isExpanded then
      row.icon:SetTexture("Interface\\Buttons\\UI-MinusButton-Up")
    else
      row.icon:SetTexture("Interface\\Buttons\\UI-PlusButton-Up")
    end
  else
    -- No children, use a bullet point
    row.icon:SetWidth(8)
    row.icon:SetHeight(8)
    row.icon:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-Skills-BarBorder")
  end

  -- Text (item name + count, using effective target for dynamic remaining)
  local displayTarget = goal.effectiveTarget or goal.target
  local bagCount = goal.current or 0
  local bankCount = goal.bankCount or 0
  local altCount = goal.altCount or 0

  local countParts = tostring(bagCount)
  if bankCount > 0 then
    countParts = countParts .. "|cffddaa00+" .. bankCount .. "b|r"
  end
  if altCount > 0 then
    countParts = countParts .. "|cffaa88ff+" .. altCount .. "a|r"
  end
  local countText = countParts .. "/" .. displayTarget
  local displayText = string.format("%s (%s)", goal.itemName, countText)
  row.text:SetText(displayText)

  -- Color based on completion state
  if goal.completed then
    row.text:SetTextColor(COLOR_COMPLETE[1], COLOR_COMPLETE[2], COLOR_COMPLETE[3])
  elseif hasChildren and MT:IsGoalCraftable(goal) then
    row.text:SetTextColor(COLOR_CRAFTABLE[1], COLOR_CRAFTABLE[2], COLOR_CRAFTABLE[3])
  else
    row.text:SetTextColor(COLOR_INCOMPLETE[1], COLOR_INCOMPLETE[2], COLOR_INCOMPLETE[3])
  end

  -- Click handler
  if hasChildren then
    row.onClick = function()
      MT.ExpandStates[goal] = not MT.ExpandStates[goal]
      MT:UpdateTrackerDisplay()
    end
  else
    row.onClick = nil
  end

  -- Tooltip (show effective target, with total annotation if it differs)
  local tooltipTarget = goal.effectiveTarget or goal.target
  local targetLine = "Target: " .. tooltipTarget
  if goal.effectiveTarget and goal.effectiveTarget ~= goal.target then
    targetLine = targetLine .. "  (of " .. goal.target .. " total)"
  end
  local tooltipLines = goal.itemName .. "\nItem ID: " .. goal.itemID .. "\n" .. targetLine .. "\nBags: " .. bagCount
  if bankCount > 0 then
    tooltipLines = tooltipLines .. "\nBank: " .. bankCount
  end
  if altCount > 0 then
    tooltipLines = tooltipLines .. "\nAlts: " .. altCount
  end
  if bankCount > 0 or altCount > 0 then
    tooltipLines = tooltipLines .. "\nTotal: " .. (goal.totalCount or bagCount)
  end
  tooltipLines = tooltipLines .. "\n\nLeft-click: Expand/Collapse\nRight-click: Options"
  row.tooltip = tooltipLines

  -- Store goal and project references (for context menu)
  row.goal = goal
  row.parentProject = parentProject
  row.project = nil

  rowIndex = rowIndex + 1
  yOffset = yOffset - ENTRY_HEIGHT

  -- Render children if expanded
  if hasChildren and isExpanded then
    for _, child in ipairs(goal.children) do
      rowIndex, yOffset = MT:RenderGoal(child, rowIndex, yOffset, indent + 1, parentProject)
    end
  end

  return rowIndex, yOffset
end

-- ============================================================================
-- SHOPPING LIST MODE RENDERING
-- ============================================================================

-- Render shopping list mode (leaf nodes only - raw materials to gather/buy)
function MT:RenderOverallMode(rowIndex, yOffset)
  -- Get aggregated materials (leaf nodes only)
  local aggregated = MT:AggregateAllMaterials()

  -- Convert to sorted array
  local materials = {}
  for _, data in pairs(aggregated) do
    table.insert(materials, data)
  end

  -- Sort by item name
  table.sort(materials, function(a, b)
    return a.itemName < b.itemName
  end)

  -- Render header
  local headerRow = GetRow(rowIndex)
  headerRow:ClearAllPoints()
  headerRow:SetPoint("TOPLEFT", 0, yOffset)
  headerRow:Show()

  headerRow.icon:Show()
  headerRow.icon:SetWidth(12)
  headerRow.icon:SetHeight(12)
  headerRow.icon:SetTexture("Interface\\Buttons\\UI-MinusButton-Up")
  headerRow.text:SetText("Shopping List")
  headerRow.text:SetTextColor(COLOR_HEADER[1], COLOR_HEADER[2], COLOR_HEADER[3])
  headerRow.onClick = nil
  headerRow.goal = nil
  headerRow.project = nil
  headerRow.tooltip = "Shopping List: Raw materials needed for all projects"

  rowIndex = rowIndex + 1
  yOffset = yOffset - ENTRY_HEIGHT

  -- Render each material
  for _, material in ipairs(materials) do
    -- Skip completed if hideCompleted is enabled
    if not (MaterialTrackerDB.settings.hideCompleted and material.completed) then
      local row = GetRow(rowIndex)
      row:ClearAllPoints()
      row:SetPoint("TOPLEFT", INDENT_WIDTH, yOffset)
      row:Show()

      -- No icon for flat list
      row.icon:Hide()

      -- Text (with split counts for bank/alt)
      local matBag = material.current or 0
      local matBank = material.bankCount or 0
      local matAlt = material.altCount or 0
      local matCountParts = tostring(matBag)
      if matBank > 0 then
        matCountParts = matCountParts .. "|cffddaa00+" .. matBank .. "b|r"
      end
      if matAlt > 0 then
        matCountParts = matCountParts .. "|cffaa88ff+" .. matAlt .. "a|r"
      end
      local countText = matCountParts .. "/" .. material.target
      local displayText = string.format("%s (%s)", material.itemName, countText)
      row.text:SetText(displayText)

      -- Color based on completion
      if material.completed then
        row.text:SetTextColor(COLOR_COMPLETE[1], COLOR_COMPLETE[2], COLOR_COMPLETE[3])
      else
        row.text:SetTextColor(COLOR_INCOMPLETE[1], COLOR_INCOMPLETE[2], COLOR_INCOMPLETE[3])
      end

      row.onClick = nil
      row.goal = nil
      row.project = nil
      local matTooltip = material.itemName .. "\nTotal needed: " .. material.target .. "\nBags: " .. matBag
      if matBank > 0 then
        matTooltip = matTooltip .. "\nBank: " .. matBank
      end
      if matAlt > 0 then
        matTooltip = matTooltip .. "\nAlts: " .. matAlt
      end
      if matBank > 0 or matAlt > 0 then
        matTooltip = matTooltip .. "\nTotal: " .. (material.totalCount or matBag)
      end
      row.tooltip = matTooltip

      rowIndex = rowIndex + 1
      yOffset = yOffset - ENTRY_HEIGHT
    end
  end

  return rowIndex, yOffset
end

-- ============================================================================
-- INITIALIZATION
-- ============================================================================

tracker:RegisterEvent("PLAYER_ENTERING_WORLD")
tracker:SetScript("OnEvent", function()
  if event == "PLAYER_ENTERING_WORLD" then
    -- Restore position
    if MaterialTrackerDB.settings.trackerPoint then
      tracker:ClearAllPoints()
      tracker:SetPoint(
        MaterialTrackerDB.settings.trackerPoint,
        MaterialTrackerDB.settings.trackerX or 20,
        MaterialTrackerDB.settings.trackerY or -100
      )
    end

    -- Initial render
    MT:UpdateTrackerDisplay()
  end
end)

-- ============================================================================
-- PUBLIC API
-- ============================================================================

function MT:ShowTracker()
  tracker:Show()
  MaterialTrackerDB.settings.trackerVisible = true
end

function MT:HideTracker()
  tracker:Hide()
  MaterialTrackerDB.settings.trackerVisible = false
end

function MT:ToggleTracker()
  if tracker:IsShown() then
    MT:HideTracker()
  else
    MT:ShowTracker()
  end
end

function MT:IsTrackerLocked()
  return MaterialTrackerDB.settings.locked
end

function MT:SetTrackerLocked(locked)
  MaterialTrackerDB.settings.locked = locked
  MT:Print("Tracker " .. (locked and "locked" or "unlocked"))
end

function MT:ToggleTrackerLock()
  MT:SetTrackerLocked(not MT:IsTrackerLocked())
end

-- ============================================================================
-- CONTEXT MENU
-- ============================================================================

-- Context menu (created lazily)
local contextMenu = nil

local function GetContextMenu()
  if contextMenu then return contextMenu end

  -- Create context menu frame
  contextMenu = CreateFrame("Frame", "MaterialTrackerContextMenu", UIParent)
  contextMenu:SetWidth(150)
  contextMenu:SetHeight(100)
  contextMenu:SetFrameStrata("TOOLTIP")
  contextMenu:Hide()
  contextMenu:EnableMouse(true)

  -- Backdrop
  contextMenu:SetBackdrop({
    bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true,
    tileSize = 16,
    edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 }
  })
  contextMenu:SetBackdropColor(0.1, 0.1, 0.1, 0.95)
  contextMenu:SetBackdropBorderColor(0.5, 0.5, 0.5, 1)

  -- Close menu when mouse leaves (with small delay)
  contextMenu.leaveTimer = 0
  contextMenu:SetScript("OnUpdate", function()
    if not MouseIsOver(this) then
      this.leaveTimer = this.leaveTimer + (arg1 or 0.1)
      if this.leaveTimer > 0.5 then
        this:Hide()
      end
    else
      this.leaveTimer = 0
    end
  end)

  contextMenu:SetScript("OnHide", function()
    this.leaveTimer = 0
  end)

  -- Menu buttons
  contextMenu.buttons = {}

  return contextMenu
end

local function CreateMenuButton(contextMenu, index, text, onClick)
  local button = CreateFrame("Button", nil, contextMenu)
  button:SetWidth(contextMenu:GetWidth() - 8)
  button:SetHeight(20)
  button:SetPoint("TOPLEFT", 4, -4 - (index - 1) * 20)

  button.bg = button:CreateTexture(nil, "BACKGROUND")
  button.bg:SetAllPoints()
  button.bg:SetTexture(0.2, 0.2, 0.2, 0)

  button.text = button:CreateFontString(nil, "OVERLAY")
  button.text:SetFont(GetFont())
  button.text:SetPoint("LEFT", 5, 0)
  button.text:SetText(text)
  button.text:SetTextColor(1, 1, 1)

  button:SetScript("OnEnter", function()
    this.bg:SetTexture(0.3, 0.6, 0.9, 0.5)
  end)

  button:SetScript("OnLeave", function()
    this.bg:SetTexture(0.2, 0.2, 0.2, 0)
  end)

  button:SetScript("OnClick", function()
    contextMenu:Hide()
    if onClick then onClick() end
  end)

  return button
end

-- Show context menu for a goal
function MT:ShowGoalContextMenu(goal, project)
  local menu = GetContextMenu()

  -- Clear existing buttons
  for _, btn in ipairs(menu.buttons) do
    btn:Hide()
  end
  menu.buttons = {}

  -- Add Material
  local addBtn = CreateMenuButton(menu, 1, "Add Material", function()
    MT:ShowAddMaterialDialog(goal)
  end)
  table.insert(menu.buttons, addBtn)

  -- Edit Quantity
  local editBtn = CreateMenuButton(menu, 2, "Edit Quantity", function()
    MT:ShowEditQuantityDialog(goal)
  end)
  table.insert(menu.buttons, editBtn)

  -- Remove Goal
  local removeBtn = CreateMenuButton(menu, 3, "Remove Goal", function()
    MT:ConfirmRemoveGoal(goal, project)
  end)
  removeBtn.text:SetTextColor(1, 0.5, 0.5)
  table.insert(menu.buttons, removeBtn)

  -- Cancel
  local cancelBtn = CreateMenuButton(menu, 4, "Cancel", function()
    menu:Hide()
  end)
  table.insert(menu.buttons, cancelBtn)

  -- Resize menu
  menu:SetHeight(4 + table.getn(menu.buttons) * 20 + 4)

  -- Position at mouse
  local x, y = GetCursorPosition()
  local scale = UIParent:GetEffectiveScale()
  menu:ClearAllPoints()
  menu:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", x / scale, y / scale)
  menu:Show()
end

-- Show context menu for a project header
function MT:ShowProjectContextMenu(project)
  local menu = GetContextMenu()

  -- Clear existing buttons
  for _, btn in ipairs(menu.buttons) do
    btn:Hide()
  end
  menu.buttons = {}

  -- Add Material
  local addBtn = CreateMenuButton(menu, 1, "Add Material", function()
    MT:ShowAddMaterialToProjectDialog(project)
  end)
  table.insert(menu.buttons, addBtn)

  -- Rename Project
  local renameBtn = CreateMenuButton(menu, 2, "Rename Project", function()
    MT:ShowRenameProjectDialog(project)
  end)
  table.insert(menu.buttons, renameBtn)

  -- Delete Project
  local deleteBtn = CreateMenuButton(menu, 3, "Delete Project", function()
    MT:ConfirmDeleteProject(project)
  end)
  deleteBtn.text:SetTextColor(1, 0.5, 0.5)
  table.insert(menu.buttons, deleteBtn)

  -- Cancel
  local cancelBtn = CreateMenuButton(menu, 4, "Cancel", function()
    menu:Hide()
  end)
  table.insert(menu.buttons, cancelBtn)

  -- Resize menu
  menu:SetHeight(4 + table.getn(menu.buttons) * 20 + 4)

  -- Position at mouse
  local x, y = GetCursorPosition()
  local scale = UIParent:GetEffectiveScale()
  menu:ClearAllPoints()
  menu:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", x / scale, y / scale)
  menu:Show()
end
