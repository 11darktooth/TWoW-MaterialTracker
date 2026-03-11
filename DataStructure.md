# MaterialTracker Data Structure Design

## Overview

This document outlines the data structure for storing material tracking projects and goals. The structure supports:
- Hierarchical (tree) organization for crafting recipes
- Per-character project tracking
- Account-wide data visibility (future)
- Real-time inventory updates

## Saved Variables Structure

### Per-Character Data: `MaterialTrackerDB`

```lua
MaterialTrackerDB = {
  version = "0.1.0",

  -- Array of active projects for this character
  projects = {
    {
      id = "project_001",           -- Unique identifier
      name = "Bronze Bar Farming",  -- Display name
      collapsed = false,            -- UI state: is this collapsed?

      -- Root goal (top-level item being tracked)
      goal = {
        itemID = 2841,              -- Item ID: Bronze Bar
        itemName = "Bronze Bar",    -- Cached for performance
        current = 0,                -- Current count in bags
        target = 10,                -- Target count
        completed = false,          -- Is this goal met?

        -- Child goals (materials needed to craft this item)
        children = {
          {
            itemID = 2770,
            itemName = "Copper Ore",
            current = 5,
            target = 10,
            completed = false,
            children = {}           -- No sub-materials (base resource)
          },
          {
            itemID = 3575,
            itemName = "Tin Ore",
            current = 10,
            target = 10,
            completed = true,
            children = {}
          }
        }
      }
    }
  },

  -- User preferences
  settings = {
    locked = false,                 -- Is tracker frame locked?
    showCompleted = true,           -- Show completed items in green?
    autoCollapse = false,           -- Auto-collapse completed categories?
    debug = false,                  -- Debug mode enabled?

    -- Frame position
    trackerX = 0,
    trackerY = 0,
    trackerPoint = "CENTER",
  }
}
```

### Account-Wide Data: `MaterialTrackerDB_Account` (Future)

```lua
MaterialTrackerDB_Account = {
  version = "0.1.0",

  -- Character inventory snapshots for cross-character viewing
  characters = {
    ["RealmName-CharacterName"] = {
      lastUpdate = 1234567890,      -- Timestamp of last bag scan

      -- Snapshot of what this character has
      items = {
        [2770] = 15,                -- itemID = count
        [3575] = 8,
        [2841] = 2,
      }
    }
  },

  -- Shared crafting recipes database (future)
  recipes = {
    [2841] = {                      -- Bronze Bar
      itemName = "Bronze Bar",
      materials = {
        { itemID = 2770, count = 1 },  -- 1x Copper Ore
        { itemID = 3575, count = 1 },  -- 1x Tin Ore
      }
    }
  }
}
```

## Data Structure Rationale

### Why Trees/Hierarchies?

Crafting recipes are inherently hierarchical:
```
Bronze Bar (target: 10)
├── Copper Ore (target: 10) ← Base material
└── Tin Ore (target: 10)    ← Base material

Vs. more complex:

Mithril Bar (target: 10)
├── Mithril Ore (target: 10)  ← Base material
└── Coal (target: 10)          ← Could come from mining OR smelting
```

The tree structure allows:
1. **Recursive display** - Collapsible categories in UI
2. **Automatic calculation** - If Bronze Bar needs 1 Copper + 1 Tin, and you want 10 Bronze Bars, auto-set children to 10 each
3. **Mixed sources** - Some items are gathered, some are crafted

### Goal Node Structure

Each goal node contains:

| Field | Type | Purpose |
|-------|------|---------|
| `itemID` | number | WoW item ID (unique, never changes) |
| `itemName` | string | Cached name (for performance, avoid repeated pfQuest lookups) |
| `current` | number | Current count in bags (updated by bag scan) |
| `target` | number | User-defined target amount |
| `completed` | boolean | Convenience flag: `current >= target` |
| `children` | table | Array of child goal nodes (sub-materials) |

### Why Cache Item Names?

```lua
-- Without caching:
for each frame update do
  itemName = pfDB["items"]["loc"][itemID]  -- Table lookup
end

-- With caching:
itemName = goal.itemName  -- Direct access
```

Trade-off:
- **Pro**: Much faster UI updates
- **Con**: Must update cache if item name changes (rare in Vanilla)

## Operations on Data Structure

### 1. Create New Project

```lua
function MT:CreateProject(name, rootItemID, rootTarget)
  local project = {
    id = MT:GenerateProjectID(),
    name = name,
    collapsed = false,
    goal = {
      itemID = rootItemID,
      itemName = MT:GetItemNameByID(rootItemID),
      current = 0,
      target = rootTarget,
      completed = false,
      children = {}
    }
  }

  table.insert(MaterialTrackerDB.projects, project)
  return project
end
```

### 2. Add Child Goal (Sub-Material)

```lua
function MT:AddChildGoal(parentGoal, childItemID, childTarget)
  local childGoal = {
    itemID = childItemID,
    itemName = MT:GetItemNameByID(childItemID),
    current = 0,
    target = childTarget,
    completed = false,
    children = {}
  }

  table.insert(parentGoal.children, childGoal)
  return childGoal
end
```

### 3. Update Counts from Bag Scan

```lua
function MT:UpdateProjectCounts()
  local bagCounts = MT:ScanBags()  -- { [itemID] = count }

  -- Recursively update all goals in all projects
  for _, project in ipairs(MaterialTrackerDB.projects) do
    MT:UpdateGoalCounts(project.goal, bagCounts)
  end
end

function MT:UpdateGoalCounts(goal, bagCounts)
  -- Update this goal's count
  goal.current = bagCounts[goal.itemID] or 0
  goal.completed = goal.current >= goal.target

  -- Recursively update children
  for _, child in ipairs(goal.children) do
    MT:UpdateGoalCounts(child, bagCounts)
  end
end
```

### 4. Find Goal by Item ID

```lua
-- Useful for "add existing item to tracker" functionality
function MT:FindGoalByItemID(itemID)
  for _, project in ipairs(MaterialTrackerDB.projects) do
    local found = MT:FindGoalByItemIDRecursive(project.goal, itemID)
    if found then return found, project end
  end
  return nil
end

function MT:FindGoalByItemIDRecursive(goal, itemID)
  if goal.itemID == itemID then return goal end

  for _, child in ipairs(goal.children) do
    local found = MT:FindGoalByItemIDRecursive(child, itemID)
    if found then return found end
  end

  return nil
end
```

## Character vs Account-Wide Storage

### Per-Character (SavedVariablesPerCharacter)

**Use for:**
- Active projects this character is working on
- UI state (collapsed, positions)
- Character-specific settings

**Pros:**
- Automatically scoped to character
- No manual realm/character tracking

**Cons:**
- Can't see what alts have

### Account-Wide (SavedVariables)

**Use for (future):**
- Shared recipe database
- Cross-character inventory visibility
- Account-wide settings

**Pros:**
- Shared across all characters
- Can display "5 in bags + 10 in bank on alt"

**Cons:**
- Must manually track realm + character name
- More complex data synchronization

## Future Enhancements

### 1. Crafting Recipe Auto-Detection

When user adds a crafted item, automatically populate children:

```lua
if MaterialTrackerDB_Account.recipes[itemID] then
  local recipe = MaterialTrackerDB_Account.recipes[itemID]
  for _, material in ipairs(recipe.materials) do
    MT:AddChildGoal(goal, material.itemID, material.count * targetAmount)
  end
end
```

### 2. Cross-Character Totals

Display: `5 (bags) + 10 (bank) + 3 (alt)` = 18 total

```lua
function MT:GetAccountWideTotalFor(itemID)
  local total = bagCounts[itemID] or 0

  -- Add from other characters
  for charName, charData in pairs(MaterialTrackerDB_Account.characters) do
    if charName ~= currentCharacter then
      total = total + (charData.items[itemID] or 0)
    end
  end

  return total
end
```

### 3. Smart Goal Suggestions

"You're tracking Copper Ore. Do you also want to track Bronze Bar?"

## Validation Rules

1. **Unique Item IDs per level** - Can't track same item twice as siblings
2. **Positive targets** - Target must be > 0
3. **Valid item IDs** - Must exist in pfQuest database
4. **No circular dependencies** - Item A can't require Item B if Item B requires Item A
