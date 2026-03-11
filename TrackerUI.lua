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
    if arg1 == "RightButton" and this.goal then
      -- Right-click: Show context menu
      MT:ShowGoalContextMenu(this.goal)
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
MT.ExpandStates = MT.ExpandStates or {}

-- Render all projects and their goals
function MT:UpdateTrackerDisplay()
  local rowIndex = 1
  local yOffset = -PANEL_HEIGHT - 5

  -- Hide all rows initially
  for _, row in pairs(tracker.rows) do
    row:Hide()
  end

  -- Render each project
  for i = 1, MT:GetProjectCount() do
    local project = MT:GetProjectByIndex(i)

    if project then
      rowIndex, yOffset = MT:RenderProject(project, rowIndex, yOffset, 0)
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
  row:SetPoint("TOPLEFT", indent * INDENT_WIDTH, yOffset)
  row:Show()

  -- Expand/collapse state
  local isExpanded = MT.ExpandStates[project.id]
  if isExpanded == nil then
    MT.ExpandStates[project.id] = true
    isExpanded = true
  end

  -- Icon
  if isExpanded then
    row.icon:SetTexture("Interface\\Buttons\\UI-MinusButton-Up")
  else
    row.icon:SetTexture("Interface\\Buttons\\UI-PlusButton-Up")
  end

  -- Text (project name)
  row.text:SetText(project.name)
  row.text:SetTextColor(COLOR_HEADER[1], COLOR_HEADER[2], COLOR_HEADER[3])

  -- Click handler
  row.onClick = function()
    MT.ExpandStates[project.id] = not MT.ExpandStates[project.id]
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

  -- Render children if expanded
  if isExpanded then
    rowIndex, yOffset = MT:RenderGoal(project.goal, rowIndex, yOffset, indent + 1)
  end

  return rowIndex, yOffset
end

-- Render a goal and its children recursively
function MT:RenderGoal(goal, rowIndex, yOffset, indent)
  -- Render goal entry
  local row = GetRow(rowIndex)
  row:SetPoint("TOPLEFT", indent * INDENT_WIDTH, yOffset)
  row:Show()

  -- Check if has children
  local hasChildren = table.getn(goal.children) > 0
  local isExpanded = MT.ExpandStates[goal.itemID]
  if isExpanded == nil then
    MT.ExpandStates[goal.itemID] = true
    isExpanded = true
  end

  -- Icon
  if hasChildren then
    if isExpanded then
      row.icon:SetTexture("Interface\\Buttons\\UI-MinusButton-Up")
    else
      row.icon:SetTexture("Interface\\Buttons\\UI-PlusButton-Up")
    end
  else
    -- No children, use a bullet point
    row.icon:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-Skills-BarBorder")
    row.icon:SetWidth(8)
    row.icon:SetHeight(8)
  end

  -- Text (item name + count)
  local countText = string.format("%d/%d", goal.current, goal.target)
  local displayText = string.format("%s (%s)", goal.itemName, countText)
  row.text:SetText(displayText)

  -- Color based on completion
  if goal.completed then
    row.text:SetTextColor(COLOR_COMPLETE[1], COLOR_COMPLETE[2], COLOR_COMPLETE[3])
  else
    row.text:SetTextColor(COLOR_INCOMPLETE[1], COLOR_INCOMPLETE[2], COLOR_INCOMPLETE[3])
  end

  -- Click handler
  if hasChildren then
    row.onClick = function()
      MT.ExpandStates[goal.itemID] = not MT.ExpandStates[goal.itemID]
      MT:UpdateTrackerDisplay()
    end
  else
    row.onClick = nil
  end

  -- Tooltip
  row.tooltip = string.format("%s\nItem ID: %d\nTarget: %d\nCurrent: %d\n\nLeft-click: Expand/Collapse\nRight-click: Add Material", goal.itemName, goal.itemID, goal.target, goal.current)

  -- Store goal reference (for context menu)
  row.goal = goal
  row.project = nil

  rowIndex = rowIndex + 1
  yOffset = yOffset - ENTRY_HEIGHT

  -- Render children if expanded
  if hasChildren and isExpanded then
    for _, child in ipairs(goal.children) do
      rowIndex, yOffset = MT:RenderGoal(child, rowIndex, yOffset, indent + 1)
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

-- Show context menu for a goal
function MT:ShowGoalContextMenu(goal)
  -- Simple right-click action: Open add material dialog
  MT:ShowAddMaterialDialog(goal)
end
