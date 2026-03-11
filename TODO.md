# MaterialTracker - TODO List

## Known Issues

### HIGH PRIORITY

#### UI Text Visibility in Creation Dialog
**Problem:** Labels in `/mt add` dialog (Search for Item, Results, Selected Item, Target Quantity) are barely visible despite setting `SetTextColor(1, 1, 1)`.

**Attempted Fixes:**
- SetTextColor with full opacity (1, 1, 1, 1) - No effect
- Added OUTLINE flag to font - No effect
- Added THICKOUTLINE flag - No effect
- Added SetShadowColor and SetShadowOffset - No effect
- Removed font template inheritance - No effect

**Possible Causes:**
1. Font template override from parent frame
2. Alpha channel inheritance from backdrop
3. Strata/Layer ordering issues
4. pfUI font conflicts (if installed)
5. WoW 1.12.1 quirk with CreateFontString

**Next Steps to Try:**
- [ ] Create labels as separate frames with texture backgrounds
- [ ] Use direct font file path instead of GetFont() helper
- [ ] Test with pfUI disabled
- [ ] Check if labels render correctly on different backgrounds
- [ ] Use colored texture rectangles instead of text
- [ ] Investigate GameFont template overrides

**Workaround:** Functional but hard to read - not blocking core functionality

---

## Feature Requests

### MEDIUM PRIORITY

#### Recipe Database Population
- [ ] Get scraped TurtleWoW recipe data from user
- [ ] Import into RecipeDB.lua
- [ ] Test automatic material expansion with real recipes
- [ ] Add Turtle-specific custom recipes

#### Right-Click Menu Enhancement
Current: Right-click opens "Add Material" dialog
Desired: Context menu with multiple options:
- [ ] Add Material...
- [ ] Edit Target Quantity...
- [ ] Remove Goal
- [ ] Mark as Complete (manual override)

#### Bank Integration (Bagshui)
- [ ] Detect if Bagshui is loaded
- [ ] Scan bank contents for tracked items
- [ ] Display bank counts separately: `5 (bags) + 10 (bank)`
- [ ] Add visual indicator for items in bank

### LOW PRIORITY

#### Account-Wide Tracking
- [ ] Implement SavedVariables (account-wide)
- [ ] Store per-character inventory snapshots
- [ ] Display alt totals: `5 (char) + 3 (alt1) + 2 (alt2)`
- [ ] Character sync on login

#### UI Polish
- [ ] Add item icons to tracker display
- [ ] Minimize button for tracker
- [ ] Scale slider for tracker font size
- [ ] Custom color picker for completion colors
- [ ] Drag-and-drop reordering of goals

#### Import/Export
- [ ] Export project to chat link (string encode)
- [ ] Import project from link
- [ ] Share recipes between accounts

#### pfUI Integration
- [ ] Match pfUI theme colors
- [ ] Use pfUI font settings
- [ ] Skinning API compatibility

---

## Completed Features ✓

- [x] Core tracker UI with hierarchical display
- [x] Real-time bag scanning and updates
- [x] Collapsible categories
- [x] pfQuest item search integration
- [x] Project creation GUI
- [x] Right-click to add materials
- [x] Recipe database framework
- [x] Automatic material expansion
- [x] Data persistence (SavedVariablesPerCharacter)
- [x] Manual project creation
- [x] Color-coded progress (red/green)

---

## Notes

- Recipe database is ready for population - waiting on scraped data
- Creation GUI is functional despite text visibility issues
- All core features working as of v0.1.0
