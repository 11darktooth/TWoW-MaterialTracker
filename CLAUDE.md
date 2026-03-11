# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

MaterialTracker is a World of Warcraft addon for the 1.12.1 (Vanilla) client, specifically for Turtle WoW. It provides an on-screen tracker for gathering and crafting materials with real-time inventory updates, styled similar to the `pfquest` quest tracker.

## Development Environment

**Target Platform:** World of Warcraft 1.12.1 client (Vanilla/Classic era)

**Testing Location:** The addon files are located in the WoW AddOns directory. Changes take effect when:
1. Files are saved to disk
2. The game is reloaded with `/reload` command in-game, OR
3. The game is restarted

**No Build Process:** WoW addons are interpreted Lua scripts loaded directly by the game client. There is no compilation, bundling, or build step required.

## Core Architecture

**Entry Point:** The addon requires two core files:
- `MaterialTracker.toc` - Table of Contents file listing all addon files and metadata
- Lua files referenced in the .toc (loaded in order)

**Key Technologies:**
- **Lua 5.0** (with WoW-specific globals and APIs)
- **XML** for UI frame definitions (optional, can also create frames in Lua)
- **WoW 1.12.1 API** - Limited to Vanilla-era functions (not modern WoW APIs)

**Dependencies:**
- `pfquest` (optional) - Used for item database lookups and fuzzy searching

**Data Persistence:**
- `SavedVariablesPerCharacter` - Character-specific data (projects, goals, tracked items)
- Defined in the .toc file, automatically serialized by the game client

**Event System:**
- `BAG_UPDATE` - Fired when bag contents change, triggers inventory recount
- `PLAYER_ENTERING_WORLD` - Fired on login/reload, initializes UI and loads saved data

## Data Structure Design

Goals are structured as a **tree/graph** to support recursive crafting recipes:
- Parent goal (e.g., "Bronze Bar")
- Child sub-goals for base materials (e.g., Copper Ore, Tin Ore)
- Each node tracks: Item ID, current count, target count, completion state

Color coding:
- RED text for incomplete (current < target)
- GREEN text for complete (current >= target)

## UI Framework Pattern

The addon uses WoW's native frame system:
- Frames are created via `CreateFrame()` or XML definitions
- Frames can be draggable, lockable, and positioned
- Text rendering uses FontString objects
- Collapsible hierarchies typically use nested frames with show/hide logic

UI should mimic `pfquest` visual style for consistency.

## Integration Points

**pfquest Database:**
- Access via pfquest's exposed API for item lookups
- Used for fuzzy search (e.g., "Wool" → "Wool Cloth")
- Provides correct Item IDs for tracking

**Future Integrations (Stretch Goals):**
- Bagshui - Bank inventory scanning
- pfUI - Visual theme matching

## WoW 1.12.1 API Constraints

Important limitations vs. modern WoW:
- No `C_Container` namespace (use `GetContainerNumSlots`, `GetContainerItemLink`, etc.)
- No `C_Item` namespace (use `GetItemInfo`)
- Limited string functions (use custom implementations for split, trim, etc.)
- No modern secure templates or restricted environment features
- Global namespace pollution is common (use unique prefixes)

## Common Development Workflow

1. Create/edit Lua and TOC files in this directory
2. Use `/reload` in-game to test changes
3. Check for errors with `/script` commands or error-catching addons
4. Test bag updates by moving items in inventory
5. Verify SavedVariables by checking `WTF/Account/.../SavedVariables/MaterialTracker.lua`

## Naming Conventions

- Use `MaterialTracker` prefix for global functions/tables to avoid conflicts
- Frame names should be globally unique (e.g., `MaterialTrackerFrame`)
- SavedVariables use `MaterialTrackerDB` or similar naming
