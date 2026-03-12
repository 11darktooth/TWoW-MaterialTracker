# MaterialTracker

A World of Warcraft 1.12.1 addon for [Turtle WoW](https://turtle-wow.org/) that tracks crafting and gathering materials with an on-screen tracker, automatic recipe expansion, and farming zone recommendations.

![Interface: 11200](https://img.shields.io/badge/Interface-11200-blue) ![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-green)

## Features

- **Project-based tracking** — Organize goals into named projects, each with multiple items and quantities
- **Automatic recipe expansion** — Add a craftable item and MaterialTracker builds the full material tree (e.g., Bronze Bar automatically adds Copper Ore + Tin Ore sub-goals)
- **Real-time inventory updates** — Bag counts update live as you loot, craft, and trade
- **Bank & alt tracking** — Include bank and alt character inventories via [Bagshui](https://github.com/veechs/Bagshui) integration
- **Shopping list mode** — Flatten all projects into a single aggregated list of raw materials
- **Farming zone recommendations** — Ranks the best zones to farm based on gathering nodes, mob drops, and your remaining needs
- **Hardcore mode** — Penalizes dangerous zones/mobs based on your level for hardcore characters
- **Tooltip integration** — Item tooltips show how many you need across all projects
- **pfQuest-styled UI** — Draggable, lockable tracker frame with collapsible project headers

## Installation

1. Download or clone this repository into your WoW AddOns folder:
   ```
   <WoW Directory>/Interface/AddOns/MaterialTracker/
   ```
2. Restart WoW or type `/reload` if already in-game.

### Optional Dependencies

| Addon | Purpose |
|-------|---------|
| [pfQuest](https://github.com/shagu/pfern) / pfQuest-turtle | Item search, fuzzy matching, mob drop data for zone recommendations |
| [Bagshui](https://github.com/veechs/Bagshui) | Bank and alt character inventory scanning |
| [pfUI](https://github.com/shagu/pfUI) | Font and theme matching |

MaterialTracker works without any of these, but item search and farming recommendations require pfQuest.

## Commands

All commands use `/mt` (or `/materialtracker`).

### Project Management

| Command | Description |
|---------|-------------|
| `/mt add` | Open the project creation dialog. Also: `/mt create`, `/mt new` |
| `/mt projects` | List all active projects with completion percentages |
| `/mt refresh` | Re-expand recipes for all projects (useful after recipe database updates) |
| `/mt refresh "Project Name"` | Re-expand recipes for a specific project |

### Tracker Display

| Command | Description |
|---------|-------------|
| `/mt show` | Show the tracker frame |
| `/mt hide` | Hide the tracker frame |
| `/mt lock` | Lock the tracker in place (prevent dragging) |
| `/mt unlock` | Unlock the tracker for repositioning |
| `/mt mode` | Toggle between **Projects** view and **Shopping List** (aggregated raw materials) |
| `/mt hidecompleted` | Toggle hiding of completed goals. Also: `/mt hc` |

### Inventory Sources

| Command | Description |
|---------|-------------|
| `/mt bank` | Toggle inclusion of bank items in counts (requires Bagshui) |
| `/mt alts` | Toggle inclusion of alt character items in counts (requires Bagshui) |

### Farming Guidance

| Command | Description |
|---------|-------------|
| `/mt zones` | Show the top 5 farming zones for your tracked materials |
| `/mt zones 10` | Show the top N farming zones |
| `/mt hardcore` | Toggle hardcore mode — penalizes zones with mobs above your level |

### Notifications & Debug

| Command | Description |
|---------|-------------|
| `/mt notifications` | Toggle chat notifications when you loot tracked items. Also: `/mt notify` |
| `/mt bankdebug` | Print Bagshui integration diagnostic info |
| `/mt debug` | Toggle verbose debug logging |
| `/mt help` | Show the in-game command reference |

## Usage Guide

### Creating a Project

1. Type `/mt add` to open the creation dialog.
2. Search for an item by name (requires pfQuest).
3. Click an item from the results to select it.
4. Set your target quantity.
5. Check **Recipe** to automatically expand crafting materials into sub-goals.
6. Click **Create**.

You can also **Shift+click** an item link in chat to quick-add it to a project.

### Tracker Interaction

- **Click** a project header (+/-) to expand or collapse it.
- **Right-click** a project header to add materials, rename, or delete the project.
- **Right-click** a goal to add child materials, edit the quantity, or remove it.
- **Drag** the tracker to reposition it (when unlocked).

### Display Modes

**Projects mode** (default) shows goals organized by project with a hierarchical tree view. **Shopping List mode** (`/mt mode`) aggregates all raw materials across every project into a flat list — useful when heading out to farm.

### Color Coding

| Color | Meaning |
|-------|---------|
| Red | Incomplete — you still need more of this item |
| Gold | Craftable — all raw materials gathered, ready to craft |
| Green | Complete — target reached |

### Farming Zones

`/mt zones` ranks zones by a composite score based on:
- Gathering nodes available in the zone (herbs, ore, etc.)
- Mobs that drop your needed items (3%+ drop rate)
- How much of each item you still need

With **hardcore mode** enabled, zones with high-level mobs are penalized to prioritize safer farming routes.

## Data & Persistence

All project data is saved per-character in WoW's `SavedVariables` system (`MaterialTrackerDB`). Data persists across sessions automatically.

## Attribution

See [ATTRIBUTIONS.md](ATTRIBUTIONS.md) for third-party code acknowledgments and design inspiration credits.

## License

MIT License — see [ATTRIBUTIONS.md](ATTRIBUTIONS.md) for details.
