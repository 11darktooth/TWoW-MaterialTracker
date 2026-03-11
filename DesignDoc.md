# Design Document: "MaterialTracker" (Turtle WoW Addon)

## 1. Overview & Objectives
**MaterialTracker** is a utility addon for World of Warcraft (1.12.1 client). It provides an on-screen, persistent tracker for gathering and crafting materials, visually styled like the `pfquest` quest tracker. Users can define custom farming goals via an in-game GUI, and the addon will automatically track their immediate bag inventory in real-time.

## 2. Core Features (MVP)
* **GUI Project Creation:** A pop-up window where users can create a new goal, search for items, and set target quantities.
* **`pfquest` Database Integration:** The input GUI leverages the `pfquest` item database for fuzzy searching (e.g., typing "Wool" suggests "Wool Cloth") and fetching correct Item IDs.
* **Real-time Inventory Tracking:** Automatically updates as items are added to or removed from the player's immediate bags.
* **Recursive Sub-Goal Generation (Crafting Trees):** When a known crafted item (e.g., Bronze Bar) is added, the addon can automatically generate nested sub-goals for its base components (Copper Ore, Tin Ore).
* **Color-Coded Progress:** * Incomplete tasks: **RED** (e.g., `5/10 Copper Ore`)
  * Complete tasks: **GREEN** (e.g., `10/10 Copper Ore`)

## 3. Technical Architecture
* **Target API:** WoW Client 1.12.1 (Vanilla).
* **Data Storage (`SavedVariables`):** * `SavedVariablesPerCharacter`: Stores the active projects, nested sub-goals, and tracked item IDs for the specific character.
* **Dependencies:** `pfquest` (Optional but recommended for the item lookup API).
* **Core Event Hooks:** * `BAG_UPDATE`: Triggers a recount of tracked items in the player's immediate bags.
  * `PLAYER_ENTERING_WORLD`: Initializes the tracker GUI and loads the character's saved variables.
* **Data Structure:** Goals should be structured as a tree/graph to support the recursive breakdown of crafted materials into base reagents.

## 4. UI / UX Design Specifications
* **Tracker Frame:** Freestanding, movable, and lockable frame mimicking standard quest text sizing.
* **Display Hierarchy:** Categories are collapsible.

```text
  ▼ Mistwood Tiara (Click to collapse)
    ▼ 0/10 Bronze Bar
      - 5/10 Copper Ore  [RED]
      - 10/10 Tin Ore    [GREEN]
    - 0/2 Moss Agate   [RED]
    - 1/1 Polishing Oil [GREEN]
```
* **Input Window**: A clean pop-up UI containing a search bar (querying the pfquest DB), a quantity input field, and an "Add to Tracker" button.

## 5. Stretch Goals & Advanced Integrations
* **Bagshui Integration**: Hooking into Bagshui's API to scan and include items located in the player's bank, appending a visual denotation (e.g., [Bank]) next to those counts.
* **Account-Wide Data Visibility**: Transitioning specific lookup functions or list-sharing to SavedVariables (account-wide) so a player can view what their alt characters are currently farming.
* **pfUI Integration**: Skinning the tracker frame and input GUI to natively match the flat, pixel-perfect aesthetic of pfUI.