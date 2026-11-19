--[[
	lunar_heistcontracts items OVERWRITES lunar_robbery's items
]]--

local items = {}

local function insert(source, overwrite)
    for itemName, itemData in pairs(source) do
        if items[itemName] and not overwrite then
            s = ('[ox_inventory] Duplicate ITEM skipped: %s'):format(itemName)
			print(s)
        else
            items[itemName] = itemData
        end
    end
end

insert({	-- lunar_robbery
	['ring'] = {
		label = 'Ring',
		description = "A stunning diamond ring!",
		weight = 50,
		stack = true
	},

	['bracelet'] = {
		label = 'Bracelet',
		description = "A wonderful bracelet",
		weight = 100,
		stack = true
	},

	['watch'] = {
		label = 'Expensive watch',
		description = "A luxurious watch",
		weight = 200,
		stack = true
	},

	['usb_drive'] = {
		label = 'USB drive',
		description = "An USB drive, might be good for hacking?",
		weight = 200,
		stack = false
	},

	['monitor'] = {
		label = 'Monitor',
		description = "An used monitor",
		weight = 750,
		stack = true
	},

	['keyboard'] = {
		label = 'Keyboard',
		description = "An used keyboard",
		weight = 300,
		stack = true
	},

	['laptop'] = {
		label = 'Laptop',
		description = "An used laptop",
		weight = 1000,
		stack = true
	},

	['bong'] = {
		label = 'Bong',
		weight = 200,
		stack = true
	},

	['microwave'] = {
		label = 'Microwave',
		weight = 1000,
		stack = true
	},
})

insert({	-- lunar_heistcontracts
	['blue_keycard'] = {
		label = 'Blue Keycard',
		weight = 100,
		stack = false
	},

	['purple_keycard'] = {
		label = 'Purple Keycard',
		weight = 100,
		stack = false
	},

	['hack_usb'] = {
		label = 'Phantom USB',
		weight = 100,
		stack = false
	},

	['hack_card'] = {
		label = 'Spoofing Card',
		weight = 100,
		stack = false
	},

	['coins'] = {
		label = 'Coins',
		weight = 10,
	},

	['painting'] = {
		label = 'Painting',
		weight = 100,
	},

	['bomb_c4'] = {
		label = 'C4 Explosive',
		weight = 3000,
	},

	['angle_grinder'] = {
		label = 'Angle Grinder',
		weight = 1500,
	},

	['contracts_tablet'] = {
		label = 'Contract Tablet',
		stack = false,
		weight = 400,
	},

	['classified_docs'] = {
		label = 'Classified Documents',
		weight = 100,
	},

	['diamond_necklace'] = {
		label = 'Diamond Necklace',
		weight = 100,
	},

	['diamonds_box'] = {
		label = 'Diamonds Box',
		weight = 200,
	},

	['luxurious_watch'] = {
		label = 'Luxurious Watch',
		weight = 200,
	},

	['rare_coins'] = {
		label = 'Rare Coins',
		weight = 500,
	},

	['diamond_ring'] = {
		label = 'Diamond Ring',
		weight = 50,
	},

	['thermite'] = {
		label = 'Thermite',
		weight = 350,
	},

	['gold_bar'] = {
		label = 'Gold Bar',
		weight = 500,
	},

	["large_drill"] = {
		label = "Large Drill",
		weight = 12500,
		stack = true,
		close = true,
	},

	['casino_keycard'] = {
		label = 'Casino Keycard',
		weight = 100,
		stack = false
	},

	["small_drill"] = {
		label = "Small Drill",
		weight = 2000,
		stack = true,
		close = true,
	},

	['explosives'] = {
		label = 'Explosives',
		weight = 3000,
	},

	['tv'] = {
		label = 'Television',
		weight = 12500,
		stack = true,
	},

	['microwave'] = {
		label = 'Microwave',
		weight = 7500,
		stack = true,
	},

	['monitor'] = {
		label = 'Computer Monitor',
		weight = 5000,
		stack = true,
	},

	['printer'] = {
		label = 'Printer',
		weight = 10000,
		stack = true,
	},

	['flat_tv'] = {
		label = 'Flat Screen TV',
		weight = 12500,
		stack = true,
	},

	['old_tv'] = {
		label = 'Old TV',
		weight = 12500,
		stack = true,
	},

	['dj_deck'] = {
		label = 'DJ Deck',
		weight = 7500,
		stack = true,
	},

	['console'] = {
		label = 'Gaming Console',
		weight = 3000,
		stack = true,
	},

	['keyboard'] = {
		label = 'Keyboard',
		weight = 500,
		stack = true,
	},

	['laptop'] = {
		label = 'Laptop',
		weight = 2500,
		stack = true,
	},

	['bong'] = {
		label = 'Bong',
		weight = 1000,
		stack = true,
	},

	['meth_bag'] = {
		label = 'Meth Bag',
		weight = 50,
		stack = true,
	},

	['coke_brick'] = {
		label = 'Coke Brick',
		weight = 200,
		stack = true,
	},

	['weed_brick'] = {
		label = 'Weed Brick',
		weight = 200,
		stack = true,
	},

	['pink_diamond'] = {
		label = 'Pink Diamond',
		weight = 100,
	},

	['rare_tequila'] = {
		label = 'Rare Tequila',
		weight = 300,
	},

	['plasma_cutter'] = {
		label = 'Plasma cutter',
		weight = 1000,
		stack = true,
	},
}, true)

insert({	-- lunar_drugscreator
	['ammonia'] = {
		label = 'Ammonia',
		weight = 500,
		stack = true,
	},

	['sodium_benzoate'] = {
		label = 'Sodium benzoate',
		weight = 750,
		stack = true,
	},

	['meth_tray'] = {
		label = 'Meth tray',
		weight = 1000,
		stack = true,
	},

	['meth'] = {
		label = 'Meth',
		weight = 1,
		stack = true,
	},

	['meth_bag'] = {
		label = 'Meth bag',
		weight = 50,
		stack = true,
	},

	['plastic_bag'] = {
		label = 'Plastic bag',
		weight = 40,
		stack = true,
	},

	['meth_syringe'] = {
		label = 'Meth syringe',
		weight = 75,
		stack = true,
	},

	-- Cocaine related items
	['coke_seed'] = {
		label = 'Cocaine seed',
		weight = 10,
		stack = true,
	},

	['coke_leaf'] = {
		label = 'Cocaine leaf',
		weight = 50,
		stack = true,
	},

	['coke_paste'] = {
		label = 'Cocaine paste',
		weight = 150,
		stack = true,
	},

	['coke'] = {
		label = 'Cocaine',
		weight = 1,
		stack = true,
	},

	['coke_bag'] = {
		label = 'Cocaine bag',
		weight = 50,
		stack = true,
	},

	['coke_brick'] = {
		label = 'Cocaine brick',
		weight = 200,
		stack = true,
	},

	['coke_doll'] = {
		label = 'Cocaine doll',
		weight = 500,
		stack = true,
	},

	-- Weed related items
	['weed_seed'] = {
		label = 'Weed seed',
		weight = 5,
		stack = true,
	},

	['weed_pot'] = {
		label = 'Flower Pot',
		weight = 500,
		stack = true,
	},

	['trowel'] = {
		label = 'Trowel',
		weight = 150,
		stack = true,
	},

	['weed_bud'] = {
		label = 'Weed bud',
		weight = 25,
		stack = true,
	},

	['clean_weed_bud'] = {
		label = 'Clean weed bud',
		weight = 20,
		stack = true,
	},

	['cookie_dough'] = {
		label = 'Cookie dough',
		weight = 200,
		stack = true
	},

	['weed_cookie'] = {
		label = 'Weed cookie',
		weight = 50,
		stack = true
	},

	['weed_bag'] = {
		label = 'Weed bag',
		weight = 50,
		stack = true,
	},

	['weed_joint'] = {
		label = 'Weed joint',
		weight = 15,
		stack = true,
	},

	['weed_papers'] = {
		label = 'Weed papers',
		weight = 5,
		stack = true,
	},

	-- Heroin related items
	['poppy_seeds'] = {
		label = 'Poppy seeds',
		weight = 5,
		stack = true,
	},

	['poppy_plant'] = {
		label = 'Poppy plant',
		weight = 100,
		stack = true,
	},

	['opium'] = {
		label = 'Opium',
		weight = 1,
		stack = true,
	},

	['heroin'] = {
		label = 'Heroin',
		weight = 1,
		stack = true,
	},

	['heroin_bag'] = {
		label = 'Heroin bag',
		weight = 50,
		stack = true,
	},

	['heroin_syringe'] = {
		label = 'Heroin syringe',
		weight = 75,
		stack = true,
	},

	['syringe'] = {
		label = 'Syringe',
		weight = 25,
		stack = true,
	},

	-- LSD related items
	['ergot_fungus'] = {
		label = 'Ergot fungus',
		weight = 50,
		stack = true,
	},

	['generic_leaf'] = {
		label = 'Leaf',
		weight = 20,
		stack = true,
	},

	['lsd_liquid'] = {
		label = 'LSD liquid',
		weight = 25,
		stack = true,
	},

	['lsd'] = {
		label = 'LSD',
		weight = 1,
		stack = true,
	},

	['art_papers'] = {
		label = 'Art papers',
		weight = 5,
		stack = true,
	},

	-- Ecstasy related items
	['safrole_oil'] = {
		label = 'Safrole oil',
		weight = 300,
		stack = true,
	},

	['ecstasy_crystals'] = {
		label = 'Ecstasy crystals',
		weight = 1,
		stack = true,
	},

	['ecstasy_pill'] = {
		label = 'Ecstasy pill',
		weight = 15,
		stack = true,
	},

	-- Mushroom related items
	['mushrooms'] = {
		label = 'Mushrooms',
		weight = 1,
		stack = true,
	},

	['mushroom_powder'] = {
		label = 'Mushroom powder',
		weight = 1,
		stack = true,
	},

	['chocolate_chips'] = {
		label = 'Chocolate chips',
		weight = 30,
		stack = true,
	},

	['mushroom_chocolate'] = {
		label = 'Mushroom chocolate',
		weight = 45,
		stack = true,
	},

	-- Ketamine related items
	['anesthetic'] = {
		label = 'anesthetic',
		weight = 200,
		stack = true,
	},

	['ketamine'] = {
		label = 'Ketamine',
		weight = 1,
		stack = true,
	},

	['ketamine_bag'] = {
		label = 'Ketamine bag',
		weight = 50,
		stack = true,
	},

	-- Crack related items
	['baking_soda'] = {
		label = 'Baking soda',
		weight = 100,
		stack = true,
	},

	['crack'] = {
		label = 'Crack',
		weight = 1,
		stack = true,
	},

	['crack_bag'] = {
		label = 'Crack bag',
		weight = 50,
		stack = true,
	},

	['crack_pipe'] = {
		label = 'Crack pipe',
		weight = 150,
		stack = true,
	},

	['crack_syringe'] = {
		label = 'Crack syringe',
		weight = 75,
		stack = true,
	},

	['pipe'] = {
		label = 'Pipe',
		weight = 100,
		stack = true,
	},

	-- Fentanyl related items
	['npp_chemical'] = {
		label = 'NPP chemical',
		weight = 300,
		stack = true,
	},

	['aniline_solution'] = {
		label = 'Aniline solution',
		weight = 250,
		stack = true,
	},

	['fentanyl'] = {
		label = 'Fentanyl',
		weight = 1,
		stack = true,
	},

	['fentanyl_bag'] = {
		label = 'Fentanyl bag',
		weight = 25,
		stack = true,
	},

	['meth_table'] = {
		label = 'Meth table',
		weight = 2250,
		stack = false
	},

	['coke_table'] = {
		label = 'Coke table',
		weight = 2250,
		stack = false
	},

	['weed_table'] = {
		label = 'Weed table',
		weight = 2250,
		stack = false
	},

	['chem_table'] = {
		label = 'Chemistry table',
		weight = 2250,
		stack = false
	},

	['burner_phone'] = {
		label = 'Burner phone',
		weight = 200,
		stack = true
	},

	['light1'] = {
		label = 'Portable Lamp',
		weight = 2000,
		stack = true
	},

	['light2'] = {
		label = 'Portable Lamp',
		weight = 2000,
		stack = true
	},

	['fertilizer'] = {
		label = 'Fertilizer',
		weight = 250,
		stack = true
	},

	['water_can'] = {
		label = 'Watering can',
		weight = 250,
		stack = true
	},
})

return items