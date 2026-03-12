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
-- RECIPE DATA 
-- ============================================================================

MT_RecipeDB[118] = { -- Minor Healing Potion
  name = "Minor Healing Potion",
  profession = "Alchemy",
  spellID = 2330,
  yield = 1,
  materials = {
    { itemID = 2447, count = 1 },
    { itemID = 765, count = 1 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[2454] = { -- Elixir of Lion
  name = "Elixir of Lion",
  profession = "Alchemy",
  spellID = 2329,
  yield = 1,
  materials = {
    { itemID = 2449, count = 1 },
    { itemID = 765, count = 1 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[2455] = { -- Minor Mana Potion
  name = "Minor Mana Potion",
  profession = "Alchemy",
  spellID = 2331,
  yield = 1,
  materials = {
    { itemID = 785, count = 1 },
    { itemID = 765, count = 1 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[2456] = { -- Minor Rejuvenation Potion
  name = "Minor Rejuvenation Potion",
  profession = "Alchemy",
  spellID = 2332,
  yield = 1,
  materials = {
    { itemID = 785, count = 2 },
    { itemID = 2447, count = 1 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[2458] = { -- Elixir of Minor Fortitude
  name = "Elixir of Minor Fortitude",
  profession = "Alchemy",
  spellID = 2334,
  yield = 1,
  materials = {
    { itemID = 2449, count = 2 },
    { itemID = 2447, count = 1 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[2459] = { -- Swiftness Potion
  name = "Swiftness Potion",
  profession = "Alchemy",
  spellID = 2335,
  yield = 1,
  materials = {
    { itemID = 2452, count = 1 },
    { itemID = 2450, count = 1 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[2460] = { -- Elixir of Tongues
  name = "Elixir of Tongues",
  profession = "Alchemy",
  spellID = 2336,
  yield = 1,
  materials = {
    { itemID = 2449, count = 2 },
    { itemID = 785, count = 2 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[858] = { -- Lesser Healing Potion
  name = "Lesser Healing Potion",
  profession = "Alchemy",
  spellID = 2337,
  yield = 1,
  materials = {
    { itemID = 118, count = 1 },
    { itemID = 2450, count = 1 },
  }
}

MT_RecipeDB[3383] = { -- Elixir of Wisdom
  name = "Elixir of Wisdom",
  profession = "Alchemy",
  spellID = 3171,
  yield = 1,
  materials = {
    { itemID = 785, count = 1 },
    { itemID = 2450, count = 2 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[3384] = { -- Minor Magic Resistance Potion
  name = "Minor Magic Resistance Potion",
  profession = "Alchemy",
  spellID = 3172,
  yield = 1,
  materials = {
    { itemID = 785, count = 3 },
    { itemID = 3355, count = 1 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[3385] = { -- Lesser Mana Potion
  name = "Lesser Mana Potion",
  profession = "Alchemy",
  spellID = 3173,
  yield = 1,
  materials = {
    { itemID = 785, count = 1 },
    { itemID = 3820, count = 1 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[3386] = { -- Elixir of Poison Resistance
  name = "Elixir of Poison Resistance",
  profession = "Alchemy",
  spellID = 3174,
  yield = 1,
  materials = {
    { itemID = 1288, count = 1 },
    { itemID = 2453, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[3388] = { -- Strong Troll
  name = "Strong Troll",
  profession = "Alchemy",
  spellID = 3176,
  yield = 1,
  materials = {
    { itemID = 2453, count = 2 },
    { itemID = 2450, count = 2 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[3389] = { -- Elixir of Defense
  name = "Elixir of Defense",
  profession = "Alchemy",
  spellID = 3177,
  yield = 1,
  materials = {
    { itemID = 3355, count = 1 },
    { itemID = 3820, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[3390] = { -- Elixir of Lesser Agility
  name = "Elixir of Lesser Agility",
  profession = "Alchemy",
  spellID = 2333,
  yield = 1,
  materials = {
    { itemID = 3355, count = 1 },
    { itemID = 2452, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[3391] = { -- Elixir of Ogre
  name = "Elixir of Ogre",
  profession = "Alchemy",
  spellID = 3188,
  yield = 1,
  materials = {
    { itemID = 2449, count = 1 },
    { itemID = 3356, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[3382] = { -- Weak Troll
  name = "Weak Troll",
  profession = "Alchemy",
  spellID = 3170,
  yield = 1,
  materials = {
    { itemID = 2447, count = 1 },
    { itemID = 2449, count = 2 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[2457] = { -- Elixir of Minor Agility
  name = "Elixir of Minor Agility",
  profession = "Alchemy",
  spellID = 3230,
  yield = 1,
  materials = {
    { itemID = 2452, count = 1 },
    { itemID = 765, count = 1 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[929] = { -- Healing Potion
  name = "Healing Potion",
  profession = "Alchemy",
  spellID = 3447,
  yield = 1,
  materials = {
    { itemID = 2453, count = 1 },
    { itemID = 2450, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[3823] = { -- Lesser Invisibility Potion
  name = "Lesser Invisibility Potion",
  profession = "Alchemy",
  spellID = 3448,
  yield = 1,
  materials = {
    { itemID = 3818, count = 1 },
    { itemID = 3355, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[3824] = { -- Shadow Oil
  name = "Shadow Oil",
  profession = "Alchemy",
  spellID = 3449,
  yield = 1,
  materials = {
    { itemID = 3818, count = 4 },
    { itemID = 3369, count = 2 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[3825] = { -- Elixir of Fortitude
  name = "Elixir of Fortitude",
  profession = "Alchemy",
  spellID = 3450,
  yield = 1,
  materials = {
    { itemID = 3355, count = 1 },
    { itemID = 3821, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[3826] = { -- Mighty Troll
  name = "Mighty Troll",
  profession = "Alchemy",
  spellID = 3451,
  yield = 1,
  materials = {
    { itemID = 3357, count = 1 },
    { itemID = 2453, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[3827] = { -- Mana Potion
  name = "Mana Potion",
  profession = "Alchemy",
  spellID = 3452,
  yield = 1,
  materials = {
    { itemID = 3820, count = 1 },
    { itemID = 3356, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[3828] = { -- Elixir of Detect Lesser Invisibility
  name = "Elixir of Detect Lesser Invisibility",
  profession = "Alchemy",
  spellID = 3453,
  yield = 1,
  materials = {
    { itemID = 3358, count = 1 },
    { itemID = 3818, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[3829] = { -- Frost Oil
  name = "Frost Oil",
  profession = "Alchemy",
  spellID = 3454,
  yield = 1,
  materials = {
    { itemID = 3358, count = 4 },
    { itemID = 3819, count = 2 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[4596] = { -- Discolored Healing Potion
  name = "Discolored Healing Potion",
  profession = "Alchemy",
  spellID = 4508,
  yield = 1,
  materials = {
    { itemID = 3164, count = 1 },
    { itemID = 2447, count = 1 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[4623] = { -- Lesser Stoneshield Potion
  name = "Lesser Stoneshield Potion",
  profession = "Alchemy",
  spellID = 4942,
  yield = 1,
  materials = {
    { itemID = 3858, count = 1 },
    { itemID = 3821, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[5634] = { -- Free Action Potion
  name = "Free Action Potion",
  profession = "Alchemy",
  spellID = 6624,
  yield = 1,
  materials = {
    { itemID = 6370, count = 2 },
    { itemID = 3820, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[5632] = { -- Cowardly Flight Potion
  name = "Cowardly Flight Potion",
  profession = "Alchemy",
  spellID = 6619,
  yield = 1,
  materials = {
    { itemID = 5636, count = 1 },
    { itemID = 3356, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[5633] = { -- Great Rage Potion
  name = "Great Rage Potion",
  profession = "Alchemy",
  spellID = 6618,
  yield = 1,
  materials = {
    { itemID = 5637, count = 1 },
    { itemID = 3356, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[5631] = { -- Rage Potion
  name = "Rage Potion",
  profession = "Alchemy",
  spellID = 6617,
  yield = 1,
  materials = {
    { itemID = 5635, count = 1 },
    { itemID = 2450, count = 1 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[5996] = { -- Elixir of Water Breathing
  name = "Elixir of Water Breathing",
  profession = "Alchemy",
  spellID = 7179,
  yield = 1,
  materials = {
    { itemID = 3820, count = 1 },
    { itemID = 6370, count = 2 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[1710] = { -- Greater Healing Potion
  name = "Greater Healing Potion",
  profession = "Alchemy",
  spellID = 7181,
  yield = 1,
  materials = {
    { itemID = 3357, count = 1 },
    { itemID = 3356, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[5997] = { -- Elixir of Minor Defense
  name = "Elixir of Minor Defense",
  profession = "Alchemy",
  spellID = 7183,
  yield = 1,
  materials = {
    { itemID = 765, count = 2 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[6049] = { -- Fire Protection Potion
  name = "Fire Protection Potion",
  profession = "Alchemy",
  spellID = 7257,
  yield = 1,
  materials = {
    { itemID = 4402, count = 1 },
    { itemID = 6371, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[6050] = { -- Frost Protection Potion
  name = "Frost Protection Potion",
  profession = "Alchemy",
  spellID = 7258,
  yield = 1,
  materials = {
    { itemID = 3819, count = 1 },
    { itemID = 3821, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[6051] = { -- Holy Protection Potion
  name = "Holy Protection Potion",
  profession = "Alchemy",
  spellID = 7255,
  yield = 1,
  materials = {
    { itemID = 2453, count = 1 },
    { itemID = 2452, count = 1 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[6052] = { -- Nature Protection Potion
  name = "Nature Protection Potion",
  profession = "Alchemy",
  spellID = 7259,
  yield = 1,
  materials = {
    { itemID = 3357, count = 1 },
    { itemID = 3820, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[6048] = { -- Shadow Protection Potion
  name = "Shadow Protection Potion",
  profession = "Alchemy",
  spellID = 7256,
  yield = 1,
  materials = {
    { itemID = 3369, count = 1 },
    { itemID = 3356, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[6370] = { -- Blackmouth Oil
  name = "Blackmouth Oil",
  profession = "Alchemy",
  spellID = 7836,
  yield = 1,
  materials = {
    { itemID = 6358, count = 2 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[6371] = { -- Fire Oil
  name = "Fire Oil",
  profession = "Alchemy",
  spellID = 7837,
  yield = 1,
  materials = {
    { itemID = 6359, count = 2 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[6372] = { -- Swim Speed Potion
  name = "Swim Speed Potion",
  profession = "Alchemy",
  spellID = 7841,
  yield = 1,
  materials = {
    { itemID = 2452, count = 1 },
    { itemID = 6370, count = 1 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[6373] = { -- Elixir of Firepower
  name = "Elixir of Firepower",
  profession = "Alchemy",
  spellID = 7845,
  yield = 1,
  materials = {
    { itemID = 6371, count = 2 },
    { itemID = 3356, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[6662] = { -- Elixir of Giant Growth
  name = "Elixir of Giant Growth",
  profession = "Alchemy",
  spellID = 8240,
  yield = 1,
  materials = {
    { itemID = 6522, count = 1 },
    { itemID = 2449, count = 1 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[8827] = { -- Elixir of Waterwalking
  name = "Elixir of Waterwalking",
  profession = "Alchemy",
  spellID = 11447,
  yield = 1,
  materials = {
    { itemID = 6370, count = 1 },
    { itemID = 3357, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[8949] = { -- Elixir of Agility
  name = "Elixir of Agility",
  profession = "Alchemy",
  spellID = 11449,
  yield = 1,
  materials = {
    { itemID = 3820, count = 1 },
    { itemID = 3821, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[8951] = { -- Elixir of Greater Defense
  name = "Elixir of Greater Defense",
  profession = "Alchemy",
  spellID = 11450,
  yield = 1,
  materials = {
    { itemID = 3355, count = 1 },
    { itemID = 3821, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[8956] = { -- Oil of Immolation
  name = "Oil of Immolation",
  profession = "Alchemy",
  spellID = 11451,
  yield = 1,
  materials = {
    { itemID = 4625, count = 1 },
    { itemID = 3821, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[6149] = { -- Greater Mana Potion
  name = "Greater Mana Potion",
  profession = "Alchemy",
  spellID = 11448,
  yield = 1,
  materials = {
    { itemID = 3358, count = 1 },
    { itemID = 3821, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[9030] = { -- Restorative Potion
  name = "Restorative Potion",
  profession = "Alchemy",
  spellID = 11452,
  yield = 1,
  materials = {
    { itemID = 7067, count = 1 },
    { itemID = 3821, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[9036] = { -- Magic Resistance Potion
  name = "Magic Resistance Potion",
  profession = "Alchemy",
  spellID = 11453,
  yield = 1,
  materials = {
    { itemID = 3358, count = 1 },
    { itemID = 8831, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[9061] = { -- Goblin Rocket Fuel
  name = "Goblin Rocket Fuel",
  profession = "Alchemy",
  spellID = 11456,
  yield = 1,
  materials = {
    { itemID = 4625, count = 1 },
    { itemID = 9260, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[3928] = { -- Superior Healing Potion
  name = "Superior Healing Potion",
  profession = "Alchemy",
  spellID = 11457,
  yield = 1,
  materials = {
    { itemID = 8838, count = 1 },
    { itemID = 3358, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[9144] = { -- Wildvine Potion
  name = "Wildvine Potion",
  profession = "Alchemy",
  spellID = 11458,
  yield = 1,
  materials = {
    { itemID = 8153, count = 1 },
    { itemID = 8831, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[9149] = { -- Philosophers
  name = "Philosophers",
  profession = "Alchemy",
  spellID = 11459,
  yield = 1,
  materials = {
    { itemID = 3575, count = 4 },
    { itemID = 9262, count = 1 },
    { itemID = 8831, count = 4 },
    { itemID = 4625, count = 4 },
  }
}

MT_RecipeDB[9154] = { -- Elixir of Detect Undead
  name = "Elixir of Detect Undead",
  profession = "Alchemy",
  spellID = 11460,
  yield = 1,
  materials = {
    { itemID = 8836, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[9155] = { -- Arcane Elixir
  name = "Arcane Elixir",
  profession = "Alchemy",
  spellID = 11461,
  yield = 1,
  materials = {
    { itemID = 8839, count = 1 },
    { itemID = 3821, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[9172] = { -- Invisibility Potion
  name = "Invisibility Potion",
  profession = "Alchemy",
  spellID = 11464,
  yield = 1,
  materials = {
    { itemID = 8845, count = 1 },
    { itemID = 8838, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[9179] = { -- Elixir of Greater Intellect
  name = "Elixir of Greater Intellect",
  profession = "Alchemy",
  spellID = 11465,
  yield = 1,
  materials = {
    { itemID = 8839, count = 1 },
    { itemID = 3358, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[9088] = { -- Gift of Arthas
  name = "Gift of Arthas",
  profession = "Alchemy",
  spellID = 11466,
  yield = 1,
  materials = {
    { itemID = 8836, count = 1 },
    { itemID = 8839, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[9187] = { -- Elixir of Greater Agility
  name = "Elixir of Greater Agility",
  profession = "Alchemy",
  spellID = 11467,
  yield = 1,
  materials = {
    { itemID = 8838, count = 1 },
    { itemID = 3821, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[9197] = { -- Elixir of Dream Vision
  name = "Elixir of Dream Vision",
  profession = "Alchemy",
  spellID = 11468,
  yield = 1,
  materials = {
    { itemID = 8831, count = 3 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[9206] = { -- Elixir of Giants
  name = "Elixir of Giants",
  profession = "Alchemy",
  spellID = 11472,
  yield = 1,
  materials = {
    { itemID = 8838, count = 1 },
    { itemID = 8846, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[9210] = { -- Ghost Dye
  name = "Ghost Dye",
  profession = "Alchemy",
  spellID = 11473,
  yield = 1,
  materials = {
    { itemID = 8845, count = 2 },
    { itemID = 4342, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[9264] = { -- Elixir of Shadow Power
  name = "Elixir of Shadow Power",
  profession = "Alchemy",
  spellID = 11476,
  yield = 1,
  materials = {
    { itemID = 8845, count = 3 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[9224] = { -- Elixir of Demonslaying
  name = "Elixir of Demonslaying",
  profession = "Alchemy",
  spellID = 11477,
  yield = 1,
  materials = {
    { itemID = 8846, count = 1 },
    { itemID = 8845, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[9233] = { -- Elixir of Detect Demon
  name = "Elixir of Detect Demon",
  profession = "Alchemy",
  spellID = 11478,
  yield = 1,
  materials = {
    { itemID = 8846, count = 2 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[3577] = { -- Transmute: Iron to Gold
  name = "Transmute: Iron to Gold",
  profession = "Alchemy",
  spellID = 11479,
  yield = 1,
  materials = {
    { itemID = 3575, count = 1 },
  }
}

MT_RecipeDB[6037] = { -- Transmute: Mithril to Truesilver
  name = "Transmute: Mithril to Truesilver",
  profession = "Alchemy",
  spellID = 11480,
  yield = 1,
  materials = {
    { itemID = 3860, count = 1 },
  }
}

MT_RecipeDB[10592] = { -- Catseye Elixir
  name = "Catseye Elixir",
  profession = "Alchemy",
  spellID = 12609,
  yield = 1,
  materials = {
    { itemID = 3821, count = 1 },
    { itemID = 3818, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[12190] = { -- Dreamless Sleep Potion
  name = "Dreamless Sleep Potion",
  profession = "Alchemy",
  spellID = 15833,
  yield = 1,
  materials = {
    { itemID = 8831, count = 3 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[12360] = { -- Transmute: Arcanite
  name = "Transmute: Arcanite",
  profession = "Alchemy",
  spellID = 17187,
  yield = 1,
  materials = {
    { itemID = 12359, count = 1 },
    { itemID = 12363, count = 1 },
  }
}

MT_RecipeDB[13423] = { -- Stonescale Oil
  name = "Stonescale Oil",
  profession = "Alchemy",
  spellID = 17551,
  yield = 1,
  materials = {
    { itemID = 13422, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[13442] = { -- Mighty Rage Potion
  name = "Mighty Rage Potion",
  profession = "Alchemy",
  spellID = 17552,
  yield = 1,
  materials = {
    { itemID = 8846, count = 3 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13443] = { -- Superior Mana Potion
  name = "Superior Mana Potion",
  profession = "Alchemy",
  spellID = 17553,
  yield = 1,
  materials = {
    { itemID = 8838, count = 2 },
    { itemID = 8839, count = 2 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13445] = { -- Elixir of Superior Defense
  name = "Elixir of Superior Defense",
  profession = "Alchemy",
  spellID = 17554,
  yield = 1,
  materials = {
    { itemID = 13423, count = 2 },
    { itemID = 8838, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13447] = { -- Elixir of the Sages
  name = "Elixir of the Sages",
  profession = "Alchemy",
  spellID = 17555,
  yield = 1,
  materials = {
    { itemID = 13463, count = 1 },
    { itemID = 13466, count = 2 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13446] = { -- Major Healing Potion
  name = "Major Healing Potion",
  profession = "Alchemy",
  spellID = 17556,
  yield = 1,
  materials = {
    { itemID = 13464, count = 2 },
    { itemID = 13465, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13453] = { -- Elixir of Brute Force
  name = "Elixir of Brute Force",
  profession = "Alchemy",
  spellID = 17557,
  yield = 1,
  materials = {
    { itemID = 8846, count = 2 },
    { itemID = 13466, count = 2 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[7078] = { -- Transmute: Air to Fire
  name = "Transmute: Air to Fire",
  profession = "Alchemy",
  spellID = 17559,
  yield = 1,
  materials = {
    { itemID = 7082, count = 1 },
  }
}

MT_RecipeDB[7080] = { -- Transmute: Earth to Water
  name = "Transmute: Earth to Water",
  profession = "Alchemy",
  spellID = 17561,
  yield = 1,
  materials = {
    { itemID = 7076, count = 1 },
  }
}

MT_RecipeDB[12803] = { -- Transmute: Earth to Life
  name = "Transmute: Earth to Life",
  profession = "Alchemy",
  spellID = 17566,
  yield = 1,
  materials = {
    { itemID = 7076, count = 1 },
  }
}

MT_RecipeDB[7076] = { -- Transmute: Fire to Earth
  name = "Transmute: Fire to Earth",
  profession = "Alchemy",
  spellID = 17560,
  yield = 1,
  materials = {
    { itemID = 7078, count = 1 },
  }
}

MT_RecipeDB[7082] = { -- Transmute: Water to Air
  name = "Transmute: Water to Air",
  profession = "Alchemy",
  spellID = 17562,
  yield = 1,
  materials = {
    { itemID = 7080, count = 1 },
  }
}

MT_RecipeDB[12808] = { -- Transmute: Water to Undeath
  name = "Transmute: Water to Undeath",
  profession = "Alchemy",
  spellID = 17564,
  yield = 1,
  materials = {
    { itemID = 7080, count = 1 },
  }
}

MT_RecipeDB[13455] = { -- Greater Stoneshield Potion
  name = "Greater Stoneshield Potion",
  profession = "Alchemy",
  spellID = 17570,
  yield = 1,
  materials = {
    { itemID = 13423, count = 3 },
    { itemID = 10620, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13452] = { -- Elixir of the Mongoose
  name = "Elixir of the Mongoose",
  profession = "Alchemy",
  spellID = 17571,
  yield = 1,
  materials = {
    { itemID = 13465, count = 2 },
    { itemID = 13466, count = 2 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13462] = { -- Purification Potion
  name = "Purification Potion",
  profession = "Alchemy",
  spellID = 17572,
  yield = 1,
  materials = {
    { itemID = 13467, count = 2 },
    { itemID = 13466, count = 2 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13454] = { -- Greater Arcane Elixir
  name = "Greater Arcane Elixir",
  profession = "Alchemy",
  spellID = 17573,
  yield = 1,
  materials = {
    { itemID = 13463, count = 3 },
    { itemID = 13465, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13457] = { -- Greater Fire Protection Potion
  name = "Greater Fire Protection Potion",
  profession = "Alchemy",
  spellID = 17574,
  yield = 1,
  materials = {
    { itemID = 7068, count = 1 },
    { itemID = 4625, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13456] = { -- Greater Frost Protection Potion
  name = "Greater Frost Protection Potion",
  profession = "Alchemy",
  spellID = 17575,
  yield = 1,
  materials = {
    { itemID = 7070, count = 1 },
    { itemID = 13467, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13458] = { -- Greater Nature Protection Potion
  name = "Greater Nature Protection Potion",
  profession = "Alchemy",
  spellID = 17576,
  yield = 1,
  materials = {
    { itemID = 7067, count = 1 },
    { itemID = 13463, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13461] = { -- Greater Arcane Protection Potion
  name = "Greater Arcane Protection Potion",
  profession = "Alchemy",
  spellID = 17577,
  yield = 1,
  materials = {
    { itemID = 11176, count = 1 },
    { itemID = 13463, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13459] = { -- Greater Shadow Protection Potion
  name = "Greater Shadow Protection Potion",
  profession = "Alchemy",
  spellID = 17578,
  yield = 1,
  materials = {
    { itemID = 3824, count = 1 },
    { itemID = 8836, count = 2 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13460] = { -- Greater Holy Protection Potion
  name = "Greater Holy Protection Potion",
  profession = "Alchemy",
  spellID = 17579,
  yield = 1,
  materials = {
    { itemID = 7069, count = 1 },
    { itemID = 13464, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13444] = { -- Major Mana Potion
  name = "Major Mana Potion",
  profession = "Alchemy",
  spellID = 17580,
  yield = 1,
  materials = {
    { itemID = 13463, count = 2 },
    { itemID = 13467, count = 2 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13503] = { -- Alchemist
  name = "Alchemist",
  profession = "Alchemy",
  spellID = 17632,
  yield = 1,
  materials = {
    { itemID = 7078, count = 8 },
    { itemID = 7076, count = 8 },
    { itemID = 7082, count = 8 },
    { itemID = 7080, count = 8 },
    { itemID = 12803, count = 8 },
    { itemID = 9262, count = 2 },
    { itemID = 13468, count = 4 },
  }
}

MT_RecipeDB[13506] = { -- Flask of Petrification
  name = "Flask of Petrification",
  profession = "Alchemy",
  spellID = 17634,
  yield = 1,
  materials = {
    { itemID = 13423, count = 30 },
    { itemID = 13465, count = 10 },
    { itemID = 13468, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13510] = { -- Flask of the Titans
  name = "Flask of the Titans",
  profession = "Alchemy",
  spellID = 17635,
  yield = 1,
  materials = {
    { itemID = 13464, count = 30 },
    { itemID = 13423, count = 10 },
    { itemID = 13468, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13511] = { -- Flask of Distilled Wisdom
  name = "Flask of Distilled Wisdom",
  profession = "Alchemy",
  spellID = 17636,
  yield = 1,
  materials = {
    { itemID = 8838, count = 30 },
    { itemID = 13467, count = 10 },
    { itemID = 13468, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13512] = { -- Flask of Supreme Power
  name = "Flask of Supreme Power",
  profession = "Alchemy",
  spellID = 17637,
  yield = 1,
  materials = {
    { itemID = 13463, count = 30 },
    { itemID = 13465, count = 10 },
    { itemID = 13468, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[13513] = { -- Flask of Chromatic Resistance
  name = "Flask of Chromatic Resistance",
  profession = "Alchemy",
  spellID = 17638,
  yield = 1,
  materials = {
    { itemID = 13467, count = 30 },
    { itemID = 13465, count = 10 },
    { itemID = 13468, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[3387] = { -- Limited Invulnerability Potion
  name = "Limited Invulnerability Potion",
  profession = "Alchemy",
  spellID = 3175,
  yield = 1,
  materials = {
    { itemID = 8839, count = 2 },
    { itemID = 8845, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[17708] = { -- Elixir of Frost Power
  name = "Elixir of Frost Power",
  profession = "Alchemy",
  spellID = 21923,
  yield = 1,
  materials = {
    { itemID = 3819, count = 2 },
    { itemID = 3358, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[17967] = { -- Refined Scale of Onyxia
  name = "Refined Scale of Onyxia",
  profession = "Alchemy",
  spellID = 22430,
  yield = 1,
  materials = {
    { itemID = 15410, count = 1 },
  }
}

MT_RecipeDB[18253] = { -- Major Rejuvenation Potion
  name = "Major Rejuvenation Potion",
  profession = "Alchemy",
  spellID = 22732,
  yield = 1,
  materials = {
    { itemID = 10286, count = 1 },
    { itemID = 13464, count = 3 },
    { itemID = 13463, count = 3 },
    { itemID = 18256, count = 1 },
  }
}

MT_RecipeDB[18294] = { -- Elixir of Greater Water Breathing
  name = "Elixir of Greater Water Breathing",
  profession = "Alchemy",
  spellID = 22808,
  yield = 1,
  materials = {
    { itemID = 7972, count = 1 },
    { itemID = 8831, count = 2 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[19931] = { -- Gurubashi Mojo Madness
  name = "Gurubashi Mojo Madness",
  profession = "Alchemy",
  spellID = 24266,
  yield = 1,
  materials = {
    { itemID = 12938, count = 1 },
    { itemID = 19943, count = 1 },
    { itemID = 12804, count = 6 },
    { itemID = 13468, count = 1 },
  }
}

MT_RecipeDB[20007] = { -- Mageblood Potion
  name = "Mageblood Potion",
  profession = "Alchemy",
  spellID = 24365,
  yield = 1,
  materials = {
    { itemID = 13463, count = 1 },
    { itemID = 13466, count = 2 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[20002] = { -- Greater Dreamless Sleep Potion
  name = "Greater Dreamless Sleep Potion",
  profession = "Alchemy",
  spellID = 24366,
  yield = 1,
  materials = {
    { itemID = 13463, count = 2 },
    { itemID = 13464, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[20008] = { -- Living Action Potion
  name = "Living Action Potion",
  profession = "Alchemy",
  spellID = 24367,
  yield = 1,
  materials = {
    { itemID = 13467, count = 2 },
    { itemID = 13465, count = 2 },
    { itemID = 10286, count = 2 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[20004] = { -- Major Troll
  name = "Major Troll",
  profession = "Alchemy",
  spellID = 24368,
  yield = 1,
  materials = {
    { itemID = 8846, count = 1 },
    { itemID = 13466, count = 2 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[7068] = { -- Transmute: Elemental Fire
  name = "Transmute: Elemental Fire",
  profession = "Alchemy",
  spellID = 25146,
  yield = 1,
  materials = {
    { itemID = 7077, count = 1 },
  }
}

MT_RecipeDB[21546] = { -- Elixir of Greater Firepower
  name = "Elixir of Greater Firepower",
  profession = "Alchemy",
  spellID = 26277,
  yield = 1,
  materials = {
    { itemID = 6371, count = 3 },
    { itemID = 4625, count = 3 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[25901] = { -- Cauldron of Major Arcane Protection
  name = "Cauldron of Major Arcane Protection",
  profession = "Alchemy",
  spellID = 47000,
  yield = 1,
  materials = {
    { itemID = 13461, count = 20 },
    { itemID = 20725, count = 2 },
    { itemID = 16203, count = 1 },
  }
}

MT_RecipeDB[25902] = { -- Cauldron of Major Fire Protection
  name = "Cauldron of Major Fire Protection",
  profession = "Alchemy",
  spellID = 47003,
  yield = 1,
  materials = {
    { itemID = 13457, count = 20 },
    { itemID = 20725, count = 2 },
    { itemID = 7078, count = 1 },
  }
}

MT_RecipeDB[25903] = { -- Cauldron of Major Frost Protection
  name = "Cauldron of Major Frost Protection",
  profession = "Alchemy",
  spellID = 47006,
  yield = 1,
  materials = {
    { itemID = 13456, count = 20 },
    { itemID = 20725, count = 2 },
    { itemID = 7080, count = 1 },
  }
}

MT_RecipeDB[25904] = { -- Cauldron of Major Shadow Protection
  name = "Cauldron of Major Shadow Protection",
  profession = "Alchemy",
  spellID = 47009,
  yield = 1,
  materials = {
    { itemID = 17578, count = 20 },
    { itemID = 20725, count = 2 },
    { itemID = 12808, count = 1 },
  }
}

MT_RecipeDB[25905] = { -- Cauldron of Major Nature Protection
  name = "Cauldron of Major Nature Protection",
  profession = "Alchemy",
  spellID = 47012,
  yield = 1,
  materials = {
    { itemID = 17576, count = 20 },
    { itemID = 20725, count = 2 },
    { itemID = 7076, count = 1 },
  }
}

MT_RecipeDB[7067] = { -- Transmute: Elemental Earth
  name = "Transmute: Elemental Earth",
  profession = "Alchemy",
  spellID = 57555,
  yield = 1,
  materials = {
    { itemID = 7075, count = 1 },
  }
}

MT_RecipeDB[7070] = { -- Transmute: Elemental Water
  name = "Transmute: Elemental Water",
  profession = "Alchemy",
  spellID = 57557,
  yield = 1,
  materials = {
    { itemID = 7079, count = 1 },
  }
}

MT_RecipeDB[61181] = { -- Potion of Quickness
  name = "Potion of Quickness",
  profession = "Alchemy",
  spellID = 57111,
  yield = 1,
  materials = {
    { itemID = 8846, count = 1 },
    { itemID = 13465, count = 2 },
    { itemID = 2459, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[61225] = { -- Lucidity Potion
  name = "Lucidity Potion",
  profession = "Alchemy",
  spellID = 57129,
  yield = 1,
  materials = {
    { itemID = 730, count = 1 },
    { itemID = 13463, count = 1 },
    { itemID = 8831, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[61224] = { -- Dreamshard Elixir
  name = "Dreamshard Elixir",
  profession = "Alchemy",
  spellID = 57131,
  yield = 1,
  materials = {
    { itemID = 8925, count = 1 },
    { itemID = 11176, count = 1 },
    { itemID = 61198, count = 1 },
  }
}

MT_RecipeDB[50237] = { -- Elixir of Greater Nature Power
  name = "Elixir of Greater Nature Power",
  profession = "Alchemy",
  spellID = 45989,
  yield = 1,
  materials = {
    { itemID = 10286, count = 3 },
    { itemID = 13464, count = 1 },
    { itemID = 8838, count = 1 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[51262] = { -- Volatile Concoction
  name = "Volatile Concoction",
  profession = "Alchemy",
  spellID = 45061,
  yield = 1,
  materials = {
    { itemID = 814, count = 1 },
    { itemID = 730, count = 1 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[56113] = { -- Elixir of Rapid Growth
  name = "Elixir of Rapid Growth",
  profession = "Alchemy",
  spellID = 115,
  yield = 1,
  materials = {
    { itemID = 4625, count = 1 },
    { itemID = 7068, count = 1 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[55046] = { -- Elixir of Greater Frost Power
  name = "Elixir of Greater Frost Power",
  profession = "Alchemy",
  spellID = 36901,
  yield = 1,
  materials = {
    { itemID = 13467, count = 3 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[55048] = { -- Elixir of Greater Arcane Power
  name = "Elixir of Greater Arcane Power",
  profession = "Alchemy",
  spellID = 36903,
  yield = 1,
  materials = {
    { itemID = 8831, count = 3 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[47410] = { -- Concoction of the Emerald Mongoose
  name = "Concoction of the Emerald Mongoose",
  profession = "Alchemy",
  spellID = 36929,
  yield = 1,
  materials = {
    { itemID = 13452, count = 1 },
    { itemID = 61224, count = 1 },
    { itemID = 8153, count = 6 },
  }
}

MT_RecipeDB[47412] = { -- Concoction of the Arcane Giant
  name = "Concoction of the Arcane Giant",
  profession = "Alchemy",
  spellID = 36932,
  yield = 1,
  materials = {
    { itemID = 9206, count = 1 },
    { itemID = 13454, count = 1 },
    { itemID = 8831, count = 6 },
  }
}

MT_RecipeDB[47414] = { -- Concoction of the Dreamwater
  name = "Concoction of the Dreamwater",
  profession = "Alchemy",
  spellID = 36935,
  yield = 1,
  materials = {
    { itemID = 12820, count = 1 },
    { itemID = 61423, count = 1 },
    { itemID = 8838, count = 6 },
  }
}

MT_RecipeDB[2862] = { -- Rough Sharpening Stone
  name = "Rough Sharpening Stone",
  profession = "Blacksmithing",
  spellID = 2660,
  yield = 1,
  materials = {
    { itemID = 2835, count = 1 },
  }
}

MT_RecipeDB[2851] = { -- Copper Chain Belt
  name = "Copper Chain Belt",
  profession = "Blacksmithing",
  spellID = 2661,
  yield = 1,
  materials = {
    { itemID = 2840, count = 6 },
  }
}

MT_RecipeDB[2852] = { -- Copper Chain Pants
  name = "Copper Chain Pants",
  profession = "Blacksmithing",
  spellID = 2662,
  yield = 1,
  materials = {
    { itemID = 2840, count = 4 },
  }
}

MT_RecipeDB[2853] = { -- Copper Bracers
  name = "Copper Bracers",
  profession = "Blacksmithing",
  spellID = 2663,
  yield = 1,
  materials = {
    { itemID = 2840, count = 2 },
  }
}

MT_RecipeDB[2854] = { -- Runed Copper Bracers
  name = "Runed Copper Bracers",
  profession = "Blacksmithing",
  spellID = 2664,
  yield = 1,
  materials = {
    { itemID = 2840, count = 10 },
    { itemID = 3470, count = 3 },
  }
}

MT_RecipeDB[2863] = { -- Coarse Sharpening Stone
  name = "Coarse Sharpening Stone",
  profession = "Blacksmithing",
  spellID = 2665,
  yield = 1,
  materials = {
    { itemID = 2836, count = 1 },
  }
}

MT_RecipeDB[2857] = { -- Runed Copper Belt
  name = "Runed Copper Belt",
  profession = "Blacksmithing",
  spellID = 2666,
  yield = 1,
  materials = {
    { itemID = 2840, count = 10 },
  }
}

MT_RecipeDB[2864] = { -- Runed Copper Breastplate
  name = "Runed Copper Breastplate",
  profession = "Blacksmithing",
  spellID = 2667,
  yield = 1,
  materials = {
    { itemID = 2840, count = 12 },
    { itemID = 1210, count = 1 },
    { itemID = 3470, count = 2 },
  }
}

MT_RecipeDB[2865] = { -- Rough Bronze Leggings
  name = "Rough Bronze Leggings",
  profession = "Blacksmithing",
  spellID = 2668,
  yield = 1,
  materials = {
    { itemID = 2841, count = 6 },
  }
}

MT_RecipeDB[2866] = { -- Rough Bronze Cuirass
  name = "Rough Bronze Cuirass",
  profession = "Blacksmithing",
  spellID = 2670,
  yield = 1,
  materials = {
    { itemID = 2841, count = 7 },
  }
}

MT_RecipeDB[2868] = { -- Patterned Bronze Bracers
  name = "Patterned Bronze Bracers",
  profession = "Blacksmithing",
  spellID = 2672,
  yield = 1,
  materials = {
    { itemID = 2841, count = 5 },
    { itemID = 3478, count = 2 },
  }
}

MT_RecipeDB[2871] = { -- Heavy Sharpening Stone
  name = "Heavy Sharpening Stone",
  profession = "Blacksmithing",
  spellID = 2674,
  yield = 1,
  materials = {
    { itemID = 2838, count = 1 },
  }
}

MT_RecipeDB[2870] = { -- Shining Silver Breastplate
  name = "Shining Silver Breastplate",
  profession = "Blacksmithing",
  spellID = 2675,
  yield = 1,
  materials = {
    { itemID = 2841, count = 20 },
    { itemID = 1206, count = 2 },
    { itemID = 1705, count = 2 },
    { itemID = 5500, count = 2 },
    { itemID = 2842, count = 4 },
  }
}

MT_RecipeDB[2844] = { -- Copper Mace
  name = "Copper Mace",
  profession = "Blacksmithing",
  spellID = 2737,
  yield = 1,
  materials = {
    { itemID = 2840, count = 6 },
    { itemID = 2880, count = 1 },
    { itemID = 2589, count = 2 },
  }
}

MT_RecipeDB[2848] = { -- Bronze Mace
  name = "Bronze Mace",
  profession = "Blacksmithing",
  spellID = 2740,
  yield = 1,
  materials = {
    { itemID = 2841, count = 6 },
    { itemID = 2880, count = 4 },
    { itemID = 2319, count = 1 },
  }
}

MT_RecipeDB[2849] = { -- Bronze Axe
  name = "Bronze Axe",
  profession = "Blacksmithing",
  spellID = 2741,
  yield = 1,
  materials = {
    { itemID = 2841, count = 7 },
    { itemID = 2880, count = 4 },
    { itemID = 2319, count = 1 },
  }
}

MT_RecipeDB[2845] = { -- Copper Axe
  name = "Copper Axe",
  profession = "Blacksmithing",
  spellID = 2738,
  yield = 1,
  materials = {
    { itemID = 2840, count = 6 },
    { itemID = 2880, count = 1 },
    { itemID = 2589, count = 2 },
  }
}

MT_RecipeDB[2847] = { -- Copper Shortsword
  name = "Copper Shortsword",
  profession = "Blacksmithing",
  spellID = 2739,
  yield = 1,
  materials = {
    { itemID = 2840, count = 6 },
    { itemID = 2880, count = 1 },
    { itemID = 2589, count = 2 },
  }
}

MT_RecipeDB[2850] = { -- Bronze Shortsword
  name = "Bronze Shortsword",
  profession = "Blacksmithing",
  spellID = 2742,
  yield = 1,
  materials = {
    { itemID = 2841, count = 5 },
    { itemID = 2880, count = 4 },
    { itemID = 2319, count = 2 },
  }
}

MT_RecipeDB[3239] = { -- Rough Weightstone
  name = "Rough Weightstone",
  profession = "Blacksmithing",
  spellID = 3115,
  yield = 1,
  materials = {
    { itemID = 2835, count = 1 },
    { itemID = 2589, count = 1 },
  }
}

MT_RecipeDB[3241] = { -- Heavy Weightstone
  name = "Heavy Weightstone",
  profession = "Blacksmithing",
  spellID = 3117,
  yield = 1,
  materials = {
    { itemID = 2838, count = 1 },
    { itemID = 2592, count = 1 },
  }
}

MT_RecipeDB[3240] = { -- Coarse Weightstone
  name = "Coarse Weightstone",
  profession = "Blacksmithing",
  spellID = 3116,
  yield = 1,
  materials = {
    { itemID = 2836, count = 1 },
    { itemID = 2592, count = 1 },
  }
}

MT_RecipeDB[3487] = { -- Heavy Copper Broadsword
  name = "Heavy Copper Broadsword",
  profession = "Blacksmithing",
  spellID = 3292,
  yield = 1,
  materials = {
    { itemID = 2840, count = 14 },
    { itemID = 2880, count = 2 },
    { itemID = 818, count = 2 },
    { itemID = 2319, count = 2 },
  }
}

MT_RecipeDB[3488] = { -- Copper Battle Axe
  name = "Copper Battle Axe",
  profession = "Blacksmithing",
  spellID = 3293,
  yield = 1,
  materials = {
    { itemID = 2840, count = 12 },
    { itemID = 2880, count = 2 },
    { itemID = 774, count = 2 },
    { itemID = 3470, count = 2 },
    { itemID = 2318, count = 2 },
  }
}

MT_RecipeDB[3489] = { -- Thick War Axe
  name = "Thick War Axe",
  profession = "Blacksmithing",
  spellID = 3294,
  yield = 1,
  materials = {
    { itemID = 2840, count = 10 },
    { itemID = 2880, count = 2 },
    { itemID = 2842, count = 2 },
    { itemID = 3470, count = 2 },
    { itemID = 2318, count = 2 },
  }
}

MT_RecipeDB[3490] = { -- Deadly Bronze Poniard
  name = "Deadly Bronze Poniard",
  profession = "Blacksmithing",
  spellID = 3295,
  yield = 1,
  materials = {
    { itemID = 2841, count = 4 },
    { itemID = 3466, count = 1 },
    { itemID = 2459, count = 1 },
    { itemID = 1210, count = 2 },
    { itemID = 3478, count = 2 },
    { itemID = 2319, count = 2 },
  }
}

MT_RecipeDB[3491] = { -- Heavy Bronze Mace
  name = "Heavy Bronze Mace",
  profession = "Blacksmithing",
  spellID = 3296,
  yield = 1,
  materials = {
    { itemID = 2841, count = 8 },
    { itemID = 3466, count = 1 },
    { itemID = 1206, count = 1 },
    { itemID = 1210, count = 1 },
    { itemID = 3478, count = 2 },
    { itemID = 2319, count = 2 },
  }
}

MT_RecipeDB[3492] = { -- Mighty Iron Hammer
  name = "Mighty Iron Hammer",
  profession = "Blacksmithing",
  spellID = 3297,
  yield = 1,
  materials = {
    { itemID = 3575, count = 6 },
    { itemID = 3466, count = 2 },
    { itemID = 3391, count = 1 },
    { itemID = 1705, count = 2 },
    { itemID = 3478, count = 2 },
    { itemID = 2319, count = 2 },
  }
}

MT_RecipeDB[3469] = { -- Copper Chain Boots
  name = "Copper Chain Boots",
  profession = "Blacksmithing",
  spellID = 3319,
  yield = 1,
  materials = {
    { itemID = 2840, count = 8 },
  }
}

MT_RecipeDB[3470] = { -- Rough Grinding Stone
  name = "Rough Grinding Stone",
  profession = "Blacksmithing",
  spellID = 3320,
  yield = 1,
  materials = {
    { itemID = 2835, count = 2 },
  }
}

MT_RecipeDB[3471] = { -- Copper Chain Vest
  name = "Copper Chain Vest",
  profession = "Blacksmithing",
  spellID = 3321,
  yield = 1,
  materials = {
    { itemID = 2840, count = 8 },
    { itemID = 774, count = 1 },
    { itemID = 3470, count = 2 },
  }
}

MT_RecipeDB[3472] = { -- Runed Copper Gauntlets
  name = "Runed Copper Gauntlets",
  profession = "Blacksmithing",
  spellID = 3323,
  yield = 1,
  materials = {
    { itemID = 2840, count = 8 },
    { itemID = 3470, count = 2 },
  }
}

MT_RecipeDB[3473] = { -- Runed Copper Pants
  name = "Runed Copper Pants",
  profession = "Blacksmithing",
  spellID = 3324,
  yield = 1,
  materials = {
    { itemID = 2840, count = 8 },
    { itemID = 2321, count = 2 },
    { itemID = 3470, count = 3 },
  }
}

MT_RecipeDB[3474] = { -- Gemmed Copper Gauntlets
  name = "Gemmed Copper Gauntlets",
  profession = "Blacksmithing",
  spellID = 3325,
  yield = 1,
  materials = {
    { itemID = 2840, count = 8 },
    { itemID = 818, count = 1 },
    { itemID = 774, count = 1 },
  }
}

MT_RecipeDB[3478] = { -- Coarse Grinding Stone
  name = "Coarse Grinding Stone",
  profession = "Blacksmithing",
  spellID = 3326,
  yield = 1,
  materials = {
    { itemID = 2836, count = 2 },
  }
}

MT_RecipeDB[3480] = { -- Rough Bronze Shoulders
  name = "Rough Bronze Shoulders",
  profession = "Blacksmithing",
  spellID = 3328,
  yield = 1,
  materials = {
    { itemID = 2841, count = 5 },
    { itemID = 1210, count = 1 },
    { itemID = 3478, count = 1 },
  }
}

MT_RecipeDB[3481] = { -- Silvered Bronze Shoulders
  name = "Silvered Bronze Shoulders",
  profession = "Blacksmithing",
  spellID = 3330,
  yield = 1,
  materials = {
    { itemID = 2841, count = 8 },
    { itemID = 2842, count = 2 },
    { itemID = 3478, count = 2 },
  }
}

MT_RecipeDB[3482] = { -- Silvered Bronze Boots
  name = "Silvered Bronze Boots",
  profession = "Blacksmithing",
  spellID = 3331,
  yield = 1,
  materials = {
    { itemID = 2841, count = 6 },
    { itemID = 2842, count = 1 },
    { itemID = 3478, count = 2 },
  }
}

MT_RecipeDB[3483] = { -- Silvered Bronze Gauntlets
  name = "Silvered Bronze Gauntlets",
  profession = "Blacksmithing",
  spellID = 3333,
  yield = 1,
  materials = {
    { itemID = 2841, count = 8 },
    { itemID = 2842, count = 1 },
    { itemID = 3478, count = 2 },
  }
}

MT_RecipeDB[3484] = { -- Green Iron Boots
  name = "Green Iron Boots",
  profession = "Blacksmithing",
  spellID = 3334,
  yield = 1,
  materials = {
    { itemID = 3575, count = 4 },
    { itemID = 1705, count = 2 },
    { itemID = 3478, count = 2 },
    { itemID = 2605, count = 1 },
  }
}

MT_RecipeDB[3485] = { -- Green Iron Gauntlets
  name = "Green Iron Gauntlets",
  profession = "Blacksmithing",
  spellID = 3336,
  yield = 1,
  materials = {
    { itemID = 3575, count = 4 },
    { itemID = 5498, count = 2 },
    { itemID = 3478, count = 2 },
    { itemID = 2605, count = 1 },
  }
}

MT_RecipeDB[3486] = { -- Heavy Grinding Stone
  name = "Heavy Grinding Stone",
  profession = "Blacksmithing",
  spellID = 3337,
  yield = 1,
  materials = {
    { itemID = 2838, count = 3 },
  }
}

MT_RecipeDB[3848] = { -- Big Bronze Knife
  name = "Big Bronze Knife",
  profession = "Blacksmithing",
  spellID = 3491,
  yield = 1,
  materials = {
    { itemID = 2841, count = 6 },
    { itemID = 2880, count = 4 },
    { itemID = 3470, count = 2 },
    { itemID = 818, count = 1 },
    { itemID = 2319, count = 1 },
  }
}

MT_RecipeDB[3849] = { -- Hardened Iron Shortsword
  name = "Hardened Iron Shortsword",
  profession = "Blacksmithing",
  spellID = 3492,
  yield = 1,
  materials = {
    { itemID = 3575, count = 6 },
    { itemID = 3466, count = 2 },
    { itemID = 3486, count = 1 },
    { itemID = 1705, count = 2 },
    { itemID = 4234, count = 3 },
  }
}

MT_RecipeDB[3850] = { -- Jade Serpentblade
  name = "Jade Serpentblade",
  profession = "Blacksmithing",
  spellID = 3493,
  yield = 1,
  materials = {
    { itemID = 3575, count = 8 },
    { itemID = 3466, count = 2 },
    { itemID = 3486, count = 2 },
    { itemID = 1529, count = 2 },
    { itemID = 4234, count = 3 },
  }
}

MT_RecipeDB[3851] = { -- Solid Iron Maul
  name = "Solid Iron Maul",
  profession = "Blacksmithing",
  spellID = 3494,
  yield = 1,
  materials = {
    { itemID = 3575, count = 8 },
    { itemID = 3466, count = 2 },
    { itemID = 3486, count = 1 },
    { itemID = 2842, count = 4 },
    { itemID = 4234, count = 2 },
  }
}

MT_RecipeDB[3852] = { -- Golden Iron Destroyer
  name = "Golden Iron Destroyer",
  profession = "Blacksmithing",
  spellID = 3495,
  yield = 1,
  materials = {
    { itemID = 3575, count = 10 },
    { itemID = 3577, count = 4 },
    { itemID = 1705, count = 2 },
    { itemID = 3466, count = 2 },
    { itemID = 4234, count = 2 },
    { itemID = 3486, count = 2 },
  }
}

MT_RecipeDB[3853] = { -- Moonsteel Broadsword
  name = "Moonsteel Broadsword",
  profession = "Blacksmithing",
  spellID = 3496,
  yield = 1,
  materials = {
    { itemID = 3859, count = 8 },
    { itemID = 3466, count = 2 },
    { itemID = 3486, count = 2 },
    { itemID = 1705, count = 3 },
    { itemID = 4234, count = 3 },
  }
}

MT_RecipeDB[3854] = { -- Frost Tiger Blade
  name = "Frost Tiger Blade",
  profession = "Blacksmithing",
  spellID = 3497,
  yield = 1,
  materials = {
    { itemID = 3859, count = 8 },
    { itemID = 3466, count = 2 },
    { itemID = 3486, count = 2 },
    { itemID = 1529, count = 2 },
    { itemID = 3829, count = 1 },
    { itemID = 4234, count = 4 },
  }
}

MT_RecipeDB[3855] = { -- Massive Iron Axe
  name = "Massive Iron Axe",
  profession = "Blacksmithing",
  spellID = 3498,
  yield = 1,
  materials = {
    { itemID = 3575, count = 14 },
    { itemID = 3466, count = 2 },
    { itemID = 3486, count = 2 },
    { itemID = 3577, count = 4 },
    { itemID = 4234, count = 2 },
  }
}

MT_RecipeDB[3856] = { -- Shadow Crescent Axe
  name = "Shadow Crescent Axe",
  profession = "Blacksmithing",
  spellID = 3500,
  yield = 1,
  materials = {
    { itemID = 3859, count = 10 },
    { itemID = 3466, count = 2 },
    { itemID = 3486, count = 3 },
    { itemID = 3864, count = 2 },
    { itemID = 3824, count = 1 },
    { itemID = 4234, count = 3 },
  }
}

MT_RecipeDB[3835] = { -- Green Iron Bracers
  name = "Green Iron Bracers",
  profession = "Blacksmithing",
  spellID = 3501,
  yield = 1,
  materials = {
    { itemID = 3575, count = 6 },
    { itemID = 2605, count = 1 },
  }
}

MT_RecipeDB[3836] = { -- Green Iron Helm
  name = "Green Iron Helm",
  profession = "Blacksmithing",
  spellID = 3502,
  yield = 1,
  materials = {
    { itemID = 3575, count = 12 },
    { itemID = 3864, count = 1 },
    { itemID = 2605, count = 1 },
  }
}

MT_RecipeDB[3837] = { -- Golden Scale Coif
  name = "Golden Scale Coif",
  profession = "Blacksmithing",
  spellID = 3503,
  yield = 1,
  materials = {
    { itemID = 3859, count = 8 },
    { itemID = 3577, count = 2 },
    { itemID = 3486, count = 2 },
  }
}

MT_RecipeDB[3840] = { -- Green Iron Shoulders
  name = "Green Iron Shoulders",
  profession = "Blacksmithing",
  spellID = 3504,
  yield = 1,
  materials = {
    { itemID = 3575, count = 7 },
    { itemID = 3486, count = 1 },
    { itemID = 2605, count = 1 },
  }
}

MT_RecipeDB[3841] = { -- Golden Scale Shoulders
  name = "Golden Scale Shoulders",
  profession = "Blacksmithing",
  spellID = 3505,
  yield = 1,
  materials = {
    { itemID = 3859, count = 6 },
    { itemID = 3577, count = 2 },
    { itemID = 3486, count = 1 },
  }
}

MT_RecipeDB[3842] = { -- Green Iron Leggings
  name = "Green Iron Leggings",
  profession = "Blacksmithing",
  spellID = 3506,
  yield = 1,
  materials = {
    { itemID = 3575, count = 8 },
    { itemID = 3486, count = 1 },
    { itemID = 2605, count = 1 },
  }
}

MT_RecipeDB[3843] = { -- Golden Scale Leggings
  name = "Golden Scale Leggings",
  profession = "Blacksmithing",
  spellID = 3507,
  yield = 1,
  materials = {
    { itemID = 3575, count = 10 },
    { itemID = 3577, count = 2 },
    { itemID = 3486, count = 1 },
  }
}

MT_RecipeDB[3844] = { -- Green Iron Hauberk
  name = "Green Iron Hauberk",
  profession = "Blacksmithing",
  spellID = 3508,
  yield = 1,
  materials = {
    { itemID = 3575, count = 20 },
    { itemID = 3486, count = 4 },
    { itemID = 1529, count = 2 },
    { itemID = 1206, count = 2 },
    { itemID = 4255, count = 1 },
  }
}

MT_RecipeDB[3845] = { -- Golden Scale Cuirass
  name = "Golden Scale Cuirass",
  profession = "Blacksmithing",
  spellID = 3511,
  yield = 1,
  materials = {
    { itemID = 3859, count = 12 },
    { itemID = 3577, count = 2 },
    { itemID = 3486, count = 4 },
    { itemID = 1529, count = 2 },
  }
}

MT_RecipeDB[3846] = { -- Polished Steel Boots
  name = "Polished Steel Boots",
  profession = "Blacksmithing",
  spellID = 3513,
  yield = 1,
  materials = {
    { itemID = 3859, count = 8 },
    { itemID = 3864, count = 1 },
    { itemID = 1705, count = 1 },
    { itemID = 3486, count = 2 },
  }
}

MT_RecipeDB[3847] = { -- Golden Scale Boots
  name = "Golden Scale Boots",
  profession = "Blacksmithing",
  spellID = 3515,
  yield = 1,
  materials = {
    { itemID = 3859, count = 10 },
    { itemID = 3577, count = 4 },
    { itemID = 3486, count = 4 },
    { itemID = 3864, count = 1 },
  }
}

MT_RecipeDB[5541] = { -- Iridescent Hammer
  name = "Iridescent Hammer",
  profession = "Blacksmithing",
  spellID = 6518,
  yield = 1,
  materials = {
    { itemID = 2841, count = 10 },
    { itemID = 3466, count = 1 },
    { itemID = 5500, count = 1 },
    { itemID = 3478, count = 2 },
    { itemID = 2319, count = 2 },
  }
}

MT_RecipeDB[5540] = { -- Pearl-handled Dagger
  name = "Pearl-handled Dagger",
  profession = "Blacksmithing",
  spellID = 6517,
  yield = 1,
  materials = {
    { itemID = 2841, count = 6 },
    { itemID = 3466, count = 1 },
    { itemID = 5498, count = 2 },
    { itemID = 3478, count = 2 },
  }
}

MT_RecipeDB[2867] = { -- Rough Bronze Bracers
  name = "Rough Bronze Bracers",
  profession = "Blacksmithing",
  spellID = 2671,
  yield = 1,
  materials = {
    { itemID = 2841, count = 4 },
  }
}

MT_RecipeDB[2869] = { -- Silvered Bronze Breastplate
  name = "Silvered Bronze Breastplate",
  profession = "Blacksmithing",
  spellID = 2673,
  yield = 1,
  materials = {
    { itemID = 2841, count = 10 },
    { itemID = 2842, count = 2 },
    { itemID = 3478, count = 2 },
    { itemID = 1705, count = 1 },
  }
}

MT_RecipeDB[6041] = { -- Steel Weapon Chain
  name = "Steel Weapon Chain",
  profession = "Blacksmithing",
  spellID = 7224,
  yield = 1,
  materials = {
    { itemID = 3859, count = 8 },
    { itemID = 3486, count = 2 },
    { itemID = 4234, count = 4 },
  }
}

MT_RecipeDB[6040] = { -- Golden Scale Bracers
  name = "Golden Scale Bracers",
  profession = "Blacksmithing",
  spellID = 7223,
  yield = 1,
  materials = {
    { itemID = 3859, count = 5 },
    { itemID = 3486, count = 2 },
  }
}

MT_RecipeDB[6042] = { -- Iron Shield Spike
  name = "Iron Shield Spike",
  profession = "Blacksmithing",
  spellID = 7221,
  yield = 1,
  materials = {
    { itemID = 3575, count = 6 },
    { itemID = 3478, count = 4 },
  }
}

MT_RecipeDB[6043] = { -- Iron Counterweight
  name = "Iron Counterweight",
  profession = "Blacksmithing",
  spellID = 7222,
  yield = 1,
  materials = {
    { itemID = 3575, count = 4 },
    { itemID = 3478, count = 2 },
    { itemID = 1705, count = 1 },
  }
}

MT_RecipeDB[6214] = { -- Heavy Copper Maul
  name = "Heavy Copper Maul",
  profession = "Blacksmithing",
  spellID = 7408,
  yield = 1,
  materials = {
    { itemID = 2840, count = 12 },
    { itemID = 2880, count = 2 },
    { itemID = 2318, count = 2 },
  }
}

MT_RecipeDB[6350] = { -- Rough Bronze Boots
  name = "Rough Bronze Boots",
  profession = "Blacksmithing",
  spellID = 7817,
  yield = 1,
  materials = {
    { itemID = 2841, count = 6 },
    { itemID = 3470, count = 6 },
  }
}

MT_RecipeDB[6338] = { -- Silver Rod
  name = "Silver Rod",
  profession = "Blacksmithing",
  spellID = 7818,
  yield = 1,
  materials = {
    { itemID = 2842, count = 1 },
    { itemID = 3470, count = 2 },
  }
}

MT_RecipeDB[6730] = { -- Ironforge Chain
  name = "Ironforge Chain",
  profession = "Blacksmithing",
  spellID = 8366,
  yield = 1,
  materials = {
    { itemID = 2840, count = 12 },
    { itemID = 774, count = 2 },
    { itemID = 3470, count = 2 },
  }
}

MT_RecipeDB[6731] = { -- Ironforge Breastplate
  name = "Ironforge Breastplate",
  profession = "Blacksmithing",
  spellID = 8367,
  yield = 1,
  materials = {
    { itemID = 2840, count = 16 },
    { itemID = 818, count = 2 },
    { itemID = 3470, count = 3 },
  }
}

MT_RecipeDB[6733] = { -- Ironforge Gauntlets
  name = "Ironforge Gauntlets",
  profession = "Blacksmithing",
  spellID = 8368,
  yield = 1,
  materials = {
    { itemID = 2841, count = 8 },
    { itemID = 1210, count = 3 },
    { itemID = 3478, count = 4 },
  }
}

MT_RecipeDB[7071] = { -- Iron Belt Buckle
  name = "Iron Belt Buckle",
  profession = "Blacksmithing",
  spellID = 8768,
  yield = 1,
  materials = {
    { itemID = 3575, count = 1 },
  }
}

MT_RecipeDB[7166] = { -- Copper Dagger
  name = "Copper Dagger",
  profession = "Blacksmithing",
  spellID = 8880,
  yield = 1,
  materials = {
    { itemID = 2840, count = 6 },
    { itemID = 2880, count = 1 },
    { itemID = 3470, count = 1 },
    { itemID = 2318, count = 1 },
  }
}

MT_RecipeDB[7913] = { -- Barbaric Iron Shoulders
  name = "Barbaric Iron Shoulders",
  profession = "Blacksmithing",
  spellID = 9811,
  yield = 1,
  materials = {
    { itemID = 3575, count = 8 },
    { itemID = 5635, count = 4 },
    { itemID = 1210, count = 2 },
    { itemID = 3486, count = 2 },
  }
}

MT_RecipeDB[7914] = { -- Barbaric Iron Breastplate
  name = "Barbaric Iron Breastplate",
  profession = "Blacksmithing",
  spellID = 9813,
  yield = 1,
  materials = {
    { itemID = 3575, count = 20 },
    { itemID = 3486, count = 4 },
  }
}

MT_RecipeDB[7915] = { -- Barbaric Iron Helm
  name = "Barbaric Iron Helm",
  profession = "Blacksmithing",
  spellID = 9814,
  yield = 1,
  materials = {
    { itemID = 3575, count = 10 },
    { itemID = 5637, count = 2 },
    { itemID = 5635, count = 2 },
  }
}

MT_RecipeDB[7916] = { -- Barbaric Iron Boots
  name = "Barbaric Iron Boots",
  profession = "Blacksmithing",
  spellID = 9818,
  yield = 1,
  materials = {
    { itemID = 3575, count = 12 },
    { itemID = 5637, count = 4 },
    { itemID = 818, count = 4 },
    { itemID = 3486, count = 2 },
  }
}

MT_RecipeDB[7917] = { -- Barbaric Iron Gloves
  name = "Barbaric Iron Gloves",
  profession = "Blacksmithing",
  spellID = 9820,
  yield = 1,
  materials = {
    { itemID = 3575, count = 14 },
    { itemID = 3486, count = 3 },
    { itemID = 5637, count = 2 },
  }
}

MT_RecipeDB[7963] = { -- Steel Breastplate
  name = "Steel Breastplate",
  profession = "Blacksmithing",
  spellID = 9916,
  yield = 1,
  materials = {
    { itemID = 3859, count = 16 },
    { itemID = 3486, count = 3 },
  }
}

MT_RecipeDB[7964] = { -- Solid Sharpening Stone
  name = "Solid Sharpening Stone",
  profession = "Blacksmithing",
  spellID = 9918,
  yield = 1,
  materials = {
    { itemID = 7912, count = 1 },
  }
}

MT_RecipeDB[7965] = { -- Solid Weightstone
  name = "Solid Weightstone",
  profession = "Blacksmithing",
  spellID = 9921,
  yield = 1,
  materials = {
    { itemID = 7912, count = 1 },
    { itemID = 4306, count = 1 },
  }
}

MT_RecipeDB[7966] = { -- Solid Grinding Stone
  name = "Solid Grinding Stone",
  profession = "Blacksmithing",
  spellID = 9920,
  yield = 1,
  materials = {
    { itemID = 7912, count = 4 },
  }
}

MT_RecipeDB[7918] = { -- Heavy Mithril Shoulder
  name = "Heavy Mithril Shoulder",
  profession = "Blacksmithing",
  spellID = 9926,
  yield = 1,
  materials = {
    { itemID = 3860, count = 8 },
    { itemID = 4234, count = 6 },
  }
}

MT_RecipeDB[7919] = { -- Heavy Mithril Gauntlet
  name = "Heavy Mithril Gauntlet",
  profession = "Blacksmithing",
  spellID = 9928,
  yield = 1,
  materials = {
    { itemID = 3860, count = 6 },
    { itemID = 4338, count = 4 },
  }
}

MT_RecipeDB[7920] = { -- Mithril Scale Pants
  name = "Mithril Scale Pants",
  profession = "Blacksmithing",
  spellID = 9931,
  yield = 1,
  materials = {
    { itemID = 3860, count = 12 },
  }
}

MT_RecipeDB[7921] = { -- Heavy Mithril Pants
  name = "Heavy Mithril Pants",
  profession = "Blacksmithing",
  spellID = 9933,
  yield = 1,
  materials = {
    { itemID = 3860, count = 10 },
    { itemID = 1705, count = 2 },
  }
}

MT_RecipeDB[7922] = { -- Steel Plate Helm
  name = "Steel Plate Helm",
  profession = "Blacksmithing",
  spellID = 9935,
  yield = 1,
  materials = {
    { itemID = 3859, count = 14 },
    { itemID = 7966, count = 1 },
  }
}

MT_RecipeDB[7924] = { -- Mithril Scale Bracers
  name = "Mithril Scale Bracers",
  profession = "Blacksmithing",
  spellID = 9937,
  yield = 1,
  materials = {
    { itemID = 3860, count = 8 },
    { itemID = 3864, count = 2 },
  }
}

MT_RecipeDB[7967] = { -- Mithril Shield Spike
  name = "Mithril Shield Spike",
  profession = "Blacksmithing",
  spellID = 9939,
  yield = 1,
  materials = {
    { itemID = 3860, count = 4 },
    { itemID = 6037, count = 2 },
    { itemID = 7966, count = 4 },
  }
}

MT_RecipeDB[7925] = { -- Mithril Scale Gloves
  name = "Mithril Scale Gloves",
  profession = "Blacksmithing",
  spellID = 9942,
  yield = 1,
  materials = {
    { itemID = 3860, count = 8 },
    { itemID = 4234, count = 6 },
    { itemID = 4338, count = 4 },
  }
}

MT_RecipeDB[7926] = { -- Ornate Mithril Pants
  name = "Ornate Mithril Pants",
  profession = "Blacksmithing",
  spellID = 9945,
  yield = 1,
  materials = {
    { itemID = 3860, count = 12 },
    { itemID = 6037, count = 1 },
    { itemID = 7966, count = 1 },
    { itemID = 7909, count = 1 },
  }
}

MT_RecipeDB[7927] = { -- Ornate Mithril Gloves
  name = "Ornate Mithril Gloves",
  profession = "Blacksmithing",
  spellID = 9950,
  yield = 1,
  materials = {
    { itemID = 3860, count = 10 },
    { itemID = 4338, count = 6 },
    { itemID = 6037, count = 1 },
    { itemID = 7966, count = 1 },
  }
}

MT_RecipeDB[7928] = { -- Ornate Mithril Shoulders
  name = "Ornate Mithril Shoulders",
  profession = "Blacksmithing",
  spellID = 9952,
  yield = 1,
  materials = {
    { itemID = 3860, count = 12 },
    { itemID = 6037, count = 1 },
    { itemID = 4304, count = 6 },
  }
}

MT_RecipeDB[7938] = { -- Truesilver Gauntlets
  name = "Truesilver Gauntlets",
  profession = "Blacksmithing",
  spellID = 9954,
  yield = 1,
  materials = {
    { itemID = 3860, count = 10 },
    { itemID = 6037, count = 8 },
    { itemID = 7909, count = 3 },
    { itemID = 3864, count = 3 },
    { itemID = 5966, count = 1 },
    { itemID = 7966, count = 2 },
  }
}

MT_RecipeDB[7929] = { -- Orcish War Leggings
  name = "Orcish War Leggings",
  profession = "Blacksmithing",
  spellID = 9957,
  yield = 1,
  materials = {
    { itemID = 3860, count = 12 },
    { itemID = 7067, count = 1 },
  }
}

MT_RecipeDB[7930] = { -- Heavy Mithril Breastplate
  name = "Heavy Mithril Breastplate",
  profession = "Blacksmithing",
  spellID = 9959,
  yield = 1,
  materials = {
    { itemID = 3860, count = 16 },
  }
}

MT_RecipeDB[7931] = { -- Mithril Coif
  name = "Mithril Coif",
  profession = "Blacksmithing",
  spellID = 9961,
  yield = 1,
  materials = {
    { itemID = 3860, count = 10 },
    { itemID = 4338, count = 6 },
  }
}

MT_RecipeDB[7969] = { -- Mithril Spurs
  name = "Mithril Spurs",
  profession = "Blacksmithing",
  spellID = 9964,
  yield = 1,
  materials = {
    { itemID = 3860, count = 4 },
    { itemID = 7966, count = 3 },
  }
}

MT_RecipeDB[7932] = { -- Mithril Scale Shoulders
  name = "Mithril Scale Shoulders",
  profession = "Blacksmithing",
  spellID = 9966,
  yield = 1,
  materials = {
    { itemID = 3860, count = 14 },
    { itemID = 4304, count = 4 },
    { itemID = 3864, count = 4 },
  }
}

MT_RecipeDB[7933] = { -- Heavy Mithril Boots
  name = "Heavy Mithril Boots",
  profession = "Blacksmithing",
  spellID = 9968,
  yield = 1,
  materials = {
    { itemID = 3860, count = 14 },
    { itemID = 4304, count = 4 },
  }
}

MT_RecipeDB[7934] = { -- Heavy Mithril Helm
  name = "Heavy Mithril Helm",
  profession = "Blacksmithing",
  spellID = 9970,
  yield = 1,
  materials = {
    { itemID = 3860, count = 14 },
    { itemID = 7909, count = 1 },
  }
}

MT_RecipeDB[7935] = { -- Ornate Mithril Breastplate
  name = "Ornate Mithril Breastplate",
  profession = "Blacksmithing",
  spellID = 9972,
  yield = 1,
  materials = {
    { itemID = 3860, count = 16 },
    { itemID = 6037, count = 6 },
    { itemID = 7077, count = 1 },
    { itemID = 7966, count = 1 },
  }
}

MT_RecipeDB[7939] = { -- Truesilver Breastplate
  name = "Truesilver Breastplate",
  profession = "Blacksmithing",
  spellID = 9974,
  yield = 1,
  materials = {
    { itemID = 3860, count = 12 },
    { itemID = 6037, count = 24 },
    { itemID = 7910, count = 4 },
    { itemID = 7971, count = 4 },
    { itemID = 7966, count = 2 },
  }
}

MT_RecipeDB[7936] = { -- Ornate Mithril Boots
  name = "Ornate Mithril Boots",
  profession = "Blacksmithing",
  spellID = 9979,
  yield = 1,
  materials = {
    { itemID = 3860, count = 14 },
    { itemID = 6037, count = 2 },
    { itemID = 4304, count = 4 },
    { itemID = 7966, count = 1 },
    { itemID = 7909, count = 1 },
  }
}

MT_RecipeDB[7937] = { -- Ornate Mithril Helm
  name = "Ornate Mithril Helm",
  profession = "Blacksmithing",
  spellID = 9980,
  yield = 1,
  materials = {
    { itemID = 3860, count = 16 },
    { itemID = 6037, count = 2 },
    { itemID = 7971, count = 1 },
    { itemID = 7966, count = 1 },
  }
}

MT_RecipeDB[7955] = { -- Copper Claymore
  name = "Copper Claymore",
  profession = "Blacksmithing",
  spellID = 9983,
  yield = 1,
  materials = {
    { itemID = 2840, count = 10 },
    { itemID = 2880, count = 2 },
    { itemID = 3470, count = 1 },
    { itemID = 2318, count = 1 },
  }
}

MT_RecipeDB[7956] = { -- Bronze Warhammer
  name = "Bronze Warhammer",
  profession = "Blacksmithing",
  spellID = 9985,
  yield = 1,
  materials = {
    { itemID = 2841, count = 8 },
    { itemID = 3466, count = 1 },
    { itemID = 2319, count = 1 },
  }
}

MT_RecipeDB[7957] = { -- Bronze Greatsword
  name = "Bronze Greatsword",
  profession = "Blacksmithing",
  spellID = 9986,
  yield = 1,
  materials = {
    { itemID = 2841, count = 12 },
    { itemID = 3466, count = 2 },
    { itemID = 2319, count = 2 },
  }
}

MT_RecipeDB[7958] = { -- Bronze Battle Axe
  name = "Bronze Battle Axe",
  profession = "Blacksmithing",
  spellID = 9987,
  yield = 1,
  materials = {
    { itemID = 2841, count = 14 },
    { itemID = 3466, count = 1 },
    { itemID = 2319, count = 2 },
  }
}

MT_RecipeDB[7941] = { -- Heavy Mithril Axe
  name = "Heavy Mithril Axe",
  profession = "Blacksmithing",
  spellID = 9993,
  yield = 1,
  materials = {
    { itemID = 3860, count = 12 },
    { itemID = 3864, count = 2 },
    { itemID = 7966, count = 1 },
    { itemID = 4234, count = 4 },
  }
}

MT_RecipeDB[7942] = { -- Blue Glittering Axe
  name = "Blue Glittering Axe",
  profession = "Blacksmithing",
  spellID = 9995,
  yield = 1,
  materials = {
    { itemID = 3860, count = 16 },
    { itemID = 7909, count = 2 },
    { itemID = 7966, count = 1 },
    { itemID = 4304, count = 4 },
  }
}

MT_RecipeDB[7943] = { -- Wicked Mithril Blade
  name = "Wicked Mithril Blade",
  profession = "Blacksmithing",
  spellID = 9997,
  yield = 1,
  materials = {
    { itemID = 3860, count = 14 },
    { itemID = 6037, count = 4 },
    { itemID = 7966, count = 1 },
    { itemID = 4304, count = 2 },
  }
}

MT_RecipeDB[7945] = { -- Big Black Mace
  name = "Big Black Mace",
  profession = "Blacksmithing",
  spellID = 10001,
  yield = 1,
  materials = {
    { itemID = 3860, count = 16 },
    { itemID = 7971, count = 1 },
    { itemID = 1210, count = 4 },
    { itemID = 7966, count = 1 },
    { itemID = 4304, count = 2 },
  }
}

MT_RecipeDB[7954] = { -- The Shatterer
  name = "The Shatterer",
  profession = "Blacksmithing",
  spellID = 10003,
  yield = 1,
  materials = {
    { itemID = 3860, count = 24 },
    { itemID = 7075, count = 4 },
    { itemID = 6037, count = 6 },
    { itemID = 3864, count = 5 },
    { itemID = 1529, count = 5 },
    { itemID = 7966, count = 4 },
    { itemID = 4304, count = 4 },
  }
}

MT_RecipeDB[7944] = { -- Dazzling Mithril Rapier
  name = "Dazzling Mithril Rapier",
  profession = "Blacksmithing",
  spellID = 10005,
  yield = 1,
  materials = {
    { itemID = 3860, count = 14 },
    { itemID = 7909, count = 1 },
    { itemID = 1705, count = 2 },
    { itemID = 1206, count = 2 },
    { itemID = 7966, count = 1 },
    { itemID = 4338, count = 2 },
  }
}

MT_RecipeDB[7961] = { -- Phantom Blade
  name = "Phantom Blade",
  profession = "Blacksmithing",
  spellID = 10007,
  yield = 1,
  materials = {
    { itemID = 3860, count = 28 },
    { itemID = 7081, count = 6 },
    { itemID = 6037, count = 8 },
    { itemID = 3823, count = 2 },
    { itemID = 7909, count = 6 },
    { itemID = 7966, count = 4 },
    { itemID = 4304, count = 2 },
  }
}

MT_RecipeDB[7946] = { -- Runed Mithril Hammer
  name = "Runed Mithril Hammer",
  profession = "Blacksmithing",
  spellID = 10009,
  yield = 1,
  materials = {
    { itemID = 3860, count = 18 },
    { itemID = 7075, count = 2 },
    { itemID = 7966, count = 1 },
    { itemID = 4304, count = 4 },
  }
}

MT_RecipeDB[7959] = { -- Blight
  name = "Blight",
  profession = "Blacksmithing",
  spellID = 10011,
  yield = 1,
  materials = {
    { itemID = 3860, count = 28 },
    { itemID = 7972, count = 10 },
    { itemID = 6037, count = 10 },
    { itemID = 7966, count = 6 },
    { itemID = 4304, count = 6 },
  }
}

MT_RecipeDB[7947] = { -- Ebon Shiv
  name = "Ebon Shiv",
  profession = "Blacksmithing",
  spellID = 10013,
  yield = 1,
  materials = {
    { itemID = 3860, count = 12 },
    { itemID = 6037, count = 6 },
    { itemID = 7910, count = 2 },
    { itemID = 7966, count = 1 },
    { itemID = 4304, count = 2 },
  }
}

MT_RecipeDB[7960] = { -- Truesilver Champion
  name = "Truesilver Champion",
  profession = "Blacksmithing",
  spellID = 10015,
  yield = 1,
  materials = {
    { itemID = 3860, count = 30 },
    { itemID = 6037, count = 16 },
    { itemID = 7910, count = 6 },
    { itemID = 7081, count = 4 },
    { itemID = 7966, count = 8 },
    { itemID = 4304, count = 6 },
  }
}

MT_RecipeDB[9366] = { -- Golden Scale Gauntlets
  name = "Golden Scale Gauntlets",
  profession = "Blacksmithing",
  spellID = 11643,
  yield = 1,
  materials = {
    { itemID = 3859, count = 10 },
    { itemID = 3577, count = 4 },
    { itemID = 3486, count = 4 },
    { itemID = 3864, count = 1 },
  }
}

MT_RecipeDB[10421] = { -- Rough Copper Vest
  name = "Rough Copper Vest",
  profession = "Blacksmithing",
  spellID = 12260,
  yield = 1,
  materials = {
    { itemID = 2840, count = 4 },
  }
}

MT_RecipeDB[10423] = { -- Silvered Bronze Leggings
  name = "Silvered Bronze Leggings",
  profession = "Blacksmithing",
  spellID = 12259,
  yield = 1,
  materials = {
    { itemID = 2841, count = 12 },
    { itemID = 2842, count = 4 },
    { itemID = 3478, count = 2 },
  }
}

MT_RecipeDB[9060] = { -- Inlaid Mithril Cylinder
  name = "Inlaid Mithril Cylinder",
  profession = "Blacksmithing",
  spellID = 11454,
  yield = 1,
  materials = {
    { itemID = 3860, count = 5 },
    { itemID = 3577, count = 1 },
    { itemID = 6037, count = 1 },
  }
}

MT_RecipeDB[11128] = { -- Golden Rod
  name = "Golden Rod",
  profession = "Blacksmithing",
  spellID = 14379,
  yield = 1,
  materials = {
    { itemID = 3577, count = 1 },
    { itemID = 3478, count = 2 },
  }
}

MT_RecipeDB[11144] = { -- Truesilver Rod
  name = "Truesilver Rod",
  profession = "Blacksmithing",
  spellID = 14380,
  yield = 1,
  materials = {
    { itemID = 6037, count = 1 },
    { itemID = 3486, count = 1 },
  }
}

MT_RecipeDB[11604] = { -- Dark Iron Plate
  name = "Dark Iron Plate",
  profession = "Blacksmithing",
  spellID = 15296,
  yield = 1,
  materials = {
    { itemID = 11371, count = 20 },
    { itemID = 7077, count = 8 },
  }
}

MT_RecipeDB[11606] = { -- Dark Iron Mail
  name = "Dark Iron Mail",
  profession = "Blacksmithing",
  spellID = 15293,
  yield = 1,
  materials = {
    { itemID = 11371, count = 10 },
    { itemID = 7077, count = 2 },
  }
}

MT_RecipeDB[11608] = { -- Dark Iron Pulverizer
  name = "Dark Iron Pulverizer",
  profession = "Blacksmithing",
  spellID = 15292,
  yield = 1,
  materials = {
    { itemID = 11371, count = 18 },
    { itemID = 7077, count = 4 },
  }
}

MT_RecipeDB[11607] = { -- Dark Iron Sunderer
  name = "Dark Iron Sunderer",
  profession = "Blacksmithing",
  spellID = 15294,
  yield = 1,
  materials = {
    { itemID = 11371, count = 26 },
    { itemID = 7077, count = 4 },
  }
}

MT_RecipeDB[11605] = { -- Dark Iron Shoulders
  name = "Dark Iron Shoulders",
  profession = "Blacksmithing",
  spellID = 15295,
  yield = 1,
  materials = {
    { itemID = 11371, count = 6 },
    { itemID = 7077, count = 1 },
  }
}

MT_RecipeDB[12259] = { -- Glinting Steel Dagger
  name = "Glinting Steel Dagger",
  profession = "Blacksmithing",
  spellID = 15972,
  yield = 1,
  materials = {
    { itemID = 3859, count = 10 },
    { itemID = 3466, count = 2 },
    { itemID = 1206, count = 1 },
    { itemID = 7067, count = 1 },
    { itemID = 4234, count = 1 },
  }
}

MT_RecipeDB[12260] = { -- Searing Golden Blade
  name = "Searing Golden Blade",
  profession = "Blacksmithing",
  spellID = 15973,
  yield = 1,
  materials = {
    { itemID = 3859, count = 10 },
    { itemID = 3577, count = 4 },
    { itemID = 7068, count = 2 },
    { itemID = 4234, count = 2 },
  }
}

MT_RecipeDB[12404] = { -- Dense Sharpening Stone
  name = "Dense Sharpening Stone",
  profession = "Blacksmithing",
  spellID = 16641,
  yield = 1,
  materials = {
    { itemID = 12365, count = 1 },
  }
}

MT_RecipeDB[12643] = { -- Dense Weightstone
  name = "Dense Weightstone",
  profession = "Blacksmithing",
  spellID = 16640,
  yield = 1,
  materials = {
    { itemID = 12365, count = 1 },
    { itemID = 14047, count = 1 },
  }
}

MT_RecipeDB[12644] = { -- Dense Grinding Stone
  name = "Dense Grinding Stone",
  profession = "Blacksmithing",
  spellID = 16639,
  yield = 1,
  materials = {
    { itemID = 12365, count = 4 },
  }
}

MT_RecipeDB[12405] = { -- Thorium Armor
  name = "Thorium Armor",
  profession = "Blacksmithing",
  spellID = 16642,
  yield = 1,
  materials = {
    { itemID = 12359, count = 16 },
    { itemID = 12361, count = 1 },
    { itemID = 11188, count = 4 },
  }
}

MT_RecipeDB[12406] = { -- Thorium Belt
  name = "Thorium Belt",
  profession = "Blacksmithing",
  spellID = 16643,
  yield = 1,
  materials = {
    { itemID = 12359, count = 12 },
    { itemID = 11186, count = 4 },
  }
}

MT_RecipeDB[12408] = { -- Thorium Bracers
  name = "Thorium Bracers",
  profession = "Blacksmithing",
  spellID = 16644,
  yield = 1,
  materials = {
    { itemID = 12359, count = 12 },
    { itemID = 11184, count = 4 },
  }
}

MT_RecipeDB[12416] = { -- Radiant Belt
  name = "Radiant Belt",
  profession = "Blacksmithing",
  spellID = 16645,
  yield = 1,
  materials = {
    { itemID = 12359, count = 10 },
    { itemID = 7077, count = 2 },
  }
}

MT_RecipeDB[12428] = { -- Imperial Plate Shoulders
  name = "Imperial Plate Shoulders",
  profession = "Blacksmithing",
  spellID = 16646,
  yield = 1,
  materials = {
    { itemID = 12359, count = 24 },
    { itemID = 8170, count = 6 },
    { itemID = 3864, count = 2 },
  }
}

MT_RecipeDB[12424] = { -- Imperial Plate Belt
  name = "Imperial Plate Belt",
  profession = "Blacksmithing",
  spellID = 16647,
  yield = 1,
  materials = {
    { itemID = 12359, count = 22 },
    { itemID = 8170, count = 6 },
    { itemID = 7909, count = 1 },
  }
}

MT_RecipeDB[12415] = { -- Radiant Breastplate
  name = "Radiant Breastplate",
  profession = "Blacksmithing",
  spellID = 16648,
  yield = 1,
  materials = {
    { itemID = 12359, count = 18 },
    { itemID = 7077, count = 2 },
    { itemID = 7910, count = 1 },
  }
}

MT_RecipeDB[12425] = { -- Imperial Plate Bracers
  name = "Imperial Plate Bracers",
  profession = "Blacksmithing",
  spellID = 16649,
  yield = 1,
  materials = {
    { itemID = 12359, count = 20 },
    { itemID = 7910, count = 1 },
  }
}

MT_RecipeDB[12624] = { -- Wildthorn Mail
  name = "Wildthorn Mail",
  profession = "Blacksmithing",
  spellID = 16650,
  yield = 1,
  materials = {
    { itemID = 12359, count = 40 },
    { itemID = 12655, count = 2 },
    { itemID = 12803, count = 4 },
    { itemID = 8153, count = 4 },
    { itemID = 12364, count = 1 },
  }
}

MT_RecipeDB[12645] = { -- Thorium Shield Spike
  name = "Thorium Shield Spike",
  profession = "Blacksmithing",
  spellID = 16651,
  yield = 1,
  materials = {
    { itemID = 12359, count = 4 },
    { itemID = 12644, count = 4 },
    { itemID = 7076, count = 2 },
  }
}

MT_RecipeDB[12409] = { -- Thorium Boots
  name = "Thorium Boots",
  profession = "Blacksmithing",
  spellID = 16652,
  yield = 1,
  materials = {
    { itemID = 12359, count = 20 },
    { itemID = 8170, count = 8 },
    { itemID = 11185, count = 4 },
  }
}

MT_RecipeDB[12410] = { -- Thorium Helm
  name = "Thorium Helm",
  profession = "Blacksmithing",
  spellID = 16653,
  yield = 1,
  materials = {
    { itemID = 12359, count = 24 },
    { itemID = 7910, count = 1 },
    { itemID = 11188, count = 4 },
  }
}

MT_RecipeDB[12418] = { -- Radiant Gloves
  name = "Radiant Gloves",
  profession = "Blacksmithing",
  spellID = 16654,
  yield = 1,
  materials = {
    { itemID = 12359, count = 18 },
    { itemID = 7077, count = 4 },
  }
}

MT_RecipeDB[12628] = { -- Demon Forged Breastplate
  name = "Demon Forged Breastplate",
  profession = "Blacksmithing",
  spellID = 16667,
  yield = 1,
  materials = {
    { itemID = 12359, count = 40 },
    { itemID = 12662, count = 10 },
    { itemID = 12361, count = 4 },
    { itemID = 7910, count = 4 },
  }
}

MT_RecipeDB[12419] = { -- Radiant Boots
  name = "Radiant Boots",
  profession = "Blacksmithing",
  spellID = 16656,
  yield = 1,
  materials = {
    { itemID = 12359, count = 14 },
    { itemID = 7077, count = 4 },
  }
}

MT_RecipeDB[12625] = { -- Dawnbringer Shoulders
  name = "Dawnbringer Shoulders",
  profession = "Blacksmithing",
  spellID = 16660,
  yield = 1,
  materials = {
    { itemID = 12359, count = 20 },
    { itemID = 12360, count = 4 },
    { itemID = 12364, count = 2 },
    { itemID = 7080, count = 2 },
  }
}

MT_RecipeDB[12631] = { -- Fiery Plate Gauntlets
  name = "Fiery Plate Gauntlets",
  profession = "Blacksmithing",
  spellID = 16655,
  yield = 1,
  materials = {
    { itemID = 12359, count = 20 },
    { itemID = 12655, count = 6 },
    { itemID = 7078, count = 2 },
    { itemID = 7910, count = 4 },
  }
}

MT_RecipeDB[12426] = { -- Imperial Plate Boots
  name = "Imperial Plate Boots",
  profession = "Blacksmithing",
  spellID = 16657,
  yield = 1,
  materials = {
    { itemID = 12359, count = 34 },
    { itemID = 7910, count = 1 },
    { itemID = 7909, count = 1 },
  }
}

MT_RecipeDB[12427] = { -- Imperial Plate Helm
  name = "Imperial Plate Helm",
  profession = "Blacksmithing",
  spellID = 16658,
  yield = 1,
  materials = {
    { itemID = 12359, count = 34 },
    { itemID = 7910, count = 2 },
  }
}

MT_RecipeDB[12417] = { -- Radiant Circlet
  name = "Radiant Circlet",
  profession = "Blacksmithing",
  spellID = 16659,
  yield = 1,
  materials = {
    { itemID = 12359, count = 18 },
    { itemID = 7077, count = 4 },
  }
}

MT_RecipeDB[12414] = { -- Thorium Leggings
  name = "Thorium Leggings",
  profession = "Blacksmithing",
  spellID = 16662,
  yield = 1,
  materials = {
    { itemID = 12359, count = 26 },
    { itemID = 11186, count = 4 },
  }
}

MT_RecipeDB[12422] = { -- Imperial Plate Chest
  name = "Imperial Plate Chest",
  profession = "Blacksmithing",
  spellID = 16663,
  yield = 1,
  materials = {
    { itemID = 12359, count = 40 },
    { itemID = 7910, count = 2 },
  }
}

MT_RecipeDB[12610] = { -- Runic Plate Shoulders
  name = "Runic Plate Shoulders",
  profession = "Blacksmithing",
  spellID = 16664,
  yield = 1,
  materials = {
    { itemID = 12359, count = 20 },
    { itemID = 12360, count = 2 },
    { itemID = 3577, count = 6 },
  }
}

MT_RecipeDB[12611] = { -- Runic Plate Boots
  name = "Runic Plate Boots",
  profession = "Blacksmithing",
  spellID = 16665,
  yield = 1,
  materials = {
    { itemID = 12359, count = 20 },
    { itemID = 12360, count = 2 },
    { itemID = 2842, count = 10 },
  }
}

MT_RecipeDB[12633] = { -- Whitesoul Helm
  name = "Whitesoul Helm",
  profession = "Blacksmithing",
  spellID = 16724,
  yield = 1,
  materials = {
    { itemID = 12359, count = 20 },
    { itemID = 12655, count = 4 },
    { itemID = 6037, count = 6 },
    { itemID = 3577, count = 6 },
    { itemID = 12800, count = 2 },
  }
}

MT_RecipeDB[12420] = { -- Radiant Leggings
  name = "Radiant Leggings",
  profession = "Blacksmithing",
  spellID = 16725,
  yield = 1,
  materials = {
    { itemID = 12359, count = 20 },
    { itemID = 7077, count = 4 },
  }
}

MT_RecipeDB[12612] = { -- Runic Plate Helm
  name = "Runic Plate Helm",
  profession = "Blacksmithing",
  spellID = 16726,
  yield = 1,
  materials = {
    { itemID = 12359, count = 30 },
    { itemID = 12360, count = 2 },
    { itemID = 6037, count = 2 },
    { itemID = 12364, count = 1 },
  }
}

MT_RecipeDB[12429] = { -- Imperial Plate Leggings
  name = "Imperial Plate Leggings",
  profession = "Blacksmithing",
  spellID = 16730,
  yield = 1,
  materials = {
    { itemID = 12359, count = 44 },
    { itemID = 7910, count = 2 },
  }
}

MT_RecipeDB[12636] = { -- Helm of the Great Chief
  name = "Helm of the Great Chief",
  profession = "Blacksmithing",
  spellID = 16728,
  yield = 1,
  materials = {
    { itemID = 12359, count = 40 },
    { itemID = 12655, count = 4 },
    { itemID = 8168, count = 60 },
    { itemID = 12799, count = 6 },
    { itemID = 12364, count = 2 },
  }
}

MT_RecipeDB[12640] = { -- Lionheart Helm
  name = "Lionheart Helm",
  profession = "Blacksmithing",
  spellID = 16729,
  yield = 1,
  materials = {
    { itemID = 12359, count = 80 },
    { itemID = 12360, count = 12 },
    { itemID = 8146, count = 40 },
    { itemID = 12361, count = 10 },
    { itemID = 12800, count = 4 },
  }
}

MT_RecipeDB[12613] = { -- Runic Breastplate
  name = "Runic Breastplate",
  profession = "Blacksmithing",
  spellID = 16731,
  yield = 1,
  materials = {
    { itemID = 12359, count = 40 },
    { itemID = 12360, count = 2 },
    { itemID = 7910, count = 1 },
  }
}

MT_RecipeDB[12614] = { -- Runic Plate Leggings
  name = "Runic Plate Leggings",
  profession = "Blacksmithing",
  spellID = 16732,
  yield = 1,
  materials = {
    { itemID = 12359, count = 40 },
    { itemID = 12360, count = 2 },
    { itemID = 7910, count = 1 },
  }
}

MT_RecipeDB[12639] = { -- Stronghold Gauntlets
  name = "Stronghold Gauntlets",
  profession = "Blacksmithing",
  spellID = 16741,
  yield = 1,
  materials = {
    { itemID = 12360, count = 15 },
    { itemID = 12655, count = 20 },
    { itemID = 7076, count = 10 },
    { itemID = 12361, count = 4 },
    { itemID = 12799, count = 4 },
  }
}

MT_RecipeDB[12620] = { -- Enchanted Thorium Helm
  name = "Enchanted Thorium Helm",
  profession = "Blacksmithing",
  spellID = 16742,
  yield = 1,
  materials = {
    { itemID = 12360, count = 6 },
    { itemID = 12655, count = 16 },
    { itemID = 7076, count = 6 },
    { itemID = 12799, count = 2 },
    { itemID = 12800, count = 1 },
  }
}

MT_RecipeDB[12619] = { -- Enchanted Thorium Leggings
  name = "Enchanted Thorium Leggings",
  profession = "Blacksmithing",
  spellID = 16744,
  yield = 1,
  materials = {
    { itemID = 12360, count = 10 },
    { itemID = 12655, count = 20 },
    { itemID = 7080, count = 6 },
    { itemID = 12361, count = 2 },
    { itemID = 12364, count = 1 },
  }
}

MT_RecipeDB[12618] = { -- Enchanted Thorium Breastplate
  name = "Enchanted Thorium Breastplate",
  profession = "Blacksmithing",
  spellID = 16745,
  yield = 1,
  materials = {
    { itemID = 12360, count = 8 },
    { itemID = 12655, count = 24 },
    { itemID = 7076, count = 4 },
    { itemID = 7080, count = 4 },
    { itemID = 12364, count = 2 },
    { itemID = 12800, count = 2 },
  }
}

MT_RecipeDB[12641] = { -- Invulnerable Mail
  name = "Invulnerable Mail",
  profession = "Blacksmithing",
  spellID = 16746,
  yield = 1,
  materials = {
    { itemID = 12360, count = 20 },
    { itemID = 12655, count = 20 },
    { itemID = 12364, count = 6 },
    { itemID = 12800, count = 6 },
  }
}

MT_RecipeDB[12764] = { -- Thorium Greatsword
  name = "Thorium Greatsword",
  profession = "Blacksmithing",
  spellID = 16960,
  yield = 1,
  materials = {
    { itemID = 12359, count = 16 },
    { itemID = 12644, count = 2 },
    { itemID = 8170, count = 4 },
  }
}

MT_RecipeDB[12769] = { -- Bleakwood Hew
  name = "Bleakwood Hew",
  profession = "Blacksmithing",
  spellID = 16965,
  yield = 1,
  materials = {
    { itemID = 12359, count = 30 },
    { itemID = 12803, count = 6 },
    { itemID = 8153, count = 6 },
    { itemID = 12799, count = 6 },
    { itemID = 12644, count = 2 },
    { itemID = 8170, count = 8 },
  }
}

MT_RecipeDB[12772] = { -- Inlaid Thorium Hammer
  name = "Inlaid Thorium Hammer",
  profession = "Blacksmithing",
  spellID = 16967,
  yield = 1,
  materials = {
    { itemID = 12359, count = 30 },
    { itemID = 3577, count = 4 },
    { itemID = 6037, count = 2 },
    { itemID = 12361, count = 2 },
    { itemID = 8170, count = 4 },
  }
}

MT_RecipeDB[12773] = { -- Ornate Thorium Handaxe
  name = "Ornate Thorium Handaxe",
  profession = "Blacksmithing",
  spellID = 16969,
  yield = 1,
  materials = {
    { itemID = 12359, count = 20 },
    { itemID = 12799, count = 2 },
    { itemID = 12644, count = 2 },
    { itemID = 8170, count = 4 },
  }
}

MT_RecipeDB[12774] = { -- Dawn
  name = "Dawn",
  profession = "Blacksmithing",
  spellID = 16970,
  yield = 1,
  materials = {
    { itemID = 12359, count = 30 },
    { itemID = 12655, count = 4 },
    { itemID = 7910, count = 4 },
    { itemID = 12361, count = 4 },
    { itemID = 12644, count = 2 },
    { itemID = 8170, count = 4 },
  }
}

MT_RecipeDB[12775] = { -- Huge Thorium Battleaxe
  name = "Huge Thorium Battleaxe",
  profession = "Blacksmithing",
  spellID = 16971,
  yield = 1,
  materials = {
    { itemID = 12359, count = 40 },
    { itemID = 12644, count = 6 },
    { itemID = 8170, count = 6 },
  }
}

MT_RecipeDB[12776] = { -- Enchanted Battlehammer
  name = "Enchanted Battlehammer",
  profession = "Blacksmithing",
  spellID = 16973,
  yield = 1,
  materials = {
    { itemID = 12359, count = 20 },
    { itemID = 12655, count = 6 },
    { itemID = 12364, count = 2 },
    { itemID = 12804, count = 4 },
    { itemID = 8170, count = 4 },
  }
}

MT_RecipeDB[12777] = { -- Blazing Rapier
  name = "Blazing Rapier",
  profession = "Blacksmithing",
  spellID = 16978,
  yield = 1,
  materials = {
    { itemID = 12655, count = 10 },
    { itemID = 7078, count = 4 },
    { itemID = 7077, count = 4 },
    { itemID = 12800, count = 2 },
    { itemID = 12644, count = 2 },
  }
}

MT_RecipeDB[12779] = { -- Rune Edge
  name = "Rune Edge",
  profession = "Blacksmithing",
  spellID = 16980,
  yield = 1,
  materials = {
    { itemID = 12359, count = 30 },
    { itemID = 12799, count = 2 },
    { itemID = 12644, count = 2 },
    { itemID = 8170, count = 4 },
  }
}

MT_RecipeDB[12781] = { -- Serenity
  name = "Serenity",
  profession = "Blacksmithing",
  spellID = 16983,
  yield = 1,
  materials = {
    { itemID = 12655, count = 6 },
    { itemID = 12360, count = 2 },
    { itemID = 12804, count = 4 },
    { itemID = 12799, count = 2 },
    { itemID = 12361, count = 2 },
    { itemID = 12364, count = 1 },
  }
}

MT_RecipeDB[12792] = { -- Volcanic Hammer
  name = "Volcanic Hammer",
  profession = "Blacksmithing",
  spellID = 16984,
  yield = 1,
  materials = {
    { itemID = 12359, count = 30 },
    { itemID = 7077, count = 4 },
    { itemID = 7910, count = 4 },
    { itemID = 8170, count = 4 },
  }
}

MT_RecipeDB[12782] = { -- Corruption
  name = "Corruption",
  profession = "Blacksmithing",
  spellID = 16985,
  yield = 1,
  materials = {
    { itemID = 12359, count = 40 },
    { itemID = 12360, count = 2 },
    { itemID = 12662, count = 16 },
    { itemID = 12808, count = 8 },
    { itemID = 12361, count = 2 },
    { itemID = 12644, count = 2 },
    { itemID = 8170, count = 4 },
  }
}

MT_RecipeDB[12795] = { -- Blood Talon
  name = "Blood Talon",
  profession = "Blacksmithing",
  spellID = 16986,
  yield = 1,
  materials = {
    { itemID = 12655, count = 10 },
    { itemID = 12360, count = 10 },
    { itemID = 12662, count = 8 },
    { itemID = 7910, count = 10 },
    { itemID = 12644, count = 2 },
  }
}

MT_RecipeDB[12802] = { -- Darkspear
  name = "Darkspear",
  profession = "Blacksmithing",
  spellID = 16987,
  yield = 1,
  materials = {
    { itemID = 12655, count = 20 },
    { itemID = 12804, count = 20 },
    { itemID = 12364, count = 2 },
    { itemID = 12800, count = 2 },
    { itemID = 12644, count = 2 },
  }
}

MT_RecipeDB[12796] = { -- Hammer of the Titans
  name = "Hammer of the Titans",
  profession = "Blacksmithing",
  spellID = 16988,
  yield = 1,
  materials = {
    { itemID = 12359, count = 50 },
    { itemID = 12360, count = 15 },
    { itemID = 12809, count = 4 },
    { itemID = 12810, count = 6 },
    { itemID = 7076, count = 10 },
  }
}

MT_RecipeDB[12790] = { -- Arcanite Champion
  name = "Arcanite Champion",
  profession = "Blacksmithing",
  spellID = 16990,
  yield = 1,
  materials = {
    { itemID = 12360, count = 10 },
    { itemID = 12800, count = 8 },
    { itemID = 12811, count = 1 },
    { itemID = 12799, count = 4 },
    { itemID = 12810, count = 8 },
    { itemID = 12644, count = 2 },
  }
}

MT_RecipeDB[12798] = { -- Annihilator
  name = "Annihilator",
  profession = "Blacksmithing",
  spellID = 16991,
  yield = 1,
  materials = {
    { itemID = 12359, count = 40 },
    { itemID = 12360, count = 12 },
    { itemID = 12808, count = 10 },
    { itemID = 12364, count = 8 },
    { itemID = 12644, count = 2 },
    { itemID = 12810, count = 4 },
  }
}

MT_RecipeDB[12797] = { -- Frostguard
  name = "Frostguard",
  profession = "Blacksmithing",
  spellID = 16992,
  yield = 1,
  materials = {
    { itemID = 12360, count = 18 },
    { itemID = 12361, count = 8 },
    { itemID = 12800, count = 8 },
    { itemID = 7080, count = 4 },
    { itemID = 12644, count = 2 },
    { itemID = 12810, count = 4 },
  }
}

MT_RecipeDB[12794] = { -- Masterwork Stormhammer
  name = "Masterwork Stormhammer",
  profession = "Blacksmithing",
  spellID = 16993,
  yield = 1,
  materials = {
    { itemID = 12655, count = 20 },
    { itemID = 12364, count = 8 },
    { itemID = 12799, count = 8 },
    { itemID = 7076, count = 6 },
    { itemID = 12810, count = 4 },
  }
}

MT_RecipeDB[12784] = { -- Arcanite Reaper
  name = "Arcanite Reaper",
  profession = "Blacksmithing",
  spellID = 16994,
  yield = 1,
  materials = {
    { itemID = 12360, count = 14 },
    { itemID = 12810, count = 6 },
    { itemID = 12644, count = 2 },
  }
}

MT_RecipeDB[12783] = { -- Heartseeker
  name = "Heartseeker",
  profession = "Blacksmithing",
  spellID = 16995,
  yield = 1,
  materials = {
    { itemID = 12360, count = 10 },
    { itemID = 12655, count = 10 },
    { itemID = 12810, count = 2 },
    { itemID = 7910, count = 6 },
    { itemID = 12800, count = 6 },
    { itemID = 12799, count = 6 },
    { itemID = 12644, count = 4 },
  }
}

MT_RecipeDB[12632] = { -- Storm Gauntlets
  name = "Storm Gauntlets",
  profession = "Blacksmithing",
  spellID = 16661,
  yield = 1,
  materials = {
    { itemID = 12359, count = 20 },
    { itemID = 12655, count = 4 },
    { itemID = 7080, count = 4 },
    { itemID = 12361, count = 4 },
  }
}

MT_RecipeDB[15869] = { -- Silver Skeleton Key
  name = "Silver Skeleton Key",
  profession = "Blacksmithing",
  spellID = 19666,
  yield = 1,
  materials = {
    { itemID = 2842, count = 1 },
    { itemID = 3470, count = 1 },
  }
}

MT_RecipeDB[15870] = { -- Golden Skeleton Key
  name = "Golden Skeleton Key",
  profession = "Blacksmithing",
  spellID = 19667,
  yield = 1,
  materials = {
    { itemID = 3577, count = 1 },
    { itemID = 3486, count = 1 },
  }
}

MT_RecipeDB[15871] = { -- Truesilver Skeleton Key
  name = "Truesilver Skeleton Key",
  profession = "Blacksmithing",
  spellID = 19668,
  yield = 1,
  materials = {
    { itemID = 6037, count = 1 },
    { itemID = 7966, count = 1 },
  }
}

MT_RecipeDB[15872] = { -- Arcanite Skeleton Key
  name = "Arcanite Skeleton Key",
  profession = "Blacksmithing",
  spellID = 19669,
  yield = 1,
  materials = {
    { itemID = 12360, count = 1 },
    { itemID = 12644, count = 1 },
  }
}

MT_RecipeDB[16206] = { -- Arcanite Rod
  name = "Arcanite Rod",
  profession = "Blacksmithing",
  spellID = 20201,
  yield = 1,
  materials = {
    { itemID = 12360, count = 3 },
    { itemID = 12644, count = 1 },
  }
}

MT_RecipeDB[17014] = { -- Dark Iron Bracers
  name = "Dark Iron Bracers",
  profession = "Blacksmithing",
  spellID = 20874,
  yield = 1,
  materials = {
    { itemID = 11371, count = 4 },
    { itemID = 17010, count = 2 },
    { itemID = 17011, count = 2 },
  }
}

MT_RecipeDB[16989] = { -- Fiery Chain Girdle
  name = "Fiery Chain Girdle",
  profession = "Blacksmithing",
  spellID = 20872,
  yield = 1,
  materials = {
    { itemID = 11371, count = 6 },
    { itemID = 17010, count = 3 },
    { itemID = 17011, count = 3 },
  }
}

MT_RecipeDB[17013] = { -- Dark Iron Leggings
  name = "Dark Iron Leggings",
  profession = "Blacksmithing",
  spellID = 20876,
  yield = 1,
  materials = {
    { itemID = 11371, count = 16 },
    { itemID = 17010, count = 4 },
    { itemID = 17011, count = 6 },
  }
}

MT_RecipeDB[16988] = { -- Fiery Chain Shoulders
  name = "Fiery Chain Shoulders",
  profession = "Blacksmithing",
  spellID = 20873,
  yield = 1,
  materials = {
    { itemID = 11371, count = 10 },
    { itemID = 17010, count = 4 },
    { itemID = 17011, count = 3 },
  }
}

MT_RecipeDB[17016] = { -- Dark Iron Destroyer
  name = "Dark Iron Destroyer",
  profession = "Blacksmithing",
  spellID = 20897,
  yield = 1,
  materials = {
    { itemID = 11371, count = 10 },
    { itemID = 17011, count = 6 },
    { itemID = 11382, count = 2 },
    { itemID = 12810, count = 2 },
  }
}

MT_RecipeDB[17015] = { -- Dark Iron Reaver
  name = "Dark Iron Reaver",
  profession = "Blacksmithing",
  spellID = 20890,
  yield = 1,
  materials = {
    { itemID = 11371, count = 10 },
    { itemID = 17010, count = 6 },
    { itemID = 11382, count = 2 },
    { itemID = 12810, count = 2 },
  }
}

MT_RecipeDB[17193] = { -- Sulfuron Hammer
  name = "Sulfuron Hammer",
  profession = "Blacksmithing",
  spellID = 21161,
  yield = 1,
  materials = {
    { itemID = 17203, count = 8 },
    { itemID = 11371, count = 20 },
    { itemID = 12360, count = 50 },
    { itemID = 7078, count = 25 },
    { itemID = 11382, count = 10 },
    { itemID = 17011, count = 10 },
    { itemID = 17010, count = 10 },
  }
}

MT_RecipeDB[17704] = { -- Edge of Winter
  name = "Edge of Winter",
  profession = "Blacksmithing",
  spellID = 21913,
  yield = 1,
  materials = {
    { itemID = 3859, count = 10 },
    { itemID = 3829, count = 1 },
    { itemID = 7070, count = 2 },
    { itemID = 7069, count = 2 },
    { itemID = 4234, count = 2 },
  }
}

MT_RecipeDB[18262] = { -- Elemental Sharpening Stone
  name = "Elemental Sharpening Stone",
  profession = "Blacksmithing",
  spellID = 22757,
  yield = 1,
  materials = {
    { itemID = 7067, count = 2 },
    { itemID = 12365, count = 3 },
  }
}

MT_RecipeDB[19043] = { -- Heavy Timbermaw Belt
  name = "Heavy Timbermaw Belt",
  profession = "Blacksmithing",
  spellID = 23628,
  yield = 1,
  materials = {
    { itemID = 12359, count = 12 },
    { itemID = 7076, count = 3 },
    { itemID = 12803, count = 3 },
  }
}

MT_RecipeDB[19048] = { -- Heavy Timbermaw Boots
  name = "Heavy Timbermaw Boots",
  profession = "Blacksmithing",
  spellID = 23629,
  yield = 1,
  materials = {
    { itemID = 12360, count = 4 },
    { itemID = 7076, count = 6 },
    { itemID = 12803, count = 6 },
  }
}

MT_RecipeDB[19051] = { -- Girdle of the Dawn
  name = "Girdle of the Dawn",
  profession = "Blacksmithing",
  spellID = 23632,
  yield = 1,
  materials = {
    { itemID = 12359, count = 8 },
    { itemID = 6037, count = 6 },
    { itemID = 12811, count = 1 },
  }
}

MT_RecipeDB[19057] = { -- Gloves of the Dawn
  name = "Gloves of the Dawn",
  profession = "Blacksmithing",
  spellID = 23633,
  yield = 1,
  materials = {
    { itemID = 12360, count = 2 },
    { itemID = 6037, count = 10 },
    { itemID = 12811, count = 1 },
  }
}

MT_RecipeDB[19148] = { -- Dark Iron Helm
  name = "Dark Iron Helm",
  profession = "Blacksmithing",
  spellID = 23636,
  yield = 1,
  materials = {
    { itemID = 17011, count = 4 },
    { itemID = 17010, count = 2 },
    { itemID = 11371, count = 4 },
  }
}

MT_RecipeDB[19164] = { -- Dark Iron Gauntlets
  name = "Dark Iron Gauntlets",
  profession = "Blacksmithing",
  spellID = 23637,
  yield = 1,
  materials = {
    { itemID = 17011, count = 3 },
    { itemID = 17010, count = 5 },
    { itemID = 17012, count = 4 },
    { itemID = 11371, count = 4 },
    { itemID = 11382, count = 2 },
  }
}

MT_RecipeDB[19166] = { -- Black Amnesty
  name = "Black Amnesty",
  profession = "Blacksmithing",
  spellID = 23638,
  yield = 1,
  materials = {
    { itemID = 17011, count = 3 },
    { itemID = 17010, count = 6 },
    { itemID = 12360, count = 12 },
    { itemID = 11382, count = 1 },
    { itemID = 11371, count = 4 },
  }
}

MT_RecipeDB[19167] = { -- Blackfury
  name = "Blackfury",
  profession = "Blacksmithing",
  spellID = 23639,
  yield = 1,
  materials = {
    { itemID = 17011, count = 5 },
    { itemID = 17010, count = 2 },
    { itemID = 12360, count = 16 },
    { itemID = 11371, count = 6 },
  }
}

MT_RecipeDB[19170] = { -- Ebon Hand
  name = "Ebon Hand",
  profession = "Blacksmithing",
  spellID = 23650,
  yield = 1,
  materials = {
    { itemID = 17011, count = 4 },
    { itemID = 17010, count = 7 },
    { itemID = 12360, count = 12 },
    { itemID = 11371, count = 8 },
    { itemID = 12800, count = 4 },
  }
}

MT_RecipeDB[19168] = { -- Blackguard
  name = "Blackguard",
  profession = "Blacksmithing",
  spellID = 23652,
  yield = 1,
  materials = {
    { itemID = 17011, count = 6 },
    { itemID = 17010, count = 6 },
    { itemID = 12360, count = 10 },
    { itemID = 11371, count = 6 },
    { itemID = 12809, count = 12 },
  }
}

MT_RecipeDB[19169] = { -- Nightfall
  name = "Nightfall",
  profession = "Blacksmithing",
  spellID = 23653,
  yield = 1,
  materials = {
    { itemID = 17011, count = 8 },
    { itemID = 17010, count = 5 },
    { itemID = 12360, count = 10 },
    { itemID = 11371, count = 12 },
    { itemID = 12364, count = 4 },
  }
}

MT_RecipeDB[19690] = { -- Bloodsoul Breastplate
  name = "Bloodsoul Breastplate",
  profession = "Blacksmithing",
  spellID = 24136,
  yield = 1,
  materials = {
    { itemID = 12359, count = 20 },
    { itemID = 19774, count = 10 },
    { itemID = 19726, count = 2 },
    { itemID = 7910, count = 2 },
  }
}

MT_RecipeDB[19692] = { -- Bloodsoul Gauntlets
  name = "Bloodsoul Gauntlets",
  profession = "Blacksmithing",
  spellID = 24138,
  yield = 1,
  materials = {
    { itemID = 12359, count = 12 },
    { itemID = 19774, count = 6 },
    { itemID = 19726, count = 2 },
    { itemID = 12810, count = 4 },
  }
}

MT_RecipeDB[19691] = { -- Bloodsoul Shoulders
  name = "Bloodsoul Shoulders",
  profession = "Blacksmithing",
  spellID = 24137,
  yield = 1,
  materials = {
    { itemID = 12359, count = 16 },
    { itemID = 19774, count = 8 },
    { itemID = 19726, count = 2 },
    { itemID = 7910, count = 1 },
  }
}

MT_RecipeDB[19693] = { -- Darksoul Breastplate
  name = "Darksoul Breastplate",
  profession = "Blacksmithing",
  spellID = 24139,
  yield = 1,
  materials = {
    { itemID = 12359, count = 20 },
    { itemID = 19774, count = 14 },
    { itemID = 12799, count = 2 },
  }
}

MT_RecipeDB[19694] = { -- Darksoul Leggings
  name = "Darksoul Leggings",
  profession = "Blacksmithing",
  spellID = 24140,
  yield = 1,
  materials = {
    { itemID = 12359, count = 18 },
    { itemID = 19774, count = 12 },
    { itemID = 12799, count = 2 },
  }
}

MT_RecipeDB[19695] = { -- Darksoul Shoulders
  name = "Darksoul Shoulders",
  profession = "Blacksmithing",
  spellID = 24141,
  yield = 1,
  materials = {
    { itemID = 12359, count = 16 },
    { itemID = 19774, count = 10 },
    { itemID = 12799, count = 1 },
  }
}

MT_RecipeDB[20039] = { -- Dark Iron Boots
  name = "Dark Iron Boots",
  profession = "Blacksmithing",
  spellID = 24399,
  yield = 1,
  materials = {
    { itemID = 17011, count = 3 },
    { itemID = 17010, count = 3 },
    { itemID = 17012, count = 4 },
    { itemID = 11371, count = 6 },
  }
}

MT_RecipeDB[20550] = { -- Darkrune Breastplate
  name = "Darkrune Breastplate",
  profession = "Blacksmithing",
  spellID = 24914,
  yield = 1,
  materials = {
    { itemID = 12359, count = 20 },
    { itemID = 20520, count = 10 },
    { itemID = 6037, count = 10 },
  }
}

MT_RecipeDB[20549] = { -- Darkrune Gauntlets
  name = "Darkrune Gauntlets",
  profession = "Blacksmithing",
  spellID = 24912,
  yield = 1,
  materials = {
    { itemID = 12359, count = 12 },
    { itemID = 20520, count = 6 },
    { itemID = 6037, count = 6 },
    { itemID = 12810, count = 2 },
  }
}

MT_RecipeDB[20551] = { -- Darkrune Helm
  name = "Darkrune Helm",
  profession = "Blacksmithing",
  spellID = 24913,
  yield = 1,
  materials = {
    { itemID = 12359, count = 16 },
    { itemID = 20520, count = 8 },
    { itemID = 6037, count = 8 },
    { itemID = 11754, count = 1 },
  }
}

MT_RecipeDB[22197] = { -- Heavy Obsidian Belt
  name = "Heavy Obsidian Belt",
  profession = "Blacksmithing",
  spellID = 27585,
  yield = 1,
  materials = {
    { itemID = 22202, count = 14 },
    { itemID = 12655, count = 4 },
    { itemID = 7076, count = 2 },
  }
}

MT_RecipeDB[22195] = { -- Light Obsidian Belt
  name = "Light Obsidian Belt",
  profession = "Blacksmithing",
  spellID = 27588,
  yield = 1,
  materials = {
    { itemID = 22202, count = 14 },
    { itemID = 12810, count = 4 },
  }
}

MT_RecipeDB[22198] = { -- Jagged Obsidian Shield
  name = "Jagged Obsidian Shield",
  profession = "Blacksmithing",
  spellID = 27586,
  yield = 1,
  materials = {
    { itemID = 22203, count = 8 },
    { itemID = 22202, count = 24 },
    { itemID = 12655, count = 8 },
    { itemID = 7076, count = 4 },
  }
}

MT_RecipeDB[22194] = { -- Black Grasp of the Destroyer
  name = "Black Grasp of the Destroyer",
  profession = "Blacksmithing",
  spellID = 27589,
  yield = 1,
  materials = {
    { itemID = 22203, count = 8 },
    { itemID = 22202, count = 24 },
    { itemID = 12810, count = 8 },
    { itemID = 13512, count = 1 },
  }
}

MT_RecipeDB[22191] = { -- Obsidian Mail Tunic
  name = "Obsidian Mail Tunic",
  profession = "Blacksmithing",
  spellID = 27590,
  yield = 1,
  materials = {
    { itemID = 22203, count = 15 },
    { itemID = 22202, count = 36 },
    { itemID = 12810, count = 12 },
    { itemID = 12809, count = 10 },
    { itemID = 12800, count = 4 },
  }
}

MT_RecipeDB[22196] = { -- Thick Obsidian Breastplate
  name = "Thick Obsidian Breastplate",
  profession = "Blacksmithing",
  spellID = 27587,
  yield = 1,
  materials = {
    { itemID = 22203, count = 18 },
    { itemID = 22202, count = 40 },
    { itemID = 12655, count = 12 },
    { itemID = 7076, count = 10 },
    { itemID = 12364, count = 4 },
  }
}

MT_RecipeDB[22384] = { -- Persuader
  name = "Persuader",
  profession = "Blacksmithing",
  spellID = 27830,
  yield = 1,
  materials = {
    { itemID = 12360, count = 15 },
    { itemID = 11371, count = 10 },
    { itemID = 12808, count = 20 },
    { itemID = 20520, count = 20 },
    { itemID = 15417, count = 10 },
    { itemID = 12753, count = 2 },
  }
}

MT_RecipeDB[22385] = { -- Titanic Leggings
  name = "Titanic Leggings",
  profession = "Blacksmithing",
  spellID = 27829,
  yield = 1,
  materials = {
    { itemID = 12360, count = 12 },
    { itemID = 12655, count = 20 },
    { itemID = 7076, count = 10 },
    { itemID = 13510, count = 2 },
  }
}

MT_RecipeDB[22383] = { -- Sageblade
  name = "Sageblade",
  profession = "Blacksmithing",
  spellID = 27832,
  yield = 1,
  materials = {
    { itemID = 12360, count = 12 },
    { itemID = 20725, count = 2 },
    { itemID = 13512, count = 2 },
    { itemID = 12810, count = 4 },
  }
}

MT_RecipeDB[22671] = { -- Icebane Bracers
  name = "Icebane Bracers",
  profession = "Blacksmithing",
  spellID = 28244,
  yield = 1,
  materials = {
    { itemID = 22682, count = 4 },
    { itemID = 12359, count = 12 },
    { itemID = 12360, count = 2 },
    { itemID = 7080, count = 2 },
  }
}

MT_RecipeDB[22669] = { -- Icebane Breastplate
  name = "Icebane Breastplate",
  profession = "Blacksmithing",
  spellID = 28242,
  yield = 1,
  materials = {
    { itemID = 22682, count = 7 },
    { itemID = 12359, count = 16 },
    { itemID = 12360, count = 2 },
    { itemID = 7080, count = 4 },
  }
}

MT_RecipeDB[22670] = { -- Icebane Gauntlets
  name = "Icebane Gauntlets",
  profession = "Blacksmithing",
  spellID = 28243,
  yield = 1,
  materials = {
    { itemID = 22682, count = 5 },
    { itemID = 12359, count = 12 },
    { itemID = 12360, count = 2 },
    { itemID = 7080, count = 2 },
  }
}

MT_RecipeDB[22762] = { -- Ironvine Breastplate
  name = "Ironvine Breastplate",
  profession = "Blacksmithing",
  spellID = 28461,
  yield = 1,
  materials = {
    { itemID = 12655, count = 12 },
    { itemID = 19726, count = 2 },
    { itemID = 12360, count = 2 },
    { itemID = 12803, count = 2 },
  }
}

MT_RecipeDB[22763] = { -- Ironvine Gloves
  name = "Ironvine Gloves",
  profession = "Blacksmithing",
  spellID = 28462,
  yield = 1,
  materials = {
    { itemID = 12655, count = 8 },
    { itemID = 19726, count = 1 },
    { itemID = 12803, count = 2 },
  }
}

MT_RecipeDB[22764] = { -- Ironvine Belt
  name = "Ironvine Belt",
  profession = "Blacksmithing",
  spellID = 28463,
  yield = 1,
  materials = {
    { itemID = 12655, count = 6 },
    { itemID = 12803, count = 2 },
  }
}

MT_RecipeDB[46600] = { -- Lordaeron Breastplate
  name = "Lordaeron Breastplate",
  profession = "Blacksmithing",
  spellID = 46600,
  yield = 1,
  materials = {
    { itemID = 2840, count = 16 },
    { itemID = 818, count = 2 },
    { itemID = 3470, count = 3 },
  }
}

MT_RecipeDB[83410] = { -- Steel Plate Boots
  name = "Steel Plate Boots",
  profession = "Blacksmithing",
  spellID = 46626,
  yield = 1,
  materials = {
    { itemID = 3859, count = 14 },
    { itemID = 7966, count = 2 },
  }
}

MT_RecipeDB[83411] = { -- Steel Plate Gauntlets
  name = "Steel Plate Gauntlets",
  profession = "Blacksmithing",
  spellID = 46627,
  yield = 1,
  materials = {
    { itemID = 3859, count = 16 },
    { itemID = 7966, count = 4 },
  }
}

MT_RecipeDB[83412] = { -- Steel Plate Legguards
  name = "Steel Plate Legguards",
  profession = "Blacksmithing",
  spellID = 46628,
  yield = 1,
  materials = {
    { itemID = 3859, count = 18 },
    { itemID = 7966, count = 2 },
    { itemID = 3864, count = 1 },
  }
}

MT_RecipeDB[83413] = { -- Steel Plate Armor
  name = "Steel Plate Armor",
  profession = "Blacksmithing",
  spellID = 46629,
  yield = 1,
  materials = {
    { itemID = 3859, count = 20 },
    { itemID = 7966, count = 4 },
    { itemID = 3864, count = 1 },
    { itemID = 1705, count = 1 },
  }
}

MT_RecipeDB[83414] = { -- Steel Plate Pauldrons
  name = "Steel Plate Pauldrons",
  profession = "Blacksmithing",
  spellID = 46630,
  yield = 1,
  materials = {
    { itemID = 3859, count = 20 },
    { itemID = 7966, count = 3 },
    { itemID = 3864, count = 1 },
    { itemID = 6037, count = 1 },
  }
}

MT_RecipeDB[83415] = { -- Steel Plate Barbute
  name = "Steel Plate Barbute",
  profession = "Blacksmithing",
  spellID = 46631,
  yield = 1,
  materials = {
    { itemID = 3859, count = 10 },
    { itemID = 6037, count = 8 },
    { itemID = 3864, count = 4 },
    { itemID = 7966, count = 3 },
    { itemID = 7909, count = 2 },
    { itemID = 7922, count = 1 },
  }
}

MT_RecipeDB[60294] = { -- Bloodstone Warblade
  name = "Bloodstone Warblade",
  profession = "Blacksmithing",
  spellID = 46651,
  yield = 1,
  materials = {
    { itemID = 3860, count = 14 },
    { itemID = 4278, count = 10 },
    { itemID = 7966, count = 4 },
    { itemID = 3864, count = 2 },
  }
}

MT_RecipeDB[60293] = { -- Untempered Runeblade
  name = "Untempered Runeblade",
  profession = "Blacksmithing",
  spellID = 46652,
  yield = 1,
  materials = {
    { itemID = 12655, count = 25 },
    { itemID = 12808, count = 10 },
    { itemID = 20520, count = 8 },
    { itemID = 12810, count = 2 },
    { itemID = 12644, count = 6 },
    { itemID = 12364, count = 1 },
  }
}

MT_RecipeDB[60573] = { -- Hateforge Helmet
  name = "Hateforge Helmet",
  profession = "Blacksmithing",
  spellID = 47029,
  yield = 1,
  materials = {
    { itemID = 12359, count = 16 },
    { itemID = 11371, count = 1 },
    { itemID = 11754, count = 6 },
    { itemID = 7078, count = 1 },
  }
}

MT_RecipeDB[65004] = { -- Ornate Bloodstone Dagger
  name = "Ornate Bloodstone Dagger",
  profession = "Blacksmithing",
  spellID = 46657,
  yield = 1,
  materials = {
    { itemID = 12360, count = 14 },
    { itemID = 3577, count = 6 },
    { itemID = 12938, count = 1 },
    { itemID = 11752, count = 1 },
    { itemID = 8846, count = 10 },
    { itemID = 11382, count = 2 },
    { itemID = 12644, count = 4 },
  }
}

MT_RecipeDB[65005] = { -- Bloodletter Razor
  name = "Bloodletter Razor",
  profession = "Blacksmithing",
  spellID = 46658,
  yield = 1,
  materials = {
    { itemID = 3860, count = 24 },
    { itemID = 6037, count = 10 },
    { itemID = 7910, count = 8 },
    { itemID = 4304, count = 4 },
    { itemID = 7966, count = 6 },
  }
}

MT_RecipeDB[65007] = { -- Imperial Plate Gauntlets
  name = "Imperial Plate Gauntlets",
  profession = "Blacksmithing",
  spellID = 46660,
  yield = 1,
  materials = {
    { itemID = 12359, count = 24 },
    { itemID = 7910, count = 1 },
    { itemID = 8170, count = 4 },
  }
}

MT_RecipeDB[65008] = { -- Dream
  name = "Dream",
  profession = "Blacksmithing",
  spellID = 46661,
  yield = 1,
  materials = {
    { itemID = 12360, count = 14 },
    { itemID = 20002, count = 10 },
    { itemID = 9197, count = 20 },
    { itemID = 12803, count = 10 },
    { itemID = 12364, count = 10 },
    { itemID = 12644, count = 4 },
  }
}

MT_RecipeDB[65010] = { -- Copper Knuckles
  name = "Copper Knuckles",
  profession = "Blacksmithing",
  spellID = 46663,
  yield = 1,
  materials = {
    { itemID = 2840, count = 8 },
    { itemID = 3470, count = 2 },
  }
}

MT_RecipeDB[65011] = { -- Sharpened Claw
  name = "Sharpened Claw",
  profession = "Blacksmithing",
  spellID = 46664,
  yield = 1,
  materials = {
    { itemID = 2840, count = 8 },
    { itemID = 3470, count = 4 },
    { itemID = 2880, count = 4 },
  }
}

MT_RecipeDB[65012] = { -- Bronze Bruiser
  name = "Bronze Bruiser",
  profession = "Blacksmithing",
  spellID = 46665,
  yield = 1,
  materials = {
    { itemID = 2841, count = 6 },
    { itemID = 1705, count = 2 },
    { itemID = 3466, count = 2 },
    { itemID = 3478, count = 4 },
    { itemID = 3391, count = 2 },
  }
}

MT_RecipeDB[65013] = { -- Frostbound Slasher
  name = "Frostbound Slasher",
  profession = "Blacksmithing",
  spellID = 46666,
  yield = 1,
  materials = {
    { itemID = 3859, count = 10 },
    { itemID = 3486, count = 4 },
    { itemID = 3466, count = 4 },
    { itemID = 3829, count = 2 },
    { itemID = 7070, count = 4 },
  }
}

MT_RecipeDB[65014] = { -- Pauldron of Deflection
  name = "Pauldron of Deflection",
  profession = "Blacksmithing",
  spellID = 46667,
  yield = 1,
  materials = {
    { itemID = 11371, count = 10 },
    { itemID = 12360, count = 10 },
    { itemID = 12809, count = 8 },
    { itemID = 22203, count = 4 },
    { itemID = 7076, count = 6 },
  }
}

MT_RecipeDB[60288] = { -- Rune-Etched Greaves
  name = "Rune-Etched Greaves",
  profession = "Blacksmithing",
  spellID = 47021,
  yield = 1,
  materials = {
    { itemID = 12359, count = 20 },
    { itemID = 12655, count = 2 },
    { itemID = 20520, count = 2 },
    { itemID = 12810, count = 1 },
    { itemID = 12361, count = 1 },
  }
}

MT_RecipeDB[60289] = { -- Rune-Etched Legplates
  name = "Rune-Etched Legplates",
  profession = "Blacksmithing",
  spellID = 47022,
  yield = 1,
  materials = {
    { itemID = 12359, count = 24 },
    { itemID = 12655, count = 6 },
    { itemID = 20520, count = 4 },
    { itemID = 12810, count = 2 },
    { itemID = 12800, count = 1 },
  }
}

MT_RecipeDB[60290] = { -- Rune-Etched Breastplate
  name = "Rune-Etched Breastplate",
  profession = "Blacksmithing",
  spellID = 47023,
  yield = 1,
  materials = {
    { itemID = 12359, count = 24 },
    { itemID = 12655, count = 4 },
    { itemID = 20520, count = 4 },
    { itemID = 12810, count = 2 },
    { itemID = 12644, count = 1 },
    { itemID = 7910, count = 1 },
  }
}

MT_RecipeDB[60291] = { -- Rune-Etched Crown
  name = "Rune-Etched Crown",
  profession = "Blacksmithing",
  spellID = 47024,
  yield = 1,
  materials = {
    { itemID = 12359, count = 16 },
    { itemID = 12655, count = 2 },
    { itemID = 20520, count = 2 },
    { itemID = 7080, count = 1 },
  }
}

MT_RecipeDB[60292] = { -- Rune-Etched Mantle
  name = "Rune-Etched Mantle",
  profession = "Blacksmithing",
  spellID = 47025,
  yield = 1,
  materials = {
    { itemID = 12359, count = 14 },
    { itemID = 12655, count = 2 },
    { itemID = 20520, count = 3 },
    { itemID = 12810, count = 1 },
    { itemID = 7076, count = 1 },
  }
}

MT_RecipeDB[60287] = { -- Rune-Etched Grips
  name = "Rune-Etched Grips",
  profession = "Blacksmithing",
  spellID = 47026,
  yield = 1,
  materials = {
    { itemID = 12359, count = 12 },
    { itemID = 12655, count = 2 },
    { itemID = 20520, count = 2 },
    { itemID = 12810, count = 2 },
  }
}

MT_RecipeDB[55526] = { -- Otherworldly Coif
  name = "Otherworldly Coif",
  profession = "Blacksmithing",
  spellID = 57617,
  yield = 1,
  materials = {
    { itemID = 15407, count = 1 },
    { itemID = 12360, count = 1 },
    { itemID = 61673, count = 6 },
    { itemID = 12607, count = 1 },
  }
}

MT_RecipeDB[55527] = { -- Otherworldly Spaulders
  name = "Otherworldly Spaulders",
  profession = "Blacksmithing",
  spellID = 57619,
  yield = 1,
  materials = {
    { itemID = 15407, count = 1 },
    { itemID = 12360, count = 1 },
    { itemID = 61673, count = 5 },
    { itemID = 12607, count = 3 },
  }
}

MT_RecipeDB[55528] = { -- Otherworldly Breastplate
  name = "Otherworldly Breastplate",
  profession = "Blacksmithing",
  spellID = 57621,
  yield = 1,
  materials = {
    { itemID = 15407, count = 2 },
    { itemID = 12360, count = 1 },
    { itemID = 61673, count = 6 },
    { itemID = 12607, count = 2 },
  }
}

MT_RecipeDB[55529] = { -- Otherworldly Leggings
  name = "Otherworldly Leggings",
  profession = "Blacksmithing",
  spellID = 57623,
  yield = 1,
  materials = {
    { itemID = 15407, count = 2 },
    { itemID = 12360, count = 1 },
    { itemID = 61673, count = 7 },
    { itemID = 12607, count = 2 },
  }
}

MT_RecipeDB[55530] = { -- Reflective Helmet
  name = "Reflective Helmet",
  profession = "Blacksmithing",
  spellID = 57625,
  yield = 1,
  materials = {
    { itemID = 12360, count = 2 },
    { itemID = 12655, count = 7 },
    { itemID = 61673, count = 6 },
  }
}

MT_RecipeDB[55531] = { -- Reflective Pauldrons
  name = "Reflective Pauldrons",
  profession = "Blacksmithing",
  spellID = 57627,
  yield = 1,
  materials = {
    { itemID = 12360, count = 2 },
    { itemID = 12655, count = 9 },
    { itemID = 61673, count = 7 },
  }
}

MT_RecipeDB[55532] = { -- Reflective Breastplate
  name = "Reflective Breastplate",
  profession = "Blacksmithing",
  spellID = 57629,
  yield = 1,
  materials = {
    { itemID = 12360, count = 2 },
    { itemID = 12655, count = 10 },
    { itemID = 61673, count = 5 },
  }
}

MT_RecipeDB[55533] = { -- Reflective Leggings
  name = "Reflective Leggings",
  profession = "Blacksmithing",
  spellID = 57631,
  yield = 1,
  materials = {
    { itemID = 12360, count = 2 },
    { itemID = 12655, count = 12 },
    { itemID = 61673, count = 7 },
  }
}

MT_RecipeDB[60574] = { -- Hateforge Cuirass
  name = "Hateforge Cuirass",
  profession = "Blacksmithing",
  spellID = 47030,
  yield = 1,
  materials = {
    { itemID = 12359, count = 24 },
    { itemID = 11371, count = 1 },
    { itemID = 11754, count = 12 },
    { itemID = 8170, count = 6 },
    { itemID = 20520, count = 2 },
    { itemID = 7078, count = 2 },
  }
}

MT_RecipeDB[60575] = { -- Hateforge Leggings
  name = "Hateforge Leggings",
  profession = "Blacksmithing",
  spellID = 47031,
  yield = 1,
  materials = {
    { itemID = 12359, count = 20 },
    { itemID = 11371, count = 1 },
    { itemID = 11754, count = 8 },
    { itemID = 7078, count = 2 },
    { itemID = 8170, count = 4 },
  }
}

MT_RecipeDB[60576] = { -- Hateforge Belt
  name = "Hateforge Belt",
  profession = "Blacksmithing",
  spellID = 47032,
  yield = 1,
  materials = {
    { itemID = 12359, count = 12 },
    { itemID = 7078, count = 2 },
    { itemID = 11754, count = 5 },
    { itemID = 12810, count = 1 },
  }
}

MT_RecipeDB[60577] = { -- Hateforge Grips
  name = "Hateforge Grips",
  profession = "Blacksmithing",
  spellID = 47033,
  yield = 1,
  materials = {
    { itemID = 12359, count = 40 },
    { itemID = 11371, count = 8 },
    { itemID = 11754, count = 18 },
    { itemID = 12810, count = 8 },
    { itemID = 7078, count = 8 },
  }
}

MT_RecipeDB[60578] = { -- Hateforge Boots
  name = "Hateforge Boots",
  profession = "Blacksmithing",
  spellID = 47034,
  yield = 1,
  materials = {
    { itemID = 12359, count = 12 },
    { itemID = 7077, count = 7 },
    { itemID = 11754, count = 5 },
    { itemID = 12810, count = 3 },
    { itemID = 7078, count = 2 },
  }
}

MT_RecipeDB[60908] = { -- Mantle of Centaur Authority
  name = "Mantle of Centaur Authority",
  profession = "Blacksmithing",
  spellID = 57026,
  yield = 1,
  materials = {
    { itemID = 12359, count = 40 },
    { itemID = 12810, count = 6 },
    { itemID = 7082, count = 6 },
    { itemID = 7076, count = 6 },
    { itemID = 3577, count = 2 },
  }
}

MT_RecipeDB[61182] = { -- Thorium Spurs
  name = "Thorium Spurs",
  profession = "Blacksmithing",
  spellID = 57113,
  yield = 1,
  materials = {
    { itemID = 7081, count = 1 },
    { itemID = 12359, count = 8 },
    { itemID = 12644, count = 2 },
    { itemID = 61673, count = 1 },
  }
}

MT_RecipeDB[61364] = { -- Dreamsteel Mantle
  name = "Dreamsteel Mantle",
  profession = "Blacksmithing",
  spellID = 45465,
  yield = 1,
  materials = {
    { itemID = 61216, count = 20 },
    { itemID = 12810, count = 12 },
    { itemID = 12360, count = 8 },
    { itemID = 12799, count = 8 },
    { itemID = 12644, count = 8 },
    { itemID = 12800, count = 2 },
  }
}

MT_RecipeDB[61365] = { -- Dreamsteel Leggings
  name = "Dreamsteel Leggings",
  profession = "Blacksmithing",
  spellID = 45467,
  yield = 1,
  materials = {
    { itemID = 61216, count = 14 },
    { itemID = 12810, count = 8 },
    { itemID = 12655, count = 8 },
    { itemID = 12364, count = 8 },
  }
}

MT_RecipeDB[61366] = { -- Dreamsteel Bracers
  name = "Dreamsteel Bracers",
  profession = "Blacksmithing",
  spellID = 45469,
  yield = 1,
  materials = {
    { itemID = 61216, count = 8 },
    { itemID = 12810, count = 4 },
    { itemID = 12655, count = 4 },
    { itemID = 12644, count = 4 },
  }
}

MT_RecipeDB[61367] = { -- Dreamsteel Boots
  name = "Dreamsteel Boots",
  profession = "Blacksmithing",
  spellID = 45471,
  yield = 1,
  materials = {
    { itemID = 61216, count = 8 },
    { itemID = 12810, count = 8 },
    { itemID = 12655, count = 8 },
    { itemID = 12644, count = 2 },
    { itemID = 12800, count = 2 },
  }
}

MT_RecipeDB[61185] = { -- Dawnstone Hammer
  name = "Dawnstone Hammer",
  profession = "Blacksmithing",
  spellID = 45487,
  yield = 1,
  materials = {
    { itemID = 12360, count = 16 },
    { itemID = 12811, count = 6 },
    { itemID = 12800, count = 6 },
    { itemID = 12810, count = 6 },
    { itemID = 13926, count = 6 },
    { itemID = 12644, count = 10 },
  }
}

MT_RecipeDB[61216] = { -- Dreamsteel
  name = "Dreamsteel",
  profession = "Blacksmithing",
  spellID = 57121,
  yield = 1,
  materials = {
    { itemID = 61199, count = 1 },
    { itemID = 3859, count = 1 },
    { itemID = 20381, count = 1 },
  }
}

MT_RecipeDB[60007] = { -- Towerforge Crown
  name = "Towerforge Crown",
  profession = "Blacksmithing",
  spellID = 57187,
  yield = 1,
  materials = {
    { itemID = 12655, count = 12 },
    { itemID = 12360, count = 14 },
    { itemID = 11371, count = 10 },
    { itemID = 61673, count = 6 },
    { itemID = 3824, count = 8 },
  }
}

MT_RecipeDB[60008] = { -- Towerforge Breastplate
  name = "Towerforge Breastplate",
  profession = "Blacksmithing",
  spellID = 57189,
  yield = 1,
  materials = {
    { itemID = 12655, count = 12 },
    { itemID = 12360, count = 12 },
    { itemID = 11371, count = 12 },
    { itemID = 61673, count = 6 },
    { itemID = 22202, count = 6 },
  }
}

MT_RecipeDB[60009] = { -- Towerforge Pauldrons
  name = "Towerforge Pauldrons",
  profession = "Blacksmithing",
  spellID = 57191,
  yield = 1,
  materials = {
    { itemID = 12655, count = 10 },
    { itemID = 12360, count = 10 },
    { itemID = 11371, count = 8 },
    { itemID = 61673, count = 4 },
    { itemID = 12800, count = 4 },
  }
}

MT_RecipeDB[60010] = { -- Towerforge Demolisher
  name = "Towerforge Demolisher",
  profession = "Blacksmithing",
  spellID = 57193,
  yield = 1,
  materials = {
    { itemID = 12655, count = 12 },
    { itemID = 12360, count = 14 },
    { itemID = 11371, count = 14 },
    { itemID = 61673, count = 8 },
    { itemID = 22203, count = 2 },
    { itemID = 18335, count = 1 },
  }
}

MT_RecipeDB[61779] = { -- Copper Belt Buckle
  name = "Copper Belt Buckle",
  profession = "Blacksmithing",
  spellID = 57163,
  yield = 1,
  materials = {
    { itemID = 2840, count = 8 },
    { itemID = 2880, count = 1 },
    { itemID = 3470, count = 2 },
  }
}

MT_RecipeDB[61780] = { -- Bronze Belt Buckle
  name = "Bronze Belt Buckle",
  profession = "Blacksmithing",
  spellID = 57166,
  yield = 1,
  materials = {
    { itemID = 2841, count = 8 },
    { itemID = 2880, count = 1 },
    { itemID = 3478, count = 2 },
  }
}

MT_RecipeDB[61781] = { -- Iron Belt Buckle
  name = "Iron Belt Buckle",
  profession = "Blacksmithing",
  spellID = 57169,
  yield = 1,
  materials = {
    { itemID = 3575, count = 8 },
    { itemID = 7071, count = 1 },
    { itemID = 3486, count = 2 },
  }
}

MT_RecipeDB[61782] = { -- Mithril Belt Buckle
  name = "Mithril Belt Buckle",
  profession = "Blacksmithing",
  spellID = 57172,
  yield = 1,
  materials = {
    { itemID = 3860, count = 8 },
    { itemID = 7071, count = 1 },
    { itemID = 7966, count = 2 },
    { itemID = 6037, count = 1 },
  }
}

MT_RecipeDB[61783] = { -- Thorium Belt Buckle
  name = "Thorium Belt Buckle",
  profession = "Blacksmithing",
  spellID = 57175,
  yield = 1,
  materials = {
    { itemID = 12359, count = 8 },
    { itemID = 7071, count = 1 },
    { itemID = 12644, count = 2 },
    { itemID = 6037, count = 1 },
  }
}

MT_RecipeDB[61784] = { -- Arcanite Belt Buckle
  name = "Arcanite Belt Buckle",
  profession = "Blacksmithing",
  spellID = 57178,
  yield = 1,
  materials = {
    { itemID = 12360, count = 2 },
    { itemID = 7071, count = 1 },
    { itemID = 12644, count = 2 },
    { itemID = 11754, count = 1 },
    { itemID = 12361, count = 1 },
  }
}

MT_RecipeDB[61785] = { -- Dreamsteel Belt Buckle
  name = "Dreamsteel Belt Buckle",
  profession = "Blacksmithing",
  spellID = 57181,
  yield = 1,
  materials = {
    { itemID = 61216, count = 2 },
    { itemID = 12644, count = 2 },
    { itemID = 7076, count = 1 },
    { itemID = 12803, count = 1 },
  }
}

MT_RecipeDB[61810] = { -- Bloody Belt Buckle
  name = "Bloody Belt Buckle",
  profession = "Blacksmithing",
  spellID = 57196,
  yield = 1,
  materials = {
    { itemID = 12359, count = 10 },
    { itemID = 19933, count = 6 },
    { itemID = 8846, count = 6 },
  }
}

MT_RecipeDB[61648] = { -- Fury of the Timbermaw
  name = "Fury of the Timbermaw",
  profession = "Blacksmithing",
  spellID = 54003,
  yield = 1,
  materials = {
    { itemID = 12359, count = 16 },
    { itemID = 7076, count = 3 },
    { itemID = 7078, count = 3 },
  }
}

MT_RecipeDB[61649] = { -- Pauldrons of the Timbermaw
  name = "Pauldrons of the Timbermaw",
  profession = "Blacksmithing",
  spellID = 54005,
  yield = 1,
  materials = {
    { itemID = 12655, count = 12 },
    { itemID = 12360, count = 2 },
    { itemID = 7076, count = 6 },
    { itemID = 7078, count = 6 },
  }
}

MT_RecipeDB[65039] = { -- Fiery Chain Breastplate
  name = "Fiery Chain Breastplate",
  profession = "Blacksmithing",
  spellID = 54009,
  yield = 1,
  materials = {
    { itemID = 11371, count = 14 },
    { itemID = 17010, count = 6 },
    { itemID = 17011, count = 5 },
  }
}

MT_RecipeDB[51264] = { -- Blast Shield
  name = "Blast Shield",
  profession = "Blacksmithing",
  spellID = 45063,
  yield = 1,
  materials = {
    { itemID = 2840, count = 12 },
    { itemID = 3470, count = 2 },
    { itemID = 818, count = 2 },
  }
}

MT_RecipeDB[131] = { -- Steel Belt Buckle
  name = "Steel Belt Buckle",
  profession = "Blacksmithing",
  spellID = 57,
  yield = 1,
  materials = {
    { itemID = 3859, count = 8 },
    { itemID = 7071, count = 1 },
    { itemID = 7966, count = 1 },
  }
}

MT_RecipeDB[66] = { -- Gold Belt Buckle
  name = "Gold Belt Buckle",
  profession = "Blacksmithing",
  spellID = 69,
  yield = 1,
  materials = {
    { itemID = 3577, count = 8 },
    { itemID = 7071, count = 1 },
    { itemID = 3486, count = 2 },
  }
}

MT_RecipeDB[67] = { -- Dragonscale Belt Buckle
  name = "Dragonscale Belt Buckle",
  profession = "Blacksmithing",
  spellID = 74,
  yield = 1,
  materials = {
    { itemID = 12359, count = 4 },
    { itemID = 7071, count = 1 },
    { itemID = 8165, count = 14 },
    { itemID = 7966, count = 1 },
  }
}

MT_RecipeDB[82] = { -- Dark Iron Belt Buckle
  name = "Dark Iron Belt Buckle",
  profession = "Blacksmithing",
  spellID = 85,
  yield = 1,
  materials = {
    { itemID = 11371, count = 2 },
    { itemID = 7071, count = 1 },
    { itemID = 7078, count = 1 },
    { itemID = 12644, count = 2 },
  }
}

MT_RecipeDB[151] = { -- Truesilver Belt Buckle
  name = "Truesilver Belt Buckle",
  profession = "Blacksmithing",
  spellID = 90,
  yield = 1,
  materials = {
    { itemID = 6037, count = 8 },
    { itemID = 7071, count = 1 },
    { itemID = 7966, count = 2 },
  }
}

MT_RecipeDB[87] = { -- Enchanted Thorium Belt Buckle
  name = "Enchanted Thorium Belt Buckle",
  profession = "Blacksmithing",
  spellID = 95,
  yield = 1,
  materials = {
    { itemID = 12655, count = 2 },
    { itemID = 7071, count = 1 },
    { itemID = 61673, count = 2 },
    { itemID = 12644, count = 1 },
  }
}

MT_RecipeDB[103] = { -- Obsidian Belt Buckle
  name = "Obsidian Belt Buckle",
  profession = "Blacksmithing",
  spellID = 102,
  yield = 1,
  materials = {
    { itemID = 22203, count = 2 },
    { itemID = 7071, count = 1 },
    { itemID = 7076, count = 1 },
    { itemID = 7082, count = 1 },
    { itemID = 12644, count = 2 },
  }
}

MT_RecipeDB[55058] = { -- Rune-Inscribed Plate Leggings
  name = "Rune-Inscribed Plate Leggings",
  profession = "Blacksmithing",
  spellID = 36907,
  yield = 1,
  materials = {
    { itemID = 12360, count = 3 },
    { itemID = 12655, count = 12 },
    { itemID = 12799, count = 4 },
    { itemID = 13926, count = 4 },
    { itemID = 14341, count = 8 },
    { itemID = 7080, count = 6 },
  }
}

MT_RecipeDB[6218] = { -- Runed Copper Rod
  name = "Runed Copper Rod",
  profession = "Enchanting",
  spellID = 7421,
  yield = 1,
  materials = {
    { itemID = 6217, count = 1 },
    { itemID = 10940, count = 1 },
    { itemID = 10938, count = 1 },
  }
}

MT_RecipeDB[6339] = { -- Runed Silver Rod
  name = "Runed Silver Rod",
  profession = "Enchanting",
  spellID = 7795,
  yield = 1,
  materials = {
    { itemID = 6338, count = 1 },
    { itemID = 10940, count = 6 },
    { itemID = 10939, count = 3 },
    { itemID = 1210, count = 1 },
  }
}

MT_RecipeDB[11130] = { -- Runed Golden Rod
  name = "Runed Golden Rod",
  profession = "Enchanting",
  spellID = 13628,
  yield = 1,
  materials = {
    { itemID = 11128, count = 1 },
    { itemID = 5500, count = 1 },
    { itemID = 11082, count = 2 },
    { itemID = 11083, count = 2 },
  }
}

MT_RecipeDB[11145] = { -- Runed Truesilver Rod
  name = "Runed Truesilver Rod",
  profession = "Enchanting",
  spellID = 13702,
  yield = 1,
  materials = {
    { itemID = 11144, count = 1 },
    { itemID = 7971, count = 1 },
    { itemID = 11135, count = 2 },
    { itemID = 11137, count = 2 },
  }
}

MT_RecipeDB[11287] = { -- Lesser Magic Wand
  name = "Lesser Magic Wand",
  profession = "Enchanting",
  spellID = 14293,
  yield = 1,
  materials = {
    { itemID = 4470, count = 1 },
    { itemID = 10938, count = 1 },
  }
}

MT_RecipeDB[11288] = { -- Greater Magic Wand
  name = "Greater Magic Wand",
  profession = "Enchanting",
  spellID = 14807,
  yield = 1,
  materials = {
    { itemID = 4470, count = 1 },
    { itemID = 10939, count = 1 },
  }
}

MT_RecipeDB[11289] = { -- Lesser Mystic Wand
  name = "Lesser Mystic Wand",
  profession = "Enchanting",
  spellID = 14809,
  yield = 1,
  materials = {
    { itemID = 11291, count = 1 },
    { itemID = 11134, count = 1 },
    { itemID = 11083, count = 1 },
  }
}

MT_RecipeDB[11290] = { -- Greater Mystic Wand
  name = "Greater Mystic Wand",
  profession = "Enchanting",
  spellID = 14810,
  yield = 1,
  materials = {
    { itemID = 11291, count = 1 },
    { itemID = 11135, count = 1 },
    { itemID = 11137, count = 1 },
  }
}

MT_RecipeDB[11811] = { -- Smoking Heart of the Mountain
  name = "Smoking Heart of the Mountain",
  profession = "Enchanting",
  spellID = 15596,
  yield = 1,
  materials = {
    { itemID = 11382, count = 1 },
    { itemID = 7078, count = 1 },
    { itemID = 14343, count = 3 },
  }
}

MT_RecipeDB[12810] = { -- Enchanted Leather
  name = "Enchanted Leather",
  profession = "Enchanting",
  spellID = 17181,
  yield = 1,
  materials = {
    { itemID = 8170, count = 1 },
    { itemID = 16202, count = 1 },
  }
}

MT_RecipeDB[12655] = { -- Enchanted Thorium
  name = "Enchanted Thorium",
  profession = "Enchanting",
  spellID = 17180,
  yield = 1,
  materials = {
    { itemID = 12359, count = 1 },
    { itemID = 11176, count = 3 },
  }
}

MT_RecipeDB[16207] = { -- Runed Arcanite Rod
  name = "Runed Arcanite Rod",
  profession = "Enchanting",
  spellID = 20051,
  yield = 1,
  materials = {
    { itemID = 16206, count = 1 },
    { itemID = 13926, count = 1 },
    { itemID = 16204, count = 10 },
    { itemID = 16203, count = 4 },
    { itemID = 14343, count = 4 },
    { itemID = 14344, count = 2 },
  }
}

MT_RecipeDB[17968] = { -- Charged Scale of Onyxia
  name = "Charged Scale of Onyxia",
  profession = "Enchanting",
  spellID = 22434,
  yield = 1,
  materials = {
    { itemID = 17967, count = 1 },
    { itemID = 16204, count = 2 },
    { itemID = 16203, count = 2 },
  }
}

MT_RecipeDB[20744] = { -- Minor Wizard Oil
  name = "Minor Wizard Oil",
  profession = "Enchanting",
  spellID = 25124,
  yield = 1,
  materials = {
    { itemID = 10940, count = 2 },
    { itemID = 17034, count = 1 },
    { itemID = 3371, count = 1 },
  }
}

MT_RecipeDB[20745] = { -- Minor Mana Oil
  name = "Minor Mana Oil",
  profession = "Enchanting",
  spellID = 25125,
  yield = 1,
  materials = {
    { itemID = 11083, count = 3 },
    { itemID = 17034, count = 2 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[20746] = { -- Lesser Wizard Oil
  name = "Lesser Wizard Oil",
  profession = "Enchanting",
  spellID = 25126,
  yield = 1,
  materials = {
    { itemID = 11137, count = 3 },
    { itemID = 17035, count = 2 },
    { itemID = 3372, count = 1 },
  }
}

MT_RecipeDB[20747] = { -- Lesser Mana Oil
  name = "Lesser Mana Oil",
  profession = "Enchanting",
  spellID = 25127,
  yield = 1,
  materials = {
    { itemID = 11176, count = 3 },
    { itemID = 8831, count = 2 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[20750] = { -- Wizard Oil
  name = "Wizard Oil",
  profession = "Enchanting",
  spellID = 25128,
  yield = 1,
  materials = {
    { itemID = 16204, count = 3 },
    { itemID = 4625, count = 2 },
    { itemID = 8925, count = 1 },
  }
}

MT_RecipeDB[20749] = { -- Brilliant Wizard Oil
  name = "Brilliant Wizard Oil",
  profession = "Enchanting",
  spellID = 25129,
  yield = 1,
  materials = {
    { itemID = 14344, count = 2 },
    { itemID = 4625, count = 3 },
    { itemID = 18256, count = 1 },
  }
}

MT_RecipeDB[20748] = { -- Brilliant Mana Oil
  name = "Brilliant Mana Oil",
  profession = "Enchanting",
  spellID = 25130,
  yield = 1,
  materials = {
    { itemID = 14344, count = 2 },
    { itemID = 8831, count = 3 },
    { itemID = 18256, count = 1 },
  }
}

MT_RecipeDB[55248] = { -- Enchanted Gemstone Oil
  name = "Enchanted Gemstone Oil",
  profession = "Enchanting",
  spellID = 41758,
  yield = 1,
  materials = {
    { itemID = 55247, count = 1 },
    { itemID = 16203, count = 1 },
    { itemID = 11175, count = 1 },
  }
}

MT_RecipeDB[61732] = { -- Eternal Dreamstone Shard
  name = "Eternal Dreamstone Shard",
  profession = "Enchanting",
  spellID = 57518,
  yield = 1,
  materials = {
    { itemID = 61197, count = 5 },
    { itemID = 61673, count = 25 },
    { itemID = 61199, count = 25 },
    { itemID = 20725, count = 10 },
    { itemID = 13468, count = 5 },
    { itemID = 12803, count = 80 },
  }
}

MT_RecipeDB[4357] = { -- Rough Blasting Powder
  name = "Rough Blasting Powder",
  profession = "Engineering",
  spellID = 3918,
  yield = 1,
  materials = {
    { itemID = 2835, count = 1 },
  }
}

MT_RecipeDB[4358] = { -- Rough Dynamite
  name = "Rough Dynamite",
  profession = "Engineering",
  spellID = 3919,
  yield = 1,
  materials = {
    { itemID = 4357, count = 2 },
    { itemID = 2589, count = 1 },
  }
}

MT_RecipeDB[8067] = { -- Crafted Light Shot
  name = "Crafted Light Shot",
  profession = "Engineering",
  spellID = 3920,
  yield = 1,
  materials = {
    { itemID = 4357, count = 1 },
    { itemID = 2840, count = 1 },
  }
}

MT_RecipeDB[4359] = { -- Handful of Copper Bolts
  name = "Handful of Copper Bolts",
  profession = "Engineering",
  spellID = 3922,
  yield = 1,
  materials = {
    { itemID = 2840, count = 1 },
  }
}

MT_RecipeDB[4360] = { -- Rough Copper Bomb
  name = "Rough Copper Bomb",
  profession = "Engineering",
  spellID = 3923,
  yield = 1,
  materials = {
    { itemID = 2840, count = 1 },
    { itemID = 4359, count = 1 },
    { itemID = 4357, count = 2 },
    { itemID = 2589, count = 1 },
  }
}

MT_RecipeDB[4361] = { -- Copper Tube
  name = "Copper Tube",
  profession = "Engineering",
  spellID = 3924,
  yield = 1,
  materials = {
    { itemID = 2840, count = 2 },
    { itemID = 2880, count = 1 },
  }
}

MT_RecipeDB[4362] = { -- Rough Boomstick
  name = "Rough Boomstick",
  profession = "Engineering",
  spellID = 3925,
  yield = 1,
  materials = {
    { itemID = 4361, count = 1 },
    { itemID = 4359, count = 1 },
    { itemID = 4399, count = 1 },
  }
}

MT_RecipeDB[4405] = { -- Crude Scope
  name = "Crude Scope",
  profession = "Engineering",
  spellID = 3977,
  yield = 1,
  materials = {
    { itemID = 4361, count = 1 },
    { itemID = 774, count = 1 },
    { itemID = 4359, count = 1 },
  }
}

MT_RecipeDB[4404] = { -- Silver Contact
  name = "Silver Contact",
  profession = "Engineering",
  spellID = 3973,
  yield = 1,
  materials = {
    { itemID = 2842, count = 1 },
  }
}

MT_RecipeDB[4363] = { -- Copper Modulator
  name = "Copper Modulator",
  profession = "Engineering",
  spellID = 3926,
  yield = 1,
  materials = {
    { itemID = 4359, count = 2 },
    { itemID = 2840, count = 1 },
    { itemID = 2589, count = 2 },
  }
}

MT_RecipeDB[4401] = { -- Mechanical Squirrel
  name = "Mechanical Squirrel",
  profession = "Engineering",
  spellID = 3928,
  yield = 1,
  materials = {
    { itemID = 4363, count = 1 },
    { itemID = 4359, count = 1 },
    { itemID = 2840, count = 1 },
    { itemID = 774, count = 2 },
  }
}

MT_RecipeDB[4364] = { -- Coarse Blasting Powder
  name = "Coarse Blasting Powder",
  profession = "Engineering",
  spellID = 3929,
  yield = 1,
  materials = {
    { itemID = 2836, count = 1 },
  }
}

MT_RecipeDB[8068] = { -- Crafted Heavy Shot
  name = "Crafted Heavy Shot",
  profession = "Engineering",
  spellID = 3930,
  yield = 1,
  materials = {
    { itemID = 4364, count = 1 },
    { itemID = 2840, count = 1 },
  }
}

MT_RecipeDB[4365] = { -- Coarse Dynamite
  name = "Coarse Dynamite",
  profession = "Engineering",
  spellID = 3931,
  yield = 1,
  materials = {
    { itemID = 4364, count = 3 },
    { itemID = 2589, count = 1 },
  }
}

MT_RecipeDB[4366] = { -- Target Dummy
  name = "Target Dummy",
  profession = "Engineering",
  spellID = 3932,
  yield = 1,
  materials = {
    { itemID = 4363, count = 1 },
    { itemID = 4359, count = 2 },
    { itemID = 2841, count = 1 },
    { itemID = 2592, count = 1 },
  }
}

MT_RecipeDB[4367] = { -- Small Seaforium Charge
  name = "Small Seaforium Charge",
  profession = "Engineering",
  spellID = 3933,
  yield = 1,
  materials = {
    { itemID = 4364, count = 2 },
    { itemID = 4363, count = 1 },
    { itemID = 2318, count = 1 },
    { itemID = 159, count = 1 },
  }
}

MT_RecipeDB[4368] = { -- Flying Tiger Goggles
  name = "Flying Tiger Goggles",
  profession = "Engineering",
  spellID = 3934,
  yield = 1,
  materials = {
    { itemID = 2318, count = 6 },
    { itemID = 818, count = 2 },
  }
}

MT_RecipeDB[4369] = { -- Deadly Blunderbuss
  name = "Deadly Blunderbuss",
  profession = "Engineering",
  spellID = 3936,
  yield = 1,
  materials = {
    { itemID = 4361, count = 2 },
    { itemID = 4359, count = 4 },
    { itemID = 4399, count = 1 },
    { itemID = 2319, count = 2 },
  }
}

MT_RecipeDB[4370] = { -- Large Copper Bomb
  name = "Large Copper Bomb",
  profession = "Engineering",
  spellID = 3937,
  yield = 1,
  materials = {
    { itemID = 2840, count = 3 },
    { itemID = 4364, count = 4 },
    { itemID = 4404, count = 1 },
  }
}

MT_RecipeDB[4371] = { -- Bronze Tube
  name = "Bronze Tube",
  profession = "Engineering",
  spellID = 3938,
  yield = 1,
  materials = {
    { itemID = 2841, count = 2 },
    { itemID = 2880, count = 1 },
  }
}

MT_RecipeDB[4406] = { -- Standard Scope
  name = "Standard Scope",
  profession = "Engineering",
  spellID = 3978,
  yield = 1,
  materials = {
    { itemID = 4371, count = 1 },
    { itemID = 1206, count = 1 },
  }
}

MT_RecipeDB[4372] = { -- Lovingly Crafted Boomstick
  name = "Lovingly Crafted Boomstick",
  profession = "Engineering",
  spellID = 3939,
  yield = 1,
  materials = {
    { itemID = 4371, count = 2 },
    { itemID = 4359, count = 2 },
    { itemID = 4400, count = 1 },
    { itemID = 1206, count = 3 },
  }
}

MT_RecipeDB[4373] = { -- Shadow Goggles
  name = "Shadow Goggles",
  profession = "Engineering",
  spellID = 3940,
  yield = 1,
  materials = {
    { itemID = 2319, count = 4 },
    { itemID = 1210, count = 2 },
  }
}

MT_RecipeDB[4374] = { -- Small Bronze Bomb
  name = "Small Bronze Bomb",
  profession = "Engineering",
  spellID = 3941,
  yield = 1,
  materials = {
    { itemID = 4364, count = 4 },
    { itemID = 2841, count = 2 },
    { itemID = 4404, count = 1 },
    { itemID = 2592, count = 1 },
  }
}

MT_RecipeDB[4375] = { -- Whirring Bronze Gizmo
  name = "Whirring Bronze Gizmo",
  profession = "Engineering",
  spellID = 3942,
  yield = 1,
  materials = {
    { itemID = 2841, count = 2 },
    { itemID = 2592, count = 1 },
  }
}

MT_RecipeDB[4376] = { -- Flame Deflector
  name = "Flame Deflector",
  profession = "Engineering",
  spellID = 3944,
  yield = 1,
  materials = {
    { itemID = 4375, count = 1 },
    { itemID = 4402, count = 1 },
  }
}

MT_RecipeDB[4377] = { -- Heavy Blasting Powder
  name = "Heavy Blasting Powder",
  profession = "Engineering",
  spellID = 3945,
  yield = 1,
  materials = {
    { itemID = 2838, count = 1 },
  }
}

MT_RecipeDB[4378] = { -- Heavy Dynamite
  name = "Heavy Dynamite",
  profession = "Engineering",
  spellID = 3946,
  yield = 1,
  materials = {
    { itemID = 4377, count = 2 },
    { itemID = 2592, count = 1 },
  }
}

MT_RecipeDB[8069] = { -- Crafted Solid Shot
  name = "Crafted Solid Shot",
  profession = "Engineering",
  spellID = 3947,
  yield = 1,
  materials = {
    { itemID = 4377, count = 1 },
    { itemID = 2841, count = 1 },
  }
}

MT_RecipeDB[4379] = { -- Silver-plated Shotgun
  name = "Silver-plated Shotgun",
  profession = "Engineering",
  spellID = 3949,
  yield = 1,
  materials = {
    { itemID = 4371, count = 2 },
    { itemID = 4375, count = 2 },
    { itemID = 4400, count = 1 },
    { itemID = 2842, count = 3 },
  }
}

MT_RecipeDB[4380] = { -- Big Bronze Bomb
  name = "Big Bronze Bomb",
  profession = "Engineering",
  spellID = 3950,
  yield = 1,
  materials = {
    { itemID = 4377, count = 2 },
    { itemID = 2841, count = 3 },
    { itemID = 4404, count = 1 },
  }
}

MT_RecipeDB[4381] = { -- Minor Recombobulator
  name = "Minor Recombobulator",
  profession = "Engineering",
  spellID = 3952,
  yield = 1,
  materials = {
    { itemID = 4371, count = 1 },
    { itemID = 4375, count = 2 },
    { itemID = 2319, count = 2 },
    { itemID = 1206, count = 1 },
  }
}

MT_RecipeDB[4382] = { -- Bronze Framework
  name = "Bronze Framework",
  profession = "Engineering",
  spellID = 3953,
  yield = 1,
  materials = {
    { itemID = 2841, count = 2 },
    { itemID = 2319, count = 1 },
    { itemID = 2592, count = 1 },
  }
}

MT_RecipeDB[4383] = { -- Moonsight Rifle
  name = "Moonsight Rifle",
  profession = "Engineering",
  spellID = 3954,
  yield = 1,
  materials = {
    { itemID = 4371, count = 3 },
    { itemID = 4375, count = 3 },
    { itemID = 4400, count = 1 },
    { itemID = 1705, count = 2 },
  }
}

MT_RecipeDB[4384] = { -- Explosive Sheep
  name = "Explosive Sheep",
  profession = "Engineering",
  spellID = 3955,
  yield = 1,
  materials = {
    { itemID = 4382, count = 1 },
    { itemID = 4375, count = 1 },
    { itemID = 4377, count = 2 },
    { itemID = 2592, count = 2 },
  }
}

MT_RecipeDB[4385] = { -- Green Tinted Goggles
  name = "Green Tinted Goggles",
  profession = "Engineering",
  spellID = 3956,
  yield = 1,
  materials = {
    { itemID = 2319, count = 4 },
    { itemID = 1206, count = 2 },
    { itemID = 4368, count = 1 },
  }
}

MT_RecipeDB[4386] = { -- Ice Deflector
  name = "Ice Deflector",
  profession = "Engineering",
  spellID = 3957,
  yield = 1,
  materials = {
    { itemID = 4375, count = 1 },
    { itemID = 3829, count = 1 },
  }
}

MT_RecipeDB[4387] = { -- Iron Strut
  name = "Iron Strut",
  profession = "Engineering",
  spellID = 3958,
  yield = 1,
  materials = {
    { itemID = 3575, count = 2 },
  }
}

MT_RecipeDB[4388] = { -- Discombobulator Ray
  name = "Discombobulator Ray",
  profession = "Engineering",
  spellID = 3959,
  yield = 1,
  materials = {
    { itemID = 4375, count = 3 },
    { itemID = 4306, count = 2 },
    { itemID = 1529, count = 1 },
    { itemID = 4371, count = 1 },
  }
}

MT_RecipeDB[4403] = { -- Portable Bronze Mortar
  name = "Portable Bronze Mortar",
  profession = "Engineering",
  spellID = 3960,
  yield = 1,
  materials = {
    { itemID = 4371, count = 4 },
    { itemID = 4387, count = 1 },
    { itemID = 4377, count = 4 },
    { itemID = 2319, count = 4 },
  }
}

MT_RecipeDB[4389] = { -- Gyrochronatom
  name = "Gyrochronatom",
  profession = "Engineering",
  spellID = 3961,
  yield = 1,
  materials = {
    { itemID = 3575, count = 1 },
    { itemID = 10558, count = 1 },
  }
}

MT_RecipeDB[4390] = { -- Iron Grenade
  name = "Iron Grenade",
  profession = "Engineering",
  spellID = 3962,
  yield = 1,
  materials = {
    { itemID = 3575, count = 1 },
    { itemID = 4377, count = 1 },
    { itemID = 4306, count = 1 },
  }
}

MT_RecipeDB[4391] = { -- Compact Harvest Reaper Kit
  name = "Compact Harvest Reaper Kit",
  profession = "Engineering",
  spellID = 3963,
  yield = 1,
  materials = {
    { itemID = 4387, count = 2 },
    { itemID = 4382, count = 1 },
    { itemID = 4389, count = 2 },
    { itemID = 4234, count = 4 },
  }
}

MT_RecipeDB[4407] = { -- Accurate Scope
  name = "Accurate Scope",
  profession = "Engineering",
  spellID = 3979,
  yield = 1,
  materials = {
    { itemID = 4371, count = 1 },
    { itemID = 1529, count = 1 },
    { itemID = 3864, count = 1 },
  }
}

MT_RecipeDB[4392] = { -- Advanced Target Dummy
  name = "Advanced Target Dummy",
  profession = "Engineering",
  spellID = 3965,
  yield = 1,
  materials = {
    { itemID = 4387, count = 1 },
    { itemID = 4382, count = 1 },
    { itemID = 4389, count = 1 },
    { itemID = 4234, count = 4 },
  }
}

MT_RecipeDB[4393] = { -- Craftsman
  name = "Craftsman",
  profession = "Engineering",
  spellID = 3966,
  yield = 1,
  materials = {
    { itemID = 4234, count = 6 },
    { itemID = 3864, count = 2 },
  }
}

MT_RecipeDB[4394] = { -- Big Iron Bomb
  name = "Big Iron Bomb",
  profession = "Engineering",
  spellID = 3967,
  yield = 1,
  materials = {
    { itemID = 3575, count = 3 },
    { itemID = 4377, count = 3 },
    { itemID = 4404, count = 1 },
  }
}

MT_RecipeDB[4395] = { -- Goblin Land Mine
  name = "Goblin Land Mine",
  profession = "Engineering",
  spellID = 3968,
  yield = 1,
  materials = {
    { itemID = 4377, count = 3 },
    { itemID = 3575, count = 2 },
    { itemID = 4389, count = 1 },
  }
}

MT_RecipeDB[4396] = { -- Mechanical Dragonling
  name = "Mechanical Dragonling",
  profession = "Engineering",
  spellID = 3969,
  yield = 1,
  materials = {
    { itemID = 4382, count = 1 },
    { itemID = 4387, count = 4 },
    { itemID = 4389, count = 4 },
    { itemID = 3864, count = 2 },
    { itemID = 7191, count = 1 },
  }
}

MT_RecipeDB[4397] = { -- Gnomish Cloaking Device
  name = "Gnomish Cloaking Device",
  profession = "Engineering",
  spellID = 3971,
  yield = 1,
  materials = {
    { itemID = 4389, count = 4 },
    { itemID = 1529, count = 2 },
    { itemID = 1705, count = 2 },
    { itemID = 3864, count = 2 },
    { itemID = 7191, count = 1 },
  }
}

MT_RecipeDB[4398] = { -- Large Seaforium Charge
  name = "Large Seaforium Charge",
  profession = "Engineering",
  spellID = 3972,
  yield = 1,
  materials = {
    { itemID = 10505, count = 2 },
    { itemID = 4234, count = 2 },
    { itemID = 159, count = 1 },
  }
}

MT_RecipeDB[5507] = { -- Ornate Spyglass
  name = "Ornate Spyglass",
  profession = "Engineering",
  spellID = 6458,
  yield = 1,
  materials = {
    { itemID = 4371, count = 2 },
    { itemID = 4375, count = 2 },
    { itemID = 4363, count = 1 },
    { itemID = 1206, count = 1 },
  }
}

MT_RecipeDB[6219] = { -- Arclight Spanner
  name = "Arclight Spanner",
  profession = "Engineering",
  spellID = 7430,
  yield = 1,
  materials = {
    { itemID = 2840, count = 6 },
  }
}

MT_RecipeDB[4852] = { -- Flash Bomb
  name = "Flash Bomb",
  profession = "Engineering",
  spellID = 8243,
  yield = 1,
  materials = {
    { itemID = 4611, count = 1 },
    { itemID = 4377, count = 1 },
    { itemID = 4306, count = 1 },
  }
}

MT_RecipeDB[6712] = { -- Practice Lock
  name = "Practice Lock",
  profession = "Engineering",
  spellID = 8334,
  yield = 1,
  materials = {
    { itemID = 2841, count = 1 },
    { itemID = 4359, count = 2 },
    { itemID = 2880, count = 1 },
  }
}

MT_RecipeDB[6714] = { -- EZ-Thro Dynamite
  name = "EZ-Thro Dynamite",
  profession = "Engineering",
  spellID = 8339,
  yield = 1,
  materials = {
    { itemID = 4364, count = 4 },
    { itemID = 2592, count = 1 },
  }
}

MT_RecipeDB[7189] = { -- Goblin Rocket Boots
  name = "Goblin Rocket Boots",
  profession = "Engineering",
  spellID = 8895,
  yield = 1,
  materials = {
    { itemID = 10026, count = 1 },
    { itemID = 10559, count = 2 },
    { itemID = 4234, count = 4 },
    { itemID = 9061, count = 2 },
    { itemID = 10560, count = 1 },
  }
}

MT_RecipeDB[7506] = { -- Gnomish Universal Remote
  name = "Gnomish Universal Remote",
  profession = "Engineering",
  spellID = 9269,
  yield = 1,
  materials = {
    { itemID = 2841, count = 6 },
    { itemID = 4375, count = 1 },
    { itemID = 814, count = 2 },
    { itemID = 818, count = 1 },
    { itemID = 774, count = 1 },
  }
}

MT_RecipeDB[6533] = { -- Aquadynamic Fish Attractor
  name = "Aquadynamic Fish Attractor",
  profession = "Engineering",
  spellID = 9271,
  yield = 1,
  materials = {
    { itemID = 2841, count = 2 },
    { itemID = 6530, count = 1 },
    { itemID = 4364, count = 1 },
  }
}

MT_RecipeDB[7148] = { -- Goblin Jumper Cables
  name = "Goblin Jumper Cables",
  profession = "Engineering",
  spellID = 9273,
  yield = 1,
  materials = {
    { itemID = 3575, count = 6 },
    { itemID = 4375, count = 2 },
    { itemID = 814, count = 2 },
    { itemID = 4306, count = 2 },
    { itemID = 1210, count = 2 },
    { itemID = 7191, count = 1 },
  }
}

MT_RecipeDB[10558] = { -- Gold Power Core
  name = "Gold Power Core",
  profession = "Engineering",
  spellID = 12584,
  yield = 1,
  materials = {
    { itemID = 3577, count = 1 },
  }
}

MT_RecipeDB[10505] = { -- Solid Blasting Powder
  name = "Solid Blasting Powder",
  profession = "Engineering",
  spellID = 12585,
  yield = 1,
  materials = {
    { itemID = 7912, count = 2 },
  }
}

MT_RecipeDB[10507] = { -- Solid Dynamite
  name = "Solid Dynamite",
  profession = "Engineering",
  spellID = 12586,
  yield = 1,
  materials = {
    { itemID = 10505, count = 1 },
    { itemID = 4306, count = 1 },
  }
}

MT_RecipeDB[10499] = { -- Bright-Eye Goggles
  name = "Bright-Eye Goggles",
  profession = "Engineering",
  spellID = 12587,
  yield = 1,
  materials = {
    { itemID = 4234, count = 6 },
    { itemID = 3864, count = 2 },
  }
}

MT_RecipeDB[10498] = { -- Gyromatic Micro-Adjustor
  name = "Gyromatic Micro-Adjustor",
  profession = "Engineering",
  spellID = 12590,
  yield = 1,
  materials = {
    { itemID = 3859, count = 4 },
  }
}

MT_RecipeDB[10559] = { -- Mithril Tube
  name = "Mithril Tube",
  profession = "Engineering",
  spellID = 12589,
  yield = 1,
  materials = {
    { itemID = 3860, count = 3 },
  }
}

MT_RecipeDB[10560] = { -- Unstable Trigger
  name = "Unstable Trigger",
  profession = "Engineering",
  spellID = 12591,
  yield = 1,
  materials = {
    { itemID = 3860, count = 1 },
    { itemID = 4338, count = 1 },
    { itemID = 10505, count = 1 },
  }
}

MT_RecipeDB[10500] = { -- Fire Goggles
  name = "Fire Goggles",
  profession = "Engineering",
  spellID = 12594,
  yield = 1,
  materials = {
    { itemID = 4385, count = 1 },
    { itemID = 3864, count = 2 },
    { itemID = 7068, count = 2 },
    { itemID = 4234, count = 4 },
  }
}

MT_RecipeDB[10508] = { -- Mithril Blunderbuss
  name = "Mithril Blunderbuss",
  profession = "Engineering",
  spellID = 12595,
  yield = 1,
  materials = {
    { itemID = 10559, count = 1 },
    { itemID = 10560, count = 1 },
    { itemID = 4400, count = 1 },
    { itemID = 3860, count = 4 },
    { itemID = 7068, count = 2 },
  }
}

MT_RecipeDB[10512] = { -- Hi-Impact Mithril Slugs
  name = "Hi-Impact Mithril Slugs",
  profession = "Engineering",
  spellID = 12596,
  yield = 1,
  materials = {
    { itemID = 3860, count = 1 },
    { itemID = 10505, count = 1 },
  }
}

MT_RecipeDB[10546] = { -- Deadly Scope
  name = "Deadly Scope",
  profession = "Engineering",
  spellID = 12597,
  yield = 1,
  materials = {
    { itemID = 10559, count = 1 },
    { itemID = 7909, count = 2 },
    { itemID = 4304, count = 2 },
  }
}

MT_RecipeDB[10561] = { -- Mithril Casing
  name = "Mithril Casing",
  profession = "Engineering",
  spellID = 12599,
  yield = 1,
  materials = {
    { itemID = 3860, count = 3 },
  }
}

MT_RecipeDB[10514] = { -- Mithril Frag Bomb
  name = "Mithril Frag Bomb",
  profession = "Engineering",
  spellID = 12603,
  yield = 1,
  materials = {
    { itemID = 10561, count = 1 },
    { itemID = 10560, count = 1 },
    { itemID = 10505, count = 1 },
  }
}

MT_RecipeDB[10501] = { -- Catseye Ultra Goggles
  name = "Catseye Ultra Goggles",
  profession = "Engineering",
  spellID = 12607,
  yield = 1,
  materials = {
    { itemID = 4304, count = 4 },
    { itemID = 7909, count = 2 },
    { itemID = 10592, count = 1 },
  }
}

MT_RecipeDB[10510] = { -- Mithril Heavy-bore Rifle
  name = "Mithril Heavy-bore Rifle",
  profession = "Engineering",
  spellID = 12614,
  yield = 1,
  materials = {
    { itemID = 10559, count = 2 },
    { itemID = 10560, count = 1 },
    { itemID = 4400, count = 1 },
    { itemID = 3860, count = 6 },
    { itemID = 3864, count = 2 },
  }
}

MT_RecipeDB[10502] = { -- Spellpower Goggles Xtreme
  name = "Spellpower Goggles Xtreme",
  profession = "Engineering",
  spellID = 12615,
  yield = 1,
  materials = {
    { itemID = 4304, count = 4 },
    { itemID = 7910, count = 2 },
  }
}

MT_RecipeDB[10518] = { -- Parachute Cloak
  name = "Parachute Cloak",
  profession = "Engineering",
  spellID = 12616,
  yield = 1,
  materials = {
    { itemID = 4339, count = 4 },
    { itemID = 10285, count = 2 },
    { itemID = 10560, count = 1 },
    { itemID = 10505, count = 4 },
  }
}

MT_RecipeDB[10506] = { -- Deepdive Helmet
  name = "Deepdive Helmet",
  profession = "Engineering",
  spellID = 12617,
  yield = 1,
  materials = {
    { itemID = 3860, count = 8 },
    { itemID = 10561, count = 1 },
    { itemID = 6037, count = 1 },
    { itemID = 818, count = 4 },
    { itemID = 774, count = 4 },
  }
}

MT_RecipeDB[10503] = { -- Rose Colored Goggles
  name = "Rose Colored Goggles",
  profession = "Engineering",
  spellID = 12618,
  yield = 1,
  materials = {
    { itemID = 4304, count = 6 },
    { itemID = 7910, count = 2 },
  }
}

MT_RecipeDB[10562] = { -- Hi-Explosive Bomb
  name = "Hi-Explosive Bomb",
  profession = "Engineering",
  spellID = 12619,
  yield = 1,
  materials = {
    { itemID = 10561, count = 2 },
    { itemID = 10560, count = 1 },
    { itemID = 10505, count = 2 },
  }
}

MT_RecipeDB[10548] = { -- Sniper Scope
  name = "Sniper Scope",
  profession = "Engineering",
  spellID = 12620,
  yield = 1,
  materials = {
    { itemID = 10559, count = 1 },
    { itemID = 7910, count = 1 },
    { itemID = 6037, count = 2 },
  }
}

MT_RecipeDB[10513] = { -- Mithril Gyro-Shot
  name = "Mithril Gyro-Shot",
  profession = "Engineering",
  spellID = 12621,
  yield = 1,
  materials = {
    { itemID = 3860, count = 2 },
    { itemID = 10505, count = 2 },
  }
}

MT_RecipeDB[10504] = { -- Green Lens
  name = "Green Lens",
  profession = "Engineering",
  spellID = 12622,
  yield = 1,
  materials = {
    { itemID = 4304, count = 8 },
    { itemID = 1529, count = 3 },
    { itemID = 7909, count = 3 },
    { itemID = 10286, count = 2 },
    { itemID = 8153, count = 2 },
  }
}

MT_RecipeDB[10576] = { -- Mithril Mechanical Dragonling
  name = "Mithril Mechanical Dragonling",
  profession = "Engineering",
  spellID = 12624,
  yield = 1,
  materials = {
    { itemID = 3860, count = 14 },
    { itemID = 7077, count = 4 },
    { itemID = 6037, count = 4 },
    { itemID = 9060, count = 2 },
    { itemID = 9061, count = 2 },
    { itemID = 7910, count = 2 },
  }
}

MT_RecipeDB[10644] = { -- Goblin Rocket Fuel Recipe
  name = "Goblin Rocket Fuel Recipe",
  profession = "Engineering",
  spellID = 12715,
  yield = 1,
  materials = {
    { itemID = 10648, count = 1 },
    { itemID = 10647, count = 1 },
  }
}

MT_RecipeDB[10577] = { -- Goblin Mortar
  name = "Goblin Mortar",
  profession = "Engineering",
  spellID = 12716,
  yield = 1,
  materials = {
    { itemID = 10559, count = 2 },
    { itemID = 3860, count = 4 },
    { itemID = 10505, count = 5 },
    { itemID = 10558, count = 1 },
    { itemID = 7068, count = 1 },
  }
}

MT_RecipeDB[10542] = { -- Goblin Mining Helmet
  name = "Goblin Mining Helmet",
  profession = "Engineering",
  spellID = 12717,
  yield = 1,
  materials = {
    { itemID = 3860, count = 8 },
    { itemID = 3864, count = 1 },
    { itemID = 7067, count = 4 },
  }
}

MT_RecipeDB[10543] = { -- Goblin Construction Helmet
  name = "Goblin Construction Helmet",
  profession = "Engineering",
  spellID = 12718,
  yield = 1,
  materials = {
    { itemID = 3860, count = 8 },
    { itemID = 3864, count = 1 },
    { itemID = 7068, count = 4 },
  }
}

MT_RecipeDB[10646] = { -- Goblin Sapper Charge
  name = "Goblin Sapper Charge",
  profession = "Engineering",
  spellID = 12760,
  yield = 1,
  materials = {
    { itemID = 4338, count = 1 },
    { itemID = 10505, count = 3 },
    { itemID = 10560, count = 1 },
  }
}

MT_RecipeDB[10579] = { -- Explosive Arrow
  name = "Explosive Arrow",
  profession = "Engineering",
  spellID = 12719,
  yield = 1,
  materials = {
    { itemID = 3030, count = 100 },
    { itemID = 10505, count = 2 },
    { itemID = 3860, count = 2 },
  }
}

MT_RecipeDB[10580] = { -- Goblin 
  name = "Goblin ",
  profession = "Engineering",
  spellID = 12720,
  yield = 1,
  materials = {
    { itemID = 10561, count = 1 },
    { itemID = 10505, count = 2 },
    { itemID = 10558, count = 1 },
    { itemID = 3860, count = 2 },
  }
}

MT_RecipeDB[10585] = { -- Goblin Radio
  name = "Goblin Radio",
  profession = "Engineering",
  spellID = 12722,
  yield = 1,
  materials = {
    { itemID = 10561, count = 1 },
    { itemID = 3860, count = 2 },
    { itemID = 4389, count = 1 },
    { itemID = 10560, count = 1 },
  }
}

MT_RecipeDB[10587] = { -- Goblin Bomb Dispenser
  name = "Goblin Bomb Dispenser",
  profession = "Engineering",
  spellID = 12755,
  yield = 1,
  materials = {
    { itemID = 10561, count = 2 },
    { itemID = 10505, count = 4 },
    { itemID = 6037, count = 6 },
    { itemID = 10560, count = 1 },
    { itemID = 4407, count = 2 },
  }
}

MT_RecipeDB[10586] = { -- The Big One
  name = "The Big One",
  profession = "Engineering",
  spellID = 12754,
  yield = 1,
  materials = {
    { itemID = 10561, count = 1 },
    { itemID = 9061, count = 1 },
    { itemID = 10507, count = 6 },
    { itemID = 10560, count = 1 },
  }
}

MT_RecipeDB[10645] = { -- Gnomish Death Ray
  name = "Gnomish Death Ray",
  profession = "Engineering",
  spellID = 12759,
  yield = 1,
  materials = {
    { itemID = 10559, count = 2 },
    { itemID = 10560, count = 1 },
    { itemID = 12808, count = 1 },
    { itemID = 7972, count = 4 },
    { itemID = 9060, count = 1 },
  }
}

MT_RecipeDB[10588] = { -- Goblin Rocket Helmet
  name = "Goblin Rocket Helmet",
  profession = "Engineering",
  spellID = 12758,
  yield = 1,
  materials = {
    { itemID = 10543, count = 1 },
    { itemID = 9061, count = 4 },
    { itemID = 3860, count = 4 },
    { itemID = 10560, count = 1 },
  }
}

MT_RecipeDB[10713] = { -- Inlaid Mithril Cylinder Plans
  name = "Inlaid Mithril Cylinder Plans",
  profession = "Engineering",
  spellID = 12895,
  yield = 1,
  materials = {
    { itemID = 10648, count = 1 },
    { itemID = 10647, count = 1 },
  }
}

MT_RecipeDB[10545] = { -- Gnomish Goggles
  name = "Gnomish Goggles",
  profession = "Engineering",
  spellID = 12897,
  yield = 1,
  materials = {
    { itemID = 10500, count = 1 },
    { itemID = 10559, count = 1 },
    { itemID = 10558, count = 2 },
    { itemID = 8151, count = 2 },
    { itemID = 4234, count = 2 },
  }
}

MT_RecipeDB[10716] = { -- Gnomish Shrink Ray
  name = "Gnomish Shrink Ray",
  profession = "Engineering",
  spellID = 12899,
  yield = 1,
  materials = {
    { itemID = 10559, count = 1 },
    { itemID = 10560, count = 1 },
    { itemID = 3860, count = 4 },
    { itemID = 8151, count = 4 },
    { itemID = 1529, count = 2 },
  }
}

MT_RecipeDB[10719] = { -- Mobile Alarm
  name = "Mobile Alarm",
  profession = "Engineering",
  spellID = 12900,
  yield = 1,
  materials = {
    { itemID = 10559, count = 1 },
    { itemID = 10560, count = 1 },
    { itemID = 3860, count = 4 },
  }
}

MT_RecipeDB[10720] = { -- Gnomish Net-o-Matic Projector
  name = "Gnomish Net-o-Matic Projector",
  profession = "Engineering",
  spellID = 12902,
  yield = 1,
  materials = {
    { itemID = 10559, count = 1 },
    { itemID = 10285, count = 2 },
    { itemID = 4337, count = 4 },
    { itemID = 10505, count = 2 },
    { itemID = 3860, count = 4 },
  }
}

MT_RecipeDB[10721] = { -- Gnomish Harm Prevention Belt
  name = "Gnomish Harm Prevention Belt",
  profession = "Engineering",
  spellID = 12903,
  yield = 1,
  materials = {
    { itemID = 7387, count = 1 },
    { itemID = 3860, count = 4 },
    { itemID = 6037, count = 2 },
    { itemID = 10560, count = 1 },
    { itemID = 7909, count = 2 },
  }
}

MT_RecipeDB[10723] = { -- Gnomish Ham Radio
  name = "Gnomish Ham Radio",
  profession = "Engineering",
  spellID = 12904,
  yield = 1,
  materials = {
    { itemID = 10561, count = 1 },
    { itemID = 3860, count = 2 },
    { itemID = 4389, count = 1 },
    { itemID = 10560, count = 1 },
  }
}

MT_RecipeDB[10724] = { -- Gnomish Rocket Boots
  name = "Gnomish Rocket Boots",
  profession = "Engineering",
  spellID = 12905,
  yield = 1,
  materials = {
    { itemID = 10026, count = 1 },
    { itemID = 10559, count = 2 },
    { itemID = 4234, count = 4 },
    { itemID = 10505, count = 8 },
    { itemID = 4389, count = 4 },
  }
}

MT_RecipeDB[10725] = { -- Gnomish Battle Chicken
  name = "Gnomish Battle Chicken",
  profession = "Engineering",
  spellID = 12906,
  yield = 1,
  materials = {
    { itemID = 10561, count = 1 },
    { itemID = 6037, count = 6 },
    { itemID = 3860, count = 6 },
    { itemID = 9060, count = 2 },
    { itemID = 10558, count = 1 },
    { itemID = 1529, count = 2 },
  }
}

MT_RecipeDB[10726] = { -- Gnomish Mind Control Cap
  name = "Gnomish Mind Control Cap",
  profession = "Engineering",
  spellID = 12907,
  yield = 1,
  materials = {
    { itemID = 3860, count = 10 },
    { itemID = 6037, count = 4 },
    { itemID = 10558, count = 1 },
    { itemID = 7910, count = 2 },
    { itemID = 4338, count = 4 },
  }
}

MT_RecipeDB[10727] = { -- Goblin Dragon Gun
  name = "Goblin Dragon Gun",
  profession = "Engineering",
  spellID = 12908,
  yield = 1,
  materials = {
    { itemID = 10559, count = 2 },
    { itemID = 9061, count = 4 },
    { itemID = 3860, count = 6 },
    { itemID = 6037, count = 6 },
    { itemID = 10560, count = 1 },
  }
}

MT_RecipeDB[11590] = { -- Mechanical Repair Kit
  name = "Mechanical Repair Kit",
  profession = "Engineering",
  spellID = 15255,
  yield = 1,
  materials = {
    { itemID = 3860, count = 1 },
    { itemID = 4338, count = 1 },
    { itemID = 10505, count = 1 },
  }
}

MT_RecipeDB[11826] = { -- Lil
  name = "Lil",
  profession = "Engineering",
  spellID = 15633,
  yield = 1,
  materials = {
    { itemID = 7075, count = 1 },
    { itemID = 4389, count = 2 },
    { itemID = 7191, count = 1 },
    { itemID = 3860, count = 2 },
    { itemID = 6037, count = 1 },
  }
}

MT_RecipeDB[11825] = { -- Pet Bombling
  name = "Pet Bombling",
  profession = "Engineering",
  spellID = 15628,
  yield = 1,
  materials = {
    { itemID = 4394, count = 1 },
    { itemID = 7077, count = 1 },
    { itemID = 7191, count = 1 },
    { itemID = 3860, count = 6 },
  }
}

MT_RecipeDB[15846] = { -- Salt Shaker
  name = "Salt Shaker",
  profession = "Engineering",
  spellID = 19567,
  yield = 1,
  materials = {
    { itemID = 10561, count = 1 },
    { itemID = 12359, count = 6 },
    { itemID = 10558, count = 1 },
    { itemID = 10560, count = 4 },
  }
}

MT_RecipeDB[15992] = { -- Dense Blasting Powder
  name = "Dense Blasting Powder",
  profession = "Engineering",
  spellID = 19788,
  yield = 1,
  materials = {
    { itemID = 12365, count = 2 },
  }
}

MT_RecipeDB[15993] = { -- Thorium Grenade
  name = "Thorium Grenade",
  profession = "Engineering",
  spellID = 19790,
  yield = 1,
  materials = {
    { itemID = 15994, count = 1 },
    { itemID = 12359, count = 3 },
    { itemID = 15992, count = 3 },
    { itemID = 14047, count = 3 },
  }
}

MT_RecipeDB[15995] = { -- Thorium Rifle
  name = "Thorium Rifle",
  profession = "Engineering",
  spellID = 19792,
  yield = 1,
  materials = {
    { itemID = 10559, count = 2 },
    { itemID = 10561, count = 2 },
    { itemID = 15994, count = 2 },
    { itemID = 12359, count = 4 },
    { itemID = 10546, count = 1 },
  }
}

MT_RecipeDB[15994] = { -- Thorium Widget
  name = "Thorium Widget",
  profession = "Engineering",
  spellID = 19791,
  yield = 1,
  materials = {
    { itemID = 12359, count = 3 },
    { itemID = 14047, count = 1 },
  }
}

MT_RecipeDB[15996] = { -- Lifelike Mechanical Toad
  name = "Lifelike Mechanical Toad",
  profession = "Engineering",
  spellID = 19793,
  yield = 1,
  materials = {
    { itemID = 12803, count = 1 },
    { itemID = 15994, count = 4 },
    { itemID = 10558, count = 1 },
    { itemID = 8170, count = 1 },
  }
}

MT_RecipeDB[15999] = { -- Spellpower Goggles Xtreme Plus
  name = "Spellpower Goggles Xtreme Plus",
  profession = "Engineering",
  spellID = 19794,
  yield = 1,
  materials = {
    { itemID = 10502, count = 1 },
    { itemID = 7910, count = 4 },
    { itemID = 12810, count = 2 },
    { itemID = 14047, count = 8 },
  }
}

MT_RecipeDB[16004] = { -- Dark Iron Rifle
  name = "Dark Iron Rifle",
  profession = "Engineering",
  spellID = 19796,
  yield = 1,
  materials = {
    { itemID = 16000, count = 2 },
    { itemID = 11371, count = 6 },
    { itemID = 10546, count = 2 },
    { itemID = 12361, count = 2 },
    { itemID = 12799, count = 2 },
    { itemID = 8170, count = 4 },
  }
}

MT_RecipeDB[16023] = { -- Masterwork Target Dummy
  name = "Masterwork Target Dummy",
  profession = "Engineering",
  spellID = 19814,
  yield = 1,
  materials = {
    { itemID = 10561, count = 1 },
    { itemID = 16000, count = 1 },
    { itemID = 15994, count = 2 },
    { itemID = 6037, count = 1 },
    { itemID = 8170, count = 2 },
    { itemID = 14047, count = 4 },
  }
}

MT_RecipeDB[16000] = { -- Thorium Tube
  name = "Thorium Tube",
  profession = "Engineering",
  spellID = 19795,
  yield = 1,
  materials = {
    { itemID = 12359, count = 6 },
  }
}

MT_RecipeDB[16006] = { -- Delicate Arcanite Converter
  name = "Delicate Arcanite Converter",
  profession = "Engineering",
  spellID = 19815,
  yield = 1,
  materials = {
    { itemID = 12360, count = 1 },
    { itemID = 14227, count = 1 },
  }
}

MT_RecipeDB[16005] = { -- Dark Iron Bomb
  name = "Dark Iron Bomb",
  profession = "Engineering",
  spellID = 19799,
  yield = 1,
  materials = {
    { itemID = 15994, count = 2 },
    { itemID = 11371, count = 1 },
    { itemID = 15992, count = 3 },
    { itemID = 14047, count = 3 },
  }
}

MT_RecipeDB[15997] = { -- Thorium Shells
  name = "Thorium Shells",
  profession = "Engineering",
  spellID = 19800,
  yield = 1,
  materials = {
    { itemID = 12359, count = 2 },
    { itemID = 15992, count = 1 },
  }
}

MT_RecipeDB[16009] = { -- Voice Amplification Modulator
  name = "Voice Amplification Modulator",
  profession = "Engineering",
  spellID = 19819,
  yield = 1,
  materials = {
    { itemID = 16006, count = 2 },
    { itemID = 10558, count = 1 },
    { itemID = 15994, count = 1 },
    { itemID = 12799, count = 1 },
  }
}

MT_RecipeDB[16040] = { -- Arcane Bomb
  name = "Arcane Bomb",
  profession = "Engineering",
  spellID = 19831,
  yield = 1,
  materials = {
    { itemID = 16006, count = 1 },
    { itemID = 12359, count = 3 },
    { itemID = 14047, count = 1 },
  }
}

MT_RecipeDB[16022] = { -- Arcanite Dragonling
  name = "Arcanite Dragonling",
  profession = "Engineering",
  spellID = 19830,
  yield = 1,
  materials = {
    { itemID = 10576, count = 1 },
    { itemID = 16006, count = 8 },
    { itemID = 12655, count = 10 },
    { itemID = 15994, count = 6 },
    { itemID = 10558, count = 4 },
    { itemID = 12810, count = 6 },
  }
}

MT_RecipeDB[16008] = { -- Master Engineer
  name = "Master Engineer",
  profession = "Engineering",
  spellID = 19825,
  yield = 1,
  materials = {
    { itemID = 10500, count = 1 },
    { itemID = 12364, count = 2 },
    { itemID = 12810, count = 4 },
  }
}

MT_RecipeDB[16007] = { -- Flawless Arcanite Rifle
  name = "Flawless Arcanite Rifle",
  profession = "Engineering",
  spellID = 19833,
  yield = 1,
  materials = {
    { itemID = 12360, count = 10 },
    { itemID = 16000, count = 2 },
    { itemID = 7078, count = 2 },
    { itemID = 7076, count = 2 },
    { itemID = 12800, count = 2 },
    { itemID = 12810, count = 2 },
  }
}

MT_RecipeDB[17716] = { -- SnowMaster 9000
  name = "SnowMaster 9000",
  profession = "Engineering",
  spellID = 21940,
  yield = 1,
  materials = {
    { itemID = 3860, count = 8 },
    { itemID = 4389, count = 4 },
    { itemID = 17202, count = 4 },
    { itemID = 3829, count = 1 },
  }
}

MT_RecipeDB[18232] = { -- Field Repair Bot 74A
  name = "Field Repair Bot 74A",
  profession = "Engineering",
  spellID = 22704,
  yield = 1,
  materials = {
    { itemID = 12359, count = 12 },
    { itemID = 7191, count = 2 },
    { itemID = 10558, count = 1 },
  }
}

MT_RecipeDB[18283] = { -- Biznicks 247x128 Accurascope
  name = "Biznicks 247x128 Accurascope",
  profession = "Engineering",
  spellID = 22793,
  yield = 1,
  materials = {
    { itemID = 17011, count = 2 },
    { itemID = 7076, count = 2 },
    { itemID = 16006, count = 4 },
    { itemID = 11371, count = 6 },
    { itemID = 16000, count = 1 },
  }
}

MT_RecipeDB[18282] = { -- Core Marksman Rifle
  name = "Core Marksman Rifle",
  profession = "Engineering",
  spellID = 22795,
  yield = 1,
  materials = {
    { itemID = 17010, count = 4 },
    { itemID = 17011, count = 2 },
    { itemID = 12360, count = 6 },
    { itemID = 16006, count = 2 },
    { itemID = 16000, count = 2 },
  }
}

MT_RecipeDB[18168] = { -- Force Reactive Disk
  name = "Force Reactive Disk",
  profession = "Engineering",
  spellID = 22797,
  yield = 1,
  materials = {
    { itemID = 12360, count = 6 },
    { itemID = 16006, count = 2 },
    { itemID = 7082, count = 8 },
    { itemID = 12803, count = 12 },
    { itemID = 7076, count = 8 },
  }
}

MT_RecipeDB[9318] = { -- Red Firework
  name = "Red Firework",
  profession = "Engineering",
  spellID = 23066,
  yield = 1,
  materials = {
    { itemID = 4377, count = 1 },
    { itemID = 4234, count = 1 },
  }
}

MT_RecipeDB[9313] = { -- Green Firework
  name = "Green Firework",
  profession = "Engineering",
  spellID = 23068,
  yield = 1,
  materials = {
    { itemID = 4377, count = 1 },
    { itemID = 4234, count = 1 },
  }
}

MT_RecipeDB[9312] = { -- Blue Firework
  name = "Blue Firework",
  profession = "Engineering",
  spellID = 23067,
  yield = 1,
  materials = {
    { itemID = 4377, count = 1 },
    { itemID = 4234, count = 1 },
  }
}

MT_RecipeDB[18588] = { -- EZ-Thro Dynamite II
  name = "EZ-Thro Dynamite II",
  profession = "Engineering",
  spellID = 23069,
  yield = 1,
  materials = {
    { itemID = 10505, count = 1 },
    { itemID = 4338, count = 2 },
  }
}

MT_RecipeDB[18641] = { -- Dense Dynamite
  name = "Dense Dynamite",
  profession = "Engineering",
  spellID = 23070,
  yield = 1,
  materials = {
    { itemID = 15992, count = 2 },
    { itemID = 14047, count = 3 },
  }
}

MT_RecipeDB[18631] = { -- Truesilver Transformer
  name = "Truesilver Transformer",
  profession = "Engineering",
  spellID = 23071,
  yield = 1,
  materials = {
    { itemID = 6037, count = 2 },
    { itemID = 7067, count = 2 },
    { itemID = 7069, count = 1 },
  }
}

MT_RecipeDB[18634] = { -- Gyrofreeze Ice Reflector
  name = "Gyrofreeze Ice Reflector",
  profession = "Engineering",
  spellID = 23077,
  yield = 1,
  materials = {
    { itemID = 15994, count = 6 },
    { itemID = 18631, count = 2 },
    { itemID = 12361, count = 2 },
    { itemID = 7078, count = 4 },
    { itemID = 3829, count = 2 },
    { itemID = 13467, count = 4 },
  }
}

MT_RecipeDB[18587] = { -- Goblin Jumper Cables XL
  name = "Goblin Jumper Cables XL",
  profession = "Engineering",
  spellID = 23078,
  yield = 1,
  materials = {
    { itemID = 15994, count = 2 },
    { itemID = 18631, count = 2 },
    { itemID = 7191, count = 2 },
    { itemID = 14227, count = 2 },
    { itemID = 7910, count = 2 },
  }
}

MT_RecipeDB[18637] = { -- Major Recombobulator
  name = "Major Recombobulator",
  profession = "Engineering",
  spellID = 23079,
  yield = 1,
  materials = {
    { itemID = 16000, count = 2 },
    { itemID = 18631, count = 1 },
    { itemID = 14047, count = 2 },
  }
}

MT_RecipeDB[18594] = { -- Powerful Seaforium Charge
  name = "Powerful Seaforium Charge",
  profession = "Engineering",
  spellID = 23080,
  yield = 1,
  materials = {
    { itemID = 15994, count = 2 },
    { itemID = 15992, count = 3 },
    { itemID = 8170, count = 2 },
    { itemID = 159, count = 1 },
  }
}

MT_RecipeDB[18638] = { -- Hyper-Radiant Flame Reflector
  name = "Hyper-Radiant Flame Reflector",
  profession = "Engineering",
  spellID = 23081,
  yield = 1,
  materials = {
    { itemID = 11371, count = 4 },
    { itemID = 18631, count = 3 },
    { itemID = 7080, count = 6 },
    { itemID = 7910, count = 4 },
    { itemID = 12800, count = 2 },
  }
}

MT_RecipeDB[18639] = { -- Ultra-Flash Shadow Reflector
  name = "Ultra-Flash Shadow Reflector",
  profession = "Engineering",
  spellID = 23082,
  yield = 1,
  materials = {
    { itemID = 11371, count = 8 },
    { itemID = 18631, count = 4 },
    { itemID = 12803, count = 6 },
    { itemID = 12808, count = 4 },
    { itemID = 12800, count = 2 },
    { itemID = 12799, count = 2 },
  }
}

MT_RecipeDB[18645] = { -- Alarm-O-Bot
  name = "Alarm-O-Bot",
  profession = "Engineering",
  spellID = 23096,
  yield = 1,
  materials = {
    { itemID = 12359, count = 4 },
    { itemID = 15994, count = 2 },
    { itemID = 8170, count = 4 },
    { itemID = 7910, count = 1 },
    { itemID = 7191, count = 1 },
  }
}

MT_RecipeDB[18660] = { -- World Enlarger
  name = "World Enlarger",
  profession = "Engineering",
  spellID = 23129,
  yield = 1,
  materials = {
    { itemID = 10561, count = 1 },
    { itemID = 15994, count = 2 },
    { itemID = 10558, count = 1 },
    { itemID = 10560, count = 1 },
    { itemID = 3864, count = 1 },
  }
}

MT_RecipeDB[18986] = { -- Ultrasafe Transporter - Gadgetzan
  name = "Ultrasafe Transporter - Gadgetzan",
  profession = "Engineering",
  spellID = 23489,
  yield = 1,
  materials = {
    { itemID = 3860, count = 12 },
    { itemID = 18631, count = 2 },
    { itemID = 7075, count = 4 },
    { itemID = 7079, count = 2 },
    { itemID = 7909, count = 4 },
    { itemID = 9060, count = 1 },
  }
}

MT_RecipeDB[18984] = { -- Dimensional Ripper - Everlook
  name = "Dimensional Ripper - Everlook",
  profession = "Engineering",
  spellID = 23486,
  yield = 1,
  materials = {
    { itemID = 3860, count = 10 },
    { itemID = 18631, count = 1 },
    { itemID = 7077, count = 4 },
    { itemID = 7910, count = 2 },
    { itemID = 10586, count = 1 },
  }
}

MT_RecipeDB[19026] = { -- Snake Burst Firework
  name = "Snake Burst Firework",
  profession = "Engineering",
  spellID = 23507,
  yield = 1,
  materials = {
    { itemID = 15992, count = 2 },
    { itemID = 14047, count = 2 },
    { itemID = 8150, count = 1 },
  }
}

MT_RecipeDB[19999] = { -- Bloodvine Goggles
  name = "Bloodvine Goggles",
  profession = "Engineering",
  spellID = 24356,
  yield = 1,
  materials = {
    { itemID = 19726, count = 4 },
    { itemID = 19774, count = 5 },
    { itemID = 16006, count = 2 },
    { itemID = 12804, count = 8 },
    { itemID = 12810, count = 4 },
  }
}

MT_RecipeDB[19998] = { -- Bloodvine Lens
  name = "Bloodvine Lens",
  profession = "Engineering",
  spellID = 24357,
  yield = 1,
  materials = {
    { itemID = 19726, count = 5 },
    { itemID = 19774, count = 5 },
    { itemID = 16006, count = 1 },
    { itemID = 12804, count = 8 },
    { itemID = 12810, count = 4 },
  }
}

MT_RecipeDB[21277] = { -- Tranquil Mechanical Yeti
  name = "Tranquil Mechanical Yeti",
  profession = "Engineering",
  spellID = 26011,
  yield = 1,
  materials = {
    { itemID = 15407, count = 1 },
    { itemID = 15994, count = 4 },
    { itemID = 7079, count = 2 },
    { itemID = 18631, count = 2 },
    { itemID = 10558, count = 1 },
  }
}

MT_RecipeDB[21558] = { -- Small Blue Rocket
  name = "Small Blue Rocket",
  profession = "Engineering",
  spellID = 26416,
  yield = 1,
  materials = {
    { itemID = 4364, count = 1 },
    { itemID = 2319, count = 1 },
  }
}

MT_RecipeDB[21559] = { -- Small Green Rocket
  name = "Small Green Rocket",
  profession = "Engineering",
  spellID = 26417,
  yield = 1,
  materials = {
    { itemID = 4364, count = 1 },
    { itemID = 2319, count = 1 },
  }
}

MT_RecipeDB[21557] = { -- Small Red Rocket
  name = "Small Red Rocket",
  profession = "Engineering",
  spellID = 26418,
  yield = 1,
  materials = {
    { itemID = 4364, count = 1 },
    { itemID = 2319, count = 1 },
  }
}

MT_RecipeDB[21589] = { -- Large Blue Rocket
  name = "Large Blue Rocket",
  profession = "Engineering",
  spellID = 26420,
  yield = 1,
  materials = {
    { itemID = 4377, count = 1 },
    { itemID = 4234, count = 1 },
  }
}

MT_RecipeDB[21590] = { -- Large Green Rocket
  name = "Large Green Rocket",
  profession = "Engineering",
  spellID = 26421,
  yield = 1,
  materials = {
    { itemID = 4377, count = 1 },
    { itemID = 4234, count = 1 },
  }
}

MT_RecipeDB[21592] = { -- Large Red Rocket
  name = "Large Red Rocket",
  profession = "Engineering",
  spellID = 26422,
  yield = 1,
  materials = {
    { itemID = 4377, count = 1 },
    { itemID = 4234, count = 1 },
  }
}

MT_RecipeDB[21571] = { -- Blue Rocket Cluster
  name = "Blue Rocket Cluster",
  profession = "Engineering",
  spellID = 26423,
  yield = 1,
  materials = {
    { itemID = 10505, count = 1 },
    { itemID = 4304, count = 1 },
  }
}

MT_RecipeDB[21574] = { -- Green Rocket Cluster
  name = "Green Rocket Cluster",
  profession = "Engineering",
  spellID = 26424,
  yield = 1,
  materials = {
    { itemID = 10505, count = 1 },
    { itemID = 4304, count = 1 },
  }
}

MT_RecipeDB[21576] = { -- Red Rocket Cluster
  name = "Red Rocket Cluster",
  profession = "Engineering",
  spellID = 26425,
  yield = 1,
  materials = {
    { itemID = 10505, count = 1 },
    { itemID = 4304, count = 1 },
  }
}

MT_RecipeDB[21714] = { -- Large Blue Rocket Cluster
  name = "Large Blue Rocket Cluster",
  profession = "Engineering",
  spellID = 26426,
  yield = 1,
  materials = {
    { itemID = 15992, count = 1 },
    { itemID = 8170, count = 1 },
  }
}

MT_RecipeDB[21716] = { -- Large Green Rocket Cluster
  name = "Large Green Rocket Cluster",
  profession = "Engineering",
  spellID = 26427,
  yield = 1,
  materials = {
    { itemID = 15992, count = 1 },
    { itemID = 8170, count = 1 },
  }
}

MT_RecipeDB[21718] = { -- Large Red Rocket Cluster
  name = "Large Red Rocket Cluster",
  profession = "Engineering",
  spellID = 26428,
  yield = 1,
  materials = {
    { itemID = 15992, count = 1 },
    { itemID = 8170, count = 1 },
  }
}

MT_RecipeDB[21569] = { -- Firework Launcher
  name = "Firework Launcher",
  profession = "Engineering",
  spellID = 26442,
  yield = 1,
  materials = {
    { itemID = 9060, count = 1 },
    { itemID = 9061, count = 1 },
    { itemID = 10560, count = 1 },
    { itemID = 10561, count = 1 },
  }
}

MT_RecipeDB[21570] = { -- Firework Cluster Launcher
  name = "Firework Cluster Launcher",
  profession = "Engineering",
  spellID = 26443,
  yield = 1,
  materials = {
    { itemID = 9060, count = 4 },
    { itemID = 9061, count = 4 },
    { itemID = 18631, count = 2 },
    { itemID = 10561, count = 1 },
  }
}

MT_RecipeDB[22728] = { -- Steam Tonk Controller
  name = "Steam Tonk Controller",
  profession = "Engineering",
  spellID = 28327,
  yield = 1,
  materials = {
    { itemID = 15994, count = 2 },
    { itemID = 10561, count = 1 },
    { itemID = 10558, count = 1 },
  }
}

MT_RecipeDB[60099] = { -- Battery-Powered Crowd Pummeler
  name = "Battery-Powered Crowd Pummeler",
  profession = "Engineering",
  spellID = 46610,
  yield = 1,
  materials = {
    { itemID = 9449, count = 1 },
    { itemID = 60098, count = 1 },
    { itemID = 814, count = 2 },
    { itemID = 7191, count = 1 },
    { itemID = 3829, count = 1 },
    { itemID = 4375, count = 6 },
    { itemID = 18631, count = 1 },
  }
}

MT_RecipeDB[60097] = { -- Remote Mail Terminal
  name = "Remote Mail Terminal",
  profession = "Engineering",
  spellID = 46612,
  yield = 1,
  materials = {
    { itemID = 4382, count = 1 },
    { itemID = 4359, count = 2 },
    { itemID = 10558, count = 3 },
    { itemID = 7191, count = 1 },
  }
}

MT_RecipeDB[60098] = { -- Hypertech Battery Pack
  name = "Hypertech Battery Pack",
  profession = "Engineering",
  spellID = 46608,
  yield = 1,
  materials = {
    { itemID = 10558, count = 1 },
    { itemID = 10561, count = 1 },
    { itemID = 4404, count = 1 },
  }
}

MT_RecipeDB[51312] = { -- Portable Wormhole Generator - Stormwind
  name = "Portable Wormhole Generator - Stormwind",
  profession = "Engineering",
  spellID = 47027,
  yield = 1,
  materials = {
    { itemID = 1206, count = 1 },
    { itemID = 4375, count = 2 },
    { itemID = 2841, count = 2 },
    { itemID = 10998, count = 1 },
  }
}

MT_RecipeDB[51313] = { -- Portable Wormhole Generator - Orgrimmar
  name = "Portable Wormhole Generator - Orgrimmar",
  profession = "Engineering",
  spellID = 47028,
  yield = 1,
  materials = {
    { itemID = 1206, count = 1 },
    { itemID = 4375, count = 2 },
    { itemID = 2841, count = 2 },
    { itemID = 10998, count = 1 },
  }
}

MT_RecipeDB[41326] = { -- Jewelry Lens
  name = "Jewelry Lens",
  profession = "Engineering",
  spellID = 41073,
  yield = 1,
  materials = {
    { itemID = 2841, count = 2 },
    { itemID = 4371, count = 2 },
    { itemID = 2319, count = 1 },
    { itemID = 4404, count = 1 },
    { itemID = 1705, count = 1 },
  }
}

MT_RecipeDB[41327] = { -- Jewelry Scope
  name = "Jewelry Scope",
  profession = "Engineering",
  spellID = 41075,
  yield = 1,
  materials = {
    { itemID = 10559, count = 2 },
    { itemID = 4389, count = 1 },
    { itemID = 10561, count = 4 },
    { itemID = 3864, count = 1 },
    { itemID = 7191, count = 1 },
  }
}

MT_RecipeDB[41328] = { -- Precision Jewelry Kit
  name = "Precision Jewelry Kit",
  profession = "Engineering",
  spellID = 41077,
  yield = 1,
  materials = {
    { itemID = 4389, count = 1 },
    { itemID = 4387, count = 1 },
    { itemID = 4382, count = 3 },
    { itemID = 4375, count = 3 },
    { itemID = 55155, count = 1 },
  }
}

MT_RecipeDB[61187] = { -- Intricate Gyroscope Goggles
  name = "Intricate Gyroscope Goggles",
  profession = "Engineering",
  spellID = 45481,
  yield = 1,
  materials = {
    { itemID = 16006, count = 8 },
    { itemID = 12810, count = 10 },
    { itemID = 12655, count = 8 },
    { itemID = 15994, count = 6 },
    { itemID = 10548, count = 2 },
    { itemID = 12800, count = 1 },
  }
}

MT_RecipeDB[51268] = { -- Unstable Mining Dynamite
  name = "Unstable Mining Dynamite",
  profession = "Engineering",
  spellID = 45057,
  yield = 1,
  materials = {
    { itemID = 4359, count = 4 },
    { itemID = 2589, count = 2 },
    { itemID = 4357, count = 2 },
  }
}

MT_RecipeDB[58304] = { -- Voltage-Neutralizing Nature Reflector
  name = "Voltage-Neutralizing Nature Reflector",
  profession = "Engineering",
  spellID = 52747,
  yield = 1,
  materials = {
    { itemID = 11371, count = 8 },
    { itemID = 18631, count = 4 },
    { itemID = 61673, count = 3 },
    { itemID = 12364, count = 4 },
    { itemID = 12800, count = 2 },
  }
}

MT_RecipeDB[58305] = { -- Giga-Charged Arcane Reflector
  name = "Giga-Charged Arcane Reflector",
  profession = "Engineering",
  spellID = 52749,
  yield = 1,
  materials = {
    { itemID = 11371, count = 8 },
    { itemID = 18631, count = 4 },
    { itemID = 7910, count = 4 },
    { itemID = 12803, count = 6 },
    { itemID = 12363, count = 2 },
    { itemID = 7076, count = 4 },
  }
}

MT_RecipeDB[2302] = { -- Handstitched Leather Boots
  name = "Handstitched Leather Boots",
  profession = "Leatherworking",
  spellID = 2149,
  yield = 1,
  materials = {
    { itemID = 2318, count = 2 },
    { itemID = 2320, count = 1 },
  }
}

MT_RecipeDB[2303] = { -- Handstitched Leather Pants
  name = "Handstitched Leather Pants",
  profession = "Leatherworking",
  spellID = 2153,
  yield = 1,
  materials = {
    { itemID = 2318, count = 4 },
    { itemID = 2320, count = 1 },
  }
}

MT_RecipeDB[2304] = { -- Light Armor Kit
  name = "Light Armor Kit",
  profession = "Leatherworking",
  spellID = 2152,
  yield = 1,
  materials = {
    { itemID = 2318, count = 1 },
  }
}

MT_RecipeDB[2307] = { -- Fine Leather Boots
  name = "Fine Leather Boots",
  profession = "Leatherworking",
  spellID = 2158,
  yield = 1,
  materials = {
    { itemID = 2318, count = 7 },
    { itemID = 2320, count = 2 },
  }
}

MT_RecipeDB[2308] = { -- Fine Leather Cloak
  name = "Fine Leather Cloak",
  profession = "Leatherworking",
  spellID = 2159,
  yield = 1,
  materials = {
    { itemID = 2318, count = 10 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[2300] = { -- Embossed Leather Vest
  name = "Embossed Leather Vest",
  profession = "Leatherworking",
  spellID = 2160,
  yield = 1,
  materials = {
    { itemID = 2318, count = 8 },
    { itemID = 2320, count = 4 },
  }
}

MT_RecipeDB[2309] = { -- Embossed Leather Boots
  name = "Embossed Leather Boots",
  profession = "Leatherworking",
  spellID = 2161,
  yield = 1,
  materials = {
    { itemID = 2318, count = 8 },
    { itemID = 2320, count = 5 },
  }
}

MT_RecipeDB[2310] = { -- Embossed Leather Cloak
  name = "Embossed Leather Cloak",
  profession = "Leatherworking",
  spellID = 2162,
  yield = 1,
  materials = {
    { itemID = 2318, count = 5 },
    { itemID = 2320, count = 2 },
  }
}

MT_RecipeDB[2311] = { -- White Leather Jerkin
  name = "White Leather Jerkin",
  profession = "Leatherworking",
  spellID = 2163,
  yield = 1,
  materials = {
    { itemID = 2318, count = 8 },
    { itemID = 2320, count = 2 },
    { itemID = 2324, count = 1 },
  }
}

MT_RecipeDB[2312] = { -- Fine Leather Gloves
  name = "Fine Leather Gloves",
  profession = "Leatherworking",
  spellID = 2164,
  yield = 1,
  materials = {
    { itemID = 4231, count = 1 },
    { itemID = 2318, count = 4 },
    { itemID = 2320, count = 2 },
  }
}

MT_RecipeDB[2313] = { -- Medium Armor Kit
  name = "Medium Armor Kit",
  profession = "Leatherworking",
  spellID = 2165,
  yield = 1,
  materials = {
    { itemID = 2319, count = 4 },
    { itemID = 2320, count = 1 },
  }
}

MT_RecipeDB[2314] = { -- Toughened Leather Armor
  name = "Toughened Leather Armor",
  profession = "Leatherworking",
  spellID = 2166,
  yield = 1,
  materials = {
    { itemID = 2319, count = 10 },
    { itemID = 4231, count = 2 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[2315] = { -- Dark Leather Boots
  name = "Dark Leather Boots",
  profession = "Leatherworking",
  spellID = 2167,
  yield = 1,
  materials = {
    { itemID = 2319, count = 4 },
    { itemID = 2321, count = 2 },
    { itemID = 4340, count = 1 },
  }
}

MT_RecipeDB[2316] = { -- Dark Leather Cloak
  name = "Dark Leather Cloak",
  profession = "Leatherworking",
  spellID = 2168,
  yield = 1,
  materials = {
    { itemID = 2319, count = 8 },
    { itemID = 2321, count = 1 },
    { itemID = 4340, count = 1 },
  }
}

MT_RecipeDB[2317] = { -- Dark Leather Tunic
  name = "Dark Leather Tunic",
  profession = "Leatherworking",
  spellID = 2169,
  yield = 1,
  materials = {
    { itemID = 2319, count = 6 },
    { itemID = 2321, count = 1 },
    { itemID = 4340, count = 1 },
  }
}

MT_RecipeDB[2318] = { -- Light Leather
  name = "Light Leather",
  profession = "Leatherworking",
  spellID = 2881,
  yield = 1,
  materials = {
    { itemID = 2934, count = 3 },
  }
}

MT_RecipeDB[4237] = { -- Handstitched Leather Belt
  name = "Handstitched Leather Belt",
  profession = "Leatherworking",
  spellID = 3753,
  yield = 1,
  materials = {
    { itemID = 2318, count = 6 },
    { itemID = 2320, count = 1 },
  }
}

MT_RecipeDB[4239] = { -- Embossed Leather Gloves
  name = "Embossed Leather Gloves",
  profession = "Leatherworking",
  spellID = 3756,
  yield = 1,
  materials = {
    { itemID = 2318, count = 3 },
    { itemID = 2320, count = 2 },
  }
}

MT_RecipeDB[4242] = { -- Embossed Leather Pants
  name = "Embossed Leather Pants",
  profession = "Leatherworking",
  spellID = 3759,
  yield = 1,
  materials = {
    { itemID = 4231, count = 1 },
    { itemID = 2318, count = 6 },
    { itemID = 2320, count = 2 },
  }
}

MT_RecipeDB[3719] = { -- Hillman
  name = "Hillman",
  profession = "Leatherworking",
  spellID = 3760,
  yield = 1,
  materials = {
    { itemID = 4234, count = 5 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[4243] = { -- Fine Leather Tunic
  name = "Fine Leather Tunic",
  profession = "Leatherworking",
  spellID = 3761,
  yield = 1,
  materials = {
    { itemID = 4231, count = 3 },
    { itemID = 2318, count = 6 },
    { itemID = 2320, count = 4 },
  }
}

MT_RecipeDB[4244] = { -- Hillman
  name = "Hillman",
  profession = "Leatherworking",
  spellID = 3762,
  yield = 1,
  materials = {
    { itemID = 4243, count = 1 },
    { itemID = 4231, count = 2 },
    { itemID = 2320, count = 2 },
  }
}

MT_RecipeDB[4246] = { -- Fine Leather Belt
  name = "Fine Leather Belt",
  profession = "Leatherworking",
  spellID = 3763,
  yield = 1,
  materials = {
    { itemID = 2318, count = 6 },
    { itemID = 2320, count = 2 },
  }
}

MT_RecipeDB[4247] = { -- Hillman
  name = "Hillman",
  profession = "Leatherworking",
  spellID = 3764,
  yield = 1,
  materials = {
    { itemID = 2319, count = 14 },
    { itemID = 2321, count = 4 },
  }
}

MT_RecipeDB[4248] = { -- Dark Leather Gloves
  name = "Dark Leather Gloves",
  profession = "Leatherworking",
  spellID = 3765,
  yield = 1,
  materials = {
    { itemID = 2312, count = 1 },
    { itemID = 4233, count = 1 },
    { itemID = 2321, count = 1 },
    { itemID = 4340, count = 1 },
  }
}

MT_RecipeDB[4249] = { -- Dark Leather Belt
  name = "Dark Leather Belt",
  profession = "Leatherworking",
  spellID = 3766,
  yield = 1,
  materials = {
    { itemID = 4246, count = 1 },
    { itemID = 4233, count = 1 },
    { itemID = 2321, count = 2 },
    { itemID = 4340, count = 1 },
  }
}

MT_RecipeDB[4250] = { -- Hillman
  name = "Hillman",
  profession = "Leatherworking",
  spellID = 3767,
  yield = 1,
  materials = {
    { itemID = 2319, count = 8 },
    { itemID = 3383, count = 1 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[4251] = { -- Hillman
  name = "Hillman",
  profession = "Leatherworking",
  spellID = 3768,
  yield = 1,
  materials = {
    { itemID = 4233, count = 1 },
    { itemID = 2319, count = 4 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[4252] = { -- Dark Leather Shoulders
  name = "Dark Leather Shoulders",
  profession = "Leatherworking",
  spellID = 3769,
  yield = 1,
  materials = {
    { itemID = 2319, count = 12 },
    { itemID = 3390, count = 1 },
    { itemID = 4340, count = 1 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[4253] = { -- Toughened Leather Gloves
  name = "Toughened Leather Gloves",
  profession = "Leatherworking",
  spellID = 3770,
  yield = 1,
  materials = {
    { itemID = 2319, count = 4 },
    { itemID = 4233, count = 2 },
    { itemID = 3389, count = 2 },
    { itemID = 3182, count = 2 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[4254] = { -- Barbaric Gloves
  name = "Barbaric Gloves",
  profession = "Leatherworking",
  spellID = 3771,
  yield = 1,
  materials = {
    { itemID = 4234, count = 6 },
    { itemID = 5637, count = 2 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[4255] = { -- Green Leather Armor
  name = "Green Leather Armor",
  profession = "Leatherworking",
  spellID = 3772,
  yield = 1,
  materials = {
    { itemID = 4234, count = 9 },
    { itemID = 2605, count = 2 },
    { itemID = 2321, count = 4 },
  }
}

MT_RecipeDB[4256] = { -- Guardian Armor
  name = "Guardian Armor",
  profession = "Leatherworking",
  spellID = 3773,
  yield = 1,
  materials = {
    { itemID = 4236, count = 2 },
    { itemID = 4234, count = 12 },
    { itemID = 3824, count = 1 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[4257] = { -- Green Leather Belt
  name = "Green Leather Belt",
  profession = "Leatherworking",
  spellID = 3774,
  yield = 1,
  materials = {
    { itemID = 4236, count = 1 },
    { itemID = 4234, count = 5 },
    { itemID = 2321, count = 1 },
    { itemID = 2605, count = 1 },
    { itemID = 7071, count = 1 },
  }
}

MT_RecipeDB[4258] = { -- Guardian Belt
  name = "Guardian Belt",
  profession = "Leatherworking",
  spellID = 3775,
  yield = 1,
  materials = {
    { itemID = 4236, count = 2 },
    { itemID = 4234, count = 4 },
    { itemID = 2321, count = 1 },
    { itemID = 7071, count = 1 },
  }
}

MT_RecipeDB[4259] = { -- Green Leather Bracers
  name = "Green Leather Bracers",
  profession = "Leatherworking",
  spellID = 3776,
  yield = 1,
  materials = {
    { itemID = 4236, count = 2 },
    { itemID = 4234, count = 6 },
    { itemID = 2605, count = 1 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[4260] = { -- Guardian Leather Bracers
  name = "Guardian Leather Bracers",
  profession = "Leatherworking",
  spellID = 3777,
  yield = 1,
  materials = {
    { itemID = 4234, count = 6 },
    { itemID = 4236, count = 2 },
    { itemID = 4291, count = 1 },
  }
}

MT_RecipeDB[4262] = { -- Gem-studded Leather Belt
  name = "Gem-studded Leather Belt",
  profession = "Leatherworking",
  spellID = 3778,
  yield = 1,
  materials = {
    { itemID = 4236, count = 4 },
    { itemID = 5500, count = 2 },
    { itemID = 1529, count = 2 },
    { itemID = 3864, count = 1 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[4264] = { -- Barbaric Belt
  name = "Barbaric Belt",
  profession = "Leatherworking",
  spellID = 3779,
  yield = 1,
  materials = {
    { itemID = 4234, count = 6 },
    { itemID = 4236, count = 2 },
    { itemID = 4096, count = 2 },
    { itemID = 5633, count = 1 },
    { itemID = 4291, count = 1 },
    { itemID = 7071, count = 1 },
  }
}

MT_RecipeDB[4231] = { -- Cured Light Hide
  name = "Cured Light Hide",
  profession = "Leatherworking",
  spellID = 3816,
  yield = 1,
  materials = {
    { itemID = 783, count = 1 },
    { itemID = 4289, count = 1 },
  }
}

MT_RecipeDB[4233] = { -- Cured Medium Hide
  name = "Cured Medium Hide",
  profession = "Leatherworking",
  spellID = 3817,
  yield = 1,
  materials = {
    { itemID = 4232, count = 1 },
    { itemID = 4289, count = 1 },
  }
}

MT_RecipeDB[4236] = { -- Cured Heavy Hide
  name = "Cured Heavy Hide",
  profession = "Leatherworking",
  spellID = 3818,
  yield = 1,
  materials = {
    { itemID = 4235, count = 1 },
    { itemID = 4289, count = 3 },
  }
}

MT_RecipeDB[4265] = { -- Heavy Armor Kit
  name = "Heavy Armor Kit",
  profession = "Leatherworking",
  spellID = 3780,
  yield = 1,
  materials = {
    { itemID = 4234, count = 5 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[4456] = { -- Raptor Hide Belt
  name = "Raptor Hide Belt",
  profession = "Leatherworking",
  spellID = 4097,
  yield = 1,
  materials = {
    { itemID = 4461, count = 4 },
    { itemID = 4234, count = 4 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[4455] = { -- Raptor Hide Harness
  name = "Raptor Hide Harness",
  profession = "Leatherworking",
  spellID = 4096,
  yield = 1,
  materials = {
    { itemID = 4461, count = 6 },
    { itemID = 4234, count = 4 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[5081] = { -- Kodo Hide Bag
  name = "Kodo Hide Bag",
  profession = "Leatherworking",
  spellID = 5244,
  yield = 1,
  materials = {
    { itemID = 5082, count = 3 },
    { itemID = 2318, count = 4 },
    { itemID = 2320, count = 1 },
  }
}

MT_RecipeDB[5739] = { -- Barbaric Harness
  name = "Barbaric Harness",
  profession = "Leatherworking",
  spellID = 6661,
  yield = 1,
  materials = {
    { itemID = 4234, count = 14 },
    { itemID = 2321, count = 2 },
    { itemID = 7071, count = 1 },
  }
}

MT_RecipeDB[5780] = { -- Murloc Scale Belt
  name = "Murloc Scale Belt",
  profession = "Leatherworking",
  spellID = 6702,
  yield = 1,
  materials = {
    { itemID = 5784, count = 8 },
    { itemID = 2318, count = 6 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[5783] = { -- Murloc Scale Bracers
  name = "Murloc Scale Bracers",
  profession = "Leatherworking",
  spellID = 6705,
  yield = 1,
  materials = {
    { itemID = 5785, count = 16 },
    { itemID = 4236, count = 1 },
    { itemID = 4234, count = 14 },
    { itemID = 4291, count = 1 },
  }
}

MT_RecipeDB[5781] = { -- Murloc Scale Breastplate
  name = "Murloc Scale Breastplate",
  profession = "Leatherworking",
  spellID = 6703,
  yield = 1,
  materials = {
    { itemID = 5784, count = 12 },
    { itemID = 4231, count = 1 },
    { itemID = 2318, count = 8 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[5782] = { -- Thick Murloc Armor
  name = "Thick Murloc Armor",
  profession = "Leatherworking",
  spellID = 6704,
  yield = 1,
  materials = {
    { itemID = 5785, count = 12 },
    { itemID = 4236, count = 1 },
    { itemID = 4234, count = 10 },
    { itemID = 2321, count = 3 },
  }
}

MT_RecipeDB[5957] = { -- Handstitched Leather Vest
  name = "Handstitched Leather Vest",
  profession = "Leatherworking",
  spellID = 7126,
  yield = 1,
  materials = {
    { itemID = 2318, count = 3 },
    { itemID = 2320, count = 1 },
  }
}

MT_RecipeDB[5958] = { -- Fine Leather Pants
  name = "Fine Leather Pants",
  profession = "Leatherworking",
  spellID = 7133,
  yield = 1,
  materials = {
    { itemID = 2319, count = 8 },
    { itemID = 2997, count = 1 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[5961] = { -- Dark Leather Pants
  name = "Dark Leather Pants",
  profession = "Leatherworking",
  spellID = 7135,
  yield = 1,
  materials = {
    { itemID = 2319, count = 12 },
    { itemID = 4340, count = 1 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[5962] = { -- Guardian Pants
  name = "Guardian Pants",
  profession = "Leatherworking",
  spellID = 7147,
  yield = 1,
  materials = {
    { itemID = 4234, count = 12 },
    { itemID = 4305, count = 2 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[5963] = { -- Barbaric Leggings
  name = "Barbaric Leggings",
  profession = "Leatherworking",
  spellID = 7149,
  yield = 1,
  materials = {
    { itemID = 4234, count = 10 },
    { itemID = 2321, count = 2 },
    { itemID = 1206, count = 1 },
  }
}

MT_RecipeDB[5964] = { -- Barbaric Shoulders
  name = "Barbaric Shoulders",
  profession = "Leatherworking",
  spellID = 7151,
  yield = 1,
  materials = {
    { itemID = 4234, count = 8 },
    { itemID = 4236, count = 1 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[5965] = { -- Guardian Cloak
  name = "Guardian Cloak",
  profession = "Leatherworking",
  spellID = 7153,
  yield = 1,
  materials = {
    { itemID = 4234, count = 14 },
    { itemID = 4305, count = 2 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[5966] = { -- Guardian Gloves
  name = "Guardian Gloves",
  profession = "Leatherworking",
  spellID = 7156,
  yield = 1,
  materials = {
    { itemID = 4234, count = 4 },
    { itemID = 4236, count = 1 },
    { itemID = 4291, count = 1 },
  }
}

MT_RecipeDB[6468] = { -- Deviate Scale Belt
  name = "Deviate Scale Belt",
  profession = "Leatherworking",
  spellID = 7955,
  yield = 1,
  materials = {
    { itemID = 6471, count = 10 },
    { itemID = 6470, count = 10 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[6466] = { -- Deviate Scale Cloak
  name = "Deviate Scale Cloak",
  profession = "Leatherworking",
  spellID = 7953,
  yield = 1,
  materials = {
    { itemID = 6470, count = 8 },
    { itemID = 4231, count = 1 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[6467] = { -- Deviate Scale Gloves
  name = "Deviate Scale Gloves",
  profession = "Leatherworking",
  spellID = 7954,
  yield = 1,
  materials = {
    { itemID = 6471, count = 2 },
    { itemID = 6470, count = 6 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[6709] = { -- Moonglow Vest
  name = "Moonglow Vest",
  profession = "Leatherworking",
  spellID = 8322,
  yield = 1,
  materials = {
    { itemID = 2318, count = 6 },
    { itemID = 4231, count = 1 },
    { itemID = 2320, count = 4 },
    { itemID = 5498, count = 1 },
  }
}

MT_RecipeDB[7276] = { -- Handstitched Leather Cloak
  name = "Handstitched Leather Cloak",
  profession = "Leatherworking",
  spellID = 9058,
  yield = 1,
  materials = {
    { itemID = 2318, count = 2 },
    { itemID = 2320, count = 1 },
  }
}

MT_RecipeDB[7277] = { -- Handstitched Leather Bracers
  name = "Handstitched Leather Bracers",
  profession = "Leatherworking",
  spellID = 9059,
  yield = 1,
  materials = {
    { itemID = 2318, count = 2 },
    { itemID = 2320, count = 3 },
  }
}

MT_RecipeDB[7278] = { -- Light Leather Quiver
  name = "Light Leather Quiver",
  profession = "Leatherworking",
  spellID = 9060,
  yield = 1,
  materials = {
    { itemID = 2318, count = 4 },
    { itemID = 2320, count = 2 },
  }
}

MT_RecipeDB[7279] = { -- Small Leather Ammo Pouch
  name = "Small Leather Ammo Pouch",
  profession = "Leatherworking",
  spellID = 9062,
  yield = 1,
  materials = {
    { itemID = 2318, count = 3 },
    { itemID = 2320, count = 4 },
  }
}

MT_RecipeDB[7280] = { -- Rugged Leather Pants
  name = "Rugged Leather Pants",
  profession = "Leatherworking",
  spellID = 9064,
  yield = 1,
  materials = {
    { itemID = 2318, count = 5 },
    { itemID = 2320, count = 5 },
  }
}

MT_RecipeDB[7281] = { -- Light Leather Bracers
  name = "Light Leather Bracers",
  profession = "Leatherworking",
  spellID = 9065,
  yield = 1,
  materials = {
    { itemID = 2318, count = 6 },
    { itemID = 2320, count = 4 },
  }
}

MT_RecipeDB[7282] = { -- Light Leather Pants
  name = "Light Leather Pants",
  profession = "Leatherworking",
  spellID = 9068,
  yield = 1,
  materials = {
    { itemID = 2318, count = 10 },
    { itemID = 4231, count = 1 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[7283] = { -- Black Whelp Cloak
  name = "Black Whelp Cloak",
  profession = "Leatherworking",
  spellID = 9070,
  yield = 1,
  materials = {
    { itemID = 7286, count = 12 },
    { itemID = 2319, count = 4 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[7284] = { -- Red Whelp Gloves
  name = "Red Whelp Gloves",
  profession = "Leatherworking",
  spellID = 9072,
  yield = 1,
  materials = {
    { itemID = 7287, count = 6 },
    { itemID = 2319, count = 4 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[7285] = { -- Nimble Leather Gloves
  name = "Nimble Leather Gloves",
  profession = "Leatherworking",
  spellID = 9074,
  yield = 1,
  materials = {
    { itemID = 2457, count = 1 },
    { itemID = 2319, count = 6 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[7348] = { -- Fletcher
  name = "Fletcher",
  profession = "Leatherworking",
  spellID = 9145,
  yield = 1,
  materials = {
    { itemID = 2319, count = 8 },
    { itemID = 5116, count = 4 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[7349] = { -- Herbalist
  name = "Herbalist",
  profession = "Leatherworking",
  spellID = 9146,
  yield = 1,
  materials = {
    { itemID = 2319, count = 8 },
    { itemID = 3356, count = 4 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[7352] = { -- Earthen Leather Shoulders
  name = "Earthen Leather Shoulders",
  profession = "Leatherworking",
  spellID = 9147,
  yield = 1,
  materials = {
    { itemID = 2319, count = 6 },
    { itemID = 7067, count = 1 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[7358] = { -- Pilferer
  name = "Pilferer",
  profession = "Leatherworking",
  spellID = 9148,
  yield = 1,
  materials = {
    { itemID = 2319, count = 10 },
    { itemID = 5373, count = 2 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[7359] = { -- Heavy Earthen Gloves
  name = "Heavy Earthen Gloves",
  profession = "Leatherworking",
  spellID = 9149,
  yield = 1,
  materials = {
    { itemID = 2319, count = 12 },
    { itemID = 7067, count = 2 },
    { itemID = 2997, count = 2 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[7371] = { -- Heavy Quiver
  name = "Heavy Quiver",
  profession = "Leatherworking",
  spellID = 9193,
  yield = 1,
  materials = {
    { itemID = 4234, count = 8 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[7372] = { -- Heavy Leather Ammo Pouch
  name = "Heavy Leather Ammo Pouch",
  profession = "Leatherworking",
  spellID = 9194,
  yield = 1,
  materials = {
    { itemID = 4234, count = 8 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[7373] = { -- Dusky Leather Leggings
  name = "Dusky Leather Leggings",
  profession = "Leatherworking",
  spellID = 9195,
  yield = 1,
  materials = {
    { itemID = 4234, count = 10 },
    { itemID = 2325, count = 1 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[7374] = { -- Dusky Leather Armor
  name = "Dusky Leather Armor",
  profession = "Leatherworking",
  spellID = 9196,
  yield = 1,
  materials = {
    { itemID = 4234, count = 10 },
    { itemID = 3824, count = 1 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[7375] = { -- Green Whelp Armor
  name = "Green Whelp Armor",
  profession = "Leatherworking",
  spellID = 9197,
  yield = 1,
  materials = {
    { itemID = 7392, count = 4 },
    { itemID = 4234, count = 10 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[7377] = { -- Frost Leather Cloak
  name = "Frost Leather Cloak",
  profession = "Leatherworking",
  spellID = 9198,
  yield = 1,
  materials = {
    { itemID = 4234, count = 6 },
    { itemID = 7067, count = 2 },
    { itemID = 7070, count = 2 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[7378] = { -- Dusky Bracers
  name = "Dusky Bracers",
  profession = "Leatherworking",
  spellID = 9201,
  yield = 1,
  materials = {
    { itemID = 4234, count = 16 },
    { itemID = 2325, count = 1 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[7386] = { -- Green Whelp Bracers
  name = "Green Whelp Bracers",
  profession = "Leatherworking",
  spellID = 9202,
  yield = 1,
  materials = {
    { itemID = 7392, count = 6 },
    { itemID = 4234, count = 8 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[7387] = { -- Dusky Belt
  name = "Dusky Belt",
  profession = "Leatherworking",
  spellID = 9206,
  yield = 1,
  materials = {
    { itemID = 4234, count = 10 },
    { itemID = 4305, count = 2 },
    { itemID = 2325, count = 2 },
    { itemID = 7071, count = 1 },
  }
}

MT_RecipeDB[7390] = { -- Dusky Boots
  name = "Dusky Boots",
  profession = "Leatherworking",
  spellID = 9207,
  yield = 1,
  materials = {
    { itemID = 4234, count = 8 },
    { itemID = 7428, count = 2 },
    { itemID = 3824, count = 1 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[7391] = { -- Swift Boots
  name = "Swift Boots",
  profession = "Leatherworking",
  spellID = 9208,
  yield = 1,
  materials = {
    { itemID = 4234, count = 10 },
    { itemID = 2459, count = 2 },
    { itemID = 4337, count = 2 },
    { itemID = 4291, count = 1 },
  }
}

MT_RecipeDB[8172] = { -- Cured Thick Hide
  name = "Cured Thick Hide",
  profession = "Leatherworking",
  spellID = 10482,
  yield = 1,
  materials = {
    { itemID = 8169, count = 1 },
    { itemID = 8150, count = 1 },
  }
}

MT_RecipeDB[8173] = { -- Thick Armor Kit
  name = "Thick Armor Kit",
  profession = "Leatherworking",
  spellID = 10487,
  yield = 1,
  materials = {
    { itemID = 4304, count = 5 },
    { itemID = 4291, count = 1 },
  }
}

MT_RecipeDB[8174] = { -- Comfortable Leather Hat
  name = "Comfortable Leather Hat",
  profession = "Leatherworking",
  spellID = 10490,
  yield = 1,
  materials = {
    { itemID = 4234, count = 12 },
    { itemID = 4236, count = 2 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[8175] = { -- Nightscape Tunic
  name = "Nightscape Tunic",
  profession = "Leatherworking",
  spellID = 10499,
  yield = 1,
  materials = {
    { itemID = 4304, count = 7 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[8176] = { -- Nightscape Headband
  name = "Nightscape Headband",
  profession = "Leatherworking",
  spellID = 10507,
  yield = 1,
  materials = {
    { itemID = 4304, count = 5 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[8187] = { -- Turtle Scale Gloves
  name = "Turtle Scale Gloves",
  profession = "Leatherworking",
  spellID = 10509,
  yield = 1,
  materials = {
    { itemID = 4304, count = 6 },
    { itemID = 8167, count = 8 },
    { itemID = 8343, count = 1 },
  }
}

MT_RecipeDB[8189] = { -- Turtle Scale Breastplate
  name = "Turtle Scale Breastplate",
  profession = "Leatherworking",
  spellID = 10511,
  yield = 1,
  materials = {
    { itemID = 4304, count = 6 },
    { itemID = 8167, count = 12 },
    { itemID = 8343, count = 1 },
  }
}

MT_RecipeDB[8192] = { -- Nightscape Shoulders
  name = "Nightscape Shoulders",
  profession = "Leatherworking",
  spellID = 10516,
  yield = 1,
  materials = {
    { itemID = 4304, count = 8 },
    { itemID = 4338, count = 6 },
    { itemID = 4291, count = 3 },
  }
}

MT_RecipeDB[8198] = { -- Turtle Scale Bracers
  name = "Turtle Scale Bracers",
  profession = "Leatherworking",
  spellID = 10518,
  yield = 1,
  materials = {
    { itemID = 4304, count = 8 },
    { itemID = 8167, count = 12 },
    { itemID = 8343, count = 1 },
  }
}

MT_RecipeDB[8200] = { -- Big Voodoo Robe
  name = "Big Voodoo Robe",
  profession = "Leatherworking",
  spellID = 10520,
  yield = 1,
  materials = {
    { itemID = 4304, count = 10 },
    { itemID = 8151, count = 4 },
    { itemID = 8343, count = 1 },
  }
}

MT_RecipeDB[8203] = { -- Tough Scorpid Breastplate
  name = "Tough Scorpid Breastplate",
  profession = "Leatherworking",
  spellID = 10525,
  yield = 1,
  materials = {
    { itemID = 4304, count = 12 },
    { itemID = 8154, count = 12 },
    { itemID = 4291, count = 4 },
  }
}

MT_RecipeDB[8210] = { -- Wild Leather Shoulders
  name = "Wild Leather Shoulders",
  profession = "Leatherworking",
  spellID = 10529,
  yield = 1,
  materials = {
    { itemID = 4304, count = 10 },
    { itemID = 8153, count = 1 },
    { itemID = 8172, count = 1 },
  }
}

MT_RecipeDB[8201] = { -- Big Voodoo Mask
  name = "Big Voodoo Mask",
  profession = "Leatherworking",
  spellID = 10531,
  yield = 1,
  materials = {
    { itemID = 4304, count = 8 },
    { itemID = 8151, count = 6 },
    { itemID = 8343, count = 1 },
  }
}

MT_RecipeDB[8205] = { -- Tough Scorpid Bracers
  name = "Tough Scorpid Bracers",
  profession = "Leatherworking",
  spellID = 10533,
  yield = 1,
  materials = {
    { itemID = 4304, count = 10 },
    { itemID = 8154, count = 4 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[8204] = { -- Tough Scorpid Gloves
  name = "Tough Scorpid Gloves",
  profession = "Leatherworking",
  spellID = 10542,
  yield = 1,
  materials = {
    { itemID = 4304, count = 6 },
    { itemID = 8154, count = 8 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[8211] = { -- Wild Leather Vest
  name = "Wild Leather Vest",
  profession = "Leatherworking",
  spellID = 10544,
  yield = 1,
  materials = {
    { itemID = 4304, count = 12 },
    { itemID = 8153, count = 2 },
    { itemID = 8172, count = 1 },
  }
}

MT_RecipeDB[8214] = { -- Wild Leather Helmet
  name = "Wild Leather Helmet",
  profession = "Leatherworking",
  spellID = 10546,
  yield = 1,
  materials = {
    { itemID = 4304, count = 10 },
    { itemID = 8153, count = 2 },
    { itemID = 8172, count = 1 },
  }
}

MT_RecipeDB[8347] = { -- Dragonscale Gauntlets
  name = "Dragonscale Gauntlets",
  profession = "Leatherworking",
  spellID = 10619,
  yield = 1,
  materials = {
    { itemID = 4304, count = 24 },
    { itemID = 8165, count = 12 },
    { itemID = 8343, count = 4 },
    { itemID = 8172, count = 2 },
  }
}

MT_RecipeDB[8345] = { -- Wolfshead Helm
  name = "Wolfshead Helm",
  profession = "Leatherworking",
  spellID = 10621,
  yield = 1,
  materials = {
    { itemID = 4304, count = 18 },
    { itemID = 8368, count = 2 },
    { itemID = 8146, count = 8 },
    { itemID = 8343, count = 4 },
    { itemID = 8172, count = 2 },
  }
}

MT_RecipeDB[8193] = { -- Nightscape Pants
  name = "Nightscape Pants",
  profession = "Leatherworking",
  spellID = 10548,
  yield = 1,
  materials = {
    { itemID = 4304, count = 14 },
    { itemID = 4291, count = 4 },
  }
}

MT_RecipeDB[8195] = { -- Nightscape Cloak
  name = "Nightscape Cloak",
  profession = "Leatherworking",
  spellID = 10550,
  yield = 1,
  materials = {
    { itemID = 4304, count = 12 },
    { itemID = 4291, count = 4 },
  }
}

MT_RecipeDB[8191] = { -- Turtle Scale Helm
  name = "Turtle Scale Helm",
  profession = "Leatherworking",
  spellID = 10552,
  yield = 1,
  materials = {
    { itemID = 4304, count = 14 },
    { itemID = 8167, count = 24 },
    { itemID = 8343, count = 1 },
  }
}

MT_RecipeDB[8346] = { -- Gauntlets of the Sea
  name = "Gauntlets of the Sea",
  profession = "Leatherworking",
  spellID = 10630,
  yield = 1,
  materials = {
    { itemID = 4304, count = 20 },
    { itemID = 7079, count = 8 },
    { itemID = 7075, count = 2 },
    { itemID = 8172, count = 1 },
    { itemID = 8343, count = 4 },
  }
}

MT_RecipeDB[8209] = { -- Tough Scorpid Boots
  name = "Tough Scorpid Boots",
  profession = "Leatherworking",
  spellID = 10554,
  yield = 1,
  materials = {
    { itemID = 4304, count = 12 },
    { itemID = 8154, count = 12 },
    { itemID = 4291, count = 6 },
  }
}

MT_RecipeDB[8185] = { -- Turtle Scale Leggings
  name = "Turtle Scale Leggings",
  profession = "Leatherworking",
  spellID = 10556,
  yield = 1,
  materials = {
    { itemID = 4304, count = 14 },
    { itemID = 8167, count = 28 },
    { itemID = 8343, count = 1 },
  }
}

MT_RecipeDB[8197] = { -- Nightscape Boots
  name = "Nightscape Boots",
  profession = "Leatherworking",
  spellID = 10558,
  yield = 1,
  materials = {
    { itemID = 4304, count = 16 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[8202] = { -- Big Voodoo Pants
  name = "Big Voodoo Pants",
  profession = "Leatherworking",
  spellID = 10560,
  yield = 1,
  materials = {
    { itemID = 4304, count = 10 },
    { itemID = 8152, count = 6 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[8216] = { -- Big Voodoo Cloak
  name = "Big Voodoo Cloak",
  profession = "Leatherworking",
  spellID = 10562,
  yield = 1,
  materials = {
    { itemID = 4304, count = 14 },
    { itemID = 8152, count = 4 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[8207] = { -- Tough Scorpid Shoulders
  name = "Tough Scorpid Shoulders",
  profession = "Leatherworking",
  spellID = 10564,
  yield = 1,
  materials = {
    { itemID = 4304, count = 12 },
    { itemID = 8154, count = 16 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[8213] = { -- Wild Leather Boots
  name = "Wild Leather Boots",
  profession = "Leatherworking",
  spellID = 10566,
  yield = 1,
  materials = {
    { itemID = 4304, count = 14 },
    { itemID = 8153, count = 4 },
    { itemID = 8172, count = 2 },
  }
}

MT_RecipeDB[8206] = { -- Tough Scorpid Leggings
  name = "Tough Scorpid Leggings",
  profession = "Leatherworking",
  spellID = 10568,
  yield = 1,
  materials = {
    { itemID = 4304, count = 14 },
    { itemID = 8154, count = 8 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[8208] = { -- Tough Scorpid Helm
  name = "Tough Scorpid Helm",
  profession = "Leatherworking",
  spellID = 10570,
  yield = 1,
  materials = {
    { itemID = 4304, count = 10 },
    { itemID = 8154, count = 20 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[8212] = { -- Wild Leather Leggings
  name = "Wild Leather Leggings",
  profession = "Leatherworking",
  spellID = 10572,
  yield = 1,
  materials = {
    { itemID = 4304, count = 16 },
    { itemID = 8153, count = 6 },
    { itemID = 8172, count = 2 },
  }
}

MT_RecipeDB[8215] = { -- Wild Leather Cloak
  name = "Wild Leather Cloak",
  profession = "Leatherworking",
  spellID = 10574,
  yield = 1,
  materials = {
    { itemID = 4304, count = 16 },
    { itemID = 8153, count = 6 },
    { itemID = 8172, count = 2 },
  }
}

MT_RecipeDB[8348] = { -- Helm of Fire
  name = "Helm of Fire",
  profession = "Leatherworking",
  spellID = 10632,
  yield = 1,
  materials = {
    { itemID = 4304, count = 40 },
    { itemID = 7077, count = 8 },
    { itemID = 7075, count = 4 },
    { itemID = 8172, count = 2 },
    { itemID = 8343, count = 4 },
  }
}

MT_RecipeDB[8349] = { -- Feathered Breastplate
  name = "Feathered Breastplate",
  profession = "Leatherworking",
  spellID = 10647,
  yield = 1,
  materials = {
    { itemID = 4304, count = 40 },
    { itemID = 8168, count = 40 },
    { itemID = 7971, count = 2 },
    { itemID = 8172, count = 4 },
    { itemID = 8343, count = 4 },
  }
}

MT_RecipeDB[8367] = { -- Dragonscale Breastplate
  name = "Dragonscale Breastplate",
  profession = "Leatherworking",
  spellID = 10650,
  yield = 1,
  materials = {
    { itemID = 4304, count = 40 },
    { itemID = 8165, count = 30 },
    { itemID = 8343, count = 4 },
    { itemID = 8172, count = 4 },
  }
}

MT_RecipeDB[8217] = { -- Quickdraw Quiver
  name = "Quickdraw Quiver",
  profession = "Leatherworking",
  spellID = 14930,
  yield = 1,
  materials = {
    { itemID = 4304, count = 12 },
    { itemID = 8172, count = 1 },
    { itemID = 8949, count = 1 },
    { itemID = 4291, count = 4 },
  }
}

MT_RecipeDB[8218] = { -- Thick Leather Ammo Pouch
  name = "Thick Leather Ammo Pouch",
  profession = "Leatherworking",
  spellID = 14932,
  yield = 1,
  materials = {
    { itemID = 4304, count = 10 },
    { itemID = 8172, count = 1 },
    { itemID = 8951, count = 1 },
    { itemID = 4291, count = 6 },
  }
}

MT_RecipeDB[15407] = { -- Cured Rugged Hide
  name = "Cured Rugged Hide",
  profession = "Leatherworking",
  spellID = 19047,
  yield = 1,
  materials = {
    { itemID = 8171, count = 1 },
    { itemID = 15409, count = 1 },
  }
}

MT_RecipeDB[15564] = { -- Rugged Armor Kit
  name = "Rugged Armor Kit",
  profession = "Leatherworking",
  spellID = 19058,
  yield = 1,
  materials = {
    { itemID = 8170, count = 5 },
  }
}

MT_RecipeDB[15077] = { -- Heavy Scorpid Bracers
  name = "Heavy Scorpid Bracers",
  profession = "Leatherworking",
  spellID = 19048,
  yield = 1,
  materials = {
    { itemID = 8170, count = 4 },
    { itemID = 15408, count = 4 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15083] = { -- Wicked Leather Gauntlets
  name = "Wicked Leather Gauntlets",
  profession = "Leatherworking",
  spellID = 19049,
  yield = 1,
  materials = {
    { itemID = 8170, count = 8 },
    { itemID = 2325, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15045] = { -- Green Dragonscale Breastplate
  name = "Green Dragonscale Breastplate",
  profession = "Leatherworking",
  spellID = 19050,
  yield = 1,
  materials = {
    { itemID = 8170, count = 20 },
    { itemID = 15412, count = 25 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[15076] = { -- Heavy Scorpid Vest
  name = "Heavy Scorpid Vest",
  profession = "Leatherworking",
  spellID = 19051,
  yield = 1,
  materials = {
    { itemID = 8170, count = 6 },
    { itemID = 15408, count = 6 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15084] = { -- Wicked Leather Bracers
  name = "Wicked Leather Bracers",
  profession = "Leatherworking",
  spellID = 19052,
  yield = 1,
  materials = {
    { itemID = 8170, count = 8 },
    { itemID = 2325, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15074] = { -- Chimeric Gloves
  name = "Chimeric Gloves",
  profession = "Leatherworking",
  spellID = 19053,
  yield = 1,
  materials = {
    { itemID = 8170, count = 6 },
    { itemID = 15423, count = 6 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15047] = { -- Red Dragonscale Breastplate
  name = "Red Dragonscale Breastplate",
  profession = "Leatherworking",
  spellID = 19054,
  yield = 1,
  materials = {
    { itemID = 8170, count = 40 },
    { itemID = 15414, count = 30 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15091] = { -- Runic Leather Gauntlets
  name = "Runic Leather Gauntlets",
  profession = "Leatherworking",
  spellID = 19055,
  yield = 1,
  materials = {
    { itemID = 8170, count = 10 },
    { itemID = 14047, count = 6 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15054] = { -- Volcanic Leggings
  name = "Volcanic Leggings",
  profession = "Leatherworking",
  spellID = 19059,
  yield = 1,
  materials = {
    { itemID = 8170, count = 6 },
    { itemID = 7078, count = 1 },
    { itemID = 7075, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15046] = { -- Green Dragonscale Leggings
  name = "Green Dragonscale Leggings",
  profession = "Leatherworking",
  spellID = 19060,
  yield = 1,
  materials = {
    { itemID = 8170, count = 20 },
    { itemID = 15412, count = 25 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15061] = { -- Living Shoulders
  name = "Living Shoulders",
  profession = "Leatherworking",
  spellID = 19061,
  yield = 1,
  materials = {
    { itemID = 8170, count = 12 },
    { itemID = 12803, count = 4 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15067] = { -- Ironfeather Shoulders
  name = "Ironfeather Shoulders",
  profession = "Leatherworking",
  spellID = 19062,
  yield = 1,
  materials = {
    { itemID = 8170, count = 24 },
    { itemID = 15420, count = 80 },
    { itemID = 1529, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15073] = { -- Chimeric Boots
  name = "Chimeric Boots",
  profession = "Leatherworking",
  spellID = 19063,
  yield = 1,
  materials = {
    { itemID = 8170, count = 4 },
    { itemID = 15423, count = 8 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15078] = { -- Heavy Scorpid Gauntlets
  name = "Heavy Scorpid Gauntlets",
  profession = "Leatherworking",
  spellID = 19064,
  yield = 1,
  materials = {
    { itemID = 8170, count = 6 },
    { itemID = 15408, count = 8 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15092] = { -- Runic Leather Bracers
  name = "Runic Leather Bracers",
  profession = "Leatherworking",
  spellID = 19065,
  yield = 1,
  materials = {
    { itemID = 8170, count = 6 },
    { itemID = 7971, count = 1 },
    { itemID = 14047, count = 6 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15071] = { -- Frostsaber Boots
  name = "Frostsaber Boots",
  profession = "Leatherworking",
  spellID = 19066,
  yield = 1,
  materials = {
    { itemID = 8170, count = 4 },
    { itemID = 15422, count = 6 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15057] = { -- Stormshroud Pants
  name = "Stormshroud Pants",
  profession = "Leatherworking",
  spellID = 19067,
  yield = 1,
  materials = {
    { itemID = 8170, count = 16 },
    { itemID = 7080, count = 2 },
    { itemID = 7082, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15064] = { -- Warbear Harness
  name = "Warbear Harness",
  profession = "Leatherworking",
  spellID = 19068,
  yield = 1,
  materials = {
    { itemID = 8170, count = 28 },
    { itemID = 15419, count = 12 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15082] = { -- Heavy Scorpid Belt
  name = "Heavy Scorpid Belt",
  profession = "Leatherworking",
  spellID = 19070,
  yield = 1,
  materials = {
    { itemID = 8170, count = 6 },
    { itemID = 15408, count = 8 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15086] = { -- Wicked Leather Headband
  name = "Wicked Leather Headband",
  profession = "Leatherworking",
  spellID = 19071,
  yield = 1,
  materials = {
    { itemID = 8170, count = 12 },
    { itemID = 2325, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15093] = { -- Runic Leather Belt
  name = "Runic Leather Belt",
  profession = "Leatherworking",
  spellID = 19072,
  yield = 1,
  materials = {
    { itemID = 8170, count = 12 },
    { itemID = 14047, count = 10 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15072] = { -- Chimeric Leggings
  name = "Chimeric Leggings",
  profession = "Leatherworking",
  spellID = 19073,
  yield = 1,
  materials = {
    { itemID = 8170, count = 8 },
    { itemID = 15423, count = 8 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15069] = { -- Frostsaber Leggings
  name = "Frostsaber Leggings",
  profession = "Leatherworking",
  spellID = 19074,
  yield = 1,
  materials = {
    { itemID = 8170, count = 6 },
    { itemID = 15422, count = 8 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15079] = { -- Heavy Scorpid Leggings
  name = "Heavy Scorpid Leggings",
  profession = "Leatherworking",
  spellID = 19075,
  yield = 1,
  materials = {
    { itemID = 8170, count = 8 },
    { itemID = 15408, count = 12 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15053] = { -- Volcanic Breastplate
  name = "Volcanic Breastplate",
  profession = "Leatherworking",
  spellID = 19076,
  yield = 1,
  materials = {
    { itemID = 8170, count = 8 },
    { itemID = 7078, count = 1 },
    { itemID = 7076, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15048] = { -- Blue Dragonscale Breastplate
  name = "Blue Dragonscale Breastplate",
  profession = "Leatherworking",
  spellID = 19077,
  yield = 1,
  materials = {
    { itemID = 8170, count = 28 },
    { itemID = 15415, count = 30 },
    { itemID = 15407, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15060] = { -- Living Leggings
  name = "Living Leggings",
  profession = "Leatherworking",
  spellID = 19078,
  yield = 1,
  materials = {
    { itemID = 8170, count = 16 },
    { itemID = 12803, count = 6 },
    { itemID = 15407, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15056] = { -- Stormshroud Armor
  name = "Stormshroud Armor",
  profession = "Leatherworking",
  spellID = 19079,
  yield = 1,
  materials = {
    { itemID = 8170, count = 16 },
    { itemID = 7080, count = 3 },
    { itemID = 7082, count = 3 },
    { itemID = 15407, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15065] = { -- Warbear Woolies
  name = "Warbear Woolies",
  profession = "Leatherworking",
  spellID = 19080,
  yield = 1,
  materials = {
    { itemID = 8170, count = 24 },
    { itemID = 15419, count = 14 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15075] = { -- Chimeric Vest
  name = "Chimeric Vest",
  profession = "Leatherworking",
  spellID = 19081,
  yield = 1,
  materials = {
    { itemID = 8170, count = 10 },
    { itemID = 15423, count = 10 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15050] = { -- Black Dragonscale Breastplate
  name = "Black Dragonscale Breastplate",
  profession = "Leatherworking",
  spellID = 19085,
  yield = 1,
  materials = {
    { itemID = 8170, count = 40 },
    { itemID = 15416, count = 60 },
    { itemID = 15407, count = 1 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[15063] = { -- Devilsaur Gauntlets
  name = "Devilsaur Gauntlets",
  profession = "Leatherworking",
  spellID = 19084,
  yield = 1,
  materials = {
    { itemID = 8170, count = 30 },
    { itemID = 15417, count = 8 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15066] = { -- Ironfeather Breastplate
  name = "Ironfeather Breastplate",
  profession = "Leatherworking",
  spellID = 19086,
  yield = 1,
  materials = {
    { itemID = 8170, count = 40 },
    { itemID = 15420, count = 120 },
    { itemID = 1529, count = 1 },
    { itemID = 15407, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15094] = { -- Runic Leather Headband
  name = "Runic Leather Headband",
  profession = "Leatherworking",
  spellID = 19082,
  yield = 1,
  materials = {
    { itemID = 8170, count = 14 },
    { itemID = 14047, count = 10 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15087] = { -- Wicked Leather Pants
  name = "Wicked Leather Pants",
  profession = "Leatherworking",
  spellID = 19083,
  yield = 1,
  materials = {
    { itemID = 8170, count = 16 },
    { itemID = 15407, count = 1 },
    { itemID = 2325, count = 3 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15049] = { -- Blue Dragonscale Shoulders
  name = "Blue Dragonscale Shoulders",
  profession = "Leatherworking",
  spellID = 19089,
  yield = 1,
  materials = {
    { itemID = 8170, count = 28 },
    { itemID = 15415, count = 30 },
    { itemID = 12810, count = 2 },
    { itemID = 15407, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15070] = { -- Frostsaber Gloves
  name = "Frostsaber Gloves",
  profession = "Leatherworking",
  spellID = 19087,
  yield = 1,
  materials = {
    { itemID = 8170, count = 6 },
    { itemID = 15422, count = 10 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15080] = { -- Heavy Scorpid Helm
  name = "Heavy Scorpid Helm",
  profession = "Leatherworking",
  spellID = 19088,
  yield = 1,
  materials = {
    { itemID = 8170, count = 8 },
    { itemID = 15408, count = 12 },
    { itemID = 15407, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15058] = { -- Stormshroud Shoulders
  name = "Stormshroud Shoulders",
  profession = "Leatherworking",
  spellID = 19090,
  yield = 1,
  materials = {
    { itemID = 8170, count = 12 },
    { itemID = 7080, count = 3 },
    { itemID = 7082, count = 3 },
    { itemID = 12810, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15051] = { -- Black Dragonscale Shoulders
  name = "Black Dragonscale Shoulders",
  profession = "Leatherworking",
  spellID = 19094,
  yield = 1,
  materials = {
    { itemID = 8170, count = 44 },
    { itemID = 15416, count = 45 },
    { itemID = 12810, count = 2 },
    { itemID = 15407, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15062] = { -- Devilsaur Leggings
  name = "Devilsaur Leggings",
  profession = "Leatherworking",
  spellID = 19097,
  yield = 1,
  materials = {
    { itemID = 8170, count = 30 },
    { itemID = 15417, count = 14 },
    { itemID = 15407, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15059] = { -- Living Breastplate
  name = "Living Breastplate",
  profession = "Leatherworking",
  spellID = 19095,
  yield = 1,
  materials = {
    { itemID = 8170, count = 16 },
    { itemID = 12803, count = 8 },
    { itemID = 14342, count = 2 },
    { itemID = 15407, count = 1 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[15138] = { -- Onyxia Scale Cloak
  name = "Onyxia Scale Cloak",
  profession = "Leatherworking",
  spellID = 19093,
  yield = 1,
  materials = {
    { itemID = 15410, count = 1 },
    { itemID = 14044, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15095] = { -- Runic Leather Pants
  name = "Runic Leather Pants",
  profession = "Leatherworking",
  spellID = 19091,
  yield = 1,
  materials = {
    { itemID = 8170, count = 18 },
    { itemID = 14047, count = 12 },
    { itemID = 12810, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[15088] = { -- Wicked Leather Belt
  name = "Wicked Leather Belt",
  profession = "Leatherworking",
  spellID = 19092,
  yield = 1,
  materials = {
    { itemID = 8170, count = 14 },
    { itemID = 2325, count = 2 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[15081] = { -- Heavy Scorpid Shoulders
  name = "Heavy Scorpid Shoulders",
  profession = "Leatherworking",
  spellID = 19100,
  yield = 1,
  materials = {
    { itemID = 8170, count = 14 },
    { itemID = 15408, count = 14 },
    { itemID = 15407, count = 1 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[15090] = { -- Runic Leather Armor
  name = "Runic Leather Armor",
  profession = "Leatherworking",
  spellID = 19102,
  yield = 1,
  materials = {
    { itemID = 8170, count = 22 },
    { itemID = 12810, count = 4 },
    { itemID = 14047, count = 16 },
    { itemID = 15407, count = 1 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[15055] = { -- Volcanic Shoulders
  name = "Volcanic Shoulders",
  profession = "Leatherworking",
  spellID = 19101,
  yield = 1,
  materials = {
    { itemID = 8170, count = 10 },
    { itemID = 7078, count = 1 },
    { itemID = 7076, count = 1 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[15085] = { -- Wicked Leather Armor
  name = "Wicked Leather Armor",
  profession = "Leatherworking",
  spellID = 19098,
  yield = 1,
  materials = {
    { itemID = 8170, count = 20 },
    { itemID = 15407, count = 2 },
    { itemID = 14256, count = 6 },
    { itemID = 2325, count = 4 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[15052] = { -- Black Dragonscale Leggings
  name = "Black Dragonscale Leggings",
  profession = "Leatherworking",
  spellID = 19107,
  yield = 1,
  materials = {
    { itemID = 8170, count = 40 },
    { itemID = 15416, count = 60 },
    { itemID = 12810, count = 4 },
    { itemID = 15407, count = 1 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[15068] = { -- Frostsaber Tunic
  name = "Frostsaber Tunic",
  profession = "Leatherworking",
  spellID = 19104,
  yield = 1,
  materials = {
    { itemID = 8170, count = 12 },
    { itemID = 15422, count = 12 },
    { itemID = 15407, count = 1 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[15141] = { -- Onyxia Scale Breastplate
  name = "Onyxia Scale Breastplate",
  profession = "Leatherworking",
  spellID = 19106,
  yield = 1,
  materials = {
    { itemID = 8170, count = 40 },
    { itemID = 15410, count = 12 },
    { itemID = 15416, count = 60 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[15096] = { -- Runic Leather Shoulders
  name = "Runic Leather Shoulders",
  profession = "Leatherworking",
  spellID = 19103,
  yield = 1,
  materials = {
    { itemID = 8170, count = 16 },
    { itemID = 12810, count = 4 },
    { itemID = 14047, count = 18 },
    { itemID = 15407, count = 1 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[2319] = { -- Medium Leather
  name = "Medium Leather",
  profession = "Leatherworking",
  spellID = 20648,
  yield = 1,
  materials = {
    { itemID = 2318, count = 4 },
  }
}

MT_RecipeDB[4234] = { -- Heavy Leather
  name = "Heavy Leather",
  profession = "Leatherworking",
  spellID = 20649,
  yield = 1,
  materials = {
    { itemID = 2319, count = 5 },
  }
}

MT_RecipeDB[4304] = { -- Thick Leather
  name = "Thick Leather",
  profession = "Leatherworking",
  spellID = 20650,
  yield = 1,
  materials = {
    { itemID = 4234, count = 6 },
  }
}

MT_RecipeDB[16982] = { -- Corehound Boots
  name = "Corehound Boots",
  profession = "Leatherworking",
  spellID = 20853,
  yield = 1,
  materials = {
    { itemID = 17012, count = 20 },
    { itemID = 17010, count = 6 },
    { itemID = 17011, count = 2 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[16983] = { -- Molten Helm
  name = "Molten Helm",
  profession = "Leatherworking",
  spellID = 20854,
  yield = 1,
  materials = {
    { itemID = 17012, count = 15 },
    { itemID = 17010, count = 3 },
    { itemID = 17011, count = 6 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[16984] = { -- Black Dragonscale Boots
  name = "Black Dragonscale Boots",
  profession = "Leatherworking",
  spellID = 20855,
  yield = 1,
  materials = {
    { itemID = 12810, count = 6 },
    { itemID = 15416, count = 30 },
    { itemID = 17010, count = 4 },
    { itemID = 17011, count = 3 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[17721] = { -- Gloves of the Greatfather
  name = "Gloves of the Greatfather",
  profession = "Leatherworking",
  spellID = 21943,
  yield = 1,
  materials = {
    { itemID = 4234, count = 8 },
    { itemID = 7067, count = 4 },
    { itemID = 4291, count = 1 },
  }
}

MT_RecipeDB[8170] = { -- Rugged Leather
  name = "Rugged Leather",
  profession = "Leatherworking",
  spellID = 22331,
  yield = 1,
  materials = {
    { itemID = 4304, count = 6 },
  }
}

MT_RecipeDB[18238] = { -- Shadowskin Gloves
  name = "Shadowskin Gloves",
  profession = "Leatherworking",
  spellID = 22711,
  yield = 1,
  materials = {
    { itemID = 4304, count = 6 },
    { itemID = 7428, count = 8 },
    { itemID = 7971, count = 2 },
    { itemID = 4236, count = 2 },
    { itemID = 1210, count = 4 },
    { itemID = 8343, count = 1 },
  }
}

MT_RecipeDB[18251] = { -- Core Armor Kit
  name = "Core Armor Kit",
  profession = "Leatherworking",
  spellID = 22727,
  yield = 1,
  materials = {
    { itemID = 17012, count = 3 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[18258] = { -- Gordok Ogre Suit
  name = "Gordok Ogre Suit",
  profession = "Leatherworking",
  spellID = 22815,
  yield = 1,
  materials = {
    { itemID = 8170, count = 4 },
    { itemID = 14048, count = 2 },
    { itemID = 18240, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[18504] = { -- Girdle of Insight
  name = "Girdle of Insight",
  profession = "Leatherworking",
  spellID = 22921,
  yield = 1,
  materials = {
    { itemID = 8170, count = 12 },
    { itemID = 12804, count = 12 },
    { itemID = 15407, count = 2 },
    { itemID = 14341, count = 4 },
  }
}

MT_RecipeDB[18506] = { -- Mongoose Boots
  name = "Mongoose Boots",
  profession = "Leatherworking",
  spellID = 22922,
  yield = 1,
  materials = {
    { itemID = 8170, count = 12 },
    { itemID = 7082, count = 6 },
    { itemID = 11754, count = 4 },
    { itemID = 15407, count = 2 },
    { itemID = 14341, count = 4 },
  }
}

MT_RecipeDB[18508] = { -- Swift Flight Bracers
  name = "Swift Flight Bracers",
  profession = "Leatherworking",
  spellID = 22923,
  yield = 1,
  materials = {
    { itemID = 8170, count = 12 },
    { itemID = 18512, count = 8 },
    { itemID = 15420, count = 60 },
    { itemID = 15407, count = 4 },
    { itemID = 14341, count = 4 },
  }
}

MT_RecipeDB[18509] = { -- Chromatic Cloak
  name = "Chromatic Cloak",
  profession = "Leatherworking",
  spellID = 22926,
  yield = 1,
  materials = {
    { itemID = 8170, count = 30 },
    { itemID = 12607, count = 12 },
    { itemID = 15416, count = 30 },
    { itemID = 15414, count = 30 },
    { itemID = 15407, count = 5 },
    { itemID = 14341, count = 8 },
  }
}

MT_RecipeDB[18510] = { -- Hide of the Wild
  name = "Hide of the Wild",
  profession = "Leatherworking",
  spellID = 22927,
  yield = 1,
  materials = {
    { itemID = 8170, count = 30 },
    { itemID = 12803, count = 12 },
    { itemID = 7080, count = 10 },
    { itemID = 18512, count = 8 },
    { itemID = 15407, count = 3 },
    { itemID = 14341, count = 8 },
  }
}

MT_RecipeDB[18511] = { -- Shifting Cloak
  name = "Shifting Cloak",
  profession = "Leatherworking",
  spellID = 22928,
  yield = 1,
  materials = {
    { itemID = 8170, count = 30 },
    { itemID = 7082, count = 12 },
    { itemID = 12753, count = 4 },
    { itemID = 12809, count = 8 },
    { itemID = 15407, count = 4 },
    { itemID = 14341, count = 8 },
  }
}

MT_RecipeDB[18662] = { -- Heavy Leather Ball
  name = "Heavy Leather Ball",
  profession = "Leatherworking",
  spellID = 23190,
  yield = 1,
  materials = {
    { itemID = 4234, count = 2 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[18948] = { -- Barbaric Bracers
  name = "Barbaric Bracers",
  profession = "Leatherworking",
  spellID = 23399,
  yield = 1,
  materials = {
    { itemID = 4234, count = 8 },
    { itemID = 4236, count = 2 },
    { itemID = 5498, count = 4 },
    { itemID = 4461, count = 1 },
    { itemID = 5637, count = 4 },
  }
}

MT_RecipeDB[19044] = { -- Might of the Timbermaw
  name = "Might of the Timbermaw",
  profession = "Leatherworking",
  spellID = 23703,
  yield = 1,
  materials = {
    { itemID = 8170, count = 30 },
    { itemID = 12804, count = 2 },
    { itemID = 12803, count = 4 },
    { itemID = 15407, count = 2 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[19052] = { -- Dawn Treaders
  name = "Dawn Treaders",
  profession = "Leatherworking",
  spellID = 23705,
  yield = 1,
  materials = {
    { itemID = 8170, count = 30 },
    { itemID = 12809, count = 2 },
    { itemID = 7080, count = 4 },
    { itemID = 15407, count = 2 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[19049] = { -- Timbermaw Brawlers
  name = "Timbermaw Brawlers",
  profession = "Leatherworking",
  spellID = 23704,
  yield = 1,
  materials = {
    { itemID = 12810, count = 8 },
    { itemID = 12804, count = 6 },
    { itemID = 12803, count = 6 },
    { itemID = 15407, count = 2 },
    { itemID = 14227, count = 2 },
  }
}

MT_RecipeDB[19058] = { -- Golden Mantle of the Dawn
  name = "Golden Mantle of the Dawn",
  profession = "Leatherworking",
  spellID = 23706,
  yield = 1,
  materials = {
    { itemID = 12810, count = 8 },
    { itemID = 12803, count = 4 },
    { itemID = 12809, count = 4 },
    { itemID = 15407, count = 2 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[19149] = { -- Lava Belt
  name = "Lava Belt",
  profession = "Leatherworking",
  spellID = 23707,
  yield = 1,
  materials = {
    { itemID = 17011, count = 5 },
    { itemID = 15407, count = 4 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[19157] = { -- Chromatic Gauntlets
  name = "Chromatic Gauntlets",
  profession = "Leatherworking",
  spellID = 23708,
  yield = 1,
  materials = {
    { itemID = 17010, count = 5 },
    { itemID = 17011, count = 2 },
    { itemID = 17012, count = 4 },
    { itemID = 12607, count = 4 },
    { itemID = 15407, count = 4 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[19162] = { -- Corehound Belt
  name = "Corehound Belt",
  profession = "Leatherworking",
  spellID = 23709,
  yield = 1,
  materials = {
    { itemID = 17010, count = 8 },
    { itemID = 17012, count = 12 },
    { itemID = 12810, count = 10 },
    { itemID = 15407, count = 4 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[19163] = { -- Molten Belt
  name = "Molten Belt",
  profession = "Leatherworking",
  spellID = 23710,
  yield = 1,
  materials = {
    { itemID = 17010, count = 2 },
    { itemID = 17011, count = 7 },
    { itemID = 7076, count = 6 },
    { itemID = 15407, count = 4 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[19688] = { -- Blood Tiger Breastplate
  name = "Blood Tiger Breastplate",
  profession = "Leatherworking",
  spellID = 24124,
  yield = 1,
  materials = {
    { itemID = 19768, count = 35 },
    { itemID = 19726, count = 2 },
    { itemID = 15407, count = 3 },
    { itemID = 14341, count = 3 },
  }
}

MT_RecipeDB[19689] = { -- Blood Tiger Shoulders
  name = "Blood Tiger Shoulders",
  profession = "Leatherworking",
  spellID = 24125,
  yield = 1,
  materials = {
    { itemID = 19768, count = 25 },
    { itemID = 19726, count = 2 },
    { itemID = 15407, count = 3 },
    { itemID = 14341, count = 3 },
  }
}

MT_RecipeDB[19687] = { -- Primal Batskin Bracers
  name = "Primal Batskin Bracers",
  profession = "Leatherworking",
  spellID = 24123,
  yield = 1,
  materials = {
    { itemID = 19767, count = 8 },
    { itemID = 15407, count = 3 },
    { itemID = 12803, count = 4 },
    { itemID = 14341, count = 3 },
  }
}

MT_RecipeDB[19686] = { -- Primal Batskin Gloves
  name = "Primal Batskin Gloves",
  profession = "Leatherworking",
  spellID = 24122,
  yield = 1,
  materials = {
    { itemID = 19767, count = 10 },
    { itemID = 15407, count = 4 },
    { itemID = 12803, count = 4 },
    { itemID = 14341, count = 3 },
  }
}

MT_RecipeDB[19685] = { -- Primal Batskin Jerkin
  name = "Primal Batskin Jerkin",
  profession = "Leatherworking",
  spellID = 24121,
  yield = 1,
  materials = {
    { itemID = 19767, count = 14 },
    { itemID = 15407, count = 5 },
    { itemID = 12803, count = 4 },
    { itemID = 14341, count = 4 },
  }
}

MT_RecipeDB[20296] = { -- Green Dragonscale Gauntlets
  name = "Green Dragonscale Gauntlets",
  profession = "Leatherworking",
  spellID = 24655,
  yield = 1,
  materials = {
    { itemID = 8170, count = 20 },
    { itemID = 15412, count = 30 },
    { itemID = 15407, count = 1 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[20295] = { -- Blue Dragonscale Leggings
  name = "Blue Dragonscale Leggings",
  profession = "Leatherworking",
  spellID = 24654,
  yield = 1,
  materials = {
    { itemID = 8170, count = 28 },
    { itemID = 15415, count = 36 },
    { itemID = 15407, count = 2 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[20481] = { -- Spitfire Bracers
  name = "Spitfire Bracers",
  profession = "Leatherworking",
  spellID = 24846,
  yield = 1,
  materials = {
    { itemID = 20500, count = 1 },
    { itemID = 20498, count = 20 },
    { itemID = 7078, count = 2 },
  }
}

MT_RecipeDB[20480] = { -- Spitfire Gauntlets
  name = "Spitfire Gauntlets",
  profession = "Leatherworking",
  spellID = 24847,
  yield = 1,
  materials = {
    { itemID = 20500, count = 2 },
    { itemID = 20498, count = 30 },
    { itemID = 7078, count = 2 },
    { itemID = 15407, count = 1 },
  }
}

MT_RecipeDB[20479] = { -- Spitfire Breastplate
  name = "Spitfire Breastplate",
  profession = "Leatherworking",
  spellID = 24848,
  yield = 1,
  materials = {
    { itemID = 20500, count = 3 },
    { itemID = 20498, count = 40 },
    { itemID = 7078, count = 2 },
    { itemID = 15407, count = 2 },
  }
}

MT_RecipeDB[20476] = { -- Sandstalker Bracers
  name = "Sandstalker Bracers",
  profession = "Leatherworking",
  spellID = 24849,
  yield = 1,
  materials = {
    { itemID = 20501, count = 1 },
    { itemID = 20498, count = 20 },
    { itemID = 18512, count = 2 },
  }
}

MT_RecipeDB[20477] = { -- Sandstalker Gauntlets
  name = "Sandstalker Gauntlets",
  profession = "Leatherworking",
  spellID = 24850,
  yield = 1,
  materials = {
    { itemID = 20501, count = 2 },
    { itemID = 20498, count = 30 },
    { itemID = 18512, count = 2 },
    { itemID = 15407, count = 1 },
  }
}

MT_RecipeDB[20478] = { -- Sandstalker Breastplate
  name = "Sandstalker Breastplate",
  profession = "Leatherworking",
  spellID = 24851,
  yield = 1,
  materials = {
    { itemID = 20501, count = 3 },
    { itemID = 20498, count = 40 },
    { itemID = 18512, count = 2 },
    { itemID = 15407, count = 2 },
  }
}

MT_RecipeDB[20575] = { -- Black Whelp Tunic
  name = "Black Whelp Tunic",
  profession = "Leatherworking",
  spellID = 24940,
  yield = 1,
  materials = {
    { itemID = 2319, count = 8 },
    { itemID = 7286, count = 8 },
    { itemID = 4231, count = 1 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[20380] = { -- Dreamscale Breastplate
  name = "Dreamscale Breastplate",
  profession = "Leatherworking",
  spellID = 24703,
  yield = 1,
  materials = {
    { itemID = 12810, count = 12 },
    { itemID = 20381, count = 6 },
    { itemID = 12803, count = 4 },
    { itemID = 15407, count = 4 },
    { itemID = 14227, count = 6 },
  }
}

MT_RecipeDB[21278] = { -- Stormshroud Gloves
  name = "Stormshroud Gloves",
  profession = "Leatherworking",
  spellID = 26279,
  yield = 1,
  materials = {
    { itemID = 12810, count = 6 },
    { itemID = 7080, count = 4 },
    { itemID = 7082, count = 4 },
    { itemID = 15407, count = 2 },
    { itemID = 14227, count = 2 },
  }
}

MT_RecipeDB[22665] = { -- Icy Scale Bracers
  name = "Icy Scale Bracers",
  profession = "Leatherworking",
  spellID = 28224,
  yield = 1,
  materials = {
    { itemID = 22682, count = 4 },
    { itemID = 15408, count = 16 },
    { itemID = 7080, count = 2 },
    { itemID = 15407, count = 2 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[22664] = { -- Icy Scale Breastplate
  name = "Icy Scale Breastplate",
  profession = "Leatherworking",
  spellID = 28222,
  yield = 1,
  materials = {
    { itemID = 22682, count = 7 },
    { itemID = 15408, count = 24 },
    { itemID = 7080, count = 2 },
    { itemID = 15407, count = 4 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[22666] = { -- Icy Scale Gauntlets
  name = "Icy Scale Gauntlets",
  profession = "Leatherworking",
  spellID = 28223,
  yield = 1,
  materials = {
    { itemID = 22682, count = 5 },
    { itemID = 15408, count = 16 },
    { itemID = 7080, count = 2 },
    { itemID = 15407, count = 3 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[22663] = { -- Polar Bracers
  name = "Polar Bracers",
  profession = "Leatherworking",
  spellID = 28221,
  yield = 1,
  materials = {
    { itemID = 22682, count = 4 },
    { itemID = 12810, count = 12 },
    { itemID = 7080, count = 2 },
    { itemID = 15407, count = 2 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[22662] = { -- Polar Gloves
  name = "Polar Gloves",
  profession = "Leatherworking",
  spellID = 28220,
  yield = 1,
  materials = {
    { itemID = 22682, count = 5 },
    { itemID = 12810, count = 12 },
    { itemID = 7080, count = 2 },
    { itemID = 15407, count = 3 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[22661] = { -- Polar Tunic
  name = "Polar Tunic",
  profession = "Leatherworking",
  spellID = 28219,
  yield = 1,
  materials = {
    { itemID = 22682, count = 7 },
    { itemID = 12810, count = 16 },
    { itemID = 7080, count = 2 },
    { itemID = 15407, count = 4 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[22761] = { -- Bramblewood Belt
  name = "Bramblewood Belt",
  profession = "Leatherworking",
  spellID = 28474,
  yield = 1,
  materials = {
    { itemID = 12810, count = 4 },
    { itemID = 12803, count = 2 },
    { itemID = 15407, count = 1 },
  }
}

MT_RecipeDB[22760] = { -- Bramblewood Boots
  name = "Bramblewood Boots",
  profession = "Leatherworking",
  spellID = 28473,
  yield = 1,
  materials = {
    { itemID = 12810, count = 6 },
    { itemID = 18512, count = 2 },
    { itemID = 12803, count = 2 },
    { itemID = 15407, count = 2 },
  }
}

MT_RecipeDB[22759] = { -- Bramblewood Helm
  name = "Bramblewood Helm",
  profession = "Leatherworking",
  spellID = 28472,
  yield = 1,
  materials = {
    { itemID = 12810, count = 12 },
    { itemID = 19726, count = 2 },
    { itemID = 12803, count = 2 },
    { itemID = 15407, count = 2 },
  }
}

MT_RecipeDB[83405] = { -- Grifter
  name = "Grifter",
  profession = "Leatherworking",
  spellID = 46620,
  yield = 1,
  materials = {
    { itemID = 4304, count = 7 },
    { itemID = 4291, count = 3 },
  }
}

MT_RecipeDB[83404] = { -- Grifter
  name = "Grifter",
  profession = "Leatherworking",
  spellID = 46621,
  yield = 1,
  materials = {
    { itemID = 4304, count = 6 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[83403] = { -- Grifter
  name = "Grifter",
  profession = "Leatherworking",
  spellID = 46622,
  yield = 1,
  materials = {
    { itemID = 4234, count = 10 },
    { itemID = 4291, count = 1 },
    { itemID = 4236, count = 1 },
  }
}

MT_RecipeDB[83402] = { -- Grifter
  name = "Grifter",
  profession = "Leatherworking",
  spellID = 46623,
  yield = 1,
  materials = {
    { itemID = 4304, count = 10 },
    { itemID = 4234, count = 2 },
    { itemID = 4291, count = 3 },
    { itemID = 2605, count = 1 },
  }
}

MT_RecipeDB[83401] = { -- Grifter
  name = "Grifter",
  profession = "Leatherworking",
  spellID = 46624,
  yield = 1,
  materials = {
    { itemID = 4304, count = 12 },
    { itemID = 3575, count = 2 },
    { itemID = 4291, count = 4 },
    { itemID = 2605, count = 2 },
  }
}

MT_RecipeDB[83400] = { -- Grifter
  name = "Grifter",
  profession = "Leatherworking",
  spellID = 46625,
  yield = 1,
  materials = {
    { itemID = 4304, count = 8 },
    { itemID = 4338, count = 4 },
    { itemID = 4291, count = 2 },
    { itemID = 2605, count = 1 },
  }
}

MT_RecipeDB[65000] = { -- Red Dragonscale Leggings
  name = "Red Dragonscale Leggings",
  profession = "Leatherworking",
  spellID = 46653,
  yield = 1,
  materials = {
    { itemID = 8170, count = 35 },
    { itemID = 15414, count = 40 },
    { itemID = 12810, count = 4 },
    { itemID = 12803, count = 6 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[65001] = { -- Red Dragonscale Shoulders
  name = "Red Dragonscale Shoulders",
  profession = "Leatherworking",
  spellID = 46654,
  yield = 1,
  materials = {
    { itemID = 8170, count = 30 },
    { itemID = 15414, count = 30 },
    { itemID = 12810, count = 3 },
    { itemID = 12803, count = 4 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[65002] = { -- Red Dragonscale Boots
  name = "Red Dragonscale Boots",
  profession = "Leatherworking",
  spellID = 46655,
  yield = 1,
  materials = {
    { itemID = 8170, count = 30 },
    { itemID = 15414, count = 25 },
    { itemID = 12810, count = 2 },
    { itemID = 12803, count = 4 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[65006] = { -- Stormscale Leggings
  name = "Stormscale Leggings",
  profession = "Leatherworking",
  spellID = 46659,
  yield = 1,
  materials = {
    { itemID = 8170, count = 30 },
    { itemID = 12810, count = 16 },
    { itemID = 20295, count = 1 },
    { itemID = 15407, count = 4 },
    { itemID = 15415, count = 40 },
    { itemID = 7082, count = 12 },
  }
}

MT_RecipeDB[65009] = { -- Shadowskin Boots
  name = "Shadowskin Boots",
  profession = "Leatherworking",
  spellID = 46662,
  yield = 1,
  materials = {
    { itemID = 4304, count = 8 },
    { itemID = 7428, count = 8 },
    { itemID = 7971, count = 2 },
    { itemID = 4236, count = 4 },
    { itemID = 1210, count = 6 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[65019] = { -- Dragonscale Leggings
  name = "Dragonscale Leggings",
  profession = "Leatherworking",
  spellID = 46695,
  yield = 1,
  materials = {
    { itemID = 4304, count = 30 },
    { itemID = 8165, count = 25 },
    { itemID = 8343, count = 4 },
    { itemID = 8172, count = 3 },
  }
}

MT_RecipeDB[81061] = { -- Primalist
  name = "Primalist",
  profession = "Leatherworking",
  spellID = 47015,
  yield = 1,
  materials = {
    { itemID = 8170, count = 6 },
    { itemID = 14047, count = 4 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[81062] = { -- Primalist
  name = "Primalist",
  profession = "Leatherworking",
  spellID = 47016,
  yield = 1,
  materials = {
    { itemID = 8170, count = 12 },
    { itemID = 12803, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[81063] = { -- Primalist
  name = "Primalist",
  profession = "Leatherworking",
  spellID = 47017,
  yield = 1,
  materials = {
    { itemID = 8170, count = 10 },
    { itemID = 7080, count = 1 },
    { itemID = 12803, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[81064] = { -- Primalist
  name = "Primalist",
  profession = "Leatherworking",
  spellID = 47018,
  yield = 1,
  materials = {
    { itemID = 8170, count = 12 },
    { itemID = 8343, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[81066] = { -- Primalist
  name = "Primalist",
  profession = "Leatherworking",
  spellID = 47019,
  yield = 1,
  materials = {
    { itemID = 8170, count = 24 },
    { itemID = 12803, count = 4 },
    { itemID = 15407, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[81065] = { -- Primalist
  name = "Primalist",
  profession = "Leatherworking",
  spellID = 47020,
  yield = 1,
  materials = {
    { itemID = 8170, count = 8 },
    { itemID = 14047, count = 4 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[55522] = { -- Ethereal Helmet
  name = "Ethereal Helmet",
  profession = "Leatherworking",
  spellID = 57609,
  yield = 1,
  materials = {
    { itemID = 15407, count = 2 },
    { itemID = 12810, count = 8 },
    { itemID = 61673, count = 5 },
    { itemID = 14227, count = 1 },
  }
}

MT_RecipeDB[55523] = { -- Ethereal Shoulder Pads
  name = "Ethereal Shoulder Pads",
  profession = "Leatherworking",
  spellID = 57611,
  yield = 1,
  materials = {
    { itemID = 15407, count = 2 },
    { itemID = 12810, count = 7 },
    { itemID = 61673, count = 4 },
    { itemID = 14227, count = 2 },
  }
}

MT_RecipeDB[55524] = { -- Ethereal Tunic
  name = "Ethereal Tunic",
  profession = "Leatherworking",
  spellID = 57613,
  yield = 1,
  materials = {
    { itemID = 15407, count = 4 },
    { itemID = 12810, count = 12 },
    { itemID = 61673, count = 8 },
    { itemID = 14227, count = 1 },
  }
}

MT_RecipeDB[55525] = { -- Ethereal Leggings
  name = "Ethereal Leggings",
  profession = "Leatherworking",
  spellID = 57615,
  yield = 1,
  materials = {
    { itemID = 15407, count = 3 },
    { itemID = 12810, count = 13 },
    { itemID = 61673, count = 6 },
    { itemID = 14227, count = 2 },
  }
}

MT_RecipeDB[65022] = { -- Breastplate of the Earth
  name = "Breastplate of the Earth",
  profession = "Leatherworking",
  spellID = 57008,
  yield = 1,
  materials = {
    { itemID = 4304, count = 40 },
    { itemID = 7075, count = 12 },
    { itemID = 8172, count = 3 },
    { itemID = 8343, count = 4 },
  }
}

MT_RecipeDB[65023] = { -- Boots of the Wind
  name = "Boots of the Wind",
  profession = "Leatherworking",
  spellID = 57010,
  yield = 1,
  materials = {
    { itemID = 4304, count = 20 },
    { itemID = 7081, count = 10 },
    { itemID = 8172, count = 1 },
    { itemID = 8343, count = 4 },
  }
}

MT_RecipeDB[65024] = { -- Earthguard Tunic
  name = "Earthguard Tunic",
  profession = "Leatherworking",
  spellID = 57012,
  yield = 1,
  materials = {
    { itemID = 8170, count = 20 },
    { itemID = 15419, count = 20 },
    { itemID = 15407, count = 6 },
    { itemID = 7076, count = 20 },
    { itemID = 12809, count = 10 },
    { itemID = 13455, count = 5 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[65025] = { -- Flamewrath Leggings
  name = "Flamewrath Leggings",
  profession = "Leatherworking",
  spellID = 57014,
  yield = 1,
  materials = {
    { itemID = 8170, count = 20 },
    { itemID = 15417, count = 15 },
    { itemID = 15407, count = 5 },
    { itemID = 7078, count = 25 },
    { itemID = 11751, count = 2 },
    { itemID = 21546, count = 5 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[65026] = { -- Depthstalker Helmet
  name = "Depthstalker Helmet",
  profession = "Leatherworking",
  spellID = 57016,
  yield = 1,
  materials = {
    { itemID = 8170, count = 15 },
    { itemID = 15422, count = 20 },
    { itemID = 15407, count = 5 },
    { itemID = 7080, count = 20 },
    { itemID = 12457, count = 10 },
    { itemID = 18294, count = 10 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[65027] = { -- Windwalker Boots
  name = "Windwalker Boots",
  profession = "Leatherworking",
  spellID = 57018,
  yield = 1,
  materials = {
    { itemID = 8170, count = 10 },
    { itemID = 15423, count = 20 },
    { itemID = 15407, count = 6 },
    { itemID = 7082, count = 20 },
    { itemID = 12753, count = 6 },
    { itemID = 2459, count = 10 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[65021] = { -- Verdant Dreamer
  name = "Verdant Dreamer",
  profession = "Leatherworking",
  spellID = 47035,
  yield = 1,
  materials = {
    { itemID = 8211, count = 1 },
    { itemID = 12810, count = 16 },
    { itemID = 20002, count = 10 },
    { itemID = 12803, count = 20 },
    { itemID = 15407, count = 4 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[60910] = { -- Centaur Battle Harness
  name = "Centaur Battle Harness",
  profession = "Leatherworking",
  spellID = 57022,
  yield = 1,
  materials = {
    { itemID = 8170, count = 20 },
    { itemID = 12810, count = 8 },
    { itemID = 7082, count = 2 },
    { itemID = 7076, count = 1 },
  }
}

MT_RecipeDB[61183] = { -- Enchanted Armor Kit
  name = "Enchanted Armor Kit",
  profession = "Leatherworking",
  spellID = 57115,
  yield = 1,
  materials = {
    { itemID = 12810, count = 3 },
    { itemID = 61673, count = 3 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[61229] = { -- Dreamhide
  name = "Dreamhide",
  profession = "Leatherworking",
  spellID = 45455,
  yield = 1,
  materials = {
    { itemID = 61198, count = 1 },
    { itemID = 8170, count = 1 },
    { itemID = 20381, count = 1 },
  }
}

MT_RecipeDB[61356] = { -- Dreamhide Mantle
  name = "Dreamhide Mantle",
  profession = "Leatherworking",
  spellID = 45473,
  yield = 1,
  materials = {
    { itemID = 61229, count = 22 },
    { itemID = 12810, count = 20 },
    { itemID = 15407, count = 6 },
    { itemID = 12803, count = 6 },
  }
}

MT_RecipeDB[61357] = { -- Dreamhide Bracers
  name = "Dreamhide Bracers",
  profession = "Leatherworking",
  spellID = 45475,
  yield = 1,
  materials = {
    { itemID = 61229, count = 8 },
    { itemID = 12810, count = 6 },
    { itemID = 15407, count = 1 },
    { itemID = 12803, count = 2 },
  }
}

MT_RecipeDB[61358] = { -- Dreamhide Leggings
  name = "Dreamhide Leggings",
  profession = "Leatherworking",
  spellID = 45477,
  yield = 1,
  materials = {
    { itemID = 61229, count = 12 },
    { itemID = 12810, count = 12 },
    { itemID = 15407, count = 4 },
    { itemID = 12803, count = 6 },
    { itemID = 7082, count = 6 },
  }
}

MT_RecipeDB[61359] = { -- Dreamhide Belt
  name = "Dreamhide Belt",
  profession = "Leatherworking",
  spellID = 45479,
  yield = 1,
  materials = {
    { itemID = 61229, count = 8 },
    { itemID = 12810, count = 12 },
    { itemID = 15407, count = 2 },
    { itemID = 14341, count = 8 },
    { itemID = 7082, count = 8 },
  }
}

MT_RecipeDB[61188] = { -- Inscribed Runic Bracers
  name = "Inscribed Runic Bracers",
  profession = "Leatherworking",
  spellID = 45483,
  yield = 1,
  materials = {
    { itemID = 12810, count = 12 },
    { itemID = 15407, count = 4 },
    { itemID = 12803, count = 4 },
    { itemID = 7076, count = 8 },
    { itemID = 14341, count = 8 },
  }
}

MT_RecipeDB[65015] = { -- Blue Dragonscale Boots
  name = "Blue Dragonscale Boots",
  profession = "Leatherworking",
  spellID = 54001,
  yield = 1,
  materials = {
    { itemID = 8170, count = 24 },
    { itemID = 15415, count = 25 },
    { itemID = 15407, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[65038] = { -- Corehound Gloves
  name = "Corehound Gloves",
  profession = "Leatherworking",
  spellID = 54007,
  yield = 1,
  materials = {
    { itemID = 17010, count = 9 },
    { itemID = 17012, count = 12 },
    { itemID = 12810, count = 12 },
    { itemID = 12607, count = 6 },
    { itemID = 15407, count = 5 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[65036] = { -- Chromatic Leggings
  name = "Chromatic Leggings",
  profession = "Leatherworking",
  spellID = 54013,
  yield = 1,
  materials = {
    { itemID = 17012, count = 6 },
    { itemID = 17010, count = 5 },
    { itemID = 17011, count = 3 },
    { itemID = 12607, count = 6 },
    { itemID = 15407, count = 5 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[65037] = { -- Molten Leggings
  name = "Molten Leggings",
  profession = "Leatherworking",
  spellID = 54015,
  yield = 1,
  materials = {
    { itemID = 17011, count = 6 },
    { itemID = 17010, count = 3 },
    { itemID = 14227, count = 4 },
    { itemID = 7076, count = 6 },
    { itemID = 12607, count = 6 },
    { itemID = 15407, count = 4 },
  }
}

MT_RecipeDB[51284] = { -- Lynxstep Boots
  name = "Lynxstep Boots",
  profession = "Leatherworking",
  spellID = 45069,
  yield = 1,
  materials = {
    { itemID = 2318, count = 8 },
    { itemID = 2321, count = 2 },
    { itemID = 4231, count = 1 },
    { itemID = 818, count = 1 },
  }
}

MT_RecipeDB[55043] = { -- Harness of the High Thane
  name = "Harness of the High Thane",
  profession = "Leatherworking",
  spellID = 37,
  yield = 1,
  materials = {
    { itemID = 15407, count = 6 },
    { itemID = 12810, count = 12 },
    { itemID = 7081, count = 20 },
    { itemID = 7082, count = 8 },
    { itemID = 5117, count = 15 },
    { itemID = 4480, count = 10 },
    { itemID = 14341, count = 4 },
  }
}

MT_RecipeDB[65] = { -- Dragonmaw Armor Kit
  name = "Dragonmaw Armor Kit",
  profession = "Leatherworking",
  spellID = 55,
  yield = 1,
  materials = {
    { itemID = 7287, count = 5 },
    { itemID = 6371, count = 1 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[58112] = { -- Dragonmaw Gloves
  name = "Dragonmaw Gloves",
  profession = "Leatherworking",
  spellID = 70,
  yield = 1,
  materials = {
    { itemID = 4234, count = 14 },
    { itemID = 7287, count = 4 },
    { itemID = 4236, count = 2 },
    { itemID = 5637, count = 2 },
    { itemID = 4402, count = 2 },
    { itemID = 55249, count = 2 },
  }
}

MT_RecipeDB[55050] = { -- Essence Infused Leather Gloves
  name = "Essence Infused Leather Gloves",
  profession = "Leatherworking",
  spellID = 36909,
  yield = 1,
  materials = {
    { itemID = 12810, count = 10 },
    { itemID = 61673, count = 4 },
    { itemID = 16203, count = 4 },
    { itemID = 14341, count = 6 },
  }
}

MT_RecipeDB[55054] = { -- Prismatic Scale Barbute
  name = "Prismatic Scale Barbute",
  profession = "Leatherworking",
  spellID = 36911,
  yield = 1,
  materials = {
    { itemID = 8165, count = 20 },
    { itemID = 15414, count = 5 },
    { itemID = 15415, count = 5 },
    { itemID = 15412, count = 5 },
    { itemID = 15416, count = 5 },
    { itemID = 8170, count = 30 },
  }
}

MT_RecipeDB[2996] = { -- Bolt of Linen Cloth
  name = "Bolt of Linen Cloth",
  profession = "Tailoring",
  spellID = 2963,
  yield = 1,
  materials = {
    { itemID = 2589, count = 2 },
  }
}

MT_RecipeDB[2570] = { -- Linen Cloak
  name = "Linen Cloak",
  profession = "Tailoring",
  spellID = 2387,
  yield = 1,
  materials = {
    { itemID = 2996, count = 1 },
    { itemID = 2320, count = 1 },
  }
}

MT_RecipeDB[2568] = { -- Brown Linen Vest
  name = "Brown Linen Vest",
  profession = "Tailoring",
  spellID = 2385,
  yield = 1,
  materials = {
    { itemID = 2996, count = 1 },
    { itemID = 2320, count = 1 },
  }
}

MT_RecipeDB[2572] = { -- Red Linen Robe
  name = "Red Linen Robe",
  profession = "Tailoring",
  spellID = 2389,
  yield = 1,
  materials = {
    { itemID = 2996, count = 3 },
    { itemID = 2320, count = 2 },
    { itemID = 2604, count = 2 },
  }
}

MT_RecipeDB[2569] = { -- Linen Boots
  name = "Linen Boots",
  profession = "Tailoring",
  spellID = 2386,
  yield = 1,
  materials = {
    { itemID = 2996, count = 3 },
    { itemID = 2320, count = 1 },
    { itemID = 2318, count = 1 },
  }
}

MT_RecipeDB[2575] = { -- Red Linen Shirt
  name = "Red Linen Shirt",
  profession = "Tailoring",
  spellID = 2392,
  yield = 1,
  materials = {
    { itemID = 2996, count = 2 },
    { itemID = 2320, count = 1 },
    { itemID = 2604, count = 1 },
  }
}

MT_RecipeDB[2576] = { -- White Linen Shirt
  name = "White Linen Shirt",
  profession = "Tailoring",
  spellID = 2393,
  yield = 1,
  materials = {
    { itemID = 2996, count = 1 },
    { itemID = 2320, count = 1 },
    { itemID = 2324, count = 1 },
  }
}

MT_RecipeDB[2577] = { -- Blue Linen Shirt
  name = "Blue Linen Shirt",
  profession = "Tailoring",
  spellID = 2394,
  yield = 1,
  materials = {
    { itemID = 2996, count = 2 },
    { itemID = 2320, count = 1 },
    { itemID = 6260, count = 1 },
  }
}

MT_RecipeDB[2580] = { -- Reinforced Linen Cape
  name = "Reinforced Linen Cape",
  profession = "Tailoring",
  spellID = 2397,
  yield = 1,
  materials = {
    { itemID = 2996, count = 2 },
    { itemID = 2320, count = 3 },
  }
}

MT_RecipeDB[2578] = { -- Barbaric Linen Vest
  name = "Barbaric Linen Vest",
  profession = "Tailoring",
  spellID = 2395,
  yield = 1,
  materials = {
    { itemID = 2996, count = 4 },
    { itemID = 2318, count = 1 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[2579] = { -- Green Linen Shirt
  name = "Green Linen Shirt",
  profession = "Tailoring",
  spellID = 2396,
  yield = 1,
  materials = {
    { itemID = 2996, count = 3 },
    { itemID = 2321, count = 1 },
    { itemID = 2605, count = 1 },
  }
}

MT_RecipeDB[2997] = { -- Bolt of Woolen Cloth
  name = "Bolt of Woolen Cloth",
  profession = "Tailoring",
  spellID = 2964,
  yield = 1,
  materials = {
    { itemID = 2592, count = 3 },
  }
}

MT_RecipeDB[2584] = { -- Woolen Cape
  name = "Woolen Cape",
  profession = "Tailoring",
  spellID = 2402,
  yield = 1,
  materials = {
    { itemID = 2997, count = 1 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[2582] = { -- Green Woolen Vest
  name = "Green Woolen Vest",
  profession = "Tailoring",
  spellID = 2399,
  yield = 1,
  materials = {
    { itemID = 2997, count = 2 },
    { itemID = 2321, count = 2 },
    { itemID = 2605, count = 1 },
  }
}

MT_RecipeDB[2583] = { -- Woolen Boots
  name = "Woolen Boots",
  profession = "Tailoring",
  spellID = 2401,
  yield = 1,
  materials = {
    { itemID = 2997, count = 4 },
    { itemID = 2321, count = 2 },
    { itemID = 2318, count = 2 },
  }
}

MT_RecipeDB[2585] = { -- Gray Woolen Robe
  name = "Gray Woolen Robe",
  profession = "Tailoring",
  spellID = 2403,
  yield = 1,
  materials = {
    { itemID = 2997, count = 4 },
    { itemID = 2321, count = 3 },
    { itemID = 4340, count = 1 },
  }
}

MT_RecipeDB[2587] = { -- Gray Woolen Shirt
  name = "Gray Woolen Shirt",
  profession = "Tailoring",
  spellID = 2406,
  yield = 1,
  materials = {
    { itemID = 2997, count = 2 },
    { itemID = 2321, count = 1 },
    { itemID = 4340, count = 1 },
  }
}

MT_RecipeDB[4305] = { -- Bolt of Silk Cloth
  name = "Bolt of Silk Cloth",
  profession = "Tailoring",
  spellID = 3839,
  yield = 1,
  materials = {
    { itemID = 4306, count = 4 },
  }
}

MT_RecipeDB[4339] = { -- Bolt of Mageweave
  name = "Bolt of Mageweave",
  profession = "Tailoring",
  spellID = 3865,
  yield = 1,
  materials = {
    { itemID = 4338, count = 5 },
  }
}

MT_RecipeDB[4307] = { -- Heavy Linen Gloves
  name = "Heavy Linen Gloves",
  profession = "Tailoring",
  spellID = 3840,
  yield = 1,
  materials = {
    { itemID = 2996, count = 2 },
    { itemID = 2320, count = 1 },
  }
}

MT_RecipeDB[4308] = { -- Green Linen Bracers
  name = "Green Linen Bracers",
  profession = "Tailoring",
  spellID = 3841,
  yield = 1,
  materials = {
    { itemID = 2996, count = 3 },
    { itemID = 2320, count = 2 },
    { itemID = 2605, count = 1 },
  }
}

MT_RecipeDB[4309] = { -- Handstitched Linen Britches
  name = "Handstitched Linen Britches",
  profession = "Tailoring",
  spellID = 3842,
  yield = 1,
  materials = {
    { itemID = 2996, count = 4 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[4310] = { -- Heavy Woolen Gloves
  name = "Heavy Woolen Gloves",
  profession = "Tailoring",
  spellID = 3843,
  yield = 1,
  materials = {
    { itemID = 2997, count = 3 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[4311] = { -- Heavy Woolen Cloak
  name = "Heavy Woolen Cloak",
  profession = "Tailoring",
  spellID = 3844,
  yield = 1,
  materials = {
    { itemID = 2997, count = 3 },
    { itemID = 2321, count = 2 },
    { itemID = 5498, count = 2 },
  }
}

MT_RecipeDB[4312] = { -- Soft-soled Linen Boots
  name = "Soft-soled Linen Boots",
  profession = "Tailoring",
  spellID = 3845,
  yield = 1,
  materials = {
    { itemID = 2996, count = 5 },
    { itemID = 2318, count = 2 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[4313] = { -- Red Woolen Boots
  name = "Red Woolen Boots",
  profession = "Tailoring",
  spellID = 3847,
  yield = 1,
  materials = {
    { itemID = 2997, count = 4 },
    { itemID = 2318, count = 2 },
    { itemID = 2321, count = 1 },
    { itemID = 2604, count = 2 },
  }
}

MT_RecipeDB[4314] = { -- Double-stitched Woolen Shoulders
  name = "Double-stitched Woolen Shoulders",
  profession = "Tailoring",
  spellID = 3848,
  yield = 1,
  materials = {
    { itemID = 2997, count = 3 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[4315] = { -- Reinforced Woolen Shoulders
  name = "Reinforced Woolen Shoulders",
  profession = "Tailoring",
  spellID = 3849,
  yield = 1,
  materials = {
    { itemID = 2997, count = 6 },
    { itemID = 2319, count = 2 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[4316] = { -- Heavy Woolen Pants
  name = "Heavy Woolen Pants",
  profession = "Tailoring",
  spellID = 3850,
  yield = 1,
  materials = {
    { itemID = 2997, count = 5 },
    { itemID = 2321, count = 4 },
  }
}

MT_RecipeDB[4317] = { -- Phoenix Pants
  name = "Phoenix Pants",
  profession = "Tailoring",
  spellID = 3851,
  yield = 1,
  materials = {
    { itemID = 2997, count = 6 },
    { itemID = 5500, count = 1 },
    { itemID = 2321, count = 3 },
  }
}

MT_RecipeDB[4318] = { -- Gloves of Meditation
  name = "Gloves of Meditation",
  profession = "Tailoring",
  spellID = 3852,
  yield = 1,
  materials = {
    { itemID = 2997, count = 4 },
    { itemID = 2321, count = 3 },
    { itemID = 3383, count = 1 },
  }
}

MT_RecipeDB[4319] = { -- Azure Silk Gloves
  name = "Azure Silk Gloves",
  profession = "Tailoring",
  spellID = 3854,
  yield = 1,
  materials = {
    { itemID = 4305, count = 3 },
    { itemID = 4234, count = 2 },
    { itemID = 6260, count = 2 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[4320] = { -- Spidersilk Boots
  name = "Spidersilk Boots",
  profession = "Tailoring",
  spellID = 3855,
  yield = 1,
  materials = {
    { itemID = 4305, count = 2 },
    { itemID = 2319, count = 4 },
    { itemID = 3182, count = 4 },
    { itemID = 5500, count = 2 },
  }
}

MT_RecipeDB[4321] = { -- Spider Silk Slippers
  name = "Spider Silk Slippers",
  profession = "Tailoring",
  spellID = 3856,
  yield = 1,
  materials = {
    { itemID = 4305, count = 3 },
    { itemID = 3182, count = 1 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[4322] = { -- Enchanter
  name = "Enchanter",
  profession = "Tailoring",
  spellID = 3857,
  yield = 1,
  materials = {
    { itemID = 4305, count = 3 },
    { itemID = 2321, count = 2 },
    { itemID = 4337, count = 2 },
  }
}

MT_RecipeDB[4323] = { -- Shadow Hood
  name = "Shadow Hood",
  profession = "Tailoring",
  spellID = 3858,
  yield = 1,
  materials = {
    { itemID = 4305, count = 4 },
    { itemID = 4291, count = 1 },
    { itemID = 3824, count = 1 },
  }
}

MT_RecipeDB[4324] = { -- Azure Silk Vest
  name = "Azure Silk Vest",
  profession = "Tailoring",
  spellID = 3859,
  yield = 1,
  materials = {
    { itemID = 4305, count = 5 },
    { itemID = 6260, count = 4 },
  }
}

MT_RecipeDB[4325] = { -- Boots of the Enchanter
  name = "Boots of the Enchanter",
  profession = "Tailoring",
  spellID = 3860,
  yield = 1,
  materials = {
    { itemID = 4305, count = 4 },
    { itemID = 4291, count = 1 },
    { itemID = 4337, count = 2 },
  }
}

MT_RecipeDB[4326] = { -- Long Silken Cloak
  name = "Long Silken Cloak",
  profession = "Tailoring",
  spellID = 3861,
  yield = 1,
  materials = {
    { itemID = 4305, count = 4 },
    { itemID = 3827, count = 1 },
    { itemID = 4291, count = 1 },
  }
}

MT_RecipeDB[4327] = { -- Icy Cloak
  name = "Icy Cloak",
  profession = "Tailoring",
  spellID = 3862,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 4291, count = 2 },
    { itemID = 3829, count = 1 },
    { itemID = 4337, count = 2 },
  }
}

MT_RecipeDB[4328] = { -- Spider Belt
  name = "Spider Belt",
  profession = "Tailoring",
  spellID = 3863,
  yield = 1,
  materials = {
    { itemID = 4305, count = 4 },
    { itemID = 4337, count = 2 },
    { itemID = 7071, count = 1 },
  }
}

MT_RecipeDB[4329] = { -- Star Belt
  name = "Star Belt",
  profession = "Tailoring",
  spellID = 3864,
  yield = 1,
  materials = {
    { itemID = 4339, count = 4 },
    { itemID = 4234, count = 4 },
    { itemID = 3864, count = 1 },
    { itemID = 7071, count = 1 },
    { itemID = 4291, count = 1 },
  }
}

MT_RecipeDB[4330] = { -- Stylish Red Shirt
  name = "Stylish Red Shirt",
  profession = "Tailoring",
  spellID = 3866,
  yield = 1,
  materials = {
    { itemID = 2997, count = 3 },
    { itemID = 2604, count = 2 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[4331] = { -- Phoenix Gloves
  name = "Phoenix Gloves",
  profession = "Tailoring",
  spellID = 3868,
  yield = 1,
  materials = {
    { itemID = 2997, count = 4 },
    { itemID = 5500, count = 1 },
    { itemID = 2321, count = 4 },
    { itemID = 2324, count = 2 },
  }
}

MT_RecipeDB[4332] = { -- Bright Yellow Shirt
  name = "Bright Yellow Shirt",
  profession = "Tailoring",
  spellID = 3869,
  yield = 1,
  materials = {
    { itemID = 4305, count = 1 },
    { itemID = 4341, count = 1 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[4333] = { -- Dark Silk Shirt
  name = "Dark Silk Shirt",
  profession = "Tailoring",
  spellID = 3870,
  yield = 1,
  materials = {
    { itemID = 4305, count = 2 },
    { itemID = 4340, count = 2 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[4334] = { -- Formal White Shirt
  name = "Formal White Shirt",
  profession = "Tailoring",
  spellID = 3871,
  yield = 1,
  materials = {
    { itemID = 4305, count = 3 },
    { itemID = 2324, count = 2 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[4335] = { -- Rich Purple Silk Shirt
  name = "Rich Purple Silk Shirt",
  profession = "Tailoring",
  spellID = 3872,
  yield = 1,
  materials = {
    { itemID = 4305, count = 4 },
    { itemID = 4342, count = 1 },
    { itemID = 4291, count = 1 },
  }
}

MT_RecipeDB[4336] = { -- Black Swashbuckler
  name = "Black Swashbuckler",
  profession = "Tailoring",
  spellID = 3873,
  yield = 1,
  materials = {
    { itemID = 4305, count = 5 },
    { itemID = 2325, count = 1 },
    { itemID = 4291, count = 1 },
  }
}

MT_RecipeDB[4343] = { -- Brown Linen Pants
  name = "Brown Linen Pants",
  profession = "Tailoring",
  spellID = 3914,
  yield = 1,
  materials = {
    { itemID = 2996, count = 2 },
    { itemID = 2320, count = 1 },
  }
}

MT_RecipeDB[4344] = { -- Brown Linen Shirt
  name = "Brown Linen Shirt",
  profession = "Tailoring",
  spellID = 3915,
  yield = 1,
  materials = {
    { itemID = 2996, count = 1 },
    { itemID = 2320, count = 1 },
  }
}

MT_RecipeDB[5542] = { -- Pearl-clasped Cloak
  name = "Pearl-clasped Cloak",
  profession = "Tailoring",
  spellID = 6521,
  yield = 1,
  materials = {
    { itemID = 2997, count = 3 },
    { itemID = 2321, count = 2 },
    { itemID = 5498, count = 1 },
  }
}

MT_RecipeDB[4241] = { -- Green Woolen Bag
  name = "Green Woolen Bag",
  profession = "Tailoring",
  spellID = 3758,
  yield = 1,
  materials = {
    { itemID = 2997, count = 4 },
    { itemID = 2605, count = 1 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[4238] = { -- Linen Bag
  name = "Linen Bag",
  profession = "Tailoring",
  spellID = 3755,
  yield = 1,
  materials = {
    { itemID = 2996, count = 3 },
    { itemID = 2320, count = 3 },
  }
}

MT_RecipeDB[4240] = { -- Woolen Bag
  name = "Woolen Bag",
  profession = "Tailoring",
  spellID = 3757,
  yield = 1,
  materials = {
    { itemID = 2997, count = 3 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[4245] = { -- Small Silk Pack
  name = "Small Silk Pack",
  profession = "Tailoring",
  spellID = 3813,
  yield = 1,
  materials = {
    { itemID = 4305, count = 3 },
    { itemID = 4234, count = 2 },
    { itemID = 2321, count = 3 },
  }
}

MT_RecipeDB[5762] = { -- Red Linen Bag
  name = "Red Linen Bag",
  profession = "Tailoring",
  spellID = 6686,
  yield = 1,
  materials = {
    { itemID = 2996, count = 4 },
    { itemID = 2321, count = 1 },
    { itemID = 2604, count = 1 },
  }
}

MT_RecipeDB[5763] = { -- Red Woolen Bag
  name = "Red Woolen Bag",
  profession = "Tailoring",
  spellID = 6688,
  yield = 1,
  materials = {
    { itemID = 2997, count = 4 },
    { itemID = 2604, count = 1 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[5766] = { -- Lesser Wizard
  name = "Lesser Wizard",
  profession = "Tailoring",
  spellID = 6690,
  yield = 1,
  materials = {
    { itemID = 4305, count = 2 },
    { itemID = 2321, count = 2 },
    { itemID = 3182, count = 2 },
  }
}

MT_RecipeDB[5770] = { -- Robes of Arcana
  name = "Robes of Arcana",
  profession = "Tailoring",
  spellID = 6692,
  yield = 1,
  materials = {
    { itemID = 4305, count = 4 },
    { itemID = 2321, count = 2 },
    { itemID = 3182, count = 2 },
  }
}

MT_RecipeDB[5764] = { -- Green Silk Pack
  name = "Green Silk Pack",
  profession = "Tailoring",
  spellID = 6693,
  yield = 1,
  materials = {
    { itemID = 4305, count = 4 },
    { itemID = 4234, count = 3 },
    { itemID = 2321, count = 3 },
    { itemID = 2605, count = 1 },
  }
}

MT_RecipeDB[5765] = { -- Black Silk Pack
  name = "Black Silk Pack",
  profession = "Tailoring",
  spellID = 6695,
  yield = 1,
  materials = {
    { itemID = 4305, count = 5 },
    { itemID = 2325, count = 1 },
    { itemID = 2321, count = 4 },
  }
}

MT_RecipeDB[6238] = { -- Brown Linen Robe
  name = "Brown Linen Robe",
  profession = "Tailoring",
  spellID = 7623,
  yield = 1,
  materials = {
    { itemID = 2996, count = 3 },
    { itemID = 2320, count = 1 },
  }
}

MT_RecipeDB[6241] = { -- White Linen Robe
  name = "White Linen Robe",
  profession = "Tailoring",
  spellID = 7624,
  yield = 1,
  materials = {
    { itemID = 2996, count = 3 },
    { itemID = 2320, count = 1 },
    { itemID = 2324, count = 1 },
  }
}

MT_RecipeDB[6240] = { -- Blue Linen Vest
  name = "Blue Linen Vest",
  profession = "Tailoring",
  spellID = 7630,
  yield = 1,
  materials = {
    { itemID = 2996, count = 3 },
    { itemID = 2320, count = 1 },
    { itemID = 6260, count = 1 },
  }
}

MT_RecipeDB[6239] = { -- Red Linen Vest
  name = "Red Linen Vest",
  profession = "Tailoring",
  spellID = 7629,
  yield = 1,
  materials = {
    { itemID = 2996, count = 3 },
    { itemID = 2320, count = 1 },
    { itemID = 2604, count = 1 },
  }
}

MT_RecipeDB[6242] = { -- Blue Linen Robe
  name = "Blue Linen Robe",
  profession = "Tailoring",
  spellID = 7633,
  yield = 1,
  materials = {
    { itemID = 2996, count = 4 },
    { itemID = 2320, count = 2 },
    { itemID = 6260, count = 2 },
  }
}

MT_RecipeDB[6243] = { -- Green Woolen Robe
  name = "Green Woolen Robe",
  profession = "Tailoring",
  spellID = 7636,
  yield = 1,
  materials = {
    { itemID = 2997, count = 3 },
    { itemID = 2321, count = 2 },
    { itemID = 2605, count = 1 },
  }
}

MT_RecipeDB[6263] = { -- Blue Overalls
  name = "Blue Overalls",
  profession = "Tailoring",
  spellID = 7639,
  yield = 1,
  materials = {
    { itemID = 2997, count = 4 },
    { itemID = 2321, count = 2 },
    { itemID = 6260, count = 2 },
  }
}

MT_RecipeDB[6264] = { -- Greater Adept
  name = "Greater Adept",
  profession = "Tailoring",
  spellID = 7643,
  yield = 1,
  materials = {
    { itemID = 2997, count = 5 },
    { itemID = 2321, count = 3 },
    { itemID = 2604, count = 3 },
  }
}

MT_RecipeDB[6384] = { -- Stylish Blue Shirt
  name = "Stylish Blue Shirt",
  profession = "Tailoring",
  spellID = 7892,
  yield = 1,
  materials = {
    { itemID = 2997, count = 4 },
    { itemID = 6260, count = 2 },
    { itemID = 4340, count = 1 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[6385] = { -- Stylish Green Shirt
  name = "Stylish Green Shirt",
  profession = "Tailoring",
  spellID = 7893,
  yield = 1,
  materials = {
    { itemID = 2997, count = 4 },
    { itemID = 2605, count = 2 },
    { itemID = 4340, count = 1 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[6786] = { -- Simple Dress
  name = "Simple Dress",
  profession = "Tailoring",
  spellID = 8465,
  yield = 1,
  materials = {
    { itemID = 2996, count = 2 },
    { itemID = 2320, count = 1 },
    { itemID = 6260, count = 1 },
    { itemID = 2324, count = 1 },
  }
}

MT_RecipeDB[6787] = { -- White Woolen Dress
  name = "White Woolen Dress",
  profession = "Tailoring",
  spellID = 8467,
  yield = 1,
  materials = {
    { itemID = 2997, count = 3 },
    { itemID = 2324, count = 4 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[6796] = { -- Red Swashbuckler
  name = "Red Swashbuckler",
  profession = "Tailoring",
  spellID = 8489,
  yield = 1,
  materials = {
    { itemID = 4305, count = 3 },
    { itemID = 2604, count = 2 },
    { itemID = 4291, count = 1 },
  }
}

MT_RecipeDB[6795] = { -- White Swashbuckler
  name = "White Swashbuckler",
  profession = "Tailoring",
  spellID = 8483,
  yield = 1,
  materials = {
    { itemID = 4305, count = 3 },
    { itemID = 2324, count = 2 },
    { itemID = 4291, count = 1 },
  }
}

MT_RecipeDB[7026] = { -- Linen Belt
  name = "Linen Belt",
  profession = "Tailoring",
  spellID = 8776,
  yield = 1,
  materials = {
    { itemID = 2996, count = 1 },
    { itemID = 2320, count = 1 },
  }
}

MT_RecipeDB[7046] = { -- Azure Silk Pants
  name = "Azure Silk Pants",
  profession = "Tailoring",
  spellID = 8758,
  yield = 1,
  materials = {
    { itemID = 4305, count = 4 },
    { itemID = 6260, count = 2 },
    { itemID = 2321, count = 3 },
  }
}

MT_RecipeDB[7048] = { -- Azure Silk Hood
  name = "Azure Silk Hood",
  profession = "Tailoring",
  spellID = 8760,
  yield = 1,
  materials = {
    { itemID = 4305, count = 2 },
    { itemID = 6260, count = 2 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[7050] = { -- Silk Headband
  name = "Silk Headband",
  profession = "Tailoring",
  spellID = 8762,
  yield = 1,
  materials = {
    { itemID = 4305, count = 3 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[7051] = { -- Earthen Vest
  name = "Earthen Vest",
  profession = "Tailoring",
  spellID = 8764,
  yield = 1,
  materials = {
    { itemID = 4305, count = 3 },
    { itemID = 7067, count = 1 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[7052] = { -- Azure Silk Belt
  name = "Azure Silk Belt",
  profession = "Tailoring",
  spellID = 8766,
  yield = 1,
  materials = {
    { itemID = 4305, count = 4 },
    { itemID = 7070, count = 1 },
    { itemID = 6260, count = 2 },
    { itemID = 2321, count = 2 },
    { itemID = 7071, count = 1 },
  }
}

MT_RecipeDB[7054] = { -- Robe of Power
  name = "Robe of Power",
  profession = "Tailoring",
  spellID = 8770,
  yield = 1,
  materials = {
    { itemID = 4339, count = 2 },
    { itemID = 7067, count = 2 },
    { itemID = 7070, count = 2 },
    { itemID = 7068, count = 2 },
    { itemID = 7069, count = 2 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[7055] = { -- Crimson Silk Belt
  name = "Crimson Silk Belt",
  profession = "Tailoring",
  spellID = 8772,
  yield = 1,
  materials = {
    { itemID = 4305, count = 4 },
    { itemID = 7071, count = 1 },
    { itemID = 2604, count = 2 },
    { itemID = 4291, count = 1 },
  }
}

MT_RecipeDB[7057] = { -- Green Silken Shoulders
  name = "Green Silken Shoulders",
  profession = "Tailoring",
  spellID = 8774,
  yield = 1,
  materials = {
    { itemID = 4305, count = 5 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[7027] = { -- Boots of Darkness
  name = "Boots of Darkness",
  profession = "Tailoring",
  spellID = 8778,
  yield = 1,
  materials = {
    { itemID = 4305, count = 3 },
    { itemID = 2319, count = 2 },
    { itemID = 6048, count = 1 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[7047] = { -- Hands of Darkness
  name = "Hands of Darkness",
  profession = "Tailoring",
  spellID = 8780,
  yield = 1,
  materials = {
    { itemID = 4305, count = 3 },
    { itemID = 4234, count = 2 },
    { itemID = 6048, count = 2 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[7049] = { -- Truefaith Gloves
  name = "Truefaith Gloves",
  profession = "Tailoring",
  spellID = 8782,
  yield = 1,
  materials = {
    { itemID = 4305, count = 3 },
    { itemID = 4234, count = 2 },
    { itemID = 929, count = 4 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[7065] = { -- Green Silk Armor
  name = "Green Silk Armor",
  profession = "Tailoring",
  spellID = 8784,
  yield = 1,
  materials = {
    { itemID = 4305, count = 5 },
    { itemID = 2605, count = 2 },
    { itemID = 4291, count = 1 },
  }
}

MT_RecipeDB[7053] = { -- Azure Silk Cloak
  name = "Azure Silk Cloak",
  profession = "Tailoring",
  spellID = 8786,
  yield = 1,
  materials = {
    { itemID = 4305, count = 3 },
    { itemID = 6260, count = 2 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[7056] = { -- Crimson Silk Cloak
  name = "Crimson Silk Cloak",
  profession = "Tailoring",
  spellID = 8789,
  yield = 1,
  materials = {
    { itemID = 4305, count = 5 },
    { itemID = 2604, count = 2 },
    { itemID = 6371, count = 2 },
    { itemID = 4291, count = 1 },
  }
}

MT_RecipeDB[7058] = { -- Crimson Silk Vest
  name = "Crimson Silk Vest",
  profession = "Tailoring",
  spellID = 8791,
  yield = 1,
  materials = {
    { itemID = 4305, count = 4 },
    { itemID = 2604, count = 2 },
    { itemID = 2321, count = 2 },
  }
}

MT_RecipeDB[7059] = { -- Crimson Silk Shoulders
  name = "Crimson Silk Shoulders",
  profession = "Tailoring",
  spellID = 8793,
  yield = 1,
  materials = {
    { itemID = 4305, count = 5 },
    { itemID = 6371, count = 2 },
    { itemID = 2604, count = 2 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[7060] = { -- Azure Shoulders
  name = "Azure Shoulders",
  profession = "Tailoring",
  spellID = 8795,
  yield = 1,
  materials = {
    { itemID = 4305, count = 6 },
    { itemID = 7072, count = 2 },
    { itemID = 6260, count = 2 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[7061] = { -- Earthen Silk Belt
  name = "Earthen Silk Belt",
  profession = "Tailoring",
  spellID = 8797,
  yield = 1,
  materials = {
    { itemID = 4305, count = 5 },
    { itemID = 7067, count = 4 },
    { itemID = 4234, count = 4 },
    { itemID = 7071, count = 1 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[7062] = { -- Crimson Silk Pantaloons
  name = "Crimson Silk Pantaloons",
  profession = "Tailoring",
  spellID = 8799,
  yield = 1,
  materials = {
    { itemID = 4305, count = 4 },
    { itemID = 2604, count = 2 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[7063] = { -- Crimson Silk Robe
  name = "Crimson Silk Robe",
  profession = "Tailoring",
  spellID = 8802,
  yield = 1,
  materials = {
    { itemID = 4305, count = 8 },
    { itemID = 7068, count = 4 },
    { itemID = 3827, count = 2 },
    { itemID = 2604, count = 4 },
    { itemID = 4291, count = 1 },
  }
}

MT_RecipeDB[7064] = { -- Crimson Silk Gloves
  name = "Crimson Silk Gloves",
  profession = "Tailoring",
  spellID = 8804,
  yield = 1,
  materials = {
    { itemID = 4305, count = 6 },
    { itemID = 7068, count = 2 },
    { itemID = 6371, count = 2 },
    { itemID = 4304, count = 2 },
    { itemID = 2604, count = 4 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[10045] = { -- Simple Linen Pants
  name = "Simple Linen Pants",
  profession = "Tailoring",
  spellID = 12044,
  yield = 1,
  materials = {
    { itemID = 2996, count = 1 },
    { itemID = 2320, count = 1 },
  }
}

MT_RecipeDB[10046] = { -- Simple Linen Boots
  name = "Simple Linen Boots",
  profession = "Tailoring",
  spellID = 12045,
  yield = 1,
  materials = {
    { itemID = 2996, count = 2 },
    { itemID = 2318, count = 1 },
    { itemID = 2320, count = 1 },
  }
}

MT_RecipeDB[10047] = { -- Simple Kilt
  name = "Simple Kilt",
  profession = "Tailoring",
  spellID = 12046,
  yield = 1,
  materials = {
    { itemID = 2996, count = 4 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[10048] = { -- Colorful Kilt
  name = "Colorful Kilt",
  profession = "Tailoring",
  spellID = 12047,
  yield = 1,
  materials = {
    { itemID = 2997, count = 5 },
    { itemID = 2604, count = 3 },
    { itemID = 2321, count = 1 },
  }
}

MT_RecipeDB[9998] = { -- Black Mageweave Vest
  name = "Black Mageweave Vest",
  profession = "Tailoring",
  spellID = 12048,
  yield = 1,
  materials = {
    { itemID = 4339, count = 2 },
    { itemID = 4291, count = 3 },
  }
}

MT_RecipeDB[9999] = { -- Black Mageweave Leggings
  name = "Black Mageweave Leggings",
  profession = "Tailoring",
  spellID = 12049,
  yield = 1,
  materials = {
    { itemID = 4339, count = 2 },
    { itemID = 4291, count = 3 },
  }
}

MT_RecipeDB[10001] = { -- Black Mageweave Robe
  name = "Black Mageweave Robe",
  profession = "Tailoring",
  spellID = 12050,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 8343, count = 1 },
  }
}

MT_RecipeDB[10002] = { -- Shadoweave Pants
  name = "Shadoweave Pants",
  profession = "Tailoring",
  spellID = 12052,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 10285, count = 2 },
    { itemID = 8343, count = 1 },
  }
}

MT_RecipeDB[10003] = { -- Black Mageweave Gloves
  name = "Black Mageweave Gloves",
  profession = "Tailoring",
  spellID = 12053,
  yield = 1,
  materials = {
    { itemID = 4339, count = 2 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10004] = { -- Shadoweave Robe
  name = "Shadoweave Robe",
  profession = "Tailoring",
  spellID = 12055,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 10285, count = 2 },
    { itemID = 8343, count = 1 },
  }
}

MT_RecipeDB[10007] = { -- Red Mageweave Vest
  name = "Red Mageweave Vest",
  profession = "Tailoring",
  spellID = 12056,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 2604, count = 2 },
    { itemID = 8343, count = 1 },
  }
}

MT_RecipeDB[10008] = { -- White Bandit Mask
  name = "White Bandit Mask",
  profession = "Tailoring",
  spellID = 12059,
  yield = 1,
  materials = {
    { itemID = 4339, count = 1 },
    { itemID = 2324, count = 1 },
    { itemID = 8343, count = 1 },
  }
}

MT_RecipeDB[10009] = { -- Red Mageweave Pants
  name = "Red Mageweave Pants",
  profession = "Tailoring",
  spellID = 12060,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 2604, count = 2 },
    { itemID = 8343, count = 1 },
  }
}

MT_RecipeDB[10056] = { -- Orange Mageweave Shirt
  name = "Orange Mageweave Shirt",
  profession = "Tailoring",
  spellID = 12061,
  yield = 1,
  materials = {
    { itemID = 4339, count = 1 },
    { itemID = 6261, count = 1 },
    { itemID = 8343, count = 1 },
  }
}

MT_RecipeDB[10010] = { -- Stormcloth Pants
  name = "Stormcloth Pants",
  profession = "Tailoring",
  spellID = 12062,
  yield = 1,
  materials = {
    { itemID = 4339, count = 4 },
    { itemID = 7079, count = 2 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10011] = { -- Stormcloth Gloves
  name = "Stormcloth Gloves",
  profession = "Tailoring",
  spellID = 12063,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 7079, count = 2 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10052] = { -- Orange Martial Shirt
  name = "Orange Martial Shirt",
  profession = "Tailoring",
  spellID = 12064,
  yield = 1,
  materials = {
    { itemID = 4339, count = 2 },
    { itemID = 6261, count = 2 },
    { itemID = 8343, count = 1 },
  }
}

MT_RecipeDB[10050] = { -- Mageweave Bag
  name = "Mageweave Bag",
  profession = "Tailoring",
  spellID = 12065,
  yield = 1,
  materials = {
    { itemID = 4339, count = 4 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[10018] = { -- Red Mageweave Gloves
  name = "Red Mageweave Gloves",
  profession = "Tailoring",
  spellID = 12066,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 2604, count = 2 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10019] = { -- Dreamweave Gloves
  name = "Dreamweave Gloves",
  profession = "Tailoring",
  spellID = 12067,
  yield = 1,
  materials = {
    { itemID = 4339, count = 4 },
    { itemID = 8153, count = 4 },
    { itemID = 10286, count = 2 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10020] = { -- Stormcloth Vest
  name = "Stormcloth Vest",
  profession = "Tailoring",
  spellID = 12068,
  yield = 1,
  materials = {
    { itemID = 4339, count = 5 },
    { itemID = 7079, count = 3 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10042] = { -- Cindercloth Robe
  name = "Cindercloth Robe",
  profession = "Tailoring",
  spellID = 12069,
  yield = 1,
  materials = {
    { itemID = 4339, count = 5 },
    { itemID = 7077, count = 2 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10021] = { -- Dreamweave Vest
  name = "Dreamweave Vest",
  profession = "Tailoring",
  spellID = 12070,
  yield = 1,
  materials = {
    { itemID = 4339, count = 6 },
    { itemID = 8153, count = 6 },
    { itemID = 10286, count = 2 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10023] = { -- Shadoweave Gloves
  name = "Shadoweave Gloves",
  profession = "Tailoring",
  spellID = 12071,
  yield = 1,
  materials = {
    { itemID = 4339, count = 5 },
    { itemID = 10285, count = 5 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10024] = { -- Black Mageweave Headband
  name = "Black Mageweave Headband",
  profession = "Tailoring",
  spellID = 12072,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10026] = { -- Black Mageweave Boots
  name = "Black Mageweave Boots",
  profession = "Tailoring",
  spellID = 12073,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 8343, count = 2 },
    { itemID = 4304, count = 2 },
  }
}

MT_RecipeDB[10027] = { -- Black Mageweave Shoulders
  name = "Black Mageweave Shoulders",
  profession = "Tailoring",
  spellID = 12074,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10054] = { -- Lavender Mageweave Shirt
  name = "Lavender Mageweave Shirt",
  profession = "Tailoring",
  spellID = 12075,
  yield = 1,
  materials = {
    { itemID = 4339, count = 2 },
    { itemID = 4342, count = 2 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10028] = { -- Shadoweave Shoulders
  name = "Shadoweave Shoulders",
  profession = "Tailoring",
  spellID = 12076,
  yield = 1,
  materials = {
    { itemID = 4339, count = 5 },
    { itemID = 10285, count = 4 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10053] = { -- Simple Black Dress
  name = "Simple Black Dress",
  profession = "Tailoring",
  spellID = 12077,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 2325, count = 1 },
    { itemID = 8343, count = 1 },
    { itemID = 2324, count = 1 },
  }
}

MT_RecipeDB[10029] = { -- Red Mageweave Shoulders
  name = "Red Mageweave Shoulders",
  profession = "Tailoring",
  spellID = 12078,
  yield = 1,
  materials = {
    { itemID = 4339, count = 4 },
    { itemID = 2604, count = 2 },
    { itemID = 8343, count = 3 },
  }
}

MT_RecipeDB[10051] = { -- Red Mageweave Bag
  name = "Red Mageweave Bag",
  profession = "Tailoring",
  spellID = 12079,
  yield = 1,
  materials = {
    { itemID = 4339, count = 4 },
    { itemID = 2604, count = 2 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10055] = { -- Pink Mageweave Shirt
  name = "Pink Mageweave Shirt",
  profession = "Tailoring",
  spellID = 12080,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 10290, count = 1 },
    { itemID = 8343, count = 1 },
  }
}

MT_RecipeDB[10030] = { -- Admiral
  name = "Admiral",
  profession = "Tailoring",
  spellID = 12081,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 4589, count = 6 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10031] = { -- Shadoweave Boots
  name = "Shadoweave Boots",
  profession = "Tailoring",
  spellID = 12082,
  yield = 1,
  materials = {
    { itemID = 4339, count = 6 },
    { itemID = 10285, count = 6 },
    { itemID = 8343, count = 3 },
    { itemID = 4304, count = 2 },
  }
}

MT_RecipeDB[10032] = { -- Stormcloth Headband
  name = "Stormcloth Headband",
  profession = "Tailoring",
  spellID = 12083,
  yield = 1,
  materials = {
    { itemID = 4339, count = 4 },
    { itemID = 7079, count = 4 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10033] = { -- Red Mageweave Headband
  name = "Red Mageweave Headband",
  profession = "Tailoring",
  spellID = 12084,
  yield = 1,
  materials = {
    { itemID = 4339, count = 4 },
    { itemID = 2604, count = 2 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10034] = { -- Tuxedo Shirt
  name = "Tuxedo Shirt",
  profession = "Tailoring",
  spellID = 12085,
  yield = 1,
  materials = {
    { itemID = 4339, count = 4 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10025] = { -- Shadoweave Mask
  name = "Shadoweave Mask",
  profession = "Tailoring",
  spellID = 12086,
  yield = 1,
  materials = {
    { itemID = 4339, count = 2 },
    { itemID = 10285, count = 8 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[10038] = { -- Stormcloth Shoulders
  name = "Stormcloth Shoulders",
  profession = "Tailoring",
  spellID = 12087,
  yield = 1,
  materials = {
    { itemID = 4339, count = 5 },
    { itemID = 7079, count = 6 },
    { itemID = 8343, count = 3 },
  }
}

MT_RecipeDB[10044] = { -- Cindercloth Boots
  name = "Cindercloth Boots",
  profession = "Tailoring",
  spellID = 12088,
  yield = 1,
  materials = {
    { itemID = 4339, count = 5 },
    { itemID = 7077, count = 1 },
    { itemID = 8343, count = 3 },
    { itemID = 4304, count = 2 },
  }
}

MT_RecipeDB[10035] = { -- Tuxedo Pants
  name = "Tuxedo Pants",
  profession = "Tailoring",
  spellID = 12089,
  yield = 1,
  materials = {
    { itemID = 4339, count = 4 },
    { itemID = 8343, count = 3 },
  }
}

MT_RecipeDB[10039] = { -- Stormcloth Boots
  name = "Stormcloth Boots",
  profession = "Tailoring",
  spellID = 12090,
  yield = 1,
  materials = {
    { itemID = 4339, count = 6 },
    { itemID = 7079, count = 6 },
    { itemID = 8343, count = 3 },
    { itemID = 4304, count = 2 },
  }
}

MT_RecipeDB[10040] = { -- White Wedding Dress
  name = "White Wedding Dress",
  profession = "Tailoring",
  spellID = 12091,
  yield = 1,
  materials = {
    { itemID = 4339, count = 5 },
    { itemID = 8343, count = 3 },
    { itemID = 2324, count = 1 },
  }
}

MT_RecipeDB[10041] = { -- Dreamweave Circlet
  name = "Dreamweave Circlet",
  profession = "Tailoring",
  spellID = 12092,
  yield = 1,
  materials = {
    { itemID = 4339, count = 8 },
    { itemID = 8153, count = 4 },
    { itemID = 10286, count = 2 },
    { itemID = 8343, count = 3 },
    { itemID = 6037, count = 1 },
    { itemID = 1529, count = 1 },
  }
}

MT_RecipeDB[10036] = { -- Tuxedo Jacket
  name = "Tuxedo Jacket",
  profession = "Tailoring",
  spellID = 12093,
  yield = 1,
  materials = {
    { itemID = 4339, count = 5 },
    { itemID = 8343, count = 3 },
  }
}

MT_RecipeDB[14048] = { -- Bolt of Runecloth
  name = "Bolt of Runecloth",
  profession = "Tailoring",
  spellID = 18401,
  yield = 1,
  materials = {
    { itemID = 14047, count = 5 },
  }
}

MT_RecipeDB[13856] = { -- Runecloth Belt
  name = "Runecloth Belt",
  profession = "Tailoring",
  spellID = 18402,
  yield = 1,
  materials = {
    { itemID = 14048, count = 3 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[13869] = { -- Frostweave Tunic
  name = "Frostweave Tunic",
  profession = "Tailoring",
  spellID = 18403,
  yield = 1,
  materials = {
    { itemID = 14048, count = 5 },
    { itemID = 7079, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[13868] = { -- Frostweave Robe
  name = "Frostweave Robe",
  profession = "Tailoring",
  spellID = 18404,
  yield = 1,
  materials = {
    { itemID = 14048, count = 5 },
    { itemID = 7079, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[13858] = { -- Runecloth Robe
  name = "Runecloth Robe",
  profession = "Tailoring",
  spellID = 18406,
  yield = 1,
  materials = {
    { itemID = 14048, count = 5 },
    { itemID = 14227, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14046] = { -- Runecloth Bag
  name = "Runecloth Bag",
  profession = "Tailoring",
  spellID = 18405,
  yield = 1,
  materials = {
    { itemID = 14048, count = 5 },
    { itemID = 8170, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[13857] = { -- Runecloth Tunic
  name = "Runecloth Tunic",
  profession = "Tailoring",
  spellID = 18407,
  yield = 1,
  materials = {
    { itemID = 14048, count = 5 },
    { itemID = 14227, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14042] = { -- Cindercloth Vest
  name = "Cindercloth Vest",
  profession = "Tailoring",
  spellID = 18408,
  yield = 1,
  materials = {
    { itemID = 14048, count = 5 },
    { itemID = 7077, count = 3 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[13860] = { -- Runecloth Cloak
  name = "Runecloth Cloak",
  profession = "Tailoring",
  spellID = 18409,
  yield = 1,
  materials = {
    { itemID = 14048, count = 4 },
    { itemID = 14227, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14143] = { -- Ghostweave Belt
  name = "Ghostweave Belt",
  profession = "Tailoring",
  spellID = 18410,
  yield = 1,
  materials = {
    { itemID = 14048, count = 3 },
    { itemID = 9210, count = 2 },
    { itemID = 14227, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[13870] = { -- Frostweave Gloves
  name = "Frostweave Gloves",
  profession = "Tailoring",
  spellID = 18411,
  yield = 1,
  materials = {
    { itemID = 14048, count = 3 },
    { itemID = 7080, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14043] = { -- Cindercloth Gloves
  name = "Cindercloth Gloves",
  profession = "Tailoring",
  spellID = 18412,
  yield = 1,
  materials = {
    { itemID = 14048, count = 4 },
    { itemID = 7077, count = 3 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14101] = { -- Brightcloth Gloves
  name = "Brightcloth Gloves",
  profession = "Tailoring",
  spellID = 18415,
  yield = 1,
  materials = {
    { itemID = 14048, count = 4 },
    { itemID = 3577, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14142] = { -- Ghostweave Gloves
  name = "Ghostweave Gloves",
  profession = "Tailoring",
  spellID = 18413,
  yield = 1,
  materials = {
    { itemID = 14048, count = 4 },
    { itemID = 9210, count = 2 },
    { itemID = 14227, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14100] = { -- Brightcloth Robe
  name = "Brightcloth Robe",
  profession = "Tailoring",
  spellID = 18414,
  yield = 1,
  materials = {
    { itemID = 14048, count = 5 },
    { itemID = 3577, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14141] = { -- Ghostweave Vest
  name = "Ghostweave Vest",
  profession = "Tailoring",
  spellID = 18416,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 9210, count = 4 },
    { itemID = 14227, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[13863] = { -- Runecloth Gloves
  name = "Runecloth Gloves",
  profession = "Tailoring",
  spellID = 18417,
  yield = 1,
  materials = {
    { itemID = 14048, count = 4 },
    { itemID = 8170, count = 4 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14044] = { -- Cindercloth Cloak
  name = "Cindercloth Cloak",
  profession = "Tailoring",
  spellID = 18418,
  yield = 1,
  materials = {
    { itemID = 14048, count = 5 },
    { itemID = 7078, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14107] = { -- Felcloth Pants
  name = "Felcloth Pants",
  profession = "Tailoring",
  spellID = 18419,
  yield = 1,
  materials = {
    { itemID = 14048, count = 5 },
    { itemID = 14256, count = 4 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14103] = { -- Brightcloth Cloak
  name = "Brightcloth Cloak",
  profession = "Tailoring",
  spellID = 18420,
  yield = 1,
  materials = {
    { itemID = 14048, count = 4 },
    { itemID = 3577, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14132] = { -- Wizardweave Leggings
  name = "Wizardweave Leggings",
  profession = "Tailoring",
  spellID = 18421,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 11176, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14134] = { -- Cloak of Fire
  name = "Cloak of Fire",
  profession = "Tailoring",
  spellID = 18422,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 7078, count = 4 },
    { itemID = 7077, count = 4 },
    { itemID = 7068, count = 4 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[13864] = { -- Runecloth Boots
  name = "Runecloth Boots",
  profession = "Tailoring",
  spellID = 18423,
  yield = 1,
  materials = {
    { itemID = 14048, count = 4 },
    { itemID = 14227, count = 2 },
    { itemID = 8170, count = 4 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[13871] = { -- Frostweave Pants
  name = "Frostweave Pants",
  profession = "Tailoring",
  spellID = 18424,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 7080, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14045] = { -- Cindercloth Pants
  name = "Cindercloth Pants",
  profession = "Tailoring",
  spellID = 18434,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 7078, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14136] = { -- Robe of Winter Night
  name = "Robe of Winter Night",
  profession = "Tailoring",
  spellID = 18436,
  yield = 1,
  materials = {
    { itemID = 14048, count = 10 },
    { itemID = 14256, count = 12 },
    { itemID = 12808, count = 4 },
    { itemID = 7080, count = 4 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14108] = { -- Felcloth Boots
  name = "Felcloth Boots",
  profession = "Tailoring",
  spellID = 18437,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 14256, count = 4 },
    { itemID = 8170, count = 4 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[13865] = { -- Runecloth Pants
  name = "Runecloth Pants",
  profession = "Tailoring",
  spellID = 18438,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 14227, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14104] = { -- Brightcloth Pants
  name = "Brightcloth Pants",
  profession = "Tailoring",
  spellID = 18439,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 3577, count = 4 },
    { itemID = 14227, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14137] = { -- Mooncloth Leggings
  name = "Mooncloth Leggings",
  profession = "Tailoring",
  spellID = 18440,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 14342, count = 4 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14144] = { -- Ghostweave Pants
  name = "Ghostweave Pants",
  profession = "Tailoring",
  spellID = 18441,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 9210, count = 4 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14111] = { -- Felcloth Hood
  name = "Felcloth Hood",
  profession = "Tailoring",
  spellID = 18442,
  yield = 1,
  materials = {
    { itemID = 14048, count = 5 },
    { itemID = 14256, count = 4 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[13866] = { -- Runecloth Headband
  name = "Runecloth Headband",
  profession = "Tailoring",
  spellID = 18444,
  yield = 1,
  materials = {
    { itemID = 14048, count = 4 },
    { itemID = 14227, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14155] = { -- Mooncloth Bag
  name = "Mooncloth Bag",
  profession = "Tailoring",
  spellID = 18445,
  yield = 1,
  materials = {
    { itemID = 14048, count = 4 },
    { itemID = 14342, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14128] = { -- Wizardweave Robe
  name = "Wizardweave Robe",
  profession = "Tailoring",
  spellID = 18446,
  yield = 1,
  materials = {
    { itemID = 14048, count = 8 },
    { itemID = 11176, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14138] = { -- Mooncloth Vest
  name = "Mooncloth Vest",
  profession = "Tailoring",
  spellID = 18447,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 14342, count = 4 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14139] = { -- Mooncloth Shoulders
  name = "Mooncloth Shoulders",
  profession = "Tailoring",
  spellID = 18448,
  yield = 1,
  materials = {
    { itemID = 14048, count = 5 },
    { itemID = 14342, count = 5 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[13867] = { -- Runecloth Shoulders
  name = "Runecloth Shoulders",
  profession = "Tailoring",
  spellID = 18449,
  yield = 1,
  materials = {
    { itemID = 14048, count = 7 },
    { itemID = 14227, count = 2 },
    { itemID = 8170, count = 4 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14130] = { -- Wizardweave Turban
  name = "Wizardweave Turban",
  profession = "Tailoring",
  spellID = 18450,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 11176, count = 4 },
    { itemID = 7910, count = 1 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[14106] = { -- Felcloth Robe
  name = "Felcloth Robe",
  profession = "Tailoring",
  spellID = 18451,
  yield = 1,
  materials = {
    { itemID = 14048, count = 8 },
    { itemID = 14256, count = 8 },
    { itemID = 12662, count = 4 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[14140] = { -- Mooncloth Circlet
  name = "Mooncloth Circlet",
  profession = "Tailoring",
  spellID = 18452,
  yield = 1,
  materials = {
    { itemID = 14048, count = 4 },
    { itemID = 14342, count = 6 },
    { itemID = 12800, count = 1 },
    { itemID = 12810, count = 2 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[14112] = { -- Felcloth Shoulders
  name = "Felcloth Shoulders",
  profession = "Tailoring",
  spellID = 18453,
  yield = 1,
  materials = {
    { itemID = 14048, count = 7 },
    { itemID = 14256, count = 6 },
    { itemID = 12662, count = 4 },
    { itemID = 8170, count = 4 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[14146] = { -- Gloves of Spell Mastery
  name = "Gloves of Spell Mastery",
  profession = "Tailoring",
  spellID = 18454,
  yield = 1,
  materials = {
    { itemID = 14048, count = 10 },
    { itemID = 14342, count = 10 },
    { itemID = 9210, count = 10 },
    { itemID = 13926, count = 6 },
    { itemID = 12364, count = 6 },
    { itemID = 12810, count = 8 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[14156] = { -- Bottomless Bag
  name = "Bottomless Bag",
  profession = "Tailoring",
  spellID = 18455,
  yield = 1,
  materials = {
    { itemID = 14048, count = 8 },
    { itemID = 14342, count = 12 },
    { itemID = 14344, count = 2 },
    { itemID = 17012, count = 2 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[14154] = { -- Truefaith Vestments
  name = "Truefaith Vestments",
  profession = "Tailoring",
  spellID = 18456,
  yield = 1,
  materials = {
    { itemID = 14048, count = 12 },
    { itemID = 14342, count = 10 },
    { itemID = 12811, count = 4 },
    { itemID = 13926, count = 4 },
    { itemID = 9210, count = 10 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[14152] = { -- Robe of the Archmage
  name = "Robe of the Archmage",
  profession = "Tailoring",
  spellID = 18457,
  yield = 1,
  materials = {
    { itemID = 14048, count = 12 },
    { itemID = 7078, count = 10 },
    { itemID = 7082, count = 10 },
    { itemID = 7076, count = 10 },
    { itemID = 7080, count = 10 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[14153] = { -- Robe of the Void
  name = "Robe of the Void",
  profession = "Tailoring",
  spellID = 18458,
  yield = 1,
  materials = {
    { itemID = 14048, count = 12 },
    { itemID = 12662, count = 20 },
    { itemID = 14256, count = 40 },
    { itemID = 7078, count = 12 },
    { itemID = 12808, count = 12 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[14342] = { -- Mooncloth
  name = "Mooncloth",
  profession = "Tailoring",
  spellID = 18560,
  yield = 1,
  materials = {
    { itemID = 14256, count = 2 },
  }
}

MT_RecipeDB[15802] = { -- Mooncloth Boots
  name = "Mooncloth Boots",
  profession = "Tailoring",
  spellID = 19435,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 14342, count = 4 },
    { itemID = 7971, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[16980] = { -- Flarecore Mantle
  name = "Flarecore Mantle",
  profession = "Tailoring",
  spellID = 20848,
  yield = 1,
  materials = {
    { itemID = 14342, count = 6 },
    { itemID = 17010, count = 4 },
    { itemID = 17011, count = 4 },
    { itemID = 12810, count = 6 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[16979] = { -- Flarecore Gloves
  name = "Flarecore Gloves",
  profession = "Tailoring",
  spellID = 20849,
  yield = 1,
  materials = {
    { itemID = 14342, count = 4 },
    { itemID = 17010, count = 6 },
    { itemID = 7078, count = 4 },
    { itemID = 12810, count = 2 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[17723] = { -- Green Holiday Shirt
  name = "Green Holiday Shirt",
  profession = "Tailoring",
  spellID = 21945,
  yield = 1,
  materials = {
    { itemID = 4305, count = 5 },
    { itemID = 2605, count = 4 },
    { itemID = 4291, count = 1 },
  }
}

MT_RecipeDB[18263] = { -- Flarecore Wraps
  name = "Flarecore Wraps",
  profession = "Tailoring",
  spellID = 22759,
  yield = 1,
  materials = {
    { itemID = 14342, count = 6 },
    { itemID = 17010, count = 8 },
    { itemID = 7078, count = 2 },
    { itemID = 12810, count = 6 },
    { itemID = 14341, count = 4 },
  }
}

MT_RecipeDB[18405] = { -- Belt of the Archmage
  name = "Belt of the Archmage",
  profession = "Tailoring",
  spellID = 22866,
  yield = 1,
  materials = {
    { itemID = 14048, count = 16 },
    { itemID = 9210, count = 10 },
    { itemID = 14342, count = 10 },
    { itemID = 7080, count = 12 },
    { itemID = 7078, count = 12 },
    { itemID = 14344, count = 6 },
    { itemID = 14341, count = 6 },
  }
}

MT_RecipeDB[18407] = { -- Felcloth Gloves
  name = "Felcloth Gloves",
  profession = "Tailoring",
  spellID = 22867,
  yield = 1,
  materials = {
    { itemID = 14048, count = 12 },
    { itemID = 14256, count = 20 },
    { itemID = 12662, count = 6 },
    { itemID = 12808, count = 8 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[18408] = { -- Inferno Gloves
  name = "Inferno Gloves",
  profession = "Tailoring",
  spellID = 22868,
  yield = 1,
  materials = {
    { itemID = 14048, count = 12 },
    { itemID = 7078, count = 10 },
    { itemID = 7910, count = 2 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[18409] = { -- Mooncloth Gloves
  name = "Mooncloth Gloves",
  profession = "Tailoring",
  spellID = 22869,
  yield = 1,
  materials = {
    { itemID = 14048, count = 12 },
    { itemID = 14342, count = 6 },
    { itemID = 13926, count = 2 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[18413] = { -- Cloak of Warding
  name = "Cloak of Warding",
  profession = "Tailoring",
  spellID = 22870,
  yield = 1,
  materials = {
    { itemID = 14048, count = 12 },
    { itemID = 12809, count = 4 },
    { itemID = 12360, count = 1 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[18486] = { -- Mooncloth Robe
  name = "Mooncloth Robe",
  profession = "Tailoring",
  spellID = 22902,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 14342, count = 4 },
    { itemID = 13926, count = 2 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[19047] = { -- Wisdom of the Timbermaw
  name = "Wisdom of the Timbermaw",
  profession = "Tailoring",
  spellID = 23662,
  yield = 1,
  materials = {
    { itemID = 14048, count = 8 },
    { itemID = 7076, count = 3 },
    { itemID = 12803, count = 3 },
    { itemID = 14227, count = 2 },
  }
}

MT_RecipeDB[19056] = { -- Argent Boots
  name = "Argent Boots",
  profession = "Tailoring",
  spellID = 23664,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 12810, count = 4 },
    { itemID = 13926, count = 2 },
    { itemID = 12809, count = 2 },
    { itemID = 14227, count = 2 },
  }
}

MT_RecipeDB[19050] = { -- Mantle of the Timbermaw
  name = "Mantle of the Timbermaw",
  profession = "Tailoring",
  spellID = 23663,
  yield = 1,
  materials = {
    { itemID = 14342, count = 5 },
    { itemID = 7076, count = 5 },
    { itemID = 12803, count = 5 },
    { itemID = 14227, count = 2 },
  }
}

MT_RecipeDB[19059] = { -- Argent Shoulders
  name = "Argent Shoulders",
  profession = "Tailoring",
  spellID = 23665,
  yield = 1,
  materials = {
    { itemID = 14342, count = 5 },
    { itemID = 12809, count = 2 },
    { itemID = 14227, count = 2 },
  }
}

MT_RecipeDB[19156] = { -- Flarecore Robe
  name = "Flarecore Robe",
  profession = "Tailoring",
  spellID = 23666,
  yield = 1,
  materials = {
    { itemID = 14342, count = 10 },
    { itemID = 17010, count = 2 },
    { itemID = 17011, count = 3 },
    { itemID = 7078, count = 6 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[19165] = { -- Flarecore Leggings
  name = "Flarecore Leggings",
  profession = "Tailoring",
  spellID = 23667,
  yield = 1,
  materials = {
    { itemID = 14342, count = 8 },
    { itemID = 17010, count = 5 },
    { itemID = 17011, count = 3 },
    { itemID = 7078, count = 10 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[19684] = { -- Bloodvine Boots
  name = "Bloodvine Boots",
  profession = "Tailoring",
  spellID = 24093,
  yield = 1,
  materials = {
    { itemID = 14342, count = 3 },
    { itemID = 19726, count = 3 },
    { itemID = 12810, count = 4 },
    { itemID = 14048, count = 4 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[19683] = { -- Bloodvine Leggings
  name = "Bloodvine Leggings",
  profession = "Tailoring",
  spellID = 24092,
  yield = 1,
  materials = {
    { itemID = 14342, count = 4 },
    { itemID = 19726, count = 4 },
    { itemID = 12804, count = 4 },
    { itemID = 14048, count = 4 },
    { itemID = 14227, count = 2 },
  }
}

MT_RecipeDB[19682] = { -- Bloodvine Vest
  name = "Bloodvine Vest",
  profession = "Tailoring",
  spellID = 24091,
  yield = 1,
  materials = {
    { itemID = 14342, count = 3 },
    { itemID = 19726, count = 5 },
    { itemID = 12804, count = 4 },
    { itemID = 14048, count = 4 },
    { itemID = 14227, count = 2 },
  }
}

MT_RecipeDB[20539] = { -- Runed Stygian Belt
  name = "Runed Stygian Belt",
  profession = "Tailoring",
  spellID = 24902,
  yield = 1,
  materials = {
    { itemID = 14048, count = 2 },
    { itemID = 20520, count = 6 },
    { itemID = 14256, count = 2 },
    { itemID = 12810, count = 2 },
    { itemID = 14227, count = 2 },
  }
}

MT_RecipeDB[20537] = { -- Runed Stygian Boots
  name = "Runed Stygian Boots",
  profession = "Tailoring",
  spellID = 24903,
  yield = 1,
  materials = {
    { itemID = 14048, count = 4 },
    { itemID = 20520, count = 6 },
    { itemID = 14256, count = 4 },
    { itemID = 12810, count = 2 },
    { itemID = 14227, count = 2 },
  }
}

MT_RecipeDB[20538] = { -- Runed Stygian Leggings
  name = "Runed Stygian Leggings",
  profession = "Tailoring",
  spellID = 24901,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 20520, count = 8 },
    { itemID = 14256, count = 6 },
    { itemID = 14227, count = 2 },
  }
}

MT_RecipeDB[21340] = { -- Soul Pouch
  name = "Soul Pouch",
  profession = "Tailoring",
  spellID = 26085,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 8170, count = 4 },
    { itemID = 7972, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[21341] = { -- Felcloth Bag
  name = "Felcloth Bag",
  profession = "Tailoring",
  spellID = 26086,
  yield = 1,
  materials = {
    { itemID = 14256, count = 12 },
    { itemID = 12810, count = 6 },
    { itemID = 20520, count = 2 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[21342] = { -- Core Felcloth Bag
  name = "Core Felcloth Bag",
  profession = "Tailoring",
  spellID = 26087,
  yield = 1,
  materials = {
    { itemID = 14256, count = 20 },
    { itemID = 17012, count = 16 },
    { itemID = 19726, count = 8 },
    { itemID = 7078, count = 4 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[21154] = { -- Festive Red Dress
  name = "Festive Red Dress",
  profession = "Tailoring",
  spellID = 26403,
  yield = 1,
  materials = {
    { itemID = 14048, count = 4 },
    { itemID = 4625, count = 2 },
    { itemID = 2604, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[21542] = { -- Festive Red Pant Suit
  name = "Festive Red Pant Suit",
  profession = "Tailoring",
  spellID = 26407,
  yield = 1,
  materials = {
    { itemID = 14048, count = 4 },
    { itemID = 4625, count = 2 },
    { itemID = 2604, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[22246] = { -- Enchanted Mageweave Pouch
  name = "Enchanted Mageweave Pouch",
  profession = "Tailoring",
  spellID = 27658,
  yield = 1,
  materials = {
    { itemID = 4339, count = 4 },
    { itemID = 11137, count = 4 },
    { itemID = 8343, count = 2 },
  }
}

MT_RecipeDB[22248] = { -- Enchanted Runecloth Bag
  name = "Enchanted Runecloth Bag",
  profession = "Tailoring",
  spellID = 27659,
  yield = 1,
  materials = {
    { itemID = 14048, count = 5 },
    { itemID = 16203, count = 2 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[22249] = { -- Big Bag of Enchantment
  name = "Big Bag of Enchantment",
  profession = "Tailoring",
  spellID = 27660,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 14344, count = 4 },
    { itemID = 12810, count = 4 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[22251] = { -- Cenarion Herb Bag
  name = "Cenarion Herb Bag",
  profession = "Tailoring",
  spellID = 27724,
  yield = 1,
  materials = {
    { itemID = 14048, count = 5 },
    { itemID = 8831, count = 10 },
    { itemID = 11040, count = 8 },
    { itemID = 14341, count = 2 },
  }
}

MT_RecipeDB[22252] = { -- Satchel of Cenarius
  name = "Satchel of Cenarius",
  profession = "Tailoring",
  spellID = 27725,
  yield = 1,
  materials = {
    { itemID = 14048, count = 6 },
    { itemID = 14342, count = 2 },
    { itemID = 13468, count = 1 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[22660] = { -- Gaea
  name = "Gaea",
  profession = "Tailoring",
  spellID = 28210,
  yield = 1,
  materials = {
    { itemID = 19726, count = 1 },
    { itemID = 14342, count = 2 },
    { itemID = 12803, count = 4 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[22658] = { -- Glacial Cloak
  name = "Glacial Cloak",
  profession = "Tailoring",
  spellID = 28208,
  yield = 1,
  materials = {
    { itemID = 22682, count = 5 },
    { itemID = 14048, count = 4 },
    { itemID = 7080, count = 2 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[22654] = { -- Glacial Gloves
  name = "Glacial Gloves",
  profession = "Tailoring",
  spellID = 28205,
  yield = 1,
  materials = {
    { itemID = 22682, count = 5 },
    { itemID = 14048, count = 4 },
    { itemID = 7080, count = 4 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[22652] = { -- Glacial Vest
  name = "Glacial Vest",
  profession = "Tailoring",
  spellID = 28207,
  yield = 1,
  materials = {
    { itemID = 22682, count = 7 },
    { itemID = 14048, count = 8 },
    { itemID = 7080, count = 6 },
    { itemID = 14227, count = 8 },
  }
}

MT_RecipeDB[22655] = { -- Glacial Wrists
  name = "Glacial Wrists",
  profession = "Tailoring",
  spellID = 28209,
  yield = 1,
  materials = {
    { itemID = 22682, count = 4 },
    { itemID = 14048, count = 2 },
    { itemID = 7080, count = 2 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[22757] = { -- Sylvan Crown
  name = "Sylvan Crown",
  profession = "Tailoring",
  spellID = 28481,
  yield = 1,
  materials = {
    { itemID = 14048, count = 4 },
    { itemID = 14342, count = 2 },
    { itemID = 12803, count = 2 },
    { itemID = 14227, count = 2 },
  }
}

MT_RecipeDB[22758] = { -- Sylvan Shoulders
  name = "Sylvan Shoulders",
  profession = "Tailoring",
  spellID = 28482,
  yield = 1,
  materials = {
    { itemID = 14048, count = 2 },
    { itemID = 12803, count = 4 },
    { itemID = 14227, count = 2 },
  }
}

MT_RecipeDB[22756] = { -- Sylvan Vest
  name = "Sylvan Vest",
  profession = "Tailoring",
  spellID = 28480,
  yield = 1,
  materials = {
    { itemID = 14048, count = 4 },
    { itemID = 19726, count = 2 },
    { itemID = 12803, count = 2 },
    { itemID = 14227, count = 2 },
  }
}

MT_RecipeDB[83280] = { -- Diviner
  name = "Diviner",
  profession = "Tailoring",
  spellID = 46633,
  yield = 1,
  materials = {
    { itemID = 4339, count = 4 },
    { itemID = 8343, count = 2 },
    { itemID = 2842, count = 1 },
    { itemID = 2324, count = 1 },
  }
}

MT_RecipeDB[83281] = { -- Diviner
  name = "Diviner",
  profession = "Tailoring",
  spellID = 46634,
  yield = 1,
  materials = {
    { itemID = 4339, count = 10 },
    { itemID = 8343, count = 4 },
    { itemID = 2842, count = 2 },
    { itemID = 2324, count = 1 },
    { itemID = 17028, count = 1 },
    { itemID = 5500, count = 1 },
  }
}

MT_RecipeDB[83282] = { -- Diviner
  name = "Diviner",
  profession = "Tailoring",
  spellID = 46635,
  yield = 1,
  materials = {
    { itemID = 4339, count = 4 },
    { itemID = 8343, count = 1 },
    { itemID = 2842, count = 1 },
    { itemID = 2324, count = 1 },
  }
}

MT_RecipeDB[83283] = { -- Diviner
  name = "Diviner",
  profession = "Tailoring",
  spellID = 46636,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 8343, count = 3 },
    { itemID = 2324, count = 1 },
    { itemID = 4304, count = 2 },
  }
}

MT_RecipeDB[83284] = { -- Diviner
  name = "Diviner",
  profession = "Tailoring",
  spellID = 46637,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 8343, count = 2 },
    { itemID = 2324, count = 1 },
    { itemID = 6048, count = 1 },
  }
}

MT_RecipeDB[83285] = { -- Diviner
  name = "Diviner",
  profession = "Tailoring",
  spellID = 46638,
  yield = 1,
  materials = {
    { itemID = 4339, count = 6 },
    { itemID = 8343, count = 2 },
    { itemID = 2842, count = 1 },
    { itemID = 17028, count = 1 },
    { itemID = 2324, count = 1 },
  }
}

MT_RecipeDB[83286] = { -- Augerer
  name = "Augerer",
  profession = "Tailoring",
  spellID = 46639,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 8343, count = 1 },
    { itemID = 6260, count = 1 },
    { itemID = 7070, count = 1 },
    { itemID = 3827, count = 2 },
  }
}

MT_RecipeDB[83287] = { -- Augerer
  name = "Augerer",
  profession = "Tailoring",
  spellID = 46640,
  yield = 1,
  materials = {
    { itemID = 4339, count = 6 },
    { itemID = 8343, count = 1 },
    { itemID = 6260, count = 2 },
    { itemID = 7070, count = 2 },
    { itemID = 1705, count = 2 },
    { itemID = 20746, count = 1 },
  }
}

MT_RecipeDB[83291] = { -- Augerer
  name = "Augerer",
  profession = "Tailoring",
  spellID = 46641,
  yield = 1,
  materials = {
    { itemID = 4339, count = 4 },
    { itemID = 8343, count = 1 },
    { itemID = 6260, count = 1 },
    { itemID = 7070, count = 1 },
    { itemID = 3827, count = 2 },
  }
}

MT_RecipeDB[83290] = { -- Augerer
  name = "Augerer",
  profession = "Tailoring",
  spellID = 46642,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 8343, count = 1 },
    { itemID = 6260, count = 1 },
    { itemID = 7070, count = 1 },
    { itemID = 6149, count = 2 },
  }
}

MT_RecipeDB[83289] = { -- Augerer
  name = "Augerer",
  profession = "Tailoring",
  spellID = 46643,
  yield = 1,
  materials = {
    { itemID = 4339, count = 3 },
    { itemID = 8343, count = 2 },
    { itemID = 6260, count = 1 },
    { itemID = 6373, count = 1 },
    { itemID = 9036, count = 1 },
  }
}

MT_RecipeDB[83288] = { -- Augerer
  name = "Augerer",
  profession = "Tailoring",
  spellID = 46644,
  yield = 1,
  materials = {
    { itemID = 4339, count = 2 },
    { itemID = 8343, count = 1 },
    { itemID = 6260, count = 1 },
    { itemID = 7070, count = 1 },
    { itemID = 4234, count = 3 },
  }
}

MT_RecipeDB[83292] = { -- Pillager
  name = "Pillager",
  profession = "Tailoring",
  spellID = 46645,
  yield = 1,
  materials = {
    { itemID = 14048, count = 5 },
    { itemID = 7068, count = 2 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[83293] = { -- Pillager
  name = "Pillager",
  profession = "Tailoring",
  spellID = 46646,
  yield = 1,
  materials = {
    { itemID = 14048, count = 4 },
    { itemID = 7068, count = 1 },
    { itemID = 14341, count = 3 },
    { itemID = 4625, count = 1 },
  }
}

MT_RecipeDB[83294] = { -- Pillager
  name = "Pillager",
  profession = "Tailoring",
  spellID = 46647,
  yield = 1,
  materials = {
    { itemID = 14048, count = 8 },
    { itemID = 7068, count = 3 },
    { itemID = 14341, count = 4 },
    { itemID = 7078, count = 2 },
    { itemID = 4625, count = 4 },
    { itemID = 6037, count = 2 },
  }
}

MT_RecipeDB[83295] = { -- Pillager
  name = "Pillager",
  profession = "Tailoring",
  spellID = 46648,
  yield = 1,
  materials = {
    { itemID = 14048, count = 2 },
    { itemID = 7077, count = 4 },
    { itemID = 14341, count = 1 },
  }
}

MT_RecipeDB[83296] = { -- Pillager
  name = "Pillager",
  profession = "Tailoring",
  spellID = 46649,
  yield = 1,
  materials = {
    { itemID = 14048, count = 2 },
    { itemID = 8170, count = 2 },
    { itemID = 14341, count = 1 },
    { itemID = 6371, count = 1 },
  }
}

MT_RecipeDB[83297] = { -- Pillager
  name = "Pillager",
  profession = "Tailoring",
  spellID = 46650,
  yield = 1,
  materials = {
    { itemID = 14048, count = 4 },
    { itemID = 7077, count = 4 },
    { itemID = 14341, count = 2 },
    { itemID = 4625, count = 1 },
  }
}

MT_RecipeDB[65003] = { -- Robe of Sacrifice
  name = "Robe of Sacrifice",
  profession = "Tailoring",
  spellID = 46656,
  yield = 1,
  materials = {
    { itemID = 14048, count = 12 },
    { itemID = 14256, count = 20 },
    { itemID = 12662, count = 20 },
    { itemID = 10285, count = 8 },
    { itemID = 7971, count = 4 },
    { itemID = 14341, count = 1 },
    { itemID = 20520, count = 10 },
  }
}

MT_RecipeDB[55518] = { -- Cosmic Headdress
  name = "Cosmic Headdress",
  profession = "Tailoring",
  spellID = 57601,
  yield = 1,
  materials = {
    { itemID = 14342, count = 2 },
    { itemID = 61673, count = 5 },
    { itemID = 14048, count = 6 },
    { itemID = 14227, count = 3 },
  }
}

MT_RecipeDB[55519] = { -- Cosmic Mantle
  name = "Cosmic Mantle",
  profession = "Tailoring",
  spellID = 57603,
  yield = 1,
  materials = {
    { itemID = 14342, count = 2 },
    { itemID = 61673, count = 4 },
    { itemID = 14048, count = 3 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[55520] = { -- Cosmic Vest
  name = "Cosmic Vest",
  profession = "Tailoring",
  spellID = 57605,
  yield = 1,
  materials = {
    { itemID = 14342, count = 3 },
    { itemID = 61673, count = 7 },
    { itemID = 14048, count = 8 },
    { itemID = 14227, count = 2 },
  }
}

MT_RecipeDB[55521] = { -- Cosmic Leggings
  name = "Cosmic Leggings",
  profession = "Tailoring",
  spellID = 57607,
  yield = 1,
  materials = {
    { itemID = 14342, count = 3 },
    { itemID = 61673, count = 7 },
    { itemID = 14048, count = 6 },
    { itemID = 14227, count = 2 },
  }
}

MT_RecipeDB[55534] = { -- Ley-Kissed Drape
  name = "Ley-Kissed Drape",
  profession = "Tailoring",
  spellID = 57633,
  yield = 1,
  materials = {
    { itemID = 14342, count = 2 },
    { itemID = 61673, count = 4 },
    { itemID = 14227, count = 4 },
    { itemID = 14048, count = 6 },
    { itemID = 13926, count = 1 },
  }
}

MT_RecipeDB[60909] = { -- Dustguider Sash
  name = "Dustguider Sash",
  profession = "Tailoring",
  spellID = 57020,
  yield = 1,
  materials = {
    { itemID = 14048, count = 10 },
    { itemID = 12810, count = 6 },
    { itemID = 7076, count = 6 },
    { itemID = 14344, count = 1 },
  }
}

MT_RecipeDB[60907] = { -- Windbinder Gloves
  name = "Windbinder Gloves",
  profession = "Tailoring",
  spellID = 57024,
  yield = 1,
  materials = {
    { itemID = 14048, count = 10 },
    { itemID = 14344, count = 2 },
    { itemID = 7069, count = 16 },
    { itemID = 7082, count = 6 },
  }
}

MT_RecipeDB[61230] = { -- Dreamthread
  name = "Dreamthread",
  profession = "Tailoring",
  spellID = 45453,
  yield = 1,
  materials = {
    { itemID = 61198, count = 1 },
    { itemID = 14341, count = 1 },
    { itemID = 20381, count = 1 },
  }
}

MT_RecipeDB[61360] = { -- Dreamthread Mantle
  name = "Dreamthread Mantle",
  profession = "Tailoring",
  spellID = 45457,
  yield = 1,
  materials = {
    { itemID = 61230, count = 20 },
    { itemID = 14342, count = 6 },
    { itemID = 12810, count = 4 },
    { itemID = 14048, count = 40 },
    { itemID = 7082, count = 6 },
    { itemID = 12803, count = 6 },
  }
}

MT_RecipeDB[61361] = { -- Dreamthread Kilt
  name = "Dreamthread Kilt",
  profession = "Tailoring",
  spellID = 45459,
  yield = 1,
  materials = {
    { itemID = 61230, count = 14 },
    { itemID = 14342, count = 4 },
    { itemID = 14048, count = 24 },
    { itemID = 7082, count = 4 },
    { itemID = 7080, count = 4 },
    { itemID = 12803, count = 4 },
  }
}

MT_RecipeDB[61362] = { -- Dreamthread Bracers
  name = "Dreamthread Bracers",
  profession = "Tailoring",
  spellID = 45461,
  yield = 1,
  materials = {
    { itemID = 61230, count = 8 },
    { itemID = 14342, count = 2 },
    { itemID = 7080, count = 2 },
    { itemID = 7082, count = 2 },
  }
}

MT_RecipeDB[61363] = { -- Dreamthread Gloves
  name = "Dreamthread Gloves",
  profession = "Tailoring",
  spellID = 45463,
  yield = 1,
  materials = {
    { itemID = 61230, count = 8 },
    { itemID = 14342, count = 4 },
    { itemID = 14048, count = 12 },
    { itemID = 7082, count = 4 },
    { itemID = 12803, count = 4 },
  }
}

MT_RecipeDB[61186] = { -- Gloves of Unwinding Mystery
  name = "Gloves of Unwinding Mystery",
  profession = "Tailoring",
  spellID = 45485,
  yield = 1,
  materials = {
    { itemID = 14048, count = 14 },
    { itemID = 9210, count = 10 },
    { itemID = 14344, count = 1 },
    { itemID = 12810, count = 1 },
    { itemID = 8846, count = 24 },
  }
}

MT_RecipeDB[61227] = { -- Dreamthread
  name = "Dreamthread",
  profession = "Tailoring",
  spellID = 57123,
  yield = 1,
  materials = {
    { itemID = 61199, count = 1 },
    { itemID = 14341, count = 1 },
    { itemID = 20381, count = 1 },
  }
}

MT_RecipeDB[65035] = { -- Flarecore Boots
  name = "Flarecore Boots",
  profession = "Tailoring",
  spellID = 54011,
  yield = 1,
  materials = {
    { itemID = 14342, count = 6 },
    { itemID = 17010, count = 5 },
    { itemID = 17011, count = 4 },
    { itemID = 7078, count = 10 },
    { itemID = 14227, count = 4 },
  }
}

MT_RecipeDB[51256] = { -- Gloves of Manathirst
  name = "Gloves of Manathirst",
  profession = "Tailoring",
  spellID = 45066,
  yield = 1,
  materials = {
    { itemID = 2996, count = 3 },
    { itemID = 2321, count = 2 },
    { itemID = 6260, count = 3 },
  }
}

MT_RecipeDB[58134] = { -- Stormreaver Gloves
  name = "Stormreaver Gloves",
  profession = "Tailoring",
  spellID = 83,
  yield = 1,
  materials = {
    { itemID = 4305, count = 8 },
    { itemID = 3824, count = 3 },
    { itemID = 7068, count = 3 },
    { itemID = 3864, count = 3 },
    { itemID = 4342, count = 1 },
    { itemID = 4291, count = 2 },
  }
}

MT_RecipeDB[55052] = { -- Astronomer Raiments 	
  name = "Astronomer Raiments 	",
  profession = "Tailoring",
  spellID = 36913,
  yield = 1,
  materials = {
    { itemID = 14048, count = 12 },
    { itemID = 12361, count = 2 },
    { itemID = 55048, count = 5 },
    { itemID = 9210, count = 5 },
  }
}

MT_RecipeDB[55056] = { -- Spellwoven Nobility Drape
  name = "Spellwoven Nobility Drape",
  profession = "Tailoring",
  spellID = 36915,
  yield = 1,
  materials = {
    { itemID = 14342, count = 3 },
    { itemID = 14048, count = 8 },
    { itemID = 20725, count = 1 },
    { itemID = 16204, count = 40 },
    { itemID = 14341, count = 4 },
    { itemID = 9210, count = 10 },
  }
}

MT_RecipeDB[1251] = { -- Linen Bandage
  name = "Linen Bandage",
  profession = "First Aid",
  spellID = 3275,
  yield = 1,
  materials = {
    { itemID = 2589, count = 1 },
  }
}

MT_RecipeDB[2581] = { -- Heavy Linen Bandage
  name = "Heavy Linen Bandage",
  profession = "First Aid",
  spellID = 3276,
  yield = 1,
  materials = {
    { itemID = 2589, count = 2 },
  }
}

MT_RecipeDB[3530] = { -- Wool Bandage
  name = "Wool Bandage",
  profession = "First Aid",
  spellID = 3277,
  yield = 1,
  materials = {
    { itemID = 2592, count = 1 },
  }
}

MT_RecipeDB[3531] = { -- Heavy Wool Bandage
  name = "Heavy Wool Bandage",
  profession = "First Aid",
  spellID = 3278,
  yield = 1,
  materials = {
    { itemID = 2592, count = 2 },
  }
}

MT_RecipeDB[6450] = { -- Silk Bandage
  name = "Silk Bandage",
  profession = "First Aid",
  spellID = 7928,
  yield = 1,
  materials = {
    { itemID = 4306, count = 1 },
  }
}

MT_RecipeDB[6451] = { -- Heavy Silk Bandage
  name = "Heavy Silk Bandage",
  profession = "First Aid",
  spellID = 7929,
  yield = 1,
  materials = {
    { itemID = 4306, count = 2 },
  }
}

MT_RecipeDB[6452] = { -- Anti-Venom
  name = "Anti-Venom",
  profession = "First Aid",
  spellID = 7934,
  yield = 1,
  materials = {
    { itemID = 1475, count = 1 },
  }
}

MT_RecipeDB[6453] = { -- Strong Anti-Venom
  name = "Strong Anti-Venom",
  profession = "First Aid",
  spellID = 7935,
  yield = 1,
  materials = {
    { itemID = 1288, count = 1 },
  }
}

MT_RecipeDB[8544] = { -- Mageweave Bandage
  name = "Mageweave Bandage",
  profession = "First Aid",
  spellID = 10840,
  yield = 1,
  materials = {
    { itemID = 4338, count = 1 },
  }
}

MT_RecipeDB[8545] = { -- Heavy Mageweave Bandage
  name = "Heavy Mageweave Bandage",
  profession = "First Aid",
  spellID = 10841,
  yield = 1,
  materials = {
    { itemID = 4338, count = 2 },
  }
}

MT_RecipeDB[14529] = { -- Runecloth Bandage
  name = "Runecloth Bandage",
  profession = "First Aid",
  spellID = 18629,
  yield = 1,
  materials = {
    { itemID = 14047, count = 1 },
  }
}

MT_RecipeDB[14530] = { -- Heavy Runecloth Bandage
  name = "Heavy Runecloth Bandage",
  profession = "First Aid",
  spellID = 18630,
  yield = 1,
  materials = {
    { itemID = 14047, count = 2 },
  }
}

MT_RecipeDB[19440] = { -- Powerful Anti-Venom
  name = "Powerful Anti-Venom",
  profession = "First Aid",
  spellID = 23787,
  yield = 1,
  materials = {
    { itemID = 19441, count = 1 },
  }
}

MT_RecipeDB[23684] = { -- Crystal Infused Bandage
  name = "Crystal Infused Bandage",
  profession = "First Aid",
  spellID = 30021,
  yield = 1,
  materials = {
    { itemID = 23567, count = 1 },
    { itemID = 14047, count = 10 },
  }
}

MT_RecipeDB[8546] = { -- Powerful Smelling Salts
  name = "Powerful Smelling Salts",
  profession = "First Aid",
  spellID = 10844,
  yield = 1,
  materials = {
    { itemID = 8150, count = 4 },
    { itemID = 7078, count = 2 },
    { itemID = 18512, count = 1 },
  }
}

MT_RecipeDB[2679] = { -- Charred Wolf Meat
  name = "Charred Wolf Meat",
  profession = "Cooking",
  spellID = 2538,
  yield = 1,
  materials = {
    { itemID = 2672, count = 1 },
  }
}

MT_RecipeDB[2680] = { -- Spiced Wolf Meat
  name = "Spiced Wolf Meat",
  profession = "Cooking",
  spellID = 2539,
  yield = 1,
  materials = {
    { itemID = 2672, count = 1 },
    { itemID = 2678, count = 1 },
  }
}

MT_RecipeDB[2681] = { -- Roasted Boar Meat
  name = "Roasted Boar Meat",
  profession = "Cooking",
  spellID = 2540,
  yield = 1,
  materials = {
    { itemID = 769, count = 1 },
  }
}

MT_RecipeDB[2684] = { -- Coyote Steak
  name = "Coyote Steak",
  profession = "Cooking",
  spellID = 2541,
  yield = 1,
  materials = {
    { itemID = 2673, count = 1 },
  }
}

MT_RecipeDB[724] = { -- Goretusk Liver Pie
  name = "Goretusk Liver Pie",
  profession = "Cooking",
  spellID = 2542,
  yield = 1,
  materials = {
    { itemID = 723, count = 1 },
    { itemID = 2678, count = 1 },
  }
}

MT_RecipeDB[733] = { -- Westfall Stew
  name = "Westfall Stew",
  profession = "Cooking",
  spellID = 2543,
  yield = 1,
  materials = {
    { itemID = 729, count = 1 },
    { itemID = 730, count = 1 },
    { itemID = 731, count = 1 },
  }
}

MT_RecipeDB[2683] = { -- Crab Cake
  name = "Crab Cake",
  profession = "Cooking",
  spellID = 2544,
  yield = 1,
  materials = {
    { itemID = 2674, count = 1 },
    { itemID = 2678, count = 1 },
  }
}

MT_RecipeDB[2682] = { -- Cooked Crab Claw
  name = "Cooked Crab Claw",
  profession = "Cooking",
  spellID = 2545,
  yield = 1,
  materials = {
    { itemID = 2675, count = 1 },
    { itemID = 2678, count = 1 },
  }
}

MT_RecipeDB[2687] = { -- Dry Pork Ribs
  name = "Dry Pork Ribs",
  profession = "Cooking",
  spellID = 2546,
  yield = 1,
  materials = {
    { itemID = 2677, count = 1 },
    { itemID = 2678, count = 1 },
  }
}

MT_RecipeDB[1082] = { -- Redridge Goulash
  name = "Redridge Goulash",
  profession = "Cooking",
  spellID = 2547,
  yield = 1,
  materials = {
    { itemID = 1081, count = 1 },
    { itemID = 1080, count = 1 },
  }
}

MT_RecipeDB[2685] = { -- Succulent Pork Ribs
  name = "Succulent Pork Ribs",
  profession = "Cooking",
  spellID = 2548,
  yield = 1,
  materials = {
    { itemID = 2677, count = 2 },
    { itemID = 2692, count = 1 },
  }
}

MT_RecipeDB[1017] = { -- Seasoned Wolf Kabob
  name = "Seasoned Wolf Kabob",
  profession = "Cooking",
  spellID = 2549,
  yield = 1,
  materials = {
    { itemID = 1015, count = 2 },
    { itemID = 2665, count = 1 },
  }
}

MT_RecipeDB[2888] = { -- Beer Basted Boar Ribs
  name = "Beer Basted Boar Ribs",
  profession = "Cooking",
  spellID = 2795,
  yield = 1,
  materials = {
    { itemID = 2886, count = 1 },
    { itemID = 2894, count = 1 },
  }
}

MT_RecipeDB[3662] = { -- Crocolisk Steak
  name = "Crocolisk Steak",
  profession = "Cooking",
  spellID = 3370,
  yield = 1,
  materials = {
    { itemID = 2924, count = 1 },
    { itemID = 2678, count = 1 },
  }
}

MT_RecipeDB[3220] = { -- Blood Sausage
  name = "Blood Sausage",
  profession = "Cooking",
  spellID = 3371,
  yield = 1,
  materials = {
    { itemID = 3173, count = 1 },
    { itemID = 3172, count = 1 },
    { itemID = 3174, count = 1 },
  }
}

MT_RecipeDB[3663] = { -- Murloc Fin Soup
  name = "Murloc Fin Soup",
  profession = "Cooking",
  spellID = 3372,
  yield = 1,
  materials = {
    { itemID = 1468, count = 2 },
    { itemID = 2692, count = 1 },
  }
}

MT_RecipeDB[3664] = { -- Crocolisk Gumbo
  name = "Crocolisk Gumbo",
  profession = "Cooking",
  spellID = 3373,
  yield = 1,
  materials = {
    { itemID = 3667, count = 1 },
    { itemID = 2692, count = 1 },
  }
}

MT_RecipeDB[3665] = { -- Curiously Tasty Omelet
  name = "Curiously Tasty Omelet",
  profession = "Cooking",
  spellID = 3376,
  yield = 1,
  materials = {
    { itemID = 3685, count = 1 },
    { itemID = 2692, count = 1 },
  }
}

MT_RecipeDB[3666] = { -- Gooey Spider Cake
  name = "Gooey Spider Cake",
  profession = "Cooking",
  spellID = 3377,
  yield = 1,
  materials = {
    { itemID = 2251, count = 2 },
    { itemID = 2692, count = 1 },
  }
}

MT_RecipeDB[3726] = { -- Big Bear Steak
  name = "Big Bear Steak",
  profession = "Cooking",
  spellID = 3397,
  yield = 1,
  materials = {
    { itemID = 3730, count = 1 },
    { itemID = 2692, count = 1 },
  }
}

MT_RecipeDB[3727] = { -- Hot Lion Chops
  name = "Hot Lion Chops",
  profession = "Cooking",
  spellID = 3398,
  yield = 1,
  materials = {
    { itemID = 3731, count = 1 },
    { itemID = 2692, count = 1 },
  }
}

MT_RecipeDB[3728] = { -- Tasty Lion Steak
  name = "Tasty Lion Steak",
  profession = "Cooking",
  spellID = 3399,
  yield = 1,
  materials = {
    { itemID = 3731, count = 2 },
    { itemID = 3713, count = 1 },
  }
}

MT_RecipeDB[3729] = { -- Soothing Turtle Bisque
  name = "Soothing Turtle Bisque",
  profession = "Cooking",
  spellID = 3400,
  yield = 1,
  materials = {
    { itemID = 3712, count = 1 },
    { itemID = 3713, count = 1 },
  }
}

MT_RecipeDB[4457] = { -- Barbecued Buzzard Wing
  name = "Barbecued Buzzard Wing",
  profession = "Cooking",
  spellID = 4094,
  yield = 1,
  materials = {
    { itemID = 3404, count = 1 },
    { itemID = 2692, count = 1 },
  }
}

MT_RecipeDB[5472] = { -- Kaldorei Spider Kabob
  name = "Kaldorei Spider Kabob",
  profession = "Cooking",
  spellID = 6412,
  yield = 1,
  materials = {
    { itemID = 5465, count = 1 },
  }
}

MT_RecipeDB[5473] = { -- Scorpid Surprise
  name = "Scorpid Surprise",
  profession = "Cooking",
  spellID = 6413,
  yield = 1,
  materials = {
    { itemID = 5466, count = 1 },
  }
}

MT_RecipeDB[5474] = { -- Roasted Kodo Meat
  name = "Roasted Kodo Meat",
  profession = "Cooking",
  spellID = 6414,
  yield = 1,
  materials = {
    { itemID = 5467, count = 1 },
    { itemID = 2678, count = 1 },
  }
}

MT_RecipeDB[5476] = { -- Fillet of Frenzy
  name = "Fillet of Frenzy",
  profession = "Cooking",
  spellID = 6415,
  yield = 1,
  materials = {
    { itemID = 5468, count = 1 },
    { itemID = 2678, count = 1 },
  }
}

MT_RecipeDB[5477] = { -- Strider Stew
  name = "Strider Stew",
  profession = "Cooking",
  spellID = 6416,
  yield = 1,
  materials = {
    { itemID = 5469, count = 1 },
    { itemID = 4536, count = 1 },
  }
}

MT_RecipeDB[5478] = { -- Dig Rat Stew
  name = "Dig Rat Stew",
  profession = "Cooking",
  spellID = 6417,
  yield = 1,
  materials = {
    { itemID = 5051, count = 1 },
  }
}

MT_RecipeDB[5479] = { -- Crispy Lizard Tail
  name = "Crispy Lizard Tail",
  profession = "Cooking",
  spellID = 6418,
  yield = 1,
  materials = {
    { itemID = 5470, count = 1 },
    { itemID = 2692, count = 1 },
  }
}

MT_RecipeDB[5480] = { -- Lean Venison
  name = "Lean Venison",
  profession = "Cooking",
  spellID = 6419,
  yield = 1,
  materials = {
    { itemID = 5471, count = 1 },
    { itemID = 2678, count = 4 },
  }
}

MT_RecipeDB[5526] = { -- Clam Chowder
  name = "Clam Chowder",
  profession = "Cooking",
  spellID = 6501,
  yield = 1,
  materials = {
    { itemID = 5503, count = 1 },
    { itemID = 1179, count = 1 },
    { itemID = 2678, count = 1 },
  }
}

MT_RecipeDB[5527] = { -- Goblin Deviled Clams
  name = "Goblin Deviled Clams",
  profession = "Cooking",
  spellID = 6500,
  yield = 1,
  materials = {
    { itemID = 5504, count = 1 },
    { itemID = 2692, count = 1 },
  }
}

MT_RecipeDB[5525] = { -- Boiled Clams
  name = "Boiled Clams",
  profession = "Cooking",
  spellID = 6499,
  yield = 1,
  materials = {
    { itemID = 5503, count = 1 },
    { itemID = 159, count = 1 },
  }
}

MT_RecipeDB[6038] = { -- Giant Clam Scorcho
  name = "Giant Clam Scorcho",
  profession = "Cooking",
  spellID = 7213,
  yield = 1,
  materials = {
    { itemID = 4655, count = 1 },
    { itemID = 2692, count = 1 },
  }
}

MT_RecipeDB[6290] = { -- Brilliant Smallfish
  name = "Brilliant Smallfish",
  profession = "Cooking",
  spellID = 7751,
  yield = 1,
  materials = {
    { itemID = 6291, count = 1 },
  }
}

MT_RecipeDB[787] = { -- Slitherskin Mackerel
  name = "Slitherskin Mackerel",
  profession = "Cooking",
  spellID = 7752,
  yield = 1,
  materials = {
    { itemID = 6303, count = 1 },
  }
}

MT_RecipeDB[4592] = { -- Longjaw Mud Snapper
  name = "Longjaw Mud Snapper",
  profession = "Cooking",
  spellID = 7753,
  yield = 1,
  materials = {
    { itemID = 6289, count = 1 },
  }
}

MT_RecipeDB[6316] = { -- Loch Frenzy Delight
  name = "Loch Frenzy Delight",
  profession = "Cooking",
  spellID = 7754,
  yield = 1,
  materials = {
    { itemID = 6317, count = 1 },
    { itemID = 2678, count = 1 },
  }
}

MT_RecipeDB[4593] = { -- Bristle Whisker Catfish
  name = "Bristle Whisker Catfish",
  profession = "Cooking",
  spellID = 7755,
  yield = 1,
  materials = {
    { itemID = 6308, count = 1 },
  }
}

MT_RecipeDB[5095] = { -- Rainbow Fin Albacore
  name = "Rainbow Fin Albacore",
  profession = "Cooking",
  spellID = 7827,
  yield = 1,
  materials = {
    { itemID = 6361, count = 1 },
  }
}

MT_RecipeDB[4594] = { -- Rockscale Cod
  name = "Rockscale Cod",
  profession = "Cooking",
  spellID = 7828,
  yield = 1,
  materials = {
    { itemID = 6362, count = 1 },
  }
}

MT_RecipeDB[6657] = { -- Savory Deviate Delight
  name = "Savory Deviate Delight",
  profession = "Cooking",
  spellID = 8238,
  yield = 1,
  materials = {
    { itemID = 6522, count = 1 },
    { itemID = 2678, count = 1 },
  }
}

MT_RecipeDB[6888] = { -- Herb Baked Egg
  name = "Herb Baked Egg",
  profession = "Cooking",
  spellID = 8604,
  yield = 1,
  materials = {
    { itemID = 6889, count = 1 },
    { itemID = 2678, count = 1 },
  }
}

MT_RecipeDB[6890] = { -- Smoked Bear Meat
  name = "Smoked Bear Meat",
  profession = "Cooking",
  spellID = 8607,
  yield = 1,
  materials = {
    { itemID = 3173, count = 1 },
  }
}

MT_RecipeDB[7676] = { -- Thistle Tea
  name = "Thistle Tea",
  profession = "Cooking",
  spellID = 9513,
  yield = 1,
  materials = {
    { itemID = 2452, count = 1 },
    { itemID = 159, count = 1 },
  }
}

MT_RecipeDB[10841] = { -- Goldthorn Tea
  name = "Goldthorn Tea",
  profession = "Cooking",
  spellID = 13028,
  yield = 1,
  materials = {
    { itemID = 3821, count = 1 },
    { itemID = 159, count = 1 },
  }
}

MT_RecipeDB[12224] = { -- Crispy Bat Wing
  name = "Crispy Bat Wing",
  profession = "Cooking",
  spellID = 15935,
  yield = 1,
  materials = {
    { itemID = 12223, count = 1 },
    { itemID = 2678, count = 1 },
  }
}

MT_RecipeDB[12209] = { -- Lean Wolf Steak
  name = "Lean Wolf Steak",
  profession = "Cooking",
  spellID = 15853,
  yield = 1,
  materials = {
    { itemID = 1015, count = 1 },
    { itemID = 2678, count = 1 },
  }
}

MT_RecipeDB[12210] = { -- Roast Raptor
  name = "Roast Raptor",
  profession = "Cooking",
  spellID = 15855,
  yield = 1,
  materials = {
    { itemID = 12184, count = 1 },
    { itemID = 2692, count = 1 },
  }
}

MT_RecipeDB[13851] = { -- Hot Wolf Ribs
  name = "Hot Wolf Ribs",
  profession = "Cooking",
  spellID = 15856,
  yield = 1,
  materials = {
    { itemID = 12203, count = 1 },
    { itemID = 2692, count = 1 },
  }
}

MT_RecipeDB[12212] = { -- Jungle Stew
  name = "Jungle Stew",
  profession = "Cooking",
  spellID = 15861,
  yield = 1,
  materials = {
    { itemID = 12202, count = 1 },
    { itemID = 159, count = 1 },
    { itemID = 4536, count = 2 },
  }
}

MT_RecipeDB[12213] = { -- Carrion Surprise
  name = "Carrion Surprise",
  profession = "Cooking",
  spellID = 15863,
  yield = 1,
  materials = {
    { itemID = 12037, count = 1 },
    { itemID = 2692, count = 1 },
  }
}

MT_RecipeDB[12214] = { -- Mystery Stew
  name = "Mystery Stew",
  profession = "Cooking",
  spellID = 15865,
  yield = 1,
  materials = {
    { itemID = 12037, count = 1 },
    { itemID = 2596, count = 1 },
  }
}

MT_RecipeDB[12217] = { -- Dragonbreath Chili
  name = "Dragonbreath Chili",
  profession = "Cooking",
  spellID = 15906,
  yield = 1,
  materials = {
    { itemID = 12037, count = 1 },
    { itemID = 4402, count = 1 },
    { itemID = 2692, count = 1 },
  }
}

MT_RecipeDB[12215] = { -- Heavy Kodo Stew
  name = "Heavy Kodo Stew",
  profession = "Cooking",
  spellID = 15910,
  yield = 1,
  materials = {
    { itemID = 12204, count = 2 },
    { itemID = 3713, count = 1 },
    { itemID = 159, count = 1 },
  }
}

MT_RecipeDB[12216] = { -- Spiced Chili Crab
  name = "Spiced Chili Crab",
  profession = "Cooking",
  spellID = 15915,
  yield = 1,
  materials = {
    { itemID = 12206, count = 1 },
    { itemID = 2692, count = 2 },
  }
}

MT_RecipeDB[12218] = { -- Monster Omelet
  name = "Monster Omelet",
  profession = "Cooking",
  spellID = 15933,
  yield = 1,
  materials = {
    { itemID = 12207, count = 1 },
    { itemID = 3713, count = 2 },
  }
}

MT_RecipeDB[13927] = { -- Cooked Glossy Mightfish
  name = "Cooked Glossy Mightfish",
  profession = "Cooking",
  spellID = 18239,
  yield = 1,
  materials = {
    { itemID = 13754, count = 1 },
    { itemID = 3713, count = 1 },
  }
}

MT_RecipeDB[6887] = { -- Spotted Yellowtail
  name = "Spotted Yellowtail",
  profession = "Cooking",
  spellID = 18238,
  yield = 1,
  materials = {
    { itemID = 4603, count = 1 },
  }
}

MT_RecipeDB[13930] = { -- Filet of Redgill
  name = "Filet of Redgill",
  profession = "Cooking",
  spellID = 18241,
  yield = 1,
  materials = {
    { itemID = 13758, count = 1 },
  }
}

MT_RecipeDB[13928] = { -- Grilled Squid
  name = "Grilled Squid",
  profession = "Cooking",
  spellID = 18240,
  yield = 1,
  materials = {
    { itemID = 13755, count = 1 },
    { itemID = 3713, count = 1 },
  }
}

MT_RecipeDB[13929] = { -- Hot Smoked Bass
  name = "Hot Smoked Bass",
  profession = "Cooking",
  spellID = 18242,
  yield = 1,
  materials = {
    { itemID = 13756, count = 1 },
    { itemID = 2692, count = 2 },
  }
}

MT_RecipeDB[13931] = { -- Nightfin Soup
  name = "Nightfin Soup",
  profession = "Cooking",
  spellID = 18243,
  yield = 1,
  materials = {
    { itemID = 13759, count = 1 },
    { itemID = 159, count = 1 },
  }
}

MT_RecipeDB[13932] = { -- Poached Sunscale Salmon
  name = "Poached Sunscale Salmon",
  profession = "Cooking",
  spellID = 18244,
  yield = 1,
  materials = {
    { itemID = 13760, count = 1 },
  }
}

MT_RecipeDB[13933] = { -- Lobster Stew
  name = "Lobster Stew",
  profession = "Cooking",
  spellID = 18245,
  yield = 1,
  materials = {
    { itemID = 13888, count = 1 },
    { itemID = 159, count = 1 },
  }
}

MT_RecipeDB[13934] = { -- Mightfish Steak
  name = "Mightfish Steak",
  profession = "Cooking",
  spellID = 18246,
  yield = 1,
  materials = {
    { itemID = 13893, count = 1 },
    { itemID = 2692, count = 1 },
    { itemID = 3713, count = 1 },
  }
}

MT_RecipeDB[13935] = { -- Baked Salmon
  name = "Baked Salmon",
  profession = "Cooking",
  spellID = 18247,
  yield = 1,
  materials = {
    { itemID = 13889, count = 1 },
    { itemID = 3713, count = 1 },
  }
}

MT_RecipeDB[16766] = { -- Undermine Clam Chowder
  name = "Undermine Clam Chowder",
  profession = "Cooking",
  spellID = 20626,
  yield = 1,
  materials = {
    { itemID = 7974, count = 2 },
    { itemID = 2692, count = 1 },
    { itemID = 1179, count = 1 },
  }
}

MT_RecipeDB[8364] = { -- Mithril Headed Trout
  name = "Mithril Headed Trout",
  profession = "Cooking",
  spellID = 20916,
  yield = 1,
  materials = {
    { itemID = 8365, count = 1 },
  }
}

MT_RecipeDB[17198] = { -- Egg Nog
  name = "Egg Nog",
  profession = "Cooking",
  spellID = 21144,
  yield = 1,
  materials = {
    { itemID = 6889, count = 1 },
    { itemID = 1179, count = 1 },
    { itemID = 17196, count = 1 },
    { itemID = 17194, count = 1 },
  }
}

MT_RecipeDB[17197] = { -- Gingerbread Cookie
  name = "Gingerbread Cookie",
  profession = "Cooking",
  spellID = 21143,
  yield = 1,
  materials = {
    { itemID = 6889, count = 1 },
    { itemID = 17194, count = 1 },
  }
}

MT_RecipeDB[17222] = { -- Spider Sausage
  name = "Spider Sausage",
  profession = "Cooking",
  spellID = 21175,
  yield = 1,
  materials = {
    { itemID = 12205, count = 2 },
  }
}

MT_RecipeDB[18045] = { -- Tender Wolf Steak
  name = "Tender Wolf Steak",
  profession = "Cooking",
  spellID = 22480,
  yield = 1,
  materials = {
    { itemID = 12208, count = 1 },
    { itemID = 3713, count = 1 },
  }
}

MT_RecipeDB[18254] = { -- Runn Tum Tuber Surprise
  name = "Runn Tum Tuber Surprise",
  profession = "Cooking",
  spellID = 22761,
  yield = 1,
  materials = {
    { itemID = 18255, count = 1 },
    { itemID = 3713, count = 1 },
  }
}

MT_RecipeDB[20074] = { -- Heavy Crocolisk Stew
  name = "Heavy Crocolisk Stew",
  profession = "Cooking",
  spellID = 24418,
  yield = 1,
  materials = {
    { itemID = 3667, count = 2 },
    { itemID = 3713, count = 1 },
  }
}

MT_RecipeDB[20452] = { -- Smoked Desert Dumplings
  name = "Smoked Desert Dumplings",
  profession = "Cooking",
  spellID = 24801,
  yield = 1,
  materials = {
    { itemID = 20424, count = 1 },
    { itemID = 3713, count = 1 },
  }
}

MT_RecipeDB[21023] = { -- Dirge
  name = "Dirge",
  profession = "Cooking",
  spellID = 25659,
  yield = 1,
  materials = {
    { itemID = 2692, count = 1 },
    { itemID = 9061, count = 1 },
    { itemID = 8150, count = 1 },
    { itemID = 21024, count = 1 },
  }
}

MT_RecipeDB[21072] = { -- Smoked Sagefish
  name = "Smoked Sagefish",
  profession = "Cooking",
  spellID = 25704,
  yield = 1,
  materials = {
    { itemID = 21071, count = 1 },
    { itemID = 2678, count = 1 },
  }
}

MT_RecipeDB[21217] = { -- Sagefish Delight
  name = "Sagefish Delight",
  profession = "Cooking",
  spellID = 25954,
  yield = 1,
  materials = {
    { itemID = 21153, count = 1 },
    { itemID = 2692, count = 1 },
  }
}

MT_RecipeDB[23683] = { -- Crystal Throat Lozenge
  name = "Crystal Throat Lozenge",
  profession = "Cooking",
  spellID = 30047,
  yield = 1,
  materials = {
    { itemID = 23567, count = 1 },
    { itemID = 8150, count = 1 },
  }
}

MT_RecipeDB[83309] = { -- Empowering Herbal Salad
  name = "Empowering Herbal Salad",
  profession = "Cooking",
  spellID = 49551,
  yield = 1,
  materials = {
    { itemID = 8838, count = 1 },
    { itemID = 22529, count = 1 },
    { itemID = 51714, count = 2 },
  }
}

MT_RecipeDB[40001] = { -- Delicious Pizza
  name = "Delicious Pizza",
  profession = "Cooking",
  spellID = 45006,
  yield = 1,
  materials = {
    { itemID = 2692, count = 1 },
    { itemID = 30817, count = 1 },
    { itemID = 40000, count = 1 },
    { itemID = 414, count = 1 },
  }
}

MT_RecipeDB[41673] = { -- Crawford Apple Tarte
  name = "Crawford Apple Tarte",
  profession = "Cooking",
  spellID = 58046,
  yield = 1,
  materials = {
    { itemID = 4539, count = 1 },
    { itemID = 41677, count = 1 },
    { itemID = 1179, count = 1 },
  }
}

MT_RecipeDB[60976] = { -- Danonzo
  name = "Danonzo",
  profession = "Cooking",
  spellID = 57047,
  yield = 1,
  materials = {
    { itemID = 60955, count = 1 },
    { itemID = 3713, count = 1 },
    { itemID = 10286, count = 1 },
  }
}

MT_RecipeDB[60977] = { -- Danonzo
  name = "Danonzo",
  profession = "Cooking",
  spellID = 57049,
  yield = 1,
  materials = {
    { itemID = 60955, count = 1 },
    { itemID = 3713, count = 1 },
    { itemID = 13467, count = 1 },
  }
}

MT_RecipeDB[60978] = { -- Danonzo
  name = "Danonzo",
  profession = "Cooking",
  spellID = 57051,
  yield = 1,
  materials = {
    { itemID = 60955, count = 1 },
    { itemID = 3713, count = 1 },
    { itemID = 13464, count = 2 },
  }
}

MT_RecipeDB[84040] = { -- Le Fishe Au Chocolat
  name = "Le Fishe Au Chocolat",
  profession = "Cooking",
  spellID = 45625,
  yield = 1,
  materials = {
    { itemID = 13889, count = 1 },
    { itemID = 3713, count = 1 },
    { itemID = 61173, count = 1 },
    { itemID = 13464, count = 1 },
  }
}

MT_RecipeDB[84041] = { -- Gilneas Hot Stew
  name = "Gilneas Hot Stew",
  profession = "Cooking",
  spellID = 45627,
  yield = 1,
  materials = {
    { itemID = 12203, count = 1 },
    { itemID = 12205, count = 1 },
    { itemID = 159, count = 1 },
  }
}

MT_RecipeDB[53015] = { -- Gurubashi Gumbo
  name = "Gurubashi Gumbo",
  profession = "Cooking",
  spellID = 46085,
  yield = 1,
  materials = {
    { itemID = 3667, count = 1 },
    { itemID = 12202, count = 1 },
    { itemID = 12037, count = 2 },
    { itemID = 2692, count = 1 },
    { itemID = 3713, count = 1 },
    { itemID = 159, count = 1 },
  }
}

MT_RecipeDB[30818] = { -- Maritime Gumbo
  name = "Maritime Gumbo",
  profession = "Cooking",
  spellID = 45054,
  yield = 1,
  materials = {
    { itemID = 2674, count = 1 },
    { itemID = 159, count = 1 },
  }
}

MT_RecipeDB[41674] = { -- Ambersap Glazed Boar Ribs
  name = "Ambersap Glazed Boar Ribs",
  profession = "Cooking",
  spellID = 58044,
  yield = 1,
  materials = {
    { itemID = 41675, count = 1 },
    { itemID = 2677, count = 1 },
    { itemID = 2692, count = 1 },
  }
}

MT_RecipeDB[55158] = { -- Bright Copper Ring
  name = "Bright Copper Ring",
  profession = "Jewelcrafting",
  spellID = 41001,
  yield = 1,
  materials = {
    { itemID = 55156, count = 1 },
    { itemID = 55245, count = 1 },
  }
}

MT_RecipeDB[81030] = { -- Malachite Ring
  name = "Malachite Ring",
  profession = "Jewelcrafting",
  spellID = 41577,
  yield = 1,
  materials = {
    { itemID = 55156, count = 1 },
    { itemID = 774, count = 1 },
  }
}

MT_RecipeDB[55159] = { -- Sturdy Copper Ring
  name = "Sturdy Copper Ring",
  profession = "Jewelcrafting",
  spellID = 41005,
  yield = 1,
  materials = {
    { itemID = 55156, count = 1 },
    { itemID = 2840, count = 1 },
    { itemID = 55150, count = 2 },
  }
}

MT_RecipeDB[55160] = { -- Inlaid Copper Ring
  name = "Inlaid Copper Ring",
  profession = "Jewelcrafting",
  spellID = 41007,
  yield = 1,
  materials = {
    { itemID = 55156, count = 1 },
    { itemID = 55245, count = 1 },
    { itemID = 55150, count = 4 },
    { itemID = 818, count = 1 },
  }
}

MT_RecipeDB[81092] = { -- Copper Staff
  name = "Copper Staff",
  profession = "Jewelcrafting",
  spellID = 41009,
  yield = 1,
  materials = {
    { itemID = 2840, count = 4 },
    { itemID = 55245, count = 1 },
  }
}

MT_RecipeDB[55161] = { -- Encrusted Copper Bangle
  name = "Encrusted Copper Bangle",
  profession = "Jewelcrafting",
  spellID = 41011,
  yield = 1,
  materials = {
    { itemID = 2840, count = 4 },
    { itemID = 55245, count = 2 },
    { itemID = 774, count = 1 },
  }
}

MT_RecipeDB[55162] = { -- Lesser Fortification Ring
  name = "Lesser Fortification Ring",
  profession = "Jewelcrafting",
  spellID = 41013,
  yield = 1,
  materials = {
    { itemID = 55156, count = 1 },
    { itemID = 5997, count = 1 },
    { itemID = 774, count = 1 },
  }
}

MT_RecipeDB[55163] = { -- Tigercrest Ring
  name = "Tigercrest Ring",
  profession = "Jewelcrafting",
  spellID = 41015,
  yield = 1,
  materials = {
    { itemID = 55156, count = 1 },
    { itemID = 55150, count = 1 },
    { itemID = 55245, count = 1 },
    { itemID = 818, count = 1 },
  }
}

MT_RecipeDB[55165] = { -- Small Pearlstone Staff
  name = "Small Pearlstone Staff",
  profession = "Jewelcrafting",
  spellID = 41017,
  yield = 1,
  materials = {
    { itemID = 2840, count = 10 },
    { itemID = 55150, count = 4 },
    { itemID = 5498, count = 2 },
  }
}

MT_RecipeDB[55166] = { -- Amber Ring
  name = "Amber Ring",
  profession = "Jewelcrafting",
  spellID = 41019,
  yield = 1,
  materials = {
    { itemID = 55156, count = 1 },
    { itemID = 55150, count = 1 },
    { itemID = 81094, count = 1 },
  }
}

MT_RecipeDB[55167] = { -- Azure Ring
  name = "Azure Ring",
  profession = "Jewelcrafting",
  spellID = 41021,
  yield = 1,
  materials = {
    { itemID = 55156, count = 1 },
    { itemID = 55245, count = 1 },
    { itemID = 1210, count = 1 },
    { itemID = 159, count = 5 },
  }
}

MT_RecipeDB[81031] = { -- Bright Copper Necklace
  name = "Bright Copper Necklace",
  profession = "Jewelcrafting",
  spellID = 41023,
  yield = 1,
  materials = {
    { itemID = 2840, count = 6 },
    { itemID = 774, count = 2 },
    { itemID = 55245, count = 1 },
  }
}

MT_RecipeDB[55168] = { -- Softglow Ring
  name = "Softglow Ring",
  profession = "Jewelcrafting",
  spellID = 41025,
  yield = 1,
  materials = {
    { itemID = 55156, count = 1 },
    { itemID = 774, count = 1 },
    { itemID = 2880, count = 1 },
    { itemID = 818, count = 1 },
  }
}

MT_RecipeDB[55170] = { -- Topaz Studded Ring
  name = "Topaz Studded Ring",
  profession = "Jewelcrafting",
  spellID = 41027,
  yield = 1,
  materials = {
    { itemID = 55156, count = 1 },
    { itemID = 81094, count = 2 },
    { itemID = 2880, count = 1 },
    { itemID = 55150, count = 1 },
  }
}

MT_RecipeDB[55151] = { -- Coarse Gritted Paper
  name = "Coarse Gritted Paper",
  profession = "Jewelcrafting",
  spellID = 41029,
  yield = 1,
  materials = {
    { itemID = 2592, count = 2 },
    { itemID = 2836, count = 2 },
  }
}

MT_RecipeDB[81032] = { -- Rough Gemstone Cluster
  name = "Rough Gemstone Cluster",
  profession = "Jewelcrafting",
  spellID = 41031,
  yield = 1,
  materials = {
    { itemID = 55150, count = 1 },
    { itemID = 2770, count = 1 },
  }
}

MT_RecipeDB[55171] = { -- Lavish Gemmed Necklace
  name = "Lavish Gemmed Necklace",
  profession = "Jewelcrafting",
  spellID = 41033,
  yield = 1,
  materials = {
    { itemID = 2840, count = 8 },
    { itemID = 81094, count = 1 },
    { itemID = 818, count = 1 },
    { itemID = 2880, count = 1 },
    { itemID = 1210, count = 1 },
  }
}

MT_RecipeDB[55172] = { -- Amberstone Pendant
  name = "Amberstone Pendant",
  profession = "Jewelcrafting",
  spellID = 41035,
  yield = 1,
  materials = {
    { itemID = 2840, count = 6 },
    { itemID = 81094, count = 3 },
    { itemID = 55245, count = 1 },
    { itemID = 55150, count = 4 },
  }
}

MT_RecipeDB[55173] = { -- Deepmist Choker
  name = "Deepmist Choker",
  profession = "Jewelcrafting",
  spellID = 41037,
  yield = 1,
  materials = {
    { itemID = 2840, count = 8 },
    { itemID = 5498, count = 1 },
    { itemID = 818, count = 1 },
    { itemID = 2880, count = 1 },
    { itemID = 55150, count = 2 },
  }
}

MT_RecipeDB[55174] = { -- Rough Bronze Ring
  name = "Rough Bronze Ring",
  profession = "Jewelcrafting",
  spellID = 41039,
  yield = 1,
  materials = {
    { itemID = 2841, count = 2 },
  }
}

MT_RecipeDB[41308] = { -- Shimmering Bronze Ring
  name = "Shimmering Bronze Ring",
  profession = "Jewelcrafting",
  spellID = 41041,
  yield = 1,
  materials = {
    { itemID = 55174, count = 1 },
    { itemID = 55246, count = 1 },
    { itemID = 2880, count = 2 },
    { itemID = 55151, count = 2 },
  }
}

MT_RecipeDB[41309] = { -- Amber Orb
  name = "Amber Orb",
  profession = "Jewelcrafting",
  spellID = 41043,
  yield = 1,
  materials = {
    { itemID = 2841, count = 2 },
    { itemID = 81094, count = 3 },
    { itemID = 55150, count = 4 },
    { itemID = 55245, count = 1 },
  }
}

MT_RecipeDB[55175] = { -- Encrusted Bronze Staff
  name = "Encrusted Bronze Staff",
  profession = "Jewelcrafting",
  spellID = 41045,
  yield = 1,
  materials = {
    { itemID = 2841, count = 8 },
    { itemID = 1210, count = 1 },
    { itemID = 81094, count = 1 },
    { itemID = 55151, count = 4 },
    { itemID = 55245, count = 2 },
  }
}

MT_RecipeDB[55176] = { -- Earthrock Loop
  name = "Earthrock Loop",
  profession = "Jewelcrafting",
  spellID = 41047,
  yield = 1,
  materials = {
    { itemID = 55174, count = 1 },
    { itemID = 2449, count = 3 },
    { itemID = 2836, count = 6 },
    { itemID = 2880, count = 4 },
  }
}

MT_RecipeDB[41310] = { -- Bronze Cuffed Bangles
  name = "Bronze Cuffed Bangles",
  profession = "Jewelcrafting",
  spellID = 41049,
  yield = 1,
  materials = {
    { itemID = 2841, count = 6 },
    { itemID = 2880, count = 2 },
    { itemID = 55245, count = 2 },
  }
}

MT_RecipeDB[41311] = { -- Shadowgem Band
  name = "Shadowgem Band",
  profession = "Jewelcrafting",
  spellID = 41051,
  yield = 1,
  materials = {
    { itemID = 55174, count = 1 },
    { itemID = 1210, count = 2 },
    { itemID = 55246, count = 1 },
  }
}

MT_RecipeDB[41313] = { -- Bronze Scepter
  name = "Bronze Scepter",
  profession = "Jewelcrafting",
  spellID = 41053,
  yield = 1,
  materials = {
    { itemID = 2841, count = 6 },
    { itemID = 55246, count = 1 },
    { itemID = 55151, count = 4 },
  }
}

MT_RecipeDB[41312] = { -- Pendant of Midnight
  name = "Pendant of Midnight",
  profession = "Jewelcrafting",
  spellID = 41055,
  yield = 1,
  materials = {
    { itemID = 2841, count = 6 },
    { itemID = 1210, count = 3 },
    { itemID = 785, count = 1 },
    { itemID = 55246, count = 1 },
  }
}

MT_RecipeDB[41314] = { -- Agatestone Crown
  name = "Agatestone Crown",
  profession = "Jewelcrafting",
  spellID = 41057,
  yield = 1,
  materials = {
    { itemID = 2841, count = 6 },
    { itemID = 1206, count = 1 },
    { itemID = 3466, count = 2 },
    { itemID = 55151, count = 2 },
  }
}

MT_RecipeDB[41315] = { -- Moonlight Staff
  name = "Moonlight Staff",
  profession = "Jewelcrafting",
  spellID = 41059,
  yield = 1,
  materials = {
    { itemID = 2841, count = 8 },
    { itemID = 1705, count = 3 },
    { itemID = 3466, count = 1 },
    { itemID = 55246, count = 1 },
  }
}

MT_RecipeDB[41316] = { -- Binding Signet
  name = "Binding Signet",
  profession = "Jewelcrafting",
  spellID = 41061,
  yield = 1,
  materials = {
    { itemID = 55174, count = 1 },
    { itemID = 1705, count = 2 },
    { itemID = 3385, count = 1 },
  }
}

MT_RecipeDB[41318] = { -- Enchanted Bracelets
  name = "Enchanted Bracelets",
  profession = "Jewelcrafting",
  spellID = 41063,
  yield = 1,
  materials = {
    { itemID = 2842, count = 3 },
    { itemID = 10998, count = 1 },
    { itemID = 1210, count = 1 },
  }
}

MT_RecipeDB[41320] = { -- Coarse Gemstone Cluster
  name = "Coarse Gemstone Cluster",
  profession = "Jewelcrafting",
  spellID = 41065,
  yield = 1,
  materials = {
    { itemID = 2771, count = 2 },
    { itemID = 55151, count = 2 },
  }
}

MT_RecipeDB[41319] = { -- Rough Silver Ring
  name = "Rough Silver Ring",
  profession = "Jewelcrafting",
  spellID = 41067,
  yield = 1,
  materials = {
    { itemID = 2842, count = 2 },
  }
}

MT_RecipeDB[41325] = { -- Silver Medallion
  name = "Silver Medallion",
  profession = "Jewelcrafting",
  spellID = 41069,
  yield = 1,
  materials = {
    { itemID = 2842, count = 5 },
    { itemID = 3466, count = 1 },
    { itemID = 55246, count = 2 },
    { itemID = 55151, count = 2 },
  }
}

MT_RecipeDB[41329] = { -- Ring of Purified Silver
  name = "Ring of Purified Silver",
  profession = "Jewelcrafting",
  spellID = 41071,
  yield = 1,
  materials = {
    { itemID = 41319, count = 1 },
    { itemID = 3466, count = 2 },
    { itemID = 55246, count = 4 },
    { itemID = 55151, count = 8 },
    { itemID = 55249, count = 3 },
    { itemID = 1206, count = 3 },
  }
}

MT_RecipeDB[41332] = { -- Rough Iron Ring
  name = "Rough Iron Ring",
  profession = "Jewelcrafting",
  spellID = 41081,
  yield = 1,
  materials = {
    { itemID = 3575, count = 2 },
  }
}

MT_RecipeDB[41331] = { -- Rough Gold Ring
  name = "Rough Gold Ring",
  profession = "Jewelcrafting",
  spellID = 41083,
  yield = 1,
  materials = {
    { itemID = 3577, count = 2 },
  }
}

MT_RecipeDB[41323] = { -- Emberstone Studded Ring
  name = "Emberstone Studded Ring",
  profession = "Jewelcrafting",
  spellID = 41085,
  yield = 1,
  materials = {
    { itemID = 41322, count = 1 },
    { itemID = 7077, count = 1 },
    { itemID = 55250, count = 4 },
    { itemID = 55247, count = 2 },
  }
}

MT_RecipeDB[41321] = { -- Rough Thorium Ring
  name = "Rough Thorium Ring",
  profession = "Jewelcrafting",
  spellID = 41087,
  yield = 1,
  materials = {
    { itemID = 12359, count = 2 },
  }
}

MT_RecipeDB[41324] = { -- Mithril Blackstone Necklace
  name = "Mithril Blackstone Necklace",
  profession = "Jewelcrafting",
  spellID = 41089,
  yield = 1,
  materials = {
    { itemID = 3860, count = 10 },
    { itemID = 7971, count = 3 },
    { itemID = 7909, count = 1 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[55154] = { -- Dense Gritted Paper
  name = "Dense Gritted Paper",
  profession = "Jewelcrafting",
  spellID = 41091,
  yield = 1,
  materials = {
    { itemID = 14047, count = 3 },
    { itemID = 12365, count = 3 },
  }
}

MT_RecipeDB[55256] = { -- Radiant Thorium Twilight
  name = "Radiant Thorium Twilight",
  profession = "Jewelcrafting",
  spellID = 41093,
  yield = 1,
  materials = {
    { itemID = 41321, count = 1 },
    { itemID = 3466, count = 2 },
    { itemID = 55251, count = 3 },
    { itemID = 55153, count = 3 },
  }
}

MT_RecipeDB[55269] = { -- Glyph Codex
  name = "Glyph Codex",
  profession = "Jewelcrafting",
  spellID = 41095,
  yield = 1,
  materials = {
    { itemID = 12359, count = 8 },
    { itemID = 55251, count = 5 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[55271] = { -- Spellweaver Rod
  name = "Spellweaver Rod",
  profession = "Jewelcrafting",
  spellID = 41097,
  yield = 1,
  materials = {
    { itemID = 12359, count = 12 },
    { itemID = 6037, count = 6 },
    { itemID = 7910, count = 3 },
    { itemID = 7909, count = 3 },
    { itemID = 3466, count = 1 },
  }
}

MT_RecipeDB[55268] = { -- Quicksilver Whirl
  name = "Quicksilver Whirl",
  profession = "Jewelcrafting",
  spellID = 41099,
  yield = 1,
  materials = {
    { itemID = 6037, count = 4 },
    { itemID = 12361, count = 2 },
    { itemID = 55247, count = 2 },
    { itemID = 7069, count = 4 },
  }
}

MT_RecipeDB[55273] = { -- Crystalweft Bracers
  name = "Crystalweft Bracers",
  profession = "Jewelcrafting",
  spellID = 41101,
  yield = 1,
  materials = {
    { itemID = 12359, count = 14 },
    { itemID = 55154, count = 4 },
    { itemID = 3864, count = 3 },
    { itemID = 55246, count = 1 },
  }
}

MT_RecipeDB[55267] = { -- Ethereal Frostspark Crown
  name = "Ethereal Frostspark Crown",
  profession = "Jewelcrafting",
  spellID = 41103,
  yield = 1,
  materials = {
    { itemID = 12359, count = 12 },
    { itemID = 55154, count = 6 },
    { itemID = 12361, count = 1 },
    { itemID = 3829, count = 1 },
  }
}

MT_RecipeDB[41330] = { -- Pendant of Arcane Radiance
  name = "Pendant of Arcane Radiance",
  profession = "Jewelcrafting",
  spellID = 41105,
  yield = 1,
  materials = {
    { itemID = 12359, count = 6 },
    { itemID = 13454, count = 1 },
    { itemID = 12363, count = 1 },
  }
}

MT_RecipeDB[55152] = { -- Heavy Gritted Paper
  name = "Heavy Gritted Paper",
  profession = "Jewelcrafting",
  spellID = 41201,
  yield = 1,
  materials = {
    { itemID = 4306, count = 3 },
    { itemID = 2838, count = 3 },
  }
}

MT_RecipeDB[41344] = { -- Heavy Gemstone Cluster
  name = "Heavy Gemstone Cluster",
  profession = "Jewelcrafting",
  spellID = 41203,
  yield = 1,
  materials = {
    { itemID = 2772, count = 3 },
    { itemID = 55152, count = 3 },
  }
}

MT_RecipeDB[55144] = { -- Goldfire Crystal Bracelet
  name = "Goldfire Crystal Bracelet",
  profession = "Jewelcrafting",
  spellID = 41205,
  yield = 1,
  materials = {
    { itemID = 2841, count = 6 },
    { itemID = 3577, count = 1 },
    { itemID = 55249, count = 1 },
    { itemID = 2880, count = 1 },
  }
}

MT_RecipeDB[55142] = { -- Quartz Halo
  name = "Quartz Halo",
  profession = "Jewelcrafting",
  spellID = 41207,
  yield = 1,
  materials = {
    { itemID = 41332, count = 1 },
    { itemID = 55249, count = 2 },
    { itemID = 55151, count = 2 },
    { itemID = 55246, count = 1 },
  }
}

MT_RecipeDB[55148] = { -- Staff of Blossomed Jade
  name = "Staff of Blossomed Jade",
  profession = "Jewelcrafting",
  spellID = 41209,
  yield = 1,
  materials = {
    { itemID = 3575, count = 12 },
    { itemID = 1529, count = 2 },
    { itemID = 1705, count = 2 },
    { itemID = 3357, count = 2 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[55143] = { -- Jade Harmony Circlet
  name = "Jade Harmony Circlet",
  profession = "Jewelcrafting",
  spellID = 41211,
  yield = 1,
  materials = {
    { itemID = 41331, count = 1 },
    { itemID = 1529, count = 1 },
    { itemID = 55246, count = 2 },
    { itemID = 55152, count = 2 },
  }
}

MT_RecipeDB[55145] = { -- Goldenshade Quartz Crown
  name = "Goldenshade Quartz Crown",
  profession = "Jewelcrafting",
  spellID = 41213,
  yield = 1,
  materials = {
    { itemID = 3575, count = 8 },
    { itemID = 3577, count = 2 },
    { itemID = 55249, count = 2 },
  }
}

MT_RecipeDB[55146] = { -- The Golden Goblet
  name = "The Golden Goblet",
  profession = "Jewelcrafting",
  spellID = 41215,
  yield = 1,
  materials = {
    { itemID = 3577, count = 5 },
    { itemID = 4234, count = 2 },
    { itemID = 3466, count = 2 },
    { itemID = 3825, count = 1 },
  }
}

MT_RecipeDB[55147] = { -- Powerful Citrine Pendant
  name = "Powerful Citrine Pendant",
  profession = "Jewelcrafting",
  spellID = 41217,
  yield = 1,
  materials = {
    { itemID = 3575, count = 12 },
    { itemID = 3577, count = 4 },
    { itemID = 3864, count = 4 },
    { itemID = 1206, count = 2 },
    { itemID = 55247, count = 1 },
    { itemID = 11135, count = 1 },
  }
}

MT_RecipeDB[41322] = { -- Rough Mithril Ring
  name = "Rough Mithril Ring",
  profession = "Jewelcrafting",
  spellID = 41219,
  yield = 1,
  materials = {
    { itemID = 3860, count = 2 },
  }
}

MT_RecipeDB[55141] = { -- Ironsun Citrine Ring
  name = "Ironsun Citrine Ring",
  profession = "Jewelcrafting",
  spellID = 41221,
  yield = 1,
  materials = {
    { itemID = 41332, count = 1 },
    { itemID = 3577, count = 2 },
    { itemID = 3864, count = 4 },
    { itemID = 55246, count = 1 },
  }
}

MT_RecipeDB[41340] = { -- Shimmering Gold Necklace
  name = "Shimmering Gold Necklace",
  profession = "Jewelcrafting",
  spellID = 41223,
  yield = 1,
  materials = {
    { itemID = 3577, count = 8 },
    { itemID = 55246, count = 3 },
    { itemID = 55152, count = 3 },
  }
}

MT_RecipeDB[41342] = { -- Ironbloom Ring
  name = "Ironbloom Ring",
  profession = "Jewelcrafting",
  spellID = 41225,
  yield = 1,
  materials = {
    { itemID = 41332, count = 1 },
    { itemID = 3575, count = 2 },
    { itemID = 2838, count = 6 },
    { itemID = 3355, count = 1 },
    { itemID = 55152, count = 2 },
  }
}

MT_RecipeDB[41343] = { -- Ornate Mithril Scepter
  name = "Ornate Mithril Scepter",
  profession = "Jewelcrafting",
  spellID = 41227,
  yield = 1,
  materials = {
    { itemID = 3860, count = 8 },
    { itemID = 4234, count = 2 },
    { itemID = 55152, count = 2 },
  }
}

MT_RecipeDB[55153] = { -- Solid Gritted Paper
  name = "Solid Gritted Paper",
  profession = "Jewelcrafting",
  spellID = 41229,
  yield = 1,
  materials = {
    { itemID = 4338, count = 3 },
    { itemID = 7912, count = 3 },
  }
}

MT_RecipeDB[55164] = { -- Minor Trollblood Ring
  name = "Minor Trollblood Ring",
  profession = "Jewelcrafting",
  spellID = 41231,
  yield = 1,
  materials = {
    { itemID = 55156, count = 1 },
    { itemID = 3382, count = 1 },
    { itemID = 55245, count = 1 },
  }
}

MT_RecipeDB[41341] = { -- Rough Truesilver Ring
  name = "Rough Truesilver Ring",
  profession = "Jewelcrafting",
  spellID = 41233,
  yield = 1,
  materials = {
    { itemID = 7911, count = 2 },
    { itemID = 6037, count = 2 },
  }
}

MT_RecipeDB[55196] = { -- Aquamarine Pendant
  name = "Aquamarine Pendant",
  profession = "Jewelcrafting",
  spellID = 41235,
  yield = 1,
  materials = {
    { itemID = 3860, count = 8 },
    { itemID = 7909, count = 2 },
    { itemID = 55152, count = 2 },
  }
}

MT_RecipeDB[56020] = { -- Solid Gemstone Cluster
  name = "Solid Gemstone Cluster",
  profession = "Jewelcrafting",
  spellID = 41237,
  yield = 1,
  materials = {
    { itemID = 3858, count = 3 },
    { itemID = 55153, count = 3 },
  }
}

MT_RecipeDB[41346] = { -- Greater Binding Signet
  name = "Greater Binding Signet",
  profession = "Jewelcrafting",
  spellID = 41239,
  yield = 1,
  materials = {
    { itemID = 41322, count = 1 },
    { itemID = 55251, count = 1 },
    { itemID = 7909, count = 1 },
    { itemID = 6149, count = 2 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[41345] = { -- Royal Gemstone Staff
  name = "Royal Gemstone Staff",
  profession = "Jewelcrafting",
  spellID = 41241,
  yield = 1,
  materials = {
    { itemID = 3860, count = 14 },
    { itemID = 3577, count = 4 },
    { itemID = 55251, count = 2 },
    { itemID = 7909, count = 2 },
    { itemID = 55153, count = 4 },
  }
}

MT_RecipeDB[41349] = { -- Emberstone Idol
  name = "Emberstone Idol",
  profession = "Jewelcrafting",
  spellID = 41243,
  yield = 1,
  materials = {
    { itemID = 55250, count = 5 },
    { itemID = 6371, count = 3 },
    { itemID = 7077, count = 1 },
    { itemID = 7068, count = 1 },
  }
}

MT_RecipeDB[41347] = { -- Runed Truesilver Ring
  name = "Runed Truesilver Ring",
  profession = "Jewelcrafting",
  spellID = 41245,
  yield = 1,
  materials = {
    { itemID = 41341, count = 1 },
    { itemID = 7067, count = 1 },
    { itemID = 7075, count = 1 },
    { itemID = 55153, count = 2 },
  }
}

MT_RecipeDB[81093] = { -- Bulky Copper Ring
  name = "Bulky Copper Ring",
  profession = "Jewelcrafting",
  spellID = 41249,
  yield = 1,
  materials = {
    { itemID = 55156, count = 1 },
    { itemID = 2880, count = 1 },
    { itemID = 55245, count = 1 },
  }
}

MT_RecipeDB[55258] = { -- Blue Starfire
  name = "Blue Starfire",
  profession = "Jewelcrafting",
  spellID = 41251,
  yield = 1,
  materials = {
    { itemID = 41321, count = 1 },
    { itemID = 12361, count = 1 },
    { itemID = 55251, count = 1 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[55265] = { -- Emerald Monarch
  name = "Emerald Monarch",
  profession = "Jewelcrafting",
  spellID = 41253,
  yield = 1,
  materials = {
    { itemID = 41321, count = 1 },
    { itemID = 12655, count = 4 },
    { itemID = 12364, count = 2 },
    { itemID = 55154, count = 2 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[55259] = { -- Arcanum Baton
  name = "Arcanum Baton",
  profession = "Jewelcrafting",
  spellID = 41257,
  yield = 1,
  materials = {
    { itemID = 41341, count = 1 },
    { itemID = 12655, count = 5 },
    { itemID = 12361, count = 5 },
    { itemID = 7076, count = 1 },
    { itemID = 55150, count = 8 },
    { itemID = 55247, count = 3 },
  }
}

MT_RecipeDB[55272] = { -- Arcanum Baton
  name = "Arcanum Baton",
  profession = "Jewelcrafting",
  spellID = 41259,
  yield = 1,
  materials = {
    { itemID = 12359, count = 28 },
    { itemID = 3577, count = 4 },
    { itemID = 7082, count = 2 },
    { itemID = 61673, count = 2 },
    { itemID = 55154, count = 8 },
  }
}

MT_RecipeDB[55266] = { -- Sunburst Tiara
  name = "Sunburst Tiara",
  profession = "Jewelcrafting",
  spellID = 41261,
  yield = 1,
  materials = {
    { itemID = 12359, count = 20 },
    { itemID = 7910, count = 2 },
    { itemID = 55250, count = 2 },
    { itemID = 3466, count = 2 },
    { itemID = 55246, count = 4 },
  }
}

MT_RecipeDB[56023] = { -- Ocean
  name = "Ocean",
  profession = "Jewelcrafting",
  spellID = 41263,
  yield = 1,
  materials = {
    { itemID = 41322, count = 1 },
    { itemID = 7909, count = 3 },
    { itemID = 6372, count = 3 },
    { itemID = 55152, count = 3 },
  }
}

MT_RecipeDB[55260] = { -- Starry Thorium Band
  name = "Starry Thorium Band",
  profession = "Jewelcrafting",
  spellID = 41265,
  yield = 1,
  materials = {
    { itemID = 41321, count = 1 },
    { itemID = 7910, count = 2 },
    { itemID = 55246, count = 4 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56032] = { -- Ruby Ring of Ruin
  name = "Ruby Ring of Ruin",
  profession = "Jewelcrafting",
  spellID = 41267,
  yield = 1,
  materials = {
    { itemID = 56033, count = 1 },
    { itemID = 7910, count = 12 },
    { itemID = 55250, count = 12 },
    { itemID = 7078, count = 8 },
    { itemID = 7077, count = 12 },
    { itemID = 55248, count = 8 },
  }
}

MT_RecipeDB[56031] = { -- Encrusted Gemstone Ring
  name = "Encrusted Gemstone Ring",
  profession = "Jewelcrafting",
  spellID = 41269,
  yield = 1,
  materials = {
    { itemID = 56033, count = 1 },
    { itemID = 55252, count = 1 },
    { itemID = 12364, count = 5 },
    { itemID = 7910, count = 5 },
    { itemID = 12361, count = 5 },
    { itemID = 55248, count = 5 },
  }
}

MT_RecipeDB[56033] = { -- Pure Gold Ring
  name = "Pure Gold Ring",
  profession = "Jewelcrafting",
  spellID = 41271,
  yield = 1,
  materials = {
    { itemID = 3577, count = 8 },
    { itemID = 12360, count = 2 },
    { itemID = 3466, count = 2 },
  }
}

MT_RecipeDB[55199] = { -- Prism Amulet
  name = "Prism Amulet",
  profession = "Jewelcrafting",
  spellID = 41273,
  yield = 1,
  materials = {
    { itemID = 12359, count = 8 },
    { itemID = 12799, count = 2 },
    { itemID = 55154, count = 2 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[55202] = { -- Gemmed Citrine Pendant
  name = "Gemmed Citrine Pendant",
  profession = "Jewelcrafting",
  spellID = 41275,
  yield = 1,
  materials = {
    { itemID = 3575, count = 6 },
    { itemID = 3577, count = 1 },
    { itemID = 55249, count = 2 },
    { itemID = 3864, count = 2 },
  }
}

MT_RecipeDB[55197] = { -- Starforge Amulet
  name = "Starforge Amulet",
  profession = "Jewelcrafting",
  spellID = 41277,
  yield = 1,
  materials = {
    { itemID = 3860, count = 6 },
    { itemID = 7910, count = 2 },
    { itemID = 55249, count = 2 },
    { itemID = 55153, count = 4 },
  }
}

MT_RecipeDB[55200] = { -- Voidheart Charm
  name = "Voidheart Charm",
  profession = "Jewelcrafting",
  spellID = 41279,
  yield = 1,
  materials = {
    { itemID = 12359, count = 5 },
    { itemID = 12655, count = 1 },
    { itemID = 55249, count = 4 },
    { itemID = 12808, count = 2 },
    { itemID = 55154, count = 2 },
  }
}

MT_RecipeDB[55204] = { -- Runebound Amulet
  name = "Runebound Amulet",
  profession = "Jewelcrafting",
  spellID = 41281,
  yield = 1,
  materials = {
    { itemID = 6037, count = 12 },
    { itemID = 7075, count = 4 },
    { itemID = 7067, count = 4 },
    { itemID = 7068, count = 4 },
    { itemID = 55153, count = 8 },
  }
}

MT_RecipeDB[55195] = { -- Astral Amulet
  name = "Astral Amulet",
  profession = "Jewelcrafting",
  spellID = 41283,
  yield = 1,
  materials = {
    { itemID = 3575, count = 6 },
    { itemID = 3864, count = 2 },
    { itemID = 55249, count = 2 },
    { itemID = 55152, count = 3 },
  }
}

MT_RecipeDB[56034] = { -- Shimmering Moonstone Tablet
  name = "Shimmering Moonstone Tablet",
  profession = "Jewelcrafting",
  spellID = 41285,
  yield = 1,
  materials = {
    { itemID = 55251, count = 2 },
    { itemID = 1705, count = 8 },
    { itemID = 55246, count = 2 },
    { itemID = 55152, count = 4 },
  }
}

MT_RecipeDB[56035] = { -- Stormcloud Sigil
  name = "Stormcloud Sigil",
  profession = "Jewelcrafting",
  spellID = 41287,
  yield = 1,
  materials = {
    { itemID = 12655, count = 3 },
    { itemID = 7082, count = 3 },
    { itemID = 7069, count = 5 },
    { itemID = 7081, count = 5 },
  }
}

MT_RecipeDB[56048] = { -- Dazzling Aquamarine Loop
  name = "Dazzling Aquamarine Loop",
  profession = "Jewelcrafting",
  spellID = 41541,
  yield = 1,
  materials = {
    { itemID = 41322, count = 1 },
    { itemID = 7909, count = 4 },
    { itemID = 55246, count = 2 },
    { itemID = 55152, count = 2 },
  }
}

MT_RecipeDB[55319] = { -- Ocean
  name = "Ocean",
  profession = "Jewelcrafting",
  spellID = 41566,
  yield = 1,
  materials = {
    { itemID = 55174, count = 1 },
    { itemID = 5498, count = 1 },
    { itemID = 2880, count = 1 },
  }
}

MT_RecipeDB[55320] = { -- Dazzling Moonstone Band
  name = "Dazzling Moonstone Band",
  profession = "Jewelcrafting",
  spellID = 41568,
  yield = 1,
  materials = {
    { itemID = 55174, count = 1 },
    { itemID = 1705, count = 3 },
    { itemID = 55245, count = 1 },
  }
}

MT_RecipeDB[56047] = { -- Eternal Jade Crown
  name = "Eternal Jade Crown",
  profession = "Jewelcrafting",
  spellID = 41341,
  yield = 1,
  materials = {
    { itemID = 3575, count = 4 },
    { itemID = 1529, count = 2 },
    { itemID = 3357, count = 2 },
    { itemID = 55246, count = 1 },
  }
}

MT_RecipeDB[56049] = { -- Alluring Citrine Choker
  name = "Alluring Citrine Choker",
  profession = "Jewelcrafting",
  spellID = 41546,
  yield = 1,
  materials = {
    { itemID = 3860, count = 12 },
    { itemID = 3864, count = 2 },
  }
}

MT_RecipeDB[56050] = { -- Elaborate Golden Bracelets
  name = "Elaborate Golden Bracelets",
  profession = "Jewelcrafting",
  spellID = 41548,
  yield = 1,
  materials = {
    { itemID = 3577, count = 10 },
    { itemID = 4234, count = 4 },
    { itemID = 55251, count = 2 },
  }
}

MT_RecipeDB[56051] = { -- Heart of the Sea
  name = "Heart of the Sea",
  profession = "Jewelcrafting",
  spellID = 41550,
  yield = 1,
  materials = {
    { itemID = 3860, count = 4 },
    { itemID = 7070, count = 4 },
    { itemID = 7909, count = 1 },
    { itemID = 55246, count = 1 },
  }
}

MT_RecipeDB[56052] = { -- Staff of Gallitrea
  name = "Staff of Gallitrea",
  profession = "Jewelcrafting",
  spellID = 41552,
  yield = 1,
  materials = {
    { itemID = 3860, count = 18 },
    { itemID = 55249, count = 3 },
    { itemID = 7070, count = 2 },
    { itemID = 55153, count = 6 },
  }
}

MT_RecipeDB[56053] = { -- Golden Jade Ring
  name = "Golden Jade Ring",
  profession = "Jewelcrafting",
  spellID = 41554,
  yield = 1,
  materials = {
    { itemID = 41331, count = 1 },
    { itemID = 3577, count = 2 },
    { itemID = 1529, count = 6 },
    { itemID = 3821, count = 6 },
    { itemID = 55247, count = 2 },
  }
}

MT_RecipeDB[56054] = { -- Delicate Mithril Amulet
  name = "Delicate Mithril Amulet",
  profession = "Jewelcrafting",
  spellID = 41556,
  yield = 1,
  materials = {
    { itemID = 3860, count = 10 },
    { itemID = 3466, count = 2 },
    { itemID = 55152, count = 4 },
  }
}

MT_RecipeDB[56055] = { -- Draenethyst Baton
  name = "Draenethyst Baton",
  profession = "Jewelcrafting",
  spellID = 41558,
  yield = 1,
  materials = {
    { itemID = 3860, count = 4 },
    { itemID = 10593, count = 1 },
    { itemID = 55246, count = 1 },
  }
}

MT_RecipeDB[55321] = { -- Harpy Talon Ring
  name = "Harpy Talon Ring",
  profession = "Jewelcrafting",
  spellID = 41570,
  yield = 1,
  materials = {
    { itemID = 55174, count = 1 },
    { itemID = 5635, count = 4 },
    { itemID = 55151, count = 2 },
  }
}

MT_RecipeDB[55316] = { -- Ebon Ring
  name = "Ebon Ring",
  profession = "Jewelcrafting",
  spellID = 41560,
  yield = 1,
  materials = {
    { itemID = 55156, count = 1 },
    { itemID = 2880, count = 3 },
    { itemID = 55150, count = 2 },
  }
}

MT_RecipeDB[55317] = { -- The King
  name = "The King",
  profession = "Jewelcrafting",
  spellID = 41562,
  yield = 1,
  materials = {
    { itemID = 55156, count = 1 },
    { itemID = 2880, count = 1 },
    { itemID = 2447, count = 4 },
  }
}

MT_RecipeDB[55318] = { -- Shadowfall Jewel
  name = "Shadowfall Jewel",
  profession = "Jewelcrafting",
  spellID = 41564,
  yield = 1,
  materials = {
    { itemID = 55174, count = 1 },
    { itemID = 1210, count = 1 },
    { itemID = 81094, count = 1 },
    { itemID = 55150, count = 1 },
  }
}

MT_RecipeDB[55322] = { -- Centaur Hoof Circlet
  name = "Centaur Hoof Circlet",
  profession = "Jewelcrafting",
  spellID = 41572,
  yield = 1,
  materials = {
    { itemID = 41332, count = 1 },
    { itemID = 7067, count = 1 },
    { itemID = 3466, count = 1 },
    { itemID = 55151, count = 2 },
  }
}

MT_RecipeDB[55323] = { -- Ogre Bone Band
  name = "Ogre Bone Band",
  profession = "Jewelcrafting",
  spellID = 41574,
  yield = 1,
  materials = {
    { itemID = 41332, count = 1 },
    { itemID = 55249, count = 4 },
    { itemID = 3864, count = 4 },
    { itemID = 3391, count = 1 },
    { itemID = 3466, count = 2 },
  }
}

MT_RecipeDB[55324] = { -- Specter
  name = "Specter",
  profession = "Jewelcrafting",
  spellID = 41591,
  yield = 1,
  materials = {
    { itemID = 41332, count = 1 },
    { itemID = 11135, count = 1 },
    { itemID = 55152, count = 1 },
    { itemID = 3577, count = 2 },
  }
}

MT_RecipeDB[55325] = { -- Marine
  name = "Marine",
  profession = "Jewelcrafting",
  spellID = 41579,
  yield = 1,
  materials = {
    { itemID = 41322, count = 1 },
    { itemID = 7909, count = 2 },
    { itemID = 1210, count = 2 },
    { itemID = 55246, count = 1 },
  }
}

MT_RecipeDB[55326] = { -- Serpent
  name = "Serpent",
  profession = "Jewelcrafting",
  spellID = 41581,
  yield = 1,
  materials = {
    { itemID = 2841, count = 10 },
    { itemID = 1210, count = 2 },
    { itemID = 2453, count = 2 },
  }
}

MT_RecipeDB[55327] = { -- Farraki Ceremony Totem
  name = "Farraki Ceremony Totem",
  profession = "Jewelcrafting",
  spellID = 41583,
  yield = 1,
  materials = {
    { itemID = 2841, count = 12 },
    { itemID = 3575, count = 6 },
    { itemID = 7069, count = 2 },
    { itemID = 7068, count = 2 },
    { itemID = 3388, count = 2 },
    { itemID = 55151, count = 4 },
  }
}

MT_RecipeDB[55328] = { -- Sphinx
  name = "Sphinx",
  profession = "Jewelcrafting",
  spellID = 41585,
  yield = 1,
  materials = {
    { itemID = 3575, count = 18 },
    { itemID = 2838, count = 2 },
    { itemID = 3864, count = 2 },
  }
}

MT_RecipeDB[55329] = { -- Gloomweed Bindings
  name = "Gloomweed Bindings",
  profession = "Jewelcrafting",
  spellID = 41587,
  yield = 1,
  materials = {
    { itemID = 2840, count = 6 },
    { itemID = 2447, count = 2 },
    { itemID = 55245, count = 1 },
  }
}

MT_RecipeDB[55264] = { -- Massive Jewel Circlet
  name = "Massive Jewel Circlet",
  profession = "Jewelcrafting",
  spellID = 41303,
  yield = 1,
  materials = {
    { itemID = 41321, count = 1 },
    { itemID = 12364, count = 1 },
    { itemID = 55154, count = 3 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56036] = { -- Golden Scepter of Authority
  name = "Golden Scepter of Authority",
  profession = "Jewelcrafting",
  spellID = 41305,
  yield = 1,
  materials = {
    { itemID = 3577, count = 8 },
    { itemID = 3860, count = 2 },
    { itemID = 4304, count = 2 },
    { itemID = 55246, count = 6 },
  }
}

MT_RecipeDB[55243] = { -- Gemkeeper
  name = "Gemkeeper",
  profession = "Jewelcrafting",
  spellID = 41307,
  yield = 1,
  materials = {
    { itemID = 3860, count = 18 },
    { itemID = 55249, count = 3 },
    { itemID = 55251, count = 3 },
    { itemID = 3864, count = 3 },
    { itemID = 55152, count = 6 },
  }
}

MT_RecipeDB[55261] = { -- Stellar Ruby Ring
  name = "Stellar Ruby Ring",
  profession = "Jewelcrafting",
  spellID = 41309,
  yield = 1,
  materials = {
    { itemID = 41321, count = 1 },
    { itemID = 7910, count = 5 },
    { itemID = 55154, count = 3 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[55178] = { -- Stellar Gemguards
  name = "Stellar Gemguards",
  profession = "Jewelcrafting",
  spellID = 41311,
  yield = 1,
  materials = {
    { itemID = 3860, count = 8 },
    { itemID = 55249, count = 1 },
    { itemID = 55251, count = 1 },
    { itemID = 55250, count = 1 },
  }
}

MT_RecipeDB[55241] = { -- Garnet Guardian Staff
  name = "Garnet Guardian Staff",
  profession = "Jewelcrafting",
  spellID = 41313,
  yield = 1,
  materials = {
    { itemID = 12359, count = 24 },
    { itemID = 12800, count = 2 },
    { itemID = 12799, count = 2 },
    { itemID = 7075, count = 2 },
    { itemID = 55154, count = 4 },
  }
}

MT_RecipeDB[55198] = { -- Moonlit Charm
  name = "Moonlit Charm",
  profession = "Jewelcrafting",
  spellID = 41315,
  yield = 1,
  materials = {
    { itemID = 3860, count = 12 },
    { itemID = 55251, count = 4 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[55263] = { -- Twilight Opal Cascade
  name = "Twilight Opal Cascade",
  profession = "Jewelcrafting",
  spellID = 41317,
  yield = 1,
  materials = {
    { itemID = 56033, count = 1 },
    { itemID = 12799, count = 3 },
    { itemID = 20520, count = 3 },
    { itemID = 55248, count = 2 },
  }
}

MT_RecipeDB[56037] = { -- Gleaming Chain
  name = "Gleaming Chain",
  profession = "Jewelcrafting",
  spellID = 41321,
  yield = 1,
  materials = {
    { itemID = 2840, count = 5 },
    { itemID = 55245, count = 2 },
    { itemID = 55150, count = 2 },
  }
}

MT_RecipeDB[56038] = { -- Talisman of Stone
  name = "Talisman of Stone",
  profession = "Jewelcrafting",
  spellID = 41323,
  yield = 1,
  materials = {
    { itemID = 2841, count = 8 },
    { itemID = 2836, count = 4 },
    { itemID = 55151, count = 2 },
  }
}

MT_RecipeDB[56039] = { -- Medallion of Flame
  name = "Medallion of Flame",
  profession = "Jewelcrafting",
  spellID = 41325,
  yield = 1,
  materials = {
    { itemID = 2841, count = 6 },
    { itemID = 2880, count = 1 },
    { itemID = 10940, count = 1 },
  }
}

MT_RecipeDB[56040] = { -- Gleaming Silver Necklace
  name = "Gleaming Silver Necklace",
  profession = "Jewelcrafting",
  spellID = 41327,
  yield = 1,
  materials = {
    { itemID = 2842, count = 4 },
    { itemID = 55249, count = 1 },
    { itemID = 55246, count = 2 },
    { itemID = 55245, count = 2 },
  }
}

MT_RecipeDB[56041] = { -- Ring of The Turtle
  name = "Ring of The Turtle",
  profession = "Jewelcrafting",
  spellID = 41329,
  yield = 1,
  materials = {
    { itemID = 41331, count = 1 },
    { itemID = 1206, count = 2 },
    { itemID = 3389, count = 1 },
  }
}

MT_RecipeDB[56042] = { -- Gem Encrusted Choker
  name = "Gem Encrusted Choker",
  profession = "Jewelcrafting",
  spellID = 41331,
  yield = 1,
  materials = {
    { itemID = 3575, count = 5 },
    { itemID = 1206, count = 1 },
    { itemID = 55249, count = 1 },
    { itemID = 1705, count = 1 },
  }
}

MT_RecipeDB[56043] = { -- Goldcrest Amulet
  name = "Goldcrest Amulet",
  profession = "Jewelcrafting",
  spellID = 41333,
  yield = 1,
  materials = {
    { itemID = 3577, count = 8 },
    { itemID = 3466, count = 1 },
    { itemID = 55152, count = 2 },
  }
}

MT_RecipeDB[56045] = { -- Dawnbright Cuffs
  name = "Dawnbright Cuffs",
  profession = "Jewelcrafting",
  spellID = 41337,
  yield = 1,
  materials = {
    { itemID = 2841, count = 5 },
    { itemID = 81094, count = 2 },
    { itemID = 55245, count = 1 },
  }
}

MT_RecipeDB[56046] = { -- Circlet of Dampening
  name = "Circlet of Dampening",
  profession = "Jewelcrafting",
  spellID = 41339,
  yield = 1,
  materials = {
    { itemID = 2841, count = 4 },
    { itemID = 2842, count = 2 },
    { itemID = 3384, count = 1 },
    { itemID = 55151, count = 3 },
  }
}

MT_RecipeDB[55180] = { -- Crystalfire Armlets
  name = "Crystalfire Armlets",
  profession = "Jewelcrafting",
  spellID = 41348,
  yield = 1,
  materials = {
    { itemID = 12359, count = 8 },
    { itemID = 55249, count = 4 },
    { itemID = 8956, count = 2 },
    { itemID = 55153, count = 2 },
  }
}

MT_RecipeDB[55228] = { -- Cinderfall Band
  name = "Cinderfall Band",
  profession = "Jewelcrafting",
  spellID = 41350,
  yield = 1,
  materials = {
    { itemID = 41321, count = 1 },
    { itemID = 55250, count = 1 },
    { itemID = 7910, count = 1 },
    { itemID = 7077, count = 1 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[55242] = { -- Opaline Illuminator
  name = "Opaline Illuminator",
  profession = "Jewelcrafting",
  spellID = 41352,
  yield = 1,
  materials = {
    { itemID = 3860, count = 24 },
    { itemID = 3864, count = 6 },
    { itemID = 55249, count = 6 },
    { itemID = 7075, count = 2 },
    { itemID = 55246, count = 4 },
  }
}

MT_RecipeDB[55244] = { -- Gemstone Compendium
  name = "Gemstone Compendium",
  profession = "Jewelcrafting",
  spellID = 41356,
  yield = 1,
  materials = {
    { itemID = 8170, count = 12 },
    { itemID = 10648, count = 20 },
    { itemID = 16203, count = 2 },
    { itemID = 12655, count = 2 },
    { itemID = 7076, count = 3 },
  }
}

MT_RecipeDB[56002] = { -- Sharpened Citrine Gemstone
  name = "Sharpened Citrine Gemstone",
  profession = "Jewelcrafting",
  spellID = 41601,
  yield = 1,
  materials = {
    { itemID = 3864, count = 1 },
    { itemID = 55152, count = 4 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56004] = { -- Radiant Ember Gemstone
  name = "Radiant Ember Gemstone",
  profession = "Jewelcrafting",
  spellID = 41603,
  yield = 1,
  materials = {
    { itemID = 55250, count = 1 },
    { itemID = 55152, count = 4 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56006] = { -- Glowing Ruby Gemstone
  name = "Glowing Ruby Gemstone",
  profession = "Jewelcrafting",
  spellID = 41605,
  yield = 1,
  materials = {
    { itemID = 7910, count = 1 },
    { itemID = 55152, count = 1 },
    { itemID = 11134, count = 1 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56012] = { -- Gloomy Diamond Gemstone
  name = "Gloomy Diamond Gemstone",
  profession = "Jewelcrafting",
  spellID = 41611,
  yield = 1,
  materials = {
    { itemID = 11754, count = 1 },
    { itemID = 55153, count = 5 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56010] = { -- Beautiful Diamond Gemstone
  name = "Beautiful Diamond Gemstone",
  profession = "Jewelcrafting",
  spellID = 41625,
  yield = 1,
  materials = {
    { itemID = 12800, count = 2 },
    { itemID = 55152, count = 2 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56000] = { -- Pristine Crystal Gemstone
  name = "Pristine Crystal Gemstone",
  profession = "Jewelcrafting",
  spellID = 41627,
  yield = 1,
  materials = {
    { itemID = 55249, count = 1 },
    { itemID = 55151, count = 1 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56001] = { -- Gleaming Jade Gemstone
  name = "Gleaming Jade Gemstone",
  profession = "Jewelcrafting",
  spellID = 41629,
  yield = 1,
  materials = {
    { itemID = 1529, count = 1 },
    { itemID = 11135, count = 1 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56005] = { -- Illuminated Gemstone
  name = "Illuminated Gemstone",
  profession = "Jewelcrafting",
  spellID = 41631,
  yield = 1,
  materials = {
    { itemID = 55251, count = 1 },
    { itemID = 11082, count = 1 },
    { itemID = 55247, count = 1 },
    { itemID = 55152, count = 1 },
  }
}

MT_RecipeDB[56056] = { -- Burning Star Gemstone
  name = "Burning Star Gemstone",
  profession = "Jewelcrafting",
  spellID = 41633,
  yield = 1,
  materials = {
    { itemID = 7910, count = 1 },
    { itemID = 7068, count = 2 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56008] = { -- Brilliant Opal Gemstone
  name = "Brilliant Opal Gemstone",
  profession = "Jewelcrafting",
  spellID = 41635,
  yield = 1,
  materials = {
    { itemID = 12799, count = 2 },
    { itemID = 55153, count = 1 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56009] = { -- Elegant Emerald Gemstone
  name = "Elegant Emerald Gemstone",
  profession = "Jewelcrafting",
  spellID = 41637,
  yield = 1,
  materials = {
    { itemID = 12364, count = 1 },
    { itemID = 55153, count = 2 },
    { itemID = 55247, count = 2 },
  }
}

MT_RecipeDB[56007] = { -- Shining Sapphire Gemstone
  name = "Shining Sapphire Gemstone",
  profession = "Jewelcrafting",
  spellID = 41639,
  yield = 1,
  materials = {
    { itemID = 12361, count = 1 },
    { itemID = 16203, count = 1 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56011] = { -- Unstable Arcane Gemstone
  name = "Unstable Arcane Gemstone",
  profession = "Jewelcrafting",
  spellID = 41641,
  yield = 1,
  materials = {
    { itemID = 12363, count = 1 },
    { itemID = 61673, count = 1 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56057] = { -- Glittering Sapphire Gemstone
  name = "Glittering Sapphire Gemstone",
  profession = "Jewelcrafting",
  spellID = 41643,
  yield = 1,
  materials = {
    { itemID = 12361, count = 1 },
    { itemID = 3819, count = 4 },
    { itemID = 7070, count = 1 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56003] = { -- Shimmering Aqua Gemstone
  name = "Shimmering Aqua Gemstone",
  profession = "Jewelcrafting",
  spellID = 41607,
  yield = 1,
  materials = {
    { itemID = 7909, count = 1 },
    { itemID = 55152, count = 1 },
    { itemID = 55246, count = 2 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56015] = { -- Azerothian Ruby Gemstone
  name = "Azerothian Ruby Gemstone",
  profession = "Jewelcrafting",
  spellID = 41609,
  yield = 1,
  materials = {
    { itemID = 12800, count = 1 },
    { itemID = 7910, count = 1 },
    { itemID = 16203, count = 1 },
    { itemID = 55154, count = 2 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56013] = { -- Flawless Black Gemstone
  name = "Flawless Black Gemstone",
  profession = "Jewelcrafting",
  spellID = 41613,
  yield = 1,
  materials = {
    { itemID = 18335, count = 1 },
    { itemID = 16202, count = 1 },
    { itemID = 55154, count = 2 },
    { itemID = 55248, count = 1 },
  }
}

MT_RecipeDB[56016] = { -- Arcane Emerald Gemstone
  name = "Arcane Emerald Gemstone",
  profession = "Jewelcrafting",
  spellID = 41615,
  yield = 1,
  materials = {
    { itemID = 12363, count = 1 },
    { itemID = 12364, count = 1 },
    { itemID = 14344, count = 1 },
    { itemID = 55154, count = 2 },
    { itemID = 55248, count = 1 },
  }
}

MT_RecipeDB[56017] = { -- Tempered Azerothian Gemstone
  name = "Tempered Azerothian Gemstone",
  profession = "Jewelcrafting",
  spellID = 41617,
  yield = 1,
  materials = {
    { itemID = 12800, count = 2 },
    { itemID = 55154, count = 1 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56014] = { -- Stunning Imperial Gemstone
  name = "Stunning Imperial Gemstone",
  profession = "Jewelcrafting",
  spellID = 41619,
  yield = 1,
  materials = {
    { itemID = 55252, count = 1 },
    { itemID = 14344, count = 1 },
    { itemID = 8831, count = 4 },
    { itemID = 7075, count = 1 },
    { itemID = 55248, count = 1 },
  }
}

MT_RecipeDB[56018] = { -- Enchanted Emerald Gemstone
  name = "Enchanted Emerald Gemstone",
  profession = "Jewelcrafting",
  spellID = 41621,
  yield = 1,
  materials = {
    { itemID = 12364, count = 1 },
    { itemID = 7081, count = 3 },
    { itemID = 55152, count = 1 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56058] = { -- Pure Shining Moonstone
  name = "Pure Shining Moonstone",
  profession = "Jewelcrafting",
  spellID = 41623,
  yield = 1,
  materials = {
    { itemID = 55251, count = 1 },
    { itemID = 55152, count = 5 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56059] = { -- Shimmering Diamond Band
  name = "Shimmering Diamond Band",
  profession = "Jewelcrafting",
  spellID = 41696,
  yield = 1,
  materials = {
    { itemID = 56033, count = 1 },
    { itemID = 6037, count = 8 },
    { itemID = 12800, count = 10 },
    { itemID = 3466, count = 6 },
    { itemID = 55154, count = 6 },
    { itemID = 55247, count = 6 },
  }
}

MT_RecipeDB[56060] = { -- Crown of Molten Ascension
  name = "Crown of Molten Ascension",
  profession = "Jewelcrafting",
  spellID = 41698,
  yield = 1,
  materials = {
    { itemID = 12360, count = 8 },
    { itemID = 55250, count = 12 },
    { itemID = 7078, count = 6 },
    { itemID = 7077, count = 6 },
    { itemID = 7068, count = 6 },
    { itemID = 55248, count = 2 },
  }
}

MT_RecipeDB[56061] = { -- Embergem Cuffs
  name = "Embergem Cuffs",
  profession = "Jewelcrafting",
  spellID = 41700,
  yield = 1,
  materials = {
    { itemID = 12360, count = 4 },
    { itemID = 12655, count = 12 },
    { itemID = 7910, count = 8 },
    { itemID = 7078, count = 4 },
    { itemID = 7068, count = 12 },
    { itemID = 55247, count = 6 },
  }
}

MT_RecipeDB[56062] = { -- Blackwing Signet of Command
  name = "Blackwing Signet of Command",
  profession = "Jewelcrafting",
  spellID = 41702,
  yield = 1,
  materials = {
    { itemID = 12360, count = 6 },
    { itemID = 3577, count = 28 },
    { itemID = 15416, count = 32 },
    { itemID = 17010, count = 4 },
    { itemID = 55154, count = 8 },
    { itemID = 7078, count = 6 },
  }
}

MT_RecipeDB[56063] = { -- Talisman of Hinderance
  name = "Talisman of Hinderance",
  profession = "Jewelcrafting",
  spellID = 41704,
  yield = 1,
  materials = {
    { itemID = 12655, count = 20 },
    { itemID = 7082, count = 8 },
    { itemID = 7080, count = 8 },
    { itemID = 7076, count = 8 },
    { itemID = 7078, count = 8 },
    { itemID = 12803, count = 8 },
  }
}

MT_RecipeDB[56064] = { -- Mastercrafted Diamond Crown
  name = "Mastercrafted Diamond Crown",
  profession = "Jewelcrafting",
  spellID = 41706,
  yield = 1,
  materials = {
    { itemID = 12360, count = 8 },
    { itemID = 6037, count = 8 },
    { itemID = 12800, count = 12 },
    { itemID = 61673, count = 4 },
    { itemID = 55154, count = 12 },
    { itemID = 55248, count = 4 },
  }
}

MT_RecipeDB[56065] = { -- Opalstone Circle
  name = "Opalstone Circle",
  profession = "Jewelcrafting",
  spellID = 41708,
  yield = 1,
  materials = {
    { itemID = 41321, count = 1 },
    { itemID = 12799, count = 6 },
    { itemID = 7076, count = 6 },
    { itemID = 3356, count = 6 },
    { itemID = 55154, count = 8 },
    { itemID = 55247, count = 3 },
  }
}

MT_RecipeDB[56066] = { -- Deep Sapphire Circlet
  name = "Deep Sapphire Circlet",
  profession = "Jewelcrafting",
  spellID = 41710,
  yield = 1,
  materials = {
    { itemID = 56033, count = 1 },
    { itemID = 12361, count = 5 },
    { itemID = 7080, count = 2 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[56067] = { -- Dark Iron Signet Ring
  name = "Dark Iron Signet Ring",
  profession = "Jewelcrafting",
  spellID = 41712,
  yield = 1,
  materials = {
    { itemID = 11371, count = 4 },
    { itemID = 7077, count = 8 },
    { itemID = 11382, count = 2 },
  }
}

MT_RecipeDB[56068] = { -- Opal Guided Bangles
  name = "Opal Guided Bangles",
  profession = "Jewelcrafting",
  spellID = 41714,
  yield = 1,
  materials = {
    { itemID = 12359, count = 8 },
    { itemID = 12799, count = 4 },
    { itemID = 7081, count = 6 },
    { itemID = 9187, count = 1 },
    { itemID = 55153, count = 4 },
  }
}

MT_RecipeDB[56069] = { -- Crown of Elegance
  name = "Crown of Elegance",
  profession = "Jewelcrafting",
  spellID = 41716,
  yield = 1,
  materials = {
    { itemID = 3860, count = 20 },
    { itemID = 7971, count = 2 },
    { itemID = 55249, count = 4 },
    { itemID = 55251, count = 4 },
    { itemID = 3466, count = 8 },
  }
}

MT_RecipeDB[56070] = { -- Ornate Mithril Bracelets
  name = "Ornate Mithril Bracelets",
  profession = "Jewelcrafting",
  spellID = 41718,
  yield = 1,
  materials = {
    { itemID = 3860, count = 8 },
    { itemID = 3466, count = 6 },
    { itemID = 3864, count = 4 },
    { itemID = 55152, count = 4 },
    { itemID = 55246, count = 4 },
  }
}

MT_RecipeDB[56071] = { -- Regal Twilight Staff
  name = "Regal Twilight Staff",
  profession = "Jewelcrafting",
  spellID = 41720,
  yield = 1,
  materials = {
    { itemID = 3860, count = 12 },
    { itemID = 6037, count = 8 },
    { itemID = 7971, count = 4 },
    { itemID = 8839, count = 2 },
    { itemID = 55251, count = 4 },
    { itemID = 55153, count = 8 },
  }
}

MT_RecipeDB[56072] = { -- Pendant of Instability
  name = "Pendant of Instability",
  profession = "Jewelcrafting",
  spellID = 41722,
  yield = 1,
  materials = {
    { itemID = 12655, count = 12 },
    { itemID = 12363, count = 4 },
    { itemID = 61673, count = 8 },
    { itemID = 16203, count = 2 },
    { itemID = 55248, count = 2 },
  }
}

MT_RecipeDB[56073] = { -- Ornament of Restraint
  name = "Ornament of Restraint",
  profession = "Jewelcrafting",
  spellID = 41724,
  yield = 1,
  materials = {
    { itemID = 12359, count = 8 },
    { itemID = 7971, count = 2 },
    { itemID = 11175, count = 2 },
    { itemID = 7067, count = 4 },
    { itemID = 55153, count = 4 },
  }
}

MT_RecipeDB[55330] = { -- Hydrathorn Bracers
  name = "Hydrathorn Bracers",
  profession = "Jewelcrafting",
  spellID = 41726,
  yield = 1,
  materials = {
    { itemID = 3576, count = 8 },
    { itemID = 2450, count = 2 },
    { itemID = 55151, count = 2 },
  }
}

MT_RecipeDB[55331] = { -- Blackrock Ironclamps
  name = "Blackrock Ironclamps",
  profession = "Jewelcrafting",
  spellID = 41728,
  yield = 1,
  materials = {
    { itemID = 3575, count = 10 },
    { itemID = 1210, count = 2 },
    { itemID = 5500, count = 1 },
    { itemID = 5635, count = 8 },
    { itemID = 3466, count = 2 },
  }
}

MT_RecipeDB[55332] = { -- Monastery Emberbrace
  name = "Monastery Emberbrace",
  profession = "Jewelcrafting",
  spellID = 41730,
  yield = 1,
  materials = {
    { itemID = 3859, count = 6 },
    { itemID = 4306, count = 2 },
    { itemID = 3864, count = 2 },
  }
}

MT_RecipeDB[55333] = { -- Shadowmoon Orb
  name = "Shadowmoon Orb",
  profession = "Jewelcrafting",
  spellID = 41732,
  yield = 1,
  materials = {
    { itemID = 2840, count = 5 },
    { itemID = 81094, count = 2 },
    { itemID = 55150, count = 2 },
  }
}

MT_RecipeDB[55334] = { -- Fangclaw Relic
  name = "Fangclaw Relic",
  profession = "Jewelcrafting",
  spellID = 41734,
  yield = 1,
  materials = {
    { itemID = 2842, count = 4 },
    { itemID = 1206, count = 4 },
    { itemID = 55246, count = 2 },
    { itemID = 55151, count = 2 },
    { itemID = 3390, count = 1 },
    { itemID = 5635, count = 8 },
  }
}

MT_RecipeDB[55335] = { -- Netherbane Rod
  name = "Netherbane Rod",
  profession = "Jewelcrafting",
  spellID = 41736,
  yield = 1,
  materials = {
    { itemID = 3575, count = 6 },
    { itemID = 3864, count = 4 },
    { itemID = 55246, count = 2 },
  }
}

MT_RecipeDB[55336] = { -- Marine Root
  name = "Marine Root",
  profession = "Jewelcrafting",
  spellID = 41738,
  yield = 1,
  materials = {
    { itemID = 3860, count = 2 },
    { itemID = 3357, count = 2 },
    { itemID = 7909, count = 2 },
  }
}

MT_RecipeDB[55337] = { -- Mistwood Tiara
  name = "Mistwood Tiara",
  profession = "Jewelcrafting",
  spellID = 41740,
  yield = 1,
  materials = {
    { itemID = 2841, count = 10 },
    { itemID = 1206, count = 2 },
    { itemID = 55245, count = 1 },
  }
}

MT_RecipeDB[55338] = { -- Venomspire Diadem
  name = "Venomspire Diadem",
  profession = "Jewelcrafting",
  spellID = 41742,
  yield = 1,
  materials = {
    { itemID = 3575, count = 10 },
    { itemID = 1529, count = 2 },
    { itemID = 55245, count = 2 },
    { itemID = 1288, count = 6 },
    { itemID = 3466, count = 2 },
  }
}

MT_RecipeDB[55339] = { -- Bloodfire Circlet
  name = "Bloodfire Circlet",
  profession = "Jewelcrafting",
  spellID = 41744,
  yield = 1,
  materials = {
    { itemID = 3859, count = 7 },
    { itemID = 55250, count = 2 },
    { itemID = 55245, count = 2 },
  }
}

MT_RecipeDB[55340] = { -- Shadowforged Eye
  name = "Shadowforged Eye",
  profession = "Jewelcrafting",
  spellID = 41746,
  yield = 1,
  materials = {
    { itemID = 2840, count = 2 },
    { itemID = 774, count = 1 },
    { itemID = 818, count = 1 },
    { itemID = 81094, count = 1 },
    { itemID = 1210, count = 1 },
  }
}

MT_RecipeDB[55341] = { -- Totem of Self Preservation
  name = "Totem of Self Preservation",
  profession = "Jewelcrafting",
  spellID = 41748,
  yield = 1,
  materials = {
    { itemID = 2842, count = 2 },
    { itemID = 5498, count = 2 },
    { itemID = 55249, count = 4 },
    { itemID = 55246, count = 2 },
    { itemID = 55151, count = 2 },
  }
}

MT_RecipeDB[55210] = { -- Facetted Moonstone Brooch
  name = "Facetted Moonstone Brooch",
  profession = "Jewelcrafting",
  spellID = 41750,
  yield = 1,
  materials = {
    { itemID = 3859, count = 3 },
    { itemID = 1705, count = 2 },
    { itemID = 55152, count = 2 },
  }
}

MT_RecipeDB[55211] = { -- Obsidian Brooch
  name = "Obsidian Brooch",
  profession = "Jewelcrafting",
  spellID = 41752,
  yield = 1,
  materials = {
    { itemID = 3859, count = 4 },
    { itemID = 1529, count = 2 },
    { itemID = 55152, count = 2 },
  }
}

MT_RecipeDB[55212] = { -- Smoldering Brooch
  name = "Smoldering Brooch",
  profession = "Jewelcrafting",
  spellID = 41754,
  yield = 1,
  materials = {
    { itemID = 3860, count = 3 },
    { itemID = 55250, count = 2 },
    { itemID = 55153, count = 2 },
  }
}

MT_RecipeDB[55213] = { -- Vitriol Brooch
  name = "Vitriol Brooch",
  profession = "Jewelcrafting",
  spellID = 41756,
  yield = 1,
  materials = {
    { itemID = 3860, count = 3 },
    { itemID = 9262, count = 2 },
    { itemID = 55153, count = 2 },
  }
}

MT_RecipeDB[56074] = { -- Graceful Agate Gemstone
  name = "Graceful Agate Gemstone",
  profession = "Jewelcrafting",
  spellID = 41760,
  yield = 1,
  materials = {
    { itemID = 1206, count = 1 },
    { itemID = 55151, count = 2 },
    { itemID = 55246, count = 2 },
  }
}

MT_RecipeDB[56075] = { -- Dreary Opal Gemstone
  name = "Dreary Opal Gemstone",
  profession = "Jewelcrafting",
  spellID = 41762,
  yield = 1,
  materials = {
    { itemID = 12799, count = 1 },
    { itemID = 13466, count = 1 },
    { itemID = 55247, count = 2 },
  }
}

MT_RecipeDB[56077] = { -- Resurged Topaz Gemstone
  name = "Resurged Topaz Gemstone",
  profession = "Jewelcrafting",
  spellID = 41764,
  yield = 1,
  materials = {
    { itemID = 55252, count = 1 },
    { itemID = 61673, count = 3 },
    { itemID = 55248, count = 3 },
  }
}

MT_RecipeDB[56076] = { -- Resilient Arcane Gemstone
  name = "Resilient Arcane Gemstone",
  profession = "Jewelcrafting",
  spellID = 41768,
  yield = 1,
  materials = {
    { itemID = 55252, count = 1 },
    { itemID = 12363, count = 1 },
    { itemID = 7076, count = 2 },
    { itemID = 55248, count = 1 },
  }
}

MT_RecipeDB[56019] = { -- Dense Gemstone Cluster
  name = "Dense Gemstone Cluster",
  profession = "Jewelcrafting",
  spellID = 41770,
  yield = 1,
  materials = {
    { itemID = 10620, count = 3 },
    { itemID = 55154, count = 3 },
  }
}

MT_RecipeDB[56090] = { -- Spellweaver Pendant
  name = "Spellweaver Pendant",
  profession = "Jewelcrafting",
  spellID = 41774,
  yield = 1,
  materials = {
    { itemID = 12359, count = 6 },
    { itemID = 6037, count = 3 },
    { itemID = 7910, count = 1 },
    { itemID = 7909, count = 1 },
  }
}

MT_RecipeDB[56091] = { -- Ring of Midnight
  name = "Ring of Midnight",
  profession = "Jewelcrafting",
  spellID = 41776,
  yield = 1,
  materials = {
    { itemID = 55174, count = 1 },
    { itemID = 1210, count = 2 },
    { itemID = 785, count = 1 },
    { itemID = 55246, count = 1 },
  }
}

MT_RecipeDB[56092] = { -- Stormcloud Shackles
  name = "Stormcloud Shackles",
  profession = "Jewelcrafting",
  spellID = 41778,
  yield = 1,
  materials = {
    { itemID = 12655, count = 2 },
    { itemID = 7082, count = 1 },
    { itemID = 7081, count = 3 },
    { itemID = 55154, count = 3 },
  }
}

MT_RecipeDB[56093] = { -- Stormcloud Signet
  name = "Stormcloud Signet",
  profession = "Jewelcrafting",
  spellID = 41780,
  yield = 1,
  materials = {
    { itemID = 41321, count = 1 },
    { itemID = 12655, count = 6 },
    { itemID = 7082, count = 3 },
    { itemID = 7081, count = 6 },
    { itemID = 55154, count = 4 },
    { itemID = 55247, count = 4 },
  }
}

MT_RecipeDB[56094] = { -- Golden Runed Ring
  name = "Golden Runed Ring",
  profession = "Jewelcrafting",
  spellID = 41782,
  yield = 1,
  materials = {
    { itemID = 56033, count = 1 },
    { itemID = 12360, count = 2 },
    { itemID = 12655, count = 6 },
    { itemID = 20520, count = 12 },
    { itemID = 7075, count = 20 },
    { itemID = 55248, count = 3 },
  }
}

MT_RecipeDB[56095] = { -- Mana Binding Signet
  name = "Mana Binding Signet",
  profession = "Jewelcrafting",
  spellID = 41784,
  yield = 1,
  materials = {
    { itemID = 41341, count = 1 },
    { itemID = 55251, count = 8 },
    { itemID = 7079, count = 8 },
    { itemID = 7070, count = 12 },
    { itemID = 3358, count = 12 },
    { itemID = 55247, count = 4 },
  }
}

MT_RecipeDB[56089] = { -- Ornate Mithril Crown
  name = "Ornate Mithril Crown",
  profession = "Jewelcrafting",
  spellID = 41786,
  yield = 1,
  materials = {
    { itemID = 3860, count = 16 },
    { itemID = 55152, count = 4 },
    { itemID = 3466, count = 1 },
    { itemID = 55246, count = 4 },
  }
}

MT_RecipeDB[55359] = { -- Blazefury Circlet
  name = "Blazefury Circlet",
  profession = "Jewelcrafting",
  spellID = 41788,
  yield = 1,
  materials = {
    { itemID = 56033, count = 1 },
    { itemID = 55252, count = 2 },
    { itemID = 12364, count = 8 },
    { itemID = 12799, count = 10 },
    { itemID = 55248, count = 4 },
    { itemID = 7078, count = 6 },
  }
}

MT_RecipeDB[55360] = { -- Ring of Unleashed Potential
  name = "Ring of Unleashed Potential",
  profession = "Jewelcrafting",
  spellID = 41790,
  yield = 1,
  materials = {
    { itemID = 56033, count = 1 },
    { itemID = 55252, count = 1 },
    { itemID = 12803, count = 16 },
    { itemID = 18335, count = 4 },
    { itemID = 12799, count = 6 },
    { itemID = 55248, count = 4 },
  }
}

MT_RecipeDB[55361] = { -- Empowered Domination Rod
  name = "Empowered Domination Rod",
  profession = "Jewelcrafting",
  spellID = 41792,
  yield = 1,
  materials = {
    { itemID = 12360, count = 6 },
    { itemID = 12359, count = 12 },
    { itemID = 55252, count = 1 },
    { itemID = 13926, count = 4 },
    { itemID = 12800, count = 8 },
    { itemID = 55248, count = 2 },
  }
}

MT_RecipeDB[55363] = { -- Grail of Forgotten Memories
  name = "Grail of Forgotten Memories",
  profession = "Jewelcrafting",
  spellID = 41796,
  yield = 1,
  materials = {
    { itemID = 3577, count = 24 },
    { itemID = 55252, count = 1 },
    { itemID = 7080, count = 8 },
    { itemID = 7076, count = 8 },
    { itemID = 12800, count = 6 },
    { itemID = 55248, count = 4 },
  }
}

MT_RecipeDB[55364] = { -- Guardbreaker Charm
  name = "Guardbreaker Charm",
  profession = "Jewelcrafting",
  spellID = 41798,
  yield = 1,
  materials = {
    { itemID = 3577, count = 32 },
    { itemID = 7082, count = 8 },
    { itemID = 12800, count = 8 },
    { itemID = 8152, count = 8 },
    { itemID = 55247, count = 6 },
  }
}

MT_RecipeDB[55365] = { -- Rudeus
  name = "Rudeus",
  profession = "Jewelcrafting",
  spellID = 41800,
  yield = 1,
  materials = {
    { itemID = 12359, count = 28 },
    { itemID = 55252, count = 2 },
    { itemID = 12364, count = 12 },
    { itemID = 7077, count = 8 },
    { itemID = 61673, count = 8 },
    { itemID = 18567, count = 1 },
    { itemID = 55248, count = 6 },
  }
}

MT_RecipeDB[55366] = { -- Spire of Channeled Power
  name = "Spire of Channeled Power",
  profession = "Jewelcrafting",
  spellID = 41802,
  yield = 1,
  materials = {
    { itemID = 12359, count = 18 },
    { itemID = 12360, count = 2 },
    { itemID = 12799, count = 10 },
    { itemID = 61673, count = 6 },
    { itemID = 55154, count = 6 },
    { itemID = 55247, count = 2 },
  }
}

MT_RecipeDB[55367] = { -- Bindings of Luminance
  name = "Bindings of Luminance",
  profession = "Jewelcrafting",
  spellID = 41804,
  yield = 1,
  materials = {
    { itemID = 3577, count = 26 },
    { itemID = 55252, count = 1 },
    { itemID = 17011, count = 2 },
    { itemID = 12799, count = 8 },
    { itemID = 55248, count = 2 },
  }
}

MT_RecipeDB[55368] = { -- Crown of the Illustrious Queen
  name = "Crown of the Illustrious Queen",
  profession = "Jewelcrafting",
  spellID = 41806,
  yield = 1,
  materials = {
    { itemID = 3577, count = 32 },
    { itemID = 55252, count = 1 },
    { itemID = 12364, count = 6 },
    { itemID = 12800, count = 8 },
    { itemID = 3466, count = 6 },
    { itemID = 55248, count = 4 },
  }
}

MT_RecipeDB[56096] = { -- Mastercrafted Diamond Bangles
  name = "Mastercrafted Diamond Bangles",
  profession = "Jewelcrafting",
  spellID = 41808,
  yield = 1,
  materials = {
    { itemID = 12360, count = 6 },
    { itemID = 6037, count = 6 },
    { itemID = 12800, count = 8 },
    { itemID = 61673, count = 4 },
    { itemID = 55154, count = 6 },
    { itemID = 55248, count = 4 },
  }
}

MT_RecipeDB[61818] = { -- Gorgeous Mountain Gemstone
  name = "Gorgeous Mountain Gemstone",
  profession = "Jewelcrafting",
  spellID = 41821,
  yield = 1,
  materials = {
    { itemID = 11382, count = 1 },
    { itemID = 7077, count = 6 },
    { itemID = 55248, count = 1 },
    { itemID = 55154, count = 2 },
  }
}

MT_RecipeDB[55150] = { -- Rough Gritted Paper
  name = "Rough Gritted Paper",
  profession = "Jewelcrafting",
  spellID = 29728,
  yield = 1,
  materials = {
    { itemID = 2589, count = 1 },
    { itemID = 2835, count = 1 },
  }
}

MT_RecipeDB[55156] = { -- Rough Copper Ring
  name = "Rough Copper Ring",
  profession = "Jewelcrafting",
  spellID = 29730,
  yield = 1,
  materials = {
    { itemID = 2840, count = 2 },
  }
}

MT_RecipeDB[55157] = { -- Copper Bangle
  name = "Copper Bangle",
  profession = "Jewelcrafting",
  spellID = 29732,
  yield = 1,
  materials = {
    { itemID = 2840, count = 4 },
  }
}

MT_RecipeDB[7338] = { -- Mood Ring
  name = "Mood Ring",
  profession = "Jewelcrafting",
  spellID = 30221,
  yield = 1,
  materials = {
    { itemID = 774, count = 1 },
    { itemID = 4382, count = 1 },
  }
}

MT_RecipeDB[55169] = { -- Small Pearl Ring
  name = "Small Pearl Ring",
  profession = "Jewelcrafting",
  spellID = 41247,
  yield = 1,
  materials = {
    { itemID = 55156, count = 1 },
    { itemID = 5498, count = 1 },
    { itemID = 55150, count = 2 },
    { itemID = 55245, count = 1 },
  }
}

MT_RecipeDB[56044] = { -- Shining Copper Cuffs
  name = "Shining Copper Cuffs",
  profession = "Jewelcrafting",
  spellID = 41335,
  yield = 1,
  materials = {
    { itemID = 2840, count = 6 },
    { itemID = 818, count = 1 },
    { itemID = 55246, count = 1 },
  }
}

MT_RecipeDB[55362] = { -- Orb of Clairvoyance
  name = "Orb of Clairvoyance",
  profession = "Jewelcrafting",
  spellID = 41794,
  yield = 1,
  materials = {
    { itemID = 12359, count = 16 },
    { itemID = 5116, count = 12 },
    { itemID = 12361, count = 6 },
    { itemID = 12799, count = 6 },
    { itemID = 55247, count = 2 },
  }
}

MT_RecipeDB[55255] = { -- Skyfire Jewel
  name = "Skyfire Jewel",
  profession = "Jewelcrafting",
  spellID = 41354,
  yield = 1,
  materials = {
    { itemID = 41321, count = 1 },
    { itemID = 55251, count = 3 },
    { itemID = 7069, count = 3 },
  }
}

MT_RecipeDB[156] = { -- Refined Dwarven Necklace
  name = "Refined Dwarven Necklace",
  profession = "Jewelcrafting",
  spellID = 93,
  yield = 1,
  materials = {
    { itemID = 3860, count = 12 },
    { itemID = 55249, count = 3 },
    { itemID = 6371, count = 3 },
    { itemID = 3466, count = 2 },
    { itemID = 55152, count = 2 },
  }
}

MT_RecipeDB[56112] = { -- Ancient Dwarven Gemstone
  name = "Ancient Dwarven Gemstone",
  profession = "Jewelcrafting",
  spellID = 104,
  yield = 1,
  materials = {
    { itemID = 3860, count = 1 },
    { itemID = 55249, count = 1 },
    { itemID = 55247, count = 1 },
  }
}

MT_RecipeDB[55060] = { -- Grandstaff of the Shen
  name = "Grandstaff of the Shen",
  profession = "Jewelcrafting",
  spellID = 36905,
  yield = 1,
  materials = {
    { itemID = 55252, count = 4 },
    { itemID = 12360, count = 2 },
    { itemID = 12655, count = 16 },
    { itemID = 20725, count = 4 },
    { itemID = 11291, count = 20 },
    { itemID = 12800, count = 6 },
    { itemID = 55248, count = 4 },
  }
}

-- ============================================================================
-- SMELTING RECIPES
-- ============================================================================

MT_RecipeDB[2840] = { -- Copper Bar
  name = "Copper Bar",
  profession = "Smelting",
  spellID = 2657,
  yield = 1,
  materials = {
    { itemID = 2770, count = 1 },
  }
}

MT_RecipeDB[2841] = { -- Bronze Bar
  name = "Bronze Bar",
  profession = "Smelting",
  spellID = 2659,
  yield = 2,
  materials = {
    { itemID = 2840, count = 1 },
    { itemID = 3576, count = 1 },
  }
}

MT_RecipeDB[3576] = { -- Tin Bar
  name = "Tin Bar",
  profession = "Smelting",
  spellID = 3304,
  yield = 1,
  materials = {
    { itemID = 2771, count = 1 },
  }
}

MT_RecipeDB[3575] = { -- Iron Bar
  name = "Iron Bar",
  profession = "Smelting",
  spellID = 3307,
  yield = 1,
  materials = {
    { itemID = 2772, count = 1 },
  }
}

MT_RecipeDB[3577] = { -- Gold Bar
  name = "Gold Bar",
  profession = "Smelting",
  spellID = 3308,
  yield = 1,
  materials = {
    { itemID = 2776, count = 1 },
  }
}

MT_RecipeDB[3859] = { -- Steel Bar
  name = "Steel Bar",
  profession = "Smelting",
  spellID = 3569,
  yield = 1,
  materials = {
    { itemID = 3575, count = 1 },
    { itemID = 3857, count = 1 },
  }
}

MT_RecipeDB[3860] = { -- Mithril Bar
  name = "Mithril Bar",
  profession = "Smelting",
  spellID = 10097,
  yield = 1,
  materials = {
    { itemID = 3858, count = 1 },
  }
}

MT_RecipeDB[6037] = { -- Truesilver Bar
  name = "Truesilver Bar",
  profession = "Smelting",
  spellID = 10098,
  yield = 1,
  materials = {
    { itemID = 7911, count = 1 },
  }
}

MT_RecipeDB[2842] = { -- Silver Bar
  name = "Silver Bar",
  profession = "Smelting",
  spellID = 2658,
  yield = 1,
  materials = {
    { itemID = 2775, count = 1 },
  }
}

MT_RecipeDB[12359] = { -- Thorium Bar
  name = "Thorium Bar",
  profession = "Smelting",
  spellID = 16153,
  yield = 1,
  materials = {
    { itemID = 10620, count = 1 },
  }
}

MT_RecipeDB[12655] = { -- Enchanted Thorium Bar
  name = "Enchanted Thorium Bar",
  profession = "Smelting",
  spellID = 16160,
  yield = 1,
  materials = {
    { itemID = 12359, count = 1 },
    { itemID = 12360, count = 3 },
  }
}

MT_RecipeDB[11371] = { -- Dark Iron Bar
  name = "Dark Iron Bar",
  profession = "Smelting",
  spellID = 14891,
  yield = 1,
  materials = {
    { itemID = 11370, count = 8 },
  }
}

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
