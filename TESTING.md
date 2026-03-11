# MaterialTracker - Testing Guide

## Recipe Database Testing

The recipe system is now fully integrated and ready to test with the example recipes in RecipeDB.lua.

### How to Test Automatic Recipe Expansion

1. **Load the addon**
   - Start WoW and `/reload` (if files were edited)
   - New .toc additions require full restart, but RecipeDB.lua changes only need `/reload`

2. **Test with Bronze Bar** (best example - has nested recipes)
   ```
   /mt add
   ```
   - Search for "Bronze Bar"
   - Select it from results
   - **Notice**: Checkbox appears: "Include materials automatically (2 items)"
   - **Hover over checkbox**: Tooltip shows "1x Copper Bar, 1x Tin Bar"
   - Set quantity to 10
   - Leave checkbox CHECKED
   - Click "Create New Project"

3. **Expected Result**
   ```
   Bronze Bar (0/10)
     Copper Bar (0/10)
       Copper Ore (0/10)
     Tin Bar (0/10)
       Tin Ore (0/10)
   ```
   The system should automatically expand:
   - Bronze Bar requires Copper Bar + Tin Bar
   - Copper Bar requires Copper Ore (from recipe 2840)
   - Tin Bar requires Tin Ore (from recipe 3576)

4. **Test without auto-expansion**
   - Create another Bronze Bar project
   - This time, UNCHECK the "Include materials automatically" box
   - Expected result: Only "Bronze Bar (0/10)" with no children

### Example Recipes Available for Testing

From RecipeDB.lua, you can test with:

#### Simple Recipes (1 material)
- **Copper Bar** → Copper Ore
- **Tin Bar** → Tin Ore
- **Iron Bar** → Iron Ore
- **Mithril Bar** → Mithril Ore
- **Thorium Bar** → Thorium Ore

#### Complex Recipes (multiple materials)
- **Bronze Bar** → Copper Bar + Tin Bar (best for testing nesting!)
- **Steel Bar** → Iron Bar + Coal
- **Copper Claymore** → 10x Copper Bar + 2x Bronze Bar + Weak Flux

#### Recipes with Yield
- **Greater Mana Potion** (yield: 2)
  - Creates 2 potions per craft
  - If you request 20 potions, should calculate materials for 10 crafts

### Testing Right-Click Add Material

1. Create a simple Copper Bar project first (without recipes):
   ```
   /mt add
   ```
   Search "Copper Bar", quantity 10, UNCHECK the box

2. Right-click on "Copper Bar" in the tracker

3. Search for "Copper Ore" and add it

4. Right-click on "Copper Ore" and add something random (to test deeper nesting)

### Verification Checklist

- [ ] Recipe checkbox appears for crafted items
- [ ] Recipe checkbox does NOT appear for raw materials (like Copper Ore)
- [ ] Checkbox tooltip shows correct material list
- [ ] Auto-expansion creates correct tree structure
- [ ] Nested recipes expand recursively (Bronze Bar → Copper Bar → Copper Ore)
- [ ] Counts update in real-time when you collect materials
- [ ] Manual material adding (right-click) still works
- [ ] Can create projects with and without auto-expansion

### Common Issues

**Checkbox doesn't appear:**
- Make sure the item has a recipe in RecipeDB.lua
- Check console with `/mt debug` to see if recipe lookup is working

**Tree doesn't expand:**
- Verify RecipeDB.lua was loaded (check line count in MaterialTracker.toc)
- Use `/script DEFAULT_CHAT_FRAME:AddMessage(MT:GetRecipeCount())` to verify recipes loaded
- Should show "19" for the example recipes

**Wrong material counts:**
- Check the `yield` field in RecipeDB.lua
- Formula: `ceil((parentQuantity / yield) * materialCount)`
- Example: 20 Greater Mana Potions (yield 2) = 10 crafts × materials

## Adding Your Full Recipe Database

Once testing is successful, replace the example recipes in RecipeDB.lua with your scraped data.

### Format for Your Data

```lua
MT_RecipeDB[ITEM_ID] = {
  name = "Item Name",        -- Optional (helpful for debugging)
  profession = "Profession", -- Optional
  skillLevel = 123,          -- Optional
  yield = 2,                 -- Optional (default: 1)
  materials = {
    { itemID = 1234, count = 5 },
    { itemID = 5678, count = 2 },
  }
}
```

### Tips for Bulk Import

1. Keep the `MT_RecipeDB = MT_RecipeDB or {}` line at the top
2. Organize by profession using comments for readability
3. Test with `/reload` after adding new recipes
4. Use `/script MT:ListAllProjects()` to debug project structure

## Debugging Commands

```lua
-- Check recipe count
/script DEFAULT_CHAT_FRAME:AddMessage("Recipes: " .. MT:GetRecipeCount())

-- Test recipe lookup
/script local r = MT:GetRecipe(2841); if r then DEFAULT_CHAT_FRAME:AddMessage("Bronze Bar recipe found!") end

-- Print project structure
/script MT:PrintProjectStructure(MaterialTrackerDB.projects[1])
```
