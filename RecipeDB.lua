--[[
  MaterialTracker Recipe Database

  This file contains crafting recipes for automatic material tree generation.

  Format:
  MT_RecipeDB[outputItemID] = {
    name = "Item Name",                    -- (Optional) For readability
    profession = "Profession",             -- (Optional) e.g., "Mining", "Tailoring"
    skillLevel = number,                   -- (Optional) Skill required
    yield = number,                        -- (Optional) Number created per craft (default: 1)
    materials = {
      { itemID = number, count = number }, -- Required materials
      ...
    }
  }

  To add your scraped data:
  1. Replace the example recipes below with your full database
  2. Keep the MT_RecipeDB table structure
  3. Ensure all itemIDs are numbers, not strings
  4. Verify counts match in-game recipes
]]--

-- Initialize global recipe database
MT_RecipeDB = MT_RecipeDB or {}

-- ============================================================================
-- EXAMPLE RECIPES (Replace with your scraped data)
-- ============================================================================

-- Mining / Smelting
MT_RecipeDB[2840] = { -- Copper Bar
  name = "Copper Bar",
  profession = "Mining",
  skillLevel = 1,
  materials = {
    { itemID = 2770, count = 1 }, -- Copper Ore
  }
}

MT_RecipeDB[3576] = { -- Tin Bar
  name = "Tin Bar",
  profession = "Mining",
  skillLevel = 50,
  materials = {
    { itemID = 2771, count = 1 }, -- Tin Ore
  }
}

MT_RecipeDB[2841] = { -- Bronze Bar
  name = "Bronze Bar",
  profession = "Mining",
  skillLevel = 65,
  materials = {
    { itemID = 2840, count = 1 }, -- Copper Bar
    { itemID = 3576, count = 1 }, -- Tin Bar
  }
}

MT_RecipeDB[3577] = { -- Iron Bar
  name = "Iron Bar",
  profession = "Mining",
  skillLevel = 125,
  materials = {
    { itemID = 2772, count = 1 }, -- Iron Ore
  }
}

MT_RecipeDB[3859] = { -- Steel Bar
  name = "Steel Bar",
  profession = "Mining",
  skillLevel = 125,
  materials = {
    { itemID = 3577, count = 1 }, -- Iron Bar
    { itemID = 3575, count = 1 }, -- Coal (note: different from Tin Bar!)
  }
}

MT_RecipeDB[3860] = { -- Mithril Bar
  name = "Mithril Bar",
  profession = "Mining",
  skillLevel = 175,
  materials = {
    { itemID = 3858, count = 1 }, -- Mithril Ore
  }
}

MT_RecipeDB[12359] = { -- Thorium Bar
  name = "Thorium Bar",
  profession = "Mining",
  skillLevel = 230,
  materials = {
    { itemID = 10620, count = 1 }, -- Thorium Ore
  }
}

-- Tailoring - Basic Bolts
MT_RecipeDB[2996] = { -- Bolt of Linen Cloth
  name = "Bolt of Linen Cloth",
  profession = "Tailoring",
  skillLevel = 1,
  materials = {
    { itemID = 2589, count = 2 }, -- Linen Cloth
  }
}

MT_RecipeDB[2997] = { -- Bolt of Woolen Cloth
  name = "Bolt of Woolen Cloth",
  profession = "Tailoring",
  skillLevel = 75,
  materials = {
    { itemID = 2592, count = 3 }, -- Wool Cloth
  }
}

MT_RecipeDB[4305] = { -- Bolt of Silk Cloth
  name = "Bolt of Silk Cloth",
  profession = "Tailoring",
  skillLevel = 125,
  materials = {
    { itemID = 4306, count = 4 }, -- Silk Cloth
  }
}

MT_RecipeDB[4339] = { -- Bolt of Mageweave
  name = "Bolt of Mageweave",
  profession = "Tailoring",
  skillLevel = 175,
  materials = {
    { itemID = 4338, count = 5 }, -- Mageweave Cloth
  }
}

MT_RecipeDB[14048] = { -- Bolt of Runecloth
  name = "Bolt of Runecloth",
  profession = "Tailoring",
  skillLevel = 250,
  materials = {
    { itemID = 14047, count = 5 }, -- Runecloth
  }
}

-- Tailoring - Bags (Complex recipes)
MT_RecipeDB[4245] = { -- Small Silk Pack
  name = "Small Silk Pack",
  profession = "Tailoring",
  skillLevel = 150,
  materials = {
    { itemID = 4305, count = 3 }, -- Bolt of Silk Cloth
    { itemID = 4291, count = 3 }, -- Silken Thread
  }
}

MT_RecipeDB[14046] = { -- Runecloth Bag
  name = "Runecloth Bag",
  profession = "Tailoring",
  skillLevel = 260,
  materials = {
    { itemID = 14048, count = 5 }, -- Bolt of Runecloth
    { itemID = 14227, count = 1 }, -- Ironweb Spider Silk
    { itemID = 14341, count = 1 }, -- Rune Thread
  }
}

-- Blacksmithing - Example Weapon
MT_RecipeDB[3484] = { -- Copper Claymore
  name = "Copper Claymore",
  profession = "Blacksmithing",
  skillLevel = 30,
  materials = {
    { itemID = 2840, count = 10 }, -- Copper Bar
    { itemID = 2841, count = 2 },  -- Bronze Bar
    { itemID = 2880, count = 1 },  -- Weak Flux
  }
}

-- Leatherworking - Example
MT_RecipeDB[2302] = { -- Light Leather
  name = "Light Leather",
  profession = "Leatherworking",
  skillLevel = 1,
  materials = {
    { itemID = 2318, count = 1 }, -- Light Hide
  }
}

-- Alchemy - Potions (with yield)
MT_RecipeDB[118] = { -- Minor Healing Potion
  name = "Minor Healing Potion",
  profession = "Alchemy",
  skillLevel = 1,
  materials = {
    { itemID = 765, count = 1 },  -- Silverleaf
    { itemID = 2447, count = 1 }, -- Peacebloom
    { itemID = 3371, count = 1 }, -- Empty Vial
  }
}

MT_RecipeDB[6149] = { -- Greater Mana Potion
  name = "Greater Mana Potion",
  profession = "Alchemy",
  skillLevel = 220,
  yield = 2, -- Creates 2 potions
  materials = {
    { itemID = 3358, count = 3 }, -- Khadgar's Whisker
    { itemID = 3369, count = 2 }, -- Grave Moss
    { itemID = 3371, count = 1 }, -- Crystal Vial
  }
}

-- ============================================================================
-- INSTRUCTIONS FOR ADDING YOUR DATA
-- ============================================================================

--[[
  To populate this database with your scraped data:

  1. Keep the MT_RecipeDB table at the top
  2. Add entries in this format:

  MT_RecipeDB[ITEM_ID] = {
    name = "Item Name",        -- Optional but helpful
    profession = "Profession", -- Optional
    skillLevel = 123,          -- Optional
    materials = {
      { itemID = 1234, count = 5 },
      { itemID = 5678, count = 2 },
    }
  }

  3. You can organize by profession using comments
  4. Remove these example recipes once you have real data
  5. Test with `/reload` in-game

  Example scraping script format (CSV):
  outputID,outputName,profession,skillLevel,materialID1,count1,materialID2,count2,...
  2841,Bronze Bar,Mining,65,2840,1,3576,1

  You can convert CSV to Lua with a simple script or manually.
]]--

-- ============================================================================
-- DATABASE STATISTICS (Auto-generated, optional)
-- ============================================================================

-- Count recipes (for debugging)
local function CountRecipes()
  local count = 0
  for _ in pairs(MT_RecipeDB) do
    count = count + 1
  end
  return count
end

-- Uncomment to see recipe count on load
-- DEFAULT_CHAT_FRAME:AddMessage("MaterialTracker: Loaded " .. CountRecipes() .. " recipes")
