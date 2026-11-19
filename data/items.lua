--[[
	Items from lunar script is in custom/items_lunar.lua
]]--

local items = {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	--[[
	-- Duplicated with `wasabi_ambulance_v2`
	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},
	]]--

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	--[[
	-- Duplicated with qs-housing
	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},
	]]--

	--[[
	-- Not needed since there's okokPhone
	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},
	]]--

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Fleeca Card',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},
}

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

insert({ -- wasabi_ambulance_v2
    -- =====================================
    -- HEALING ITEMS (uses healingItems config)
    -- These can be used directly from inventory
    -- Wasabi Advanced Ambulance Job V2
    -- =====================================
    ["bandage"] = {      -- Make sure no duplicates exist in the original items.lua
        label = 'Bandage',
        description = 'A simple bandage to stop minor bleeding',
        weight = 25,
        server = {
            export = "wasabi_ambulance_v2.bandage"
        }
    },
    ["medkit"] = {
        label = 'Med-Kit',
        description = 'A medical kit for treating injuries',
        weight = 250,
        server = {
            export = "wasabi_ambulance_v2.medkit"
        }
    },
    ["firstaidkit"] = {
        label = 'First Aid Kit',
        description = 'A comprehensive first aid kit for serious injuries',
        weight = 350,
        server = {
            export = "wasabi_ambulance_v2.firstaidkit"
        }
    },
    ["painkillers"] = {
        label = 'Painkillers',
        description = 'Pills to temporarily relieve pain and reduce stun effects',
        weight = 10,
        server = {
            export = "wasabi_ambulance_v2.painkillers"
        }
    },
    ["ifak"] = {
        label = 'IFAK',
        description = 'Individual First Aid Kit',
        weight = 150,
        server = {
            export = "wasabi_ambulance_v2.ifak"
        }
    },
    ["sedative"] = {
        label = 'Sedative',
        description = 'A controlled sedative for EMS use',
        weight = 25,
        consume = 0, -- Sedation removes this server-side after the action completes.
        server = {
            export = "wasabi_ambulance_v2.sedative"
        }
    },
    ["defibrillator"] = {
        label = 'Defibrillator',
        description = 'A reusable defibrillator for reviving downed patients',
        weight = 2500,
        stack = false,
        close = true,
        consume = 0,
        server = {
            export = "wasabi_ambulance_v2.defibrillator"
        }
    },

    -- =====================================
    -- MEDICAL TREATMENT ITEMS (uses medicalItems config)
    -- These are used via the inspection UI by dragging onto limbs
    -- They do NOT have exports - the UI system handles their usage
    -- Wasabi Advanced Ambulance
    -- =====================================
    ["forceps"] = {
        label = 'Forceps',
        description = 'Used to treat gunshot wounds',
        weight = 100,
    },
    ["pliers"] = {
        label = 'Pliers',
        description = 'Used to treat taser prong wounds',
        weight = 25,
    },
    ["suture"] = {
        label = 'Suture',
        description = 'Used to treat cuts',
        weight = 25,
    },
    ["splint"] = {
        label = 'Splint',
        description = 'Used to treat broken bones',
        weight = 50,
    },
    ["icepack"] = {
        label = 'Ice Pack',
        description = 'Used to treat punches and bruises',
        weight = 25,
    },
    ["traumakit"] = {
        label = 'Trauma Kit',
        description = 'Used to treat blunt force trauma',
        weight = 75,
    },
    ["burncream"] = {
        label = 'Burn Cream',
        description = 'Used to treat burns',
        weight = 10,
    },

    -- =====================================
    -- EQUIPMENT ITEMS
    -- Wasabi Advanced Ambulance
    -- =====================================
    ["medbag"] = {
        label = 'Medbag',
        description = 'A portable medical bag containing supplies',
        weight = 50,
        stack = false,
        close = true,
        consume = 0,
        server = {
            export = "wasabi_ambulance_v2.medbag"
        }
    }
})

insert({	-- wasabi_carlock
    ["carkeys"] = { -- Skip this if carkeys already exists in items.lua.
        label = 'Car Keys',
        description = 'Keys to a vehicle.',
        weight = 100,
        stack = false,
        close = true,
        consume = 0,
        server = { export = 'wasabi_carlock.useKeyItem' },
    },
    ["carkey_fob"] = {
        label = 'Car Key Fob',
        description = 'An electronic key fob for a vehicle.',
        weight = 100,
        stack = false,
        close = true,
        consume = 0,
        server = { export = 'wasabi_carlock.useKeyItem' },
    },
    ["flapper_device"] = {
        label = 'Flapper Device',
        description = 'An electronic interface for bypassing vehicle security systems.',
        weight = 750,
        stack = true,
        close = true,
    },
})

insert({	-- wasabi_police_v2 (?)
	-- Cuffing
	["handcuffs"] = {
		label = 'Handcuffs',
		weight = 500,
		stack = false,
		close = true,
		consume = 0,
		description = 'Standard police handcuffs.',
		server = { export = 'wasabi_police_v2.handcuffs' },
	},
	["cuff_key"] = {
		label = 'Cuff Key',
		weight = 50,
		stack = true,
		close = true,
		consume = 0,
		description = 'Key for standard handcuffs.',
		server = { export = 'wasabi_police_v2.cuff_key' },
	},
	["ziptie"] = {
		label = 'Zip Tie',
		weight = 50,
		stack = true,
		close = true,
		consume = 0,
		description = 'Single-use zip tie restraint.',
		server = { export = 'wasabi_police_v2.ziptie' },
	},
	["bolt_cutter"] = {
		label = 'Bolt Cutter',
		weight = 2000,
		stack = false,
		close = true,
		consume = 0,
		description = 'Cuts handcuffs by force.',
		server = { export = 'wasabi_police_v2.bolt_cutter' },
	},
	["tracking_bracelet_cutter"] = {
		label = 'Bracelet Cutter',
		weight = 500,
		stack = false,
		close = true,
		consume = 0,
		description = 'Cuts tracking bracelets by force.',
		server = { export = 'wasabi_police_v2.tracking_bracelet_cutter' },
	},
	["flush_cutter"] = {
		label = 'Flush Cutter',
		weight = 100,
		stack = true,
		close = true,
		consume = 0,
		description = 'Cuts zip ties.',
		server = { export = 'wasabi_police_v2.flush_cutter' },
	},
	["soft_cuffs"] = {
		label = 'Soft Cuffs',
		weight = 200,
		stack = false,
		close = true,
		consume = 0,
		description = 'Soft front restraints.',
	},

	-- Evidence
	["empty_evidence_bag"] = {
		label = 'Evidence Bag',
		weight = 100,
		stack = true,
		close = true,
		consume = 0,
		description = 'Empty evidence bag for collecting samples.',
	},
	["evidence_bag_full"] = {
		label = 'Evidence Bag (Full)',
		weight = 150,
		stack = false,
		close = true,
		consume = 0,
		description = 'Evidence bag containing collected samples.',
		server = { export = 'wasabi_police_v2.evidence_bag_full' },
	},
	["bleachwipes"] = {
		label = 'Bleach Wipes', 
		weight = 100, 
		stack = true, 
		close = true, 
		consume = 0,
		description = 'Used through the Clean Blood target interaction.',
	},
	["uvlight"] = {
		label = 'UV Light',
		weight = 200,
		stack = false,
		close = true,
		consume = 0,
		description = 'Scans vehicle steering wheels for fingerprints.',
		server = { export = 'wasabi_police_v2.uvlight' },
	},

	-- Equipment (usable)
	["breathalyzer"] = {
		label = 'Breathalyzer',
		weight = 200,
		stack = false,
		close = true,
		consume = 0,
		description = 'Tests blood alcohol content.',
		server = { export = 'wasabi_police_v2.breathalyzer' },
	},

	["radar_post"] = {
		label = 'Radar Post',
		weight = 1500,
		stack = false,
		close = true,
		consume = 0,
		description = 'Deployable automated speed radar.',
		server = { export = 'wasabi_police_v2.radar_post' },
	},
	["spike_strip"] = {
		label = 'Spike Strip',
		weight = 2000,
		stack = false,
		close = true,
		consume = 0,
		description = 'Deflates tires on contact.',
		server = { export = 'wasabi_police_v2.spike_strip' },
	},
	["bodycam"] = {
		label = 'Body Camera',
		weight = 300,
		stack = false,
		close = true,
		consume = 0,
		description = 'Records officer interactions.',
		server = { export = 'wasabi_police_v2.bodycam' },
	},
	["cctv_camera"] = {
		label = 'CCTV Camera',
		weight = 500,
		stack = false,
		close = true,
		consume = 0,
		description = 'Deployable surveillance camera.',
		server = { export = 'wasabi_police_v2.cctv_camera' },
	},

	-- Equipment (passive / target-activated)
	["tracking_bracelet"] = {
		label = 'Tracking Bracelet',
		weight = 100,
		stack = true,
		close = true,
		consume = 0,
		description = 'GPS tracking bracelet.',
		server = { export = 'wasabi_police_v2.tracking_bracelet' },
	},
	["police_cone"] = {
		label = 'Traffic Cone',
		weight = 500,
		stack = true,
		close = true,
		consume = 0,
		description = 'Traffic control cone.',
	},
	["police_barrier"] = {
		label = 'Police Barrier',
		weight = 1000,
		stack = false,
		close = true,
		consume = 0,
		description = 'Road barrier.',
	},
	["gsr_kit"] = {
		label = 'GSR Test Kit',
		weight = 100,
		stack = true,
		close = true,
		consume = 0,
		description = 'Tests for gunshot residue.',
	},
	["police_radio"] = {
		label = 'Police Radio',
		weight = 300,
		stack = false,
		close = true,
		consume = 0,
		description = 'Secure police radio.',
	},
})

insert({	-- wasabi_crutch
    ["crutch"] = {
        ["name"] = "crutch",
        ["label"] = "Crutch",
        ["weight"] = 650,
        ["type"] = "item",
        ["image"] = "crutch.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "A device used to assist with walking."
    },
    ["wheelchair"] = {
        ["name"] = "wheelchair",
        ["label"] = "Wheelchair",
        ["weight"] = 850,
        ["type"] = "item",
        ["image"] = "wheelchair.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "A device used to assist with mobility."
    }
})

insert({	-- fishing_simulator
	-- Bait
	["bread"] = {
		label = "Bread",
		weight = 10,
		stack = true, -- assuming 'unique' is false means it should be stackable
		close = true,
		description = "Bread",
		client = {
			image = "bread.png",
		}
	},
	
	["earthworm"] = {
		label = "Earthworm",
		weight = 10,
		stack = true,
		close = true,
		description = "Earthworm",
		client = {
			image = "earthworm.png",
		}
	},
	
	["dough"] = {
		label = "Dough",
		weight = 10,
		stack = true,
		close = true,
		description = "Dough",
		client = {
			image = "dough.png",
		}
	},
	
	["grub"] = {
		label = "Grub",
		weight = 10,
		stack = true,
		close = true,
		description = "Grub",
		client = {
			image = "grub.png",
		}
	},
	
	["caddis_fly"] = {
		label = "Caddis Fly",
		weight = 10,
		stack = true,
		close = true,
		description = "Caddis Fly",
		client = {
			image = "caddis_fly.png",
		}
	},
	
	["cheese"] = {
		label = "Cheese",
		weight = 10,
		stack = true,
		close = true,
		description = "Cheese",
		client = {
			image = "cheese.png",
		}
	},
	
	["fly"] = {
		label = "Fly",
		weight = 10,
		stack = true,
		close = true,
		description = "Fly",
		client = {
			image = "fly.png",
		}
	},
	
	["dragonfly"] = {
		label = "Dragonfly",
		weight = 10,
		stack = true,
		close = true,
		description = "Dragonfly",
		client = {
			image = "dragonfly.png",
		}
	},
	
	["grasshoper"] = {
		label = "Grasshoper",
		weight = 10,
		stack = true,
		close = true,
		description = "Grasshoper",
		client = {
			image = "grasshoper.png",
		}
	},
	
	["shrimp"] = {
		label = "Shrimp",
		weight = 10,
		stack = true,
		close = true,
		description = "Shrimp",
		client = {
			image = "shrimp.png",
		}
	},
	
	["leech"] = {
		label = "Leech",
		weight = 10,
		stack = true,
		close = true,
		description = "Leech",
		client = {
			image = "leech.png",
		}
	},
	
	["snail"] = {
		label = "Snail",
		weight = 10,
		stack = true,
		close = true,
		description = "Snail",
		client = {
			image = "snail.png",
		}
	},
	
	["liver"] = {
		label = "Liver",
		weight = 10,
		stack = true,
		close = true,
		description = "Liver",
		client = {
			image = "liver.png",
		}
	},
	-- Lines
	["express_fishing_super_line"] = {
		label = "Express Super Line 0.1mm",
		weight = 70,
		stack = true, -- assuming 'unique' is false means it should be stackable
		close = true,
		description = "Express Super Line 0.1mm",
		client = {
			image = "express_fishing_super_line.png",
		}
	},
	
	["syberia_indiana_green"] = {
		label = "Indiana Green 0.14mm",
		weight = 70,
		stack = true,
		close = true,
		description = "Indiana Green 0.14mm",
		client = {
			image = "syberia_indiana_green.png",
		}
	},
	
	["syberia_indiana_white"] = {
		label = "Indiana White 0.18mm",
		weight = 70,
		stack = true,
		close = true,
		description = "Indiana White 0.18mm",
		client = {
			image = "syberia_indiana_white.png",
		}
	},
	
	["simmons_mono_original"] = {
		label = "Simmons Original 0.25mm",
		weight = 70,
		stack = true,
		close = true,
		description = "Simmons Original 0.25mm",
		client = {
			image = "simmons_mono_original.png",
		}
	},
	
	["simmons_mono_ss"] = {
		label = "Simmons SS 0.28mm",
		weight = 70,
		stack = true,
		close = true,
		description = "Simmons SS 0.28mm",
		client = {
			image = "simmons_mono_ss.png",
		}
	},
	
	["syberia_indiana_green_2"] = {
		label = "Indiana Green 0.32mm",
		weight = 70,
		stack = true,
		close = true,
		description = "Indiana Green 0.32mm",
		client = {
			image = "syberia_indiana_green_2.png",
		}
	},
	
	["syberia_indiana_white_2"] = {
		label = "Indiana White 0.36mm",
		weight = 70,
		stack = true,
		close = true,
		description = "Indiana White 0.36mm",
		client = {
			image = "syberia_indiana_white_2.png",
		}
	},
	
	["snake_power_line_clr"] = {
		label = "Snake Power Line 0.41mm",
		weight = 70,
		stack = true,
		close = true,
		description = "Snake Power Line 0.41mm",
		client = {
			image = "snake_power_line_clr.png",
		}
	},
	
	["simmons_mono_original_2"] = {
		label = "Simmons Original 0.48mm",
		weight = 70,
		stack = true,
		close = true,
		description = "Simmons Original 0.48mm",
		client = {
			image = "simmons_mono_original_2.png",
		}
	},
	
	["simmons_mono_ss_2"] = {
		label = "Simmons SS 0.52mm",
		weight = 70,
		stack = true,
		close = true,
		description = "Simmons SS 0.52mm",
		client = {
			image = "simmons_mono_ss_2.png",
		}
	},
	
	["snake_power_line_clr_2"] = {
		label = "Snake Power Line 0.65mm",
		weight = 70,
		stack = true,
		close = true,
		description = "Snake Power Line 0.65mm",
		client = {
			image = "snake_power_line_clr_2.png",
		}
	},
	
	["solid_hipower_nylon"] = {
		label = "HiPower Nylon 0.8mm",
		weight = 70,
		stack = true,
		close = true,
		description = "HiPower Nylon 0.8mm",
		client = {
			image = "solid_hipower_nylon.png",
		}
	},
	
	["solid_hipower_nylon_lime"] = {
		label = "HiPower Nylon L 0.85mm",
		weight = 70,
		stack = true,
		close = true,
		description = "HiPower Nylon L 0.85mm",
		client = {
			image = "solid_hipower_nylon_lime.png",
		}
	},
	
	["solid_hipower_nylon_orange"] = {
		label = "HiPower Nylon O 0.9mm",
		weight = 70,
		stack = true,
		close = true,
		description = "HiPower Nylon O 0.9mm",
		client = {
			image = "solid_hipower_nylon_orange.png",
		}
	},
	
	["solid_hipower_nylon_2"] = {
		label = "HiPower Nylon 1.05mm",
		weight = 70,
		stack = true,
		close = true,
		description = "HiPower Nylon 1.05mm",
		client = {
			image = "solid_hipower_nylon_2.png",
		}
	},
	
	["solid_hipower_nylon_lime_2"] = {
		label = "HiPower Nylon L 1.15mm",
		weight = 70,
		stack = true,
		close = true,
		description = "HiPower Nylon L 1.15mm",
		client = {
			image = "solid_hipower_nylon_lime_2.png",
		}
	},
	
	["solid_hipower_nylon_orange_2"] = {
		label = "HiPower Nylon O 1.25mm",
		weight = 70,
		stack = true,
		close = true,
		description = "HiPower Nylon O 1.25mm",
		client = {
			image = "solid_hipower_nylon_orange_2.png",
		}
	},
	-- Rods
	["ufe_telerod_370"] = {
		label = "UFE Telerod 370",
		weight = 150,
		stack = false, -- assuming 'unique' is false means it should be stackable
		close = true,
		description = "UFE Telerod 370",
		client = {
			image = "ufe_telerod_370.png",
		}
	},
	
	["carptack_feeder_master_250"] = {
		label = "Carptack Feeder Master 250",
		weight = 150,
		stack = false,
		close = true,
		description = "Carptack Feeder Master 250",
		client = {
			image = "carptack_feeder_master_250.png",
		}
	},
	
	["sakura_tsubarea_tsa_552_xul"] = {
		label = "Sakura Tsubarea TSA 552 XUL",
		weight = 150,
		stack = false,
		close = true,
		description = "Sakura Tsubarea TSA 552 XUL",
		client = {
			image = "sakura_tsubarea_tsa_552_xul.png",
		}
	},
	
	["carpex_hybid_carp_270"] = {
		label = "Carpex Hybid Carp 270",
		weight = 150,
		stack = false,
		close = true,
		description = "Carpex Hybid Carp 270",
		client = {
			image = "carpex_hybid_carp_270.png",
		}
	},
	
	["ufe_float_x5_300"] = {
		label = "UFE Float X5 300",
		weight = 150,
		stack = false,
		close = true,
		description = "UFE Float X5 300",
		client = {
			image = "ufe_float_x5_300.png",
		}
	},
	
	["predatek_fast_perch_210"] = {
		label = "Predatek Fast Perch 210",
		weight = 150,
		stack = false,
		close = true,
		description = "Predatek Fast Perch 210",
		client = {
			image = "predatek_fast_perch_210.png",
		}
	},
	
	["sakura_ionizer_bass_insb_701_ml"] = {
		label = "Sakura Ionizer Bass INSB 701",
		weight = 150,
		stack = false,
		close = true,
		description = "Sakura Ionizer Bass INSB 701",
		client = {
			image = "sakura_ionizer_bass_insb_701_ml.png",
		}
	},
	
	["sakura_redbird_rds_602_l"] = {
		label = "Sakura Redbird RDS 602 L",
		weight = 150,
		stack = false,
		close = true,
		description = "Sakura Redbird RDS 602 L",
		client = {
			image = "sakura_redbird_rds_602_l.png",
		}
	},
	
	["carpex_cobalt_carp_360"] = {
		label = "Carpex Cobalt Carp 360",
		weight = 150,
		stack = false,
		close = true,
		description = "Carpex Cobalt Carp 360",
		client = {
			image = "carpex_cobalt_carp_360.png",
		}
	},
	
	["sakura_salt_sniper_salss_611_mj1"] = {
		label = "Sakura Salt Sniper SALSS 611",
		weight = 150,
		stack = false,
		close = true,
		description = "Sakura Salt Sniper SALSS 611",
		client = {
			image = "sakura_salt_sniper_salss_611_mj1.png",
		}
	},
	
	["sakura_speciz_spes_light_602_zander"] = {
		label = "Sakura Speciz Spes Light 602",
		weight = 150,
		stack = false,
		close = true,
		description = "Sakura Speciz Spes Light 602",
		client = {
			image = "sakura_speciz_spes_light_602_zander.png",
		}
	},
	
	["sakura_redbird_rds_662"] = {
		label = "Sakura Redbird RDS 662",
		weight = 150,
		stack = false,
		close = true,
		description = "Sakura Redbird RDS 662",
		client = {
			image = "sakura_redbird_rds_662.png",
		}
	},
	
	["sakura_salt_sniper_salss_902_h"] = {
		label = "Sakura Salt Sniper SALSS 902",
		weight = 150,
		stack = false,
		close = true,
		description = "Sakura Salt Sniper SALSS 902",
		client = {
			image = "sakura_salt_sniper_salss_902_h.png",
		}
	},
	
	["predatek_seahunter_230"] = {
		label = "Predatek Seahunter 230",
		weight = 150,
		stack = false,
		close = true,
		description = "Predatek Seahunter 230",
		client = {
			image = "predatek_seahunter_230.png",
		}
	},
	
	["sakura_shukan_shuc_661_lj"] = {
		label = "Sakura Shukan Shuc 661 LJ",
		weight = 150,
		stack = false,
		close = true,
		description = "Sakura Shukan Shuc 661 LJ",
		client = {
			image = "sakura_shukan_shuc_661_lj.png",
		}
	},
	
	["ufe_powercatch_270"] = {
		label = "UFE Powercatch 270",
		weight = 150,
		stack = false,
		close = true,
		description = "UFE Powercatch 270",
		client = {
			image = "ufe_powercatch_270.png",
		}
	},
	
	["predatek_pilk_200"] = {
		label = "Predatek Pilk 200",
		weight = 150,
		stack = false,
		close = true,
		description = "Predatek Pilk 200",
		client = {
			image = "predatek_pilk_200.png",
		}
	},
	
	["robinson_carbonic_nordic_pilk_300"] = {
		label = "Robinson Carbonic Nordic Pilk",
		weight = 150,
		stack = false,
		close = true,
		description = "Robinson Carbonic Nordic Pilk",
		client = {
			image = "robinson_carbonic_nordic_pilk_300.png",
		}
	},
	
	["carptack_bottom_cast_360"] = {
		label = "Carptack Bottom Cast 360",
		weight = 150,
		stack = false,
		close = true,
		description = "Carptack Bottom Cast 360",
		client = {
			image = "carptack_bottom_cast_360.png",
		}
	},
	
	["seax_salfighter_170"] = {
		label = "Seax Salfighter 170",
		weight = 150,
		stack = false,
		close = true,
		description = "Seax Salfighter 170",
		client = {
			image = "seax_salfighter_170.png",
		}
	},
	-- Reels
	["ufe_canta_1000"] = {
		label = "UFE Canta 1000",
		weight = 100,
		stack = false,
		close = true,
		description = "UFE Canta 1000",
		client = {
			image = "ufe_canta_1000.png",
		}
	},
	
	["ufe_barracuda_2000bt"] = {
		label = "UFE Barracuda 2000BT",
		weight = 100,
		stack = false,
		close = true,
		description = "UFE Barracuda 2000BT",
		client = {
			image = "ufe_barracuda_2000bt.png",
		}
	},
	
	["sakura_alpax_4508"] = {
		label = "Sakura Alpax 4508",
		weight = 100,
		stack = false,
		close = true,
		description = "Sakura Alpax 4508",
		client = {
			image = "sakura_alpax_4508.png",
		}
	},
	
	["sakura_alpax_8508"] = {
		label = "Sakura Alpax 8508",
		weight = 100,
		stack = false,
		close = true,
		description = "Sakura Alpax 8508",
		client = {
			image = "sakura_alpax_8508.png",
		}
	},
	
	["ufe_belona_4000"] = {
		label = "UFE Belona 4000",
		weight = 100,
		stack = false,
		close = true,
		description = "UFE Belona 4000",
		client = {
			image = "ufe_belona_4000.png",
		}
	},
	
	["ufe_bigspin_8000b"] = {
		label = "UFE Bigspin 8000B",
		weight = 100,
		stack = false,
		close = true,
		description = "UFE Bigspin 8000B",
		client = {
			image = "ufe_bigspin_8000b.png",
		}
	},
	
	["ufe_batara_8000g"] = {
		label = "UFE Batara 8000G",
		weight = 100,
		stack = false,
		close = true,
		description = "UFE Batara 8000G",
		client = {
			image = "ufe_batara_8000g.png",
		}
	},
	
	["ufe_batara_1000r"] = {
		label = "UFE Batara 1000R",
		weight = 100,
		stack = false,
		close = true,
		description = "UFE Batara 1000R",
		client = {
			image = "ufe_batara_1000r.png",
		}
	},
	
	["robinson_big_runner_807qd"] = {
		label = "Robinson Big Runner 807QD",
		weight = 100,
		stack = false,
		close = true,
		description = "Robinson Big Runner 807QD",
		client = {
			image = "robinson_big_runner_807qd.png",
		}
	},
	
	["spooler_catchpro_4000fd"] = {
		label = "Spooler Catchpro 4000FD",
		weight = 100,
		stack = false,
		close = true,
		description = "Spooler Catchpro 4000FD",
		client = {
			image = "spooler_catchpro_4000fd.png",
		}
	},
	
	["ufe_opensea_8000_x"] = {
		label = "UFE Opensea 8000-X",
		weight = 100,
		stack = false,
		close = true,
		description = "UFE Opensea 8000-X",
		client = {
			image = "ufe_opensea_8000-x.png",
		}
	},
	
	["spooler_catchpro_8000fd"] = {
		label = "Spooler Catchpro 8000FD",
		weight = 100,
		stack = false,
		close = true,
		description = "Spooler Catchpro 8000FD",
		client = {
			image = "spooler_catchpro_8000fd.png",
		}
	},
	
	["spooler_catchpro_14000fd"] = {
		label = "Spooler Catchpro 14000FD",
		weight = 100,
		stack = false,
		close = true,
		description = "Spooler Catchpro 14000FD",
		client = {
			image = "spooler_catchpro_14000fd.png",
		}
	},
	-- Hooks
	["ufa_bait_hook"] = {
		label = "UFA Bait",
		weight = 40,
		stack = true,
		close = true,
		description = "UFA Bait",
		client = {
			image = "ufa_bait_hook.png",
		}
	},
	
	["ufa_sproat_hook"] = {
		label = "UFA Sproat",
		weight = 40,
		stack = true,
		close = true,
		description = "UFA Sproat",
		client = {
			image = "ufa_sproat_hook.png",
		}
	},
	
	["captack_claw_xl_hook"] = {
		label = "Captack Claw XL",
		weight = 40,
		stack = true,
		close = true,
		description = "Captack Claw XL",
		client = {
			image = "captack_claw_xl_hook.png",
		}
	},
	
	["ufa_sproat_g_hook"] = {
		label = "UFA Sproat-G",
		weight = 40,
		stack = true,
		close = true,
		description = "UFA Sproat-G",
		client = {
			image = "ufa_sproat_g_hook.png",
		}
	},
	
	["carptack_carp_ss_hook"] = {
		label = "Carptack Carp S&S",
		weight = 40,
		stack = true,
		close = true,
		description = "Carptack Carp S&S",
		client = {
			image = "carptack_carp_ss_hook.png",
		}
	},
	
	["ufa_wide_gap_bl_hook"] = {
		label = "UFA Wide Gap BL",
		weight = 40,
		stack = true,
		close = true,
		description = "UFA Wide Gap BL",
		client = {
			image = "ufa_wide_gap_bl_hook.png",
		}
	},
	
	["ufa_aberdeen_hook"] = {
		label = "UFA Aberdeen",
		weight = 40,
		stack = true,
		close = true,
		description = "UFA Aberdeen",
		client = {
			image = "ufa_aberdeen_hook.png",
		}
	},
	
	["ufa_octopus_bl_hook"] = {
		label = "UFA Octopus BL",
		weight = 40,
		stack = true,
		close = true,
		description = "UFA Octopus BL",
		client = {
			image = "ufa_octopus_bl_hook.png",
		}
	},
	
	["ufa_livebait_hook"] = {
		label = "UFA Livebait",
		weight = 40,
		stack = true,
		close = true,
		description = "UFA Livebait",
		client = {
			image = "ufa_livebait_hook.png",
		}
	},
	
	["carptack_micro_barb_hook"] = {
		label = "Carptack Micro Barb",
		weight = 40,
		stack = true,
		close = true,
		description = "Carptack Micro Barb",
		client = {
			image = "carptack_micro_barb_hook.png",
		}
	},
	
	["carptack_carp_hook"] = {
		label = "Carptack Carp",
		weight = 40,
		stack = true,
		close = true,
		description = "Carptack Carp",
		client = {
			image = "carptack_carp_hook.png",
		}
	},
	
	["ufa_fusion_bl_hook"] = {
		label = "UFA Fusion BL",
		weight = 40,
		stack = true,
		close = true,
		description = "UFA Fusion BL",
		client = {
			image = "ufa_fusion_bl_hook.png",
		}
	},
	
	["predatek_octopus_hook"] = {
		label = "Predatek Octopus",
		weight = 40,
		stack = true,
		close = true,
		description = "Predatek Octopus",
		client = {
			image = "predatek_octopus_hook.png",
		}
	},
	
	["predatek_fusion_hook"] = {
		label = "Predatek Fusion",
		weight = 40,
		stack = true,
		close = true,
		description = "Predatek Fusion",
		client = {
			image = "predatek_fusion_hook.png",
		}
	},
	-- Scuba Shit
	["scuba"] = {
		label = "Scuba gear",
		weight = 300,
		stack = false,
		close = true,
		description = "Scuba gear",
		client = {
			image = "scuba.png",
		}
	},
	-- Fish
	
	["alligator_gar"] = {
		label = "Alligator Gar",
		weight = 550,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "An alligator gar fish.",
		client = {
			image = "alligator_gar.png",
		}
	},
	
	["amur_pike"] = {
		label = "Amur Pike",
		weight = 750,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "An Amur Pike fish.",
		client = {
			image = "amur_pike.png",
		}
	},
	
	["atlantic_cod"] = {
		label = "Atlantic Cod",
		weight = 300,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "An Atlantic Cod fish.",
		client = {
			image = "atlantic_cod.png",
		}
	},
	
	["fishing_gear"] = {
		label = "Fishing Gear",
		weight = 30,  -- Dropped a 0 from the weight
		stack = false,  -- Made non-stackable (unique item)
		close = true,  -- Equivalent to shouldClose
		description = "Essential gear for fishing.",
		client = {
			image = "fishing_gear.png",
		}
	},
	
	["aquarium_pass"] = {
		label = "Aquarium Pass",
		weight = 30,  -- Dropped a 0 from the weight
		stack = false,  -- Made non-stackable
		close = true,  -- Equivalent to shouldClose
		description = "Pass for entry to the aquarium.",
		client = {
			image = "aquarium_pass.png",
		}
	},
	
	["research_kit"] = {
		label = "Research Kit",
		weight = 30,  -- Dropped a 0 from the weight
		stack = false,  -- Made non-stackable
		close = true,  -- Equivalent to shouldClose
		description = "A kit useful for conducting field research.",
		client = {
			image = "research_kit.png",
		}
	},
	["special_boots"] = {
		label = "Special Boots",
		weight = 30,  -- Dropped a 0 from the weight
		stack = false,  -- Made non-stackable
		close = true,  -- Equivalent to shouldClose
		description = "Specially designed boots for rugged terrain.",
		client = {
			image = "special_boots.png",
		}
	},
	
	["museum_ticket"] = {
		label = "Museum Ticket",
		weight = 30,  -- Dropped a 0 from the weight
		stack = false,  -- Made non-stackable
		close = true,  -- Equivalent to shouldClose
		description = "Ticket for entry to the museum.",
		client = {
			image = "museum_ticket.png",
		}
	},
	
	["atlantic_salmon"] = {
		label = "Atlantic Salmon",
		weight = 500,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "An Atlantic Salmon fish.",
		client = {
			image = "atlantic_salmon.png",
		}
	},
	
	["barbel"] = {
		label = "Barbel",
		weight = 600,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Barbel fish.",
		client = {
			image = "barbel.png",
		}
	},
	
	["beluga_sturgeon"] = {
		label = "Beluga Sturgeon",
		weight = 264,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Beluga Sturgeon fish.",
		client = {
			image = "beluga_sturgeon.png",
		}
	},
	
	["black_grayling"] = {
		label = "Black Grayling",
		weight = 120,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Black Grayling fish.",
		client = {
			image = "black_grayling.png",
		}
	},
	
	["blacktip_reef_shark"] = {
		label = "Blacktip Reef Shark",
		weight = 1500,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Blacktip Reef Shark.",
		client = {
			image = "blacktip_reef_shark.png",
		}
	},
	
	["blue_marlin"] = {
		label = "Blue Marlin",
		weight = 200,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Blue Marlin fish.",
		client = {
			image = "blue_marlin.png",
		}
	},
	
	["bluefin_tuna"] = {
		label = "Bluefin Tuna",
		weight = 270,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Bluefin Tuna fish.",
		client = {
			image = "bluefin_tuna.png",
		}
	},
	
	["bluegill"] = {
		label = "Bluegill",
		weight = 120,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Bluegill fish.",
		client = {
			image = "bluegill.png",
		}
	},
	
	["brook_trout"] = {
		label = "Brook Trout",
		weight = 700,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Brook Trout fish.",
		client = {
			image = "brook_trout.png",
		}
	},
	
	["brown_trout"] = {
		label = "Brown Trout",
		weight = 230,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Brown Trout fish.",
		client = {
			image = "brown_trout.png",
		}
	},
	
	["bull_trout"] = {
		label = "Bull Trout",
		weight = 200,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Bull Trout fish.",
		client = {
			image = "bull_trout.png",
		}
	},
	
	["chub"] = {
		label = "Chub",
		weight = 150,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Chub fish.",
		client = {
			image = "chub.png",
		}
	},
	
	["chum_salmon"] = {
		label = "Chum Salmon",
		weight = 600,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Chum Salmon fish.",
		client = {
			image = "chum_salmon.png",
		}
	},
	
	["coho_salmon"] = {
		label = "Coho Salmon",
		weight = 500,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Coho Salmon fish.",
		client = {
			image = "coho_salmon.png",
		}
	},
	
	["common_bleak"] = {
		label = "Common Bleak",
		weight = 10,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Common Bleak fish.",
		client = {
			image = "common_bleak.png",
		}
	},
	
	["common_bream"] = {
		label = "Common Bream",
		weight = 400,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Common Bream fish.",
		client = {
			image = "common_bream.png",
		}
	},
	
	["common_carp"] = {
		label = "Common Carp",
		weight = 700,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Common Carp fish.",
		client = {
			image = "common_carp.png",
		}
	},
	["crucian_carp"] = {
		label = "Crucian Carp",
		weight = 140,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Crucian Carp fish.",
		client = {
			image = "crucian_carp.png",
		}
	},
	
	["european_bass"] = {
		label = "European Bass",
		weight = 250,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A European Bass fish.",
		client = {
			image = "european_bass.png",
		}
	},
	
	["european_eel"] = {
		label = "European Eel",
		weight = 300,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A European Eel fish.",
		client = {
			image = "european_eel.png",
		}
	},
	
	["european_flounder"] = {
		label = "European Flounder",
		weight = 170,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A European Flounder fish.",
		client = {
			image = "european_flounder.png",
		}
	},
	
	["european_perch"] = {
		label = "European Perch",
		weight = 500,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A European Perch fish.",
		client = {
			image = "european_perch.png",
		}
	},
	
	["european_sea_sturgeon"] = {
		label = "European Sea Sturgeon",
		weight = 2000,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A European Sea Sturgeon.",
		client = {
			image = "european_sea_sturgeon.png",
		}
	},
	
	["electric_eel"] = {
		label = "Electric Eel",
		weight = 1500,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "An Electric Eel.",
		client = {
			image = "electric_eel.png",
		}
	},
	
	["garfish"] = {
		label = "Garfish",
		weight = 50,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Garfish.",
		client = {
			image = "garfish.png",
		}
	},
	
	["giant_freshwater_stingray"] = {
		label = "Giant Freshwater Stingray",
		weight = 350,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Giant Freshwater Stingray.",
		client = {
			image = "giant_freshwater_stingray.png",
		}
	},
	
	["giant_grouper"] = {
		label = "Giant Grouper",
		weight = 260,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Giant Grouper fish.",
		client = {
			image = "giant_grouper.png",
		}
	},
	
	["giant_squid"] = {
		label = "Giant Squid",
		weight = 2000,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Giant Squid.",
		client = {
			image = "giant_squid.png",
		}
	},
	
	["giant_trevally"] = {
		label = "Giant Trevally",
		weight = 200,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Giant Trevally fish.",
		client = {
			image = "giant_trevally.png",
		}
	},
	
	["golden_trout"] = {
		label = "Golden Trout",
		weight = 40,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Golden Trout fish.",
		client = {
			image = "golden_trout.png",
		}
	},
	
	["grass_carp"] = {
		label = "Grass Carp",
		weight = 120,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Grass Carp fish.",
		client = {
			image = "grass_carp.png",
		}
	},
	
	["grass_pickerel"] = {
		label = "Grass Pickerel",
		weight = 90,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Grass Pickerel fish.",
		client = {
			image = "grass_pickerel.png",
		}
	},
	
	["grayling"] = {
		label = "Grayling",
		weight = 80,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Grayling fish.",
		client = {
			image = "grayling.png",
		}
	},
	
	["great_barracuda"] = {
		label = "Great Barracuda",
		weight = 900,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Great Barracuda fish.",
		client = {
			image = "great_barracuda.png",
		}
	},
	
	["grey_snapper"] = {
		label = "Grey Snapper",
		weight = 400,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Grey Snapper fish.",
		client = {
			image = "grey_snapper.png",
		}
	},
	
	["huchen"] = {
		label = "Huchen",
		weight = 1500,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Huchen fish.",
		client = {
			image = "huchen.png",
		}
	},
	
	["ide"] = {
		label = "Ide",
		weight = 100,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "An Ide fish.",
		client = {
			image = "ide.png",
		}
	},
	
	["indian_threadfish"] = {
		label = "Indian Threadfish",
		weight = 250,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "An Indian Threadfish.",
		client = {
			image = "indian_threadfish.png",
		}
	},
	
	["lake_sturgeon"] = {
		label = "Lake Sturgeon",
		weight = 1600,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Lake Sturgeon fish.",
		client = {
			image = "lake_sturgeon.png",
		}
	},
	
	["largemouth_bass"] = {
		label = "Largemouth Bass",
		weight = 100,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Largemouth Bass fish.",
		client = {
			image = "largemouth_bass.png",
		}
	},
	
	["mahi_mahi"] = {
		label = "Mahi-Mahi",
		weight = 1000,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Mahi-Mahi fish.",
		client = {
			image = "mahi_mahi.png",
		}
	},
	
	["malabar_grouper"] = {
		label = "Malabar Grouper",
		weight = 1500,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Malabar Grouper fish.",
		client = {
			image = "malabar_grouper.png",
		}
	},
	
	["mirror_carp"] = {
		label = "Mirror Carp",
		weight = 700,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Mirror Carp fish.",
		client = {
			image = "mirror_carp.png",
		}
	},
	
	["northern_pike"] = {
		label = "Northern Pike",
		weight = 500,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Northern Pike fish.",
		client = {
			image = "northern_pike.png",
		}
	},
	
	["pink_river_dolphin"] = {
		label = "Pink River Dolphin",
		weight = 1550,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Pink River Dolphin.",
		client = {
			image = "pink_river_dolphin.png",
		}
	},
	
	["pink_salmon"] = {
		label = "Pink Salmon",
		weight = 200,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Pink Salmon fish.",
		client = {
			image = "pink_salmon.png",
		}
	},
	
	["prussian_carp"] = {
		label = "Prussian Carp",
		weight = 90,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Prussian Carp fish.",
		client = {
			image = "prussian_carp.png",
		}
	},
	
	["pufferfish"] = {
		label = "Pufferfish",
		weight = 150,  -- Dropped a 0 from the weight
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Pufferfish.",
		client = {
			image = "pufferfish.png",
		}
	},
	
	["pumpkinseed"] = {
		label = "Pumpkinseed",
		weight = 40,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Pumpkinseed fish.",
		client = {
			image = "pumpkinseed.png",
		}
	},
	
	["rainbow_trout"] = {
		label = "Rainbow Trout",
		weight = 100,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Rainbow Trout fish.",
		client = {
			image = "rainbow_trout.png",
		}
	},
	
	["red_lionfish"] = {
		label = "Red Lionfish",
		weight = 100,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Red Lionfish.",
		client = {
			image = "red_lionfish.png",
		}
	},
	
	["redeye_piranha"] = {
		label = "Redeye Piranha",
		weight = 120,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Redeye Piranha.",
		client = {
			image = "redeye_piranha.png",
		}
	},
	
	["redfin_pickerel"] = {
		label = "Redfin Pickerel",
		weight = 40,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Redfin Pickerel fish.",
		client = {
			image = "redfin_pickerel.png",
		}
	},
	
	["roach"] = {
		label = "Roach",
		weight = 50,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Roach fish.",
		client = {
			image = "roach.png",
		}
	},
	
	["sea_trout"] = {
		label = "Sea Trout",
		weight = 200,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Sea Trout fish.",
		client = {
			image = "sea_trout.png",
		}
	},
	
	["silver_carp"] = {
		label = "Silver Carp",
		weight = 1000,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Silver Carp fish.",
		client = {
			image = "silver_carp.png",
		}
	},
	
	["skeleton"] = {
		label = "Skeleton",
		weight = 10,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Skeleton.",
		client = {
			image = "skeleton.png",
		}
	},
	
	["smallmouth_bass"] = {
		label = "Smallmouth Bass",
		weight = 150,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Smallmouth Bass fish.",
		client = {
			image = "smallmouth_bass.png",
		}
	},
	
	["sockeye_salmon"] = {
		label = "Sockeye Salmon",
		weight = 300,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Sockeye Salmon fish.",
		client = {
			image = "sockeye_salmon.png",
		}
	},
	
	["south_sea_pearl_oyster"] = {
		label = "South Sea Pearl Oyster",
		weight = 10,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A South Sea Pearl Oyster.",
		client = {
			image = "south_sea_pearl_oyster.png",
		}
	},
	
	["tench"] = {
		label = "Tench",
		weight = 250,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Tench fish.",
		client = {
			image = "tench.png",
		}
	},
	
	["tiger_shark"] = {
		label = "Tiger Shark",
		weight = 5500,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Tiger Shark.",
		client = {
			image = "tiger_shark.png",
		}
	},
	
	["wels_catfish"] = {
		label = "Wels Catfish",
		weight = 400,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Wels Catfish fish.",
		client = {
			image = "wels_catfish.png",
		}
	},
	
	["white_sturgeon"] = {
		label = "White Sturgeon",
		weight = 800,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A White Sturgeon fish.",
		client = {
			image = "white_sturgeon.png",
		}
	},
	
	["yellow_perch"] = {
		label = "Yellow Perch",
		weight = 40,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Yellow Perch fish.",
		client = {
			image = "yellow_perch.png",
		}
	},
	
	["yellowfin_tuna"] = {
		label = "Yellowfin Tuna",
		weight = 900,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Yellowfin Tuna fish.",
		client = {
			image = "yellowfin_tuna.png",
		}
	},
	
	["yellowtail_barracuda"] = {
		label = "Yellowtail Barracuda",
		weight = 110,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Yellowtail Barracuda.",
		client = {
			image = "yellowtail_barracuda.png",
		}
	},
	
	["zander"] = {
		label = "Zander",
		weight = 200,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A Zander fish.",
		client = {
			image = "zander.png",
		}
	},
	
	["paddlefish"] = {
		label = "Paddle Fish",
		weight = 1000,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A rare and illegal Paddle Fish.",
		client = {
			image = "paddlefish.png",
		}
	},
	
	["sawfish"] = {
		label = "Saw Fish",
		weight = 1000,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A rare and illegal Saw Fish.",
		client = {
			image = "sawfish.png",
		}
	},
	
	["eel"] = {
		label = "Eel",
		weight = 1000,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A rare and illegal Eel.",
		client = {
			image = "eel.png",
		}
	},
	
	["hammerheadshark"] = {
		label = "Hammer Head Shark",
		weight = 2500,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A rare and illegal Hammer Head Shark.",
		client = {
			image = "hammerheadshark.png",
		}
	},
	
	["seaturtle"] = {
		label = "Sea Turtle",
		weight = 2500,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A rare and illegal Sea Turtle.",
		client = {
			image = "seaturtle.png",
		}
	},
	
	["leopardshark"] = {
		label = "Leopard Shark",
		weight = 2500,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A rare and illegal Leopard Shark.",
		client = {
			image = "leopardshark.png",
		}
	},
	
	["blueshark"] = {
		label = "Blue Shark",
		weight = 4000,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A legendary and illegal Blue Shark.",
		client = {
			image = "blueshark.png",
		}
	},
	
	["greatwhiteshark"] = {
		label = "Great White Shark",
		weight = 10000,  -- Converted weight to OxInventory format
		stack = true,  -- Made stackable
		close = true,  -- Equivalent to shouldClose
		description = "A mythic and illegal Great White Shark.",
		client = {
			image = "greatwhiteshark.png",
		}
	},
	
	-- Diving Items
	["ancient_artifact"] = {
		label = "Ancient Artifact",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "An Ancient Artifact!",
		client = {
			image = "ancient_artifact.png",
		}
	},
	["antique_compass"] = {
		label = "Antique Compass",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "An Antique Compass.",
		client = {
			image = "antique_compass.png",
		}
	},
	["enchanted_jewel"] = {
		label = "Enchanted Jewel",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "An Enchanted Jewel.",
		client = {
			image = "enchanted_jewel.png",
		}
	},
	["luxury_watch"] = {
		label = "Luxury Watch",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "An Expensive Watch.",
		client = {
			image = "luxury_watch.png",
		}
	},
	["meteorite_ore"] = {
		label = "Meteorite Ore",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "Meteorite Ore.",
		client = {
			image = "meteorite_ore.png",
		}
	},
	["mystic_crystal"] = {
		label = "Mystic Crystal",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "A Mystic Crystal.",
		client = {
			image = "mystic_crystal.png",
		}
	},
	["phantom_amulet"] = {
		label = "Phantom Amulet",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "A Phantom Amulet.",
		client = {
			image = "phantom_amulet.png",
		}
	},
	["precious_pearls"] = {
		label = "Precious Pearls",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "Handfull of Precious Pearls.",
		client = {
			image = "precious_pearls.png",
		}
	},
	["rare_spices"] = {
		label = "Rare Spices",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "Collection of Rare Spices.",
		client = {
			image = "rare_spices.png",
		}
	},
	["spy_gadget"] = {
		label = "Spy Gadget",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "A Spy Gadget.",
		client = {
			image = "spy_gadget.png",
		}
	},
})

insert({	-- FiveCode Tequila Job
	-- Other
	['tk_ticket'] = {
		label = 'Ticket - Tequi-la-la',
		weight = 1,
		stack = true,
		close = true,
		description = 'Tequi-la-la ticket.'
	},

	['tk_cleansponge'] = {
		label = 'Clean Sponge',
		weight = 1,
		stack = true,
		close = true,
		description = 'Clean sponge which is ready for some cleaning!'
	},

	['tk_dirtysponge'] = {
		label = 'Dirty Sponge',
		weight = 1,
		stack = true,
		close = true,
		description = 'Dirty sponge which needs to be cleaned!'
	},

	['tk_nuts'] = {
		label = 'Nuts',
		weight = 1,
		stack = true,
		close = true,
		description = 'Nuts to put into a clean bowl.'
	},

	['tk_beans'] = {
		label = 'Beans',
		weight = 1,
		stack = true,
		close = true,
		description = 'Beans to put into a clean bowl.'
	},

	['tk_juice'] = {
		label = 'Juice',
		weight = 1,
		stack = true,
		close = true,
		description = 'Carton of fresh juice. Probably not from local fruit.'
	},

	['tk_grenadine'] = {
		label = 'Grenadine Syrup',
		weight = 1,
		stack = true,
		close = true,
		description = 'Sweet and vibrant red syrup made from pomegranates.'
	},

	['tk_grapefruitsoda'] = {
		label = 'Grapefruit Soda',
		weight = 1,
		stack = true,
		close = true,
		description = 'A bottle of sparkling, bitter-sweet grapefruit soda.'
	},

	['tk_salt'] = {
		label = 'Salt',
		weight = 1,
		stack = true,
		close = true,
		description = 'A tablespoon of coarse salt for rimming glasses.'
	},

	['tk_gingerbeer'] = {
		label = 'Ginger Beer',
		weight = 1,
		stack = true,
		close = true,
		description = 'Spicy, non-alcoholic ginger beer. Packs a real punch.'
	},

	['tk_soda'] = {
		label = 'Soda',
		weight = 1,
		stack = true,
		close = true,
		description = 'A bottle of sparkling soda water.'
	},

	['tk_bananaliqueur'] = {
		label = 'Banana Liqueur',
		weight = 1,
		stack = true,
		close = true,
		description = 'Sweet and flavorful banana liqueur.'
	},

	['tk_cleantallglass'] = {
		label = 'Clean Tall Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'Clean tall glass for serving drinks.'
	},

	['tk_dirtytallglass'] = {
		label = 'Dirty Tall Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'Dirty tall glass ready to be cleaned.'
	},

	['tk_cleanshortglass'] = {
		label = 'Clean Short Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'Clean short glass for serving spirits.'
	},

	['tk_dirtyshortglass'] = {
		label = 'Dirty Short Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'Dirty short glass ready to be cleaned.'
	},

	['tk_cleancocktailglass'] = {
		label = 'Clean Cocktail Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'Clean glass for serving cocktails.'
	},

	['tk_dirtycocktailglass'] = {
		label = 'Dirty Cocktail Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'Dirty cocktail glass ready to be cleaned.'
	},

	['tk_ice'] = {
		label = 'Ice',
		weight = 1,
		stack = true,
		close = true,
		description = 'A single ice cube for drinks.'
	},

	-- Snacks
	['tk_cleanbowl'] = {
		label = 'Clean Bowl',
		weight = 1,
		stack = true,
		close = true,
		description = 'Clean bowl to put food into.'
	},

	['tk_dirtybowl'] = {
		label = 'Dirty Bowl',
		weight = 1,
		stack = true,
		close = true,
		description = 'Dirty bowl ready to be cleaned.'
	},

	['tk_beanbowl'] = {
		label = 'Bean Bowl',
		weight = 1,
		stack = true,
		close = true,
		description = 'Bean bowl ready to be eaten.'
	},

	['tk_nutbowl'] = {
		label = 'Nut Bowl',
		weight = 1,
		stack = true,
		close = true,
		description = 'Nut bowl ready to be eaten.'
	},

	-- Drinks
	['tk_tequilasunrise'] = {
		label = 'Tequila-la Sunrise',
		weight = 1,
		stack = true,
		close = true,
		description = 'A classic sunrise, layers of tequila, orange, and grenadine. Tastes like a sunny Los Santos morning.'
	},

	['tk_paloma'] = {
		label = 'Los Santos Paloma',
		weight = 1,
		stack = true,
		close = true,
		description = 'Refreshing tequila and grapefruit soda with a salty kick. The unofficial drink of Vespucci Beach.'
	},

	['tk_vespuccimule'] = {
		label = 'Vespucci Mule',
		weight = 1,
		stack = true,
		close = true,
		description = 'A spicy kick of tequila and ginger beer. For when you have business at the Del Perro Pier.'
	},

	['tk_margarita'] = {
		label = 'La Margarita',
		weight = 1,
		stack = true,
		close = true,
		description = 'The house signature. Sharp, smooth, and salted. Just don\'t ask for a frozen one.'
	},

	['tk_rhumrunner'] = {
		label = 'Rhum Runner',
		weight = 1,
		stack = true,
		close = true,
		description = 'A daring mix of tropical flavors and bold rum, crafted for those who chase adventure in every sip.'
	},

	['tk_vodkarevolution'] = {
		label = 'Vodka Revolution',
		weight = 1,
		stack = true,
		close = true,
		description = 'A crisp and bold vodka experience, designed to spark a revolution on your taste buds with every glass.'
	},

	['tk_tequilabottle'] = {
		label = 'Tequila Bottle',
		weight = 1,
		stack = true,
		close = true,
		description = 'Bottle of premium tequila.'
	},

	['tk_tequiladrink'] = {
		label = 'Tequila Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'The original strong and smooth tequila shot.'
	},

	['tk_rhumbottle'] = {
		label = 'Rhum Bottle',
		weight = 1,
		stack = true,
		close = true,
		description = 'Bottle of premium Caribbean rhum.'
	},

	['tk_rhumdrink'] = {
		label = 'Rhum Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'A rich and flavorful cocktail crafted with premium rhum.'
	},

	['tk_vodkabottle'] = {
		label = 'Vodka Bottle',
		weight = 1,
		stack = true,
		close = true,
		description = 'Bottle of premium vodka.'
	},

	['tk_vodkadrink'] = {
		label = 'Vodka Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'A crisp and clean glass of vodka, best served chilled.'
	},

	-- Cutting Table
	['tk_rawlemon'] = {
		label = 'Raw Lemon',
		weight = 1,
		stack = true,
		close = true,
		description = 'A fresh lemon ready to be sliced.'
	},

	['tk_slicedlemon'] = {
		label = 'Sliced Lemon',
		weight = 1,
		stack = true,
		close = true,
		description = 'Freshly sliced Lemon.'
	},

	['tk_raworange'] = {
		label = 'Raw Orange',
		weight = 1,
		stack = true,
		close = true,
		description = 'A fresh orange ready to be sliced.'
	},

	['tk_slicedorange'] = {
		label = 'Sliced Orange',
		weight = 1,
		stack = true,
		close = true,
		description = 'Freshly sliced orange.'
	},

	['tk_rawstrawberry'] = {
		label = 'Raw Strawberry',
		weight = 1,
		stack = true,
		close = true,
		description = 'A fresh strawberry ready to be sliced.'
	},

	['tk_slicedstrawberry'] = {
		label = 'Sliced Strawberry',
		weight = 1,
		stack = true,
		close = true,
		description = 'Freshly sliced strawberry.'
	},

	['tk_rawlime'] = {
		label = 'Raw Lime',
		weight = 1,
		stack = true,
		close = true,
		description = 'A fresh lime ready to be sliced.'
	},

	['tk_slicedlime'] = {
		label = 'Sliced Lime',
		weight = 1,
		stack = true,
		close = true,
		description = 'Freshly sliced lime.'
	}
})

insert({	-- FiveCode - BurgerShot Job
	-- Other
    ['salt'] = {
        label = 'Salt',
        weight = 1,
        stack = true,
        close = true,
        description = 'Cooking salt!'
    },

    ['burgershotdrinkcup'] = {
        label = 'Empty Drinking Cup',
        weight = 1,
        stack = true,
        close = true,
        description = 'Burgershot empty drinking cup.'
    },

    ['ice'] = {
        label = 'Ice',
        weight = 1,
        stack = true,
        close = true,
        description = 'Ice ready to cool your drink!'
    },

    ['butter'] = {
        label = 'Butter',
        weight = 1,
        stack = true,
        close = true,
        description = 'Butter for cooking.'
    },

    ['colasyrup'] = {
        label = 'eCola Syrup',
        weight = 1,
        stack = true,
        close = true,
        description = 'Syrup from which you can make delicious cola drink!'
    },

    ['colalightsyrup'] = {
        label = 'eCola Light Syrup',
        weight = 1,
        stack = true,
        close = true,
        description = 'Syrup from which you can make delicious light cola drink!'
    },

    ['sprunksyrup'] = {
        label = 'Sprunk Syrup',
        weight = 1,
        stack = true,
        close = true,
        description = 'Syrup from which you can make delicious sprunk drink!'
    },

    ['orang_o_tangsyrup'] = {
        label = 'Orang O Tang Syrup',
        weight = 1,
        stack = true,
        close = true,
        description = 'Syrup from which you can make delicious orang o tang drink!'
    },

    ['ketchup'] = {
        label = 'Ketchup',
        weight = 1,
        stack = true,
        close = true,
        description = 'Normal ketchup.'
    },

-- Cutting Table
    ['rawtomato'] = {
        label = 'Tomato',
        weight = 1,
        stack = true,
        close = true,
        description = 'Juicy tomato ready to be sliced!'
    },

    ['slicedtomato'] = {
        label = 'Sliced Tomato',
        weight = 1,
        stack = true,
        close = true,
        description = 'Juicy tomato slices ready to be eaten!'
    },

    ['rawsalad'] = {
        label = 'Salad',
        weight = 1,
        stack = true,
        close = true,
        description = 'Salad ready to be sliced!'
    },

    ['slicedsalad'] = {
        label = 'Sliced Salad',
        weight = 1,
        stack = true,
        close = true,
        description = 'Salad slices ready to be eaten!'
    },

    ['rawcucumber'] = {
        label = 'Cucumber',
        weight = 1,
        stack = true,
        close = true,
        description = 'Cucumber ready to be cut!'
    },

    ['slicedcucumber'] = {
        label = 'Sliced Cucumber',
        weight = 1,
        stack = true,
        close = true,
        description = 'Sliced cucumber ready to be put on a burger and eaten!'
    },

    ['rawonion'] = {
        label = 'Onion',
        weight = 1,
        stack = true,
        close = true,
        description = 'Onion ready to be cut!'
    },

    ['slicedonion'] = {
        label = 'Sliced Onion',
        weight = 1,
        stack = true,
        close = true,
        description = 'Sliced onion ready to be put on a burger and eaten!'
    },

    ['rawchillipepper'] = {
        label = 'Chilli Pepper',
        weight = 1,
        stack = true,
        close = true,
        description = 'Chilli pepper ready to be cut!'
    },

    ['slicedchillipepper'] = {
        label = 'Sliced Chilli Pepper',
        weight = 1,
        stack = true,
        close = true,
        description = 'Sliced chilli pepper ready to be put on a burger and eaten!'
    },

    ['rawcheese'] = {
        label = 'Cheese',
        weight = 1,
        stack = true,
        close = true,
        description = 'Cheese ready to be cut!'
    },

    ['slicedcheese'] = {
        label = 'Sliced Cheese',
        weight = 1,
        stack = true,
        close = true,
        description = 'Sliced cheese ready to be put on a burger and eaten!'
    },

    ['rawham'] = {
        label = 'Ham',
        weight = 1,
        stack = true,
        close = true,
        description = 'Ham ready to be cut!'
    },

    ['slicedham'] = {
        label = 'Sliced Ham',
        weight = 1,
        stack = true,
        close = true,
        description = 'Sliced ham ready to be put on a burger and eaten!'
    },

    ['rawbacon'] = {
        label = 'Bacon',
        weight = 1,
        stack = true,
        close = true,
        description = 'Bacon ready to be cut!'
    },

    ['slicedbacon'] = {
        label = 'Bacon',
        weight = 1,
        stack = true,
        close = true,
        description = 'Sliced bacon ready to be put on a sandwich or grilled and eaten!'
    },

    ['rawsandwichbread'] = {
        label = 'Sandwich Bread',
        weight = 1,
        stack = true,
        close = true,
        description = 'Sandwich Bread ready to be cut!'
    },

    ['slicedsandwichbread'] = {
        label = 'Sandwich Bread',
        weight = 1,
        stack = true,
        close = true,
        description = 'Sliced sandwich bread ready to be put on a burger and eaten!'
    },

    ['rawburgerbun'] = {
        label = 'Burger Bun',
        weight = 1,
        stack = true,
        close = true,
        description = 'Burger bun ready to be cut in half!'
    },

    ['slicedburgerbun'] = {
        label = 'Sliced Burger Bun',
        weight = 1,
        stack = true,
        close = true,
        description = 'Sliced burger bun ready to be grilled!'
    },

-- Frier
    ['frozenfries'] = {
        label = 'Frozen Fries',
        weight = 1,
        stack = true,
        close = true,
        description = 'Frozen fries ready to be fried!'
    },

    ['friedfries'] = {
        label = 'Fries',
        weight = 1,
        stack = true,
        close = true,
        description = 'Fries ready to be eaten!'
    },

    ['friedonionring'] = {
        label = 'Onion Ring',
        weight = 1,
        stack = true,
        close = true,
        description = 'Onion ring ready to be eaten!'
    },

    ['friedmozzarellastick'] = {
        label = 'Fried Mozzarella Stick',
        weight = 1,
        stack = true,
        close = true,
        description = 'Fried mozzarella stick ready to be eaten!'
    },

    ['rawchickenstrip'] = {
        label = 'Raw Chicken',
        weight = 1,
        stack = true,
        close = true,
        description = 'Raw chicken ready to be fried!'
    },

    ['friedchickenstrip'] = {
        label = 'Fried Chicken',
        weight = 1,
        stack = true,
        close = true,
        description = 'Fried chicken ready to be put into a burger and eaten!'
    },

    ['rawfishstrip'] = {
        label = 'Raw Fish',
        weight = 1,
        stack = true,
        close = true,
        description = 'Raw fish ready to be fried!'
    },

    ['friedfishstrip'] = {
        label = 'Fried Fish',
        weight = 1,
        stack = true,
        close = true,
        description = 'Fried fish ready to be put into a burger and eaten!'
    },

-- Grill
    ['frozenburgermeat'] = {
        label = 'Frozen Burger Meat',
        weight = 1,
        stack = true,
        close = true,
        description = 'Frozen burger meat ready to be grilled!'
    },

    ['grilledburgermeat'] = {
        label = 'Grilled Burger Meat',
        weight = 1,
        stack = true,
        close = true,
        description = 'Burger meat ready to be put into a burger and eaten!'
    },

    ['grilledbacon'] = {
        label = 'Grilled Bacon',
        weight = 1,
        stack = true,
        close = true,
        description = 'Burger bacon ready to be put into a burger and eaten!'
    },

    ['rawsteak'] = {
        label = 'Raw Steak',
        weight = 1,
        stack = true,
        close = true,
        description = 'Raw steak ready to be grilled!'
    },

    ['grilledsteak'] = {
        label = 'Grilled Steak',
        weight = 1,
        stack = true,
        close = true,
        description = 'Grilled steak ready to be put into a burger and eaten!'
    },

    ['rawegg'] = {
        label = 'Raw Egg',
        weight = 1,
        stack = true,
        close = true,
        description = 'Egg steak ready to be grilled!'
    },

    ['friedegg'] = {
        label = 'Fried Egg',
        weight = 1,
        stack = true,
        close = true,
        description = 'Fried egg ready to be put into a burger and eaten!'
    },

    ['grilledburgerbun'] = {
        label = 'Grilled Burger Bun',
        weight = 1,
        stack = true,
        close = true,
        description = 'Grilled burger bun ready to be filled!'
    },

-- Drinks
    ['burgershotcola'] = {
        label = 'eCola',
        weight = 1,
        stack = true,
        close = true,
        description = 'eCola from burgershot.'
    },
    
    ['burgershotcolalight'] = {
        label = 'eCola Light',
        weight = 1,
        stack = true,
        close = true,
        description = 'eCola light from burgershot.'
    },

    ['burgershotsprunk'] = {
        label = 'Sprunk',
        weight = 1,
        stack = true,
        close = true,
        description = 'Sprunk from burgershot.'
    },

    ['burgershotorang_o_tang'] = {
        label = 'Orang O Tang',
        weight = 1,
        stack = true,
        close = true,
        description = 'Orang o tang from burgershot.'
    },

-- Burgers
    ['classicburger'] = {
        label = 'GrillMaster Classic Burger',
        weight = 1,
        stack = true,
        close = true,
        description = 'Classic burger with your favorite flavors!'
    },

    ['classicburgerspicy'] = {
        label = 'GrillMaster Spicy Classic Burger',
        weight = 1,
        stack = true,
        close = true,
        description = 'Spicy classic burger with your favorite flavors!'
    },

    ['chickenburger'] = {
        label = 'Loaded Chicken Avenger',
        weight = 1,
        stack = true,
        close = true,
        description = 'Chicken burger with your beloved crispy chicken!'
    },

    ['chickenburgerspicy'] = {
        label = 'Loaded Spicy Chicken Avenger',
        weight = 1,
        stack = true,
        close = true,
        description = 'Spicy chicken burger with your beloved crispy chicken!'
    },

    ['fishburger'] = {
        label = 'Ocean Catch Burger',
        weight = 1,
        stack = true,
        close = true,
        description = 'Fish burger with your beloved freshly caught and fried fish!'
    },

    ['obeseburger'] = {
        label = 'The Cardiac Crusher',
        weight = 1,
        stack = true,
        close = true,
        description = 'A towering behemoth of beef, bacon, cheese, and toppings that will feed you or kill you!'
    },

    ['steakburger'] = {
        label = 'The Cardiac Crusher',
        weight = 1,
        stack = true,
        close = true,
        description = 'For when you want your steak experience to be sandwiched between two buns, because who needs a plate, right?'
    },

    ['reverseburger'] = {
        label = 'Reverse Burger',
        weight = 1,
        stack = true,
        close = true,
        description = 'Flip tradition on its head and try this amazing reverse burger where salad replaced buns!'
    },

    ['burgershotsandwich'] = {
        label = 'Sunrise Ham Melt',
        weight = 1,
        stack = true,
        close = true,
        description = 'Spicy chicken burger with your beloved crispy chicken!'
    },


-- Other Items
    ['cleansponge'] = {
        label = 'Clean Sponge',
        weight = 1,
        stack = true,
        close = true,
        description = 'Clean sponge which is ready for some cleaning!'
    },

    ['dirtysponge'] = {
        label = 'Dirty Sponge',
        weight = 1,
        stack = true,
        close = true,
        description = 'Dirty sponge which needs to be cleaned!'
    },

    ['cleancup'] = {
        label = 'Clean Cup',
        weight = 1,
        stack = true,
        close = true,
        description = 'Clean cup ready to be filled to the brim!'
    },

    ['dirtycup'] = {
        label = 'Dirty Cup',
        weight = 1,
        stack = true,
        close = true,
        description = 'Dirty cup which needs to be cleaned!'
    },

    ['burgershotfoodtray'] = {
        label = 'Food Tray',
        weight = 1,
        stack = true,
        close = true,
        description = 'Food tray from burgershot.'
    },

    ['burgershotfoodtrayempty'] = {
        label = 'Empty Food Tray',
        weight = 1,
        stack = true,
        close = true,
        description = 'Empty food tray from burgershot.'
    },
})

insert({	-- FiveCode - UwU Cafe
-- Other
    ['uwu_cleansponge'] = {
        label = 'Clean Sponge',
        weight = 1,
        stack = true,
        close = true,
        description = 'Clean sponge which is ready for some cleaning!'
    },

    ['uwu_dirtysponge'] = {
        label = 'Dirty Sponge',
        weight = 1,
        stack = true,
        close = true,
        description = 'Dirty sponge which needs to be cleaned!'
    },

    ['uwu_cleanplate'] = {
        label = 'Clean Plate',
        weight = 1,
        stack = true,
        close = true,
        description = 'Clean plate to put food on.'
    },

    ['uwu_dirtyplate'] = {
        label = 'Dirty Plate',
        weight = 1,
        stack = true,
        close = true,
        description = 'Dirty plate ready to be cleaned or served to your enemy.'
    },

    ['uwu_cleancup'] = {
        label = 'Clean Cup',
        weight = 1,
        stack = true,
        close = true,
        description = 'Clean cup ready to be filled with something delicious.'
    },

    ['uwu_dirtycup'] = {
        label = 'Dirty Cup',
        weight = 1,
        stack = true,
        close = true,
        description = 'Dirty cup ready to be cleaned or served to your enemy.'
    },

-- Mystery Box
    ['uwu_mysterybox'] = {
        label = 'UWU Mystery Box',
        weight = 1,
        stack = true,
        close = true,
        description = 'Mystery box from uwu cat cafe which contains a lot of cool figures!'
    },

    ['uwu_browncat'] = {
        label = 'Brown Cat Figure',
        weight = 1,
        stack = true,
        close = true,
        description = 'A cute brown cat figurine, perfect for collectors.'
    },

    ['uwu_redcat'] = {
        label = 'Red Cat Figure',
        weight = 1,
        stack = true,
        close = true,
        description = 'A rare red cat figure with a fiery appearance.'
    },

    ['uwu_greencat'] = {
        label = 'Green Cat Figure',
        weight = 1,
        stack = true,
        close = true,
        description = 'A calm and peaceful green cat figurine.'
    },

    ['uwu_yellowcat'] = {
        label = 'Yellow Cat Figure',
        weight = 1,
        stack = true,
        close = true,
        description = 'A bright and cheerful yellow cat figure.'
    },

    ['uwu_purplecat'] = {
        label = 'Purple Cat Figure',
        weight = 1,
        stack = true,
        close = true,
        description = 'A mystical and rare purple cat figurine.'
    },

    ['uwu_bluecat'] = {
        label = 'Blue Cat Figure',
        weight = 1,
        stack = true,
        close = true,
        description = 'A cool and collected blue cat figure for your collection.'
    },

    ['uwu_shinywasabi'] = {
        label = 'Shiny Wasabi Figure',
        weight = 1,
        stack = true,
        close = true,
        description = 'A shiny Wasabi figure, known for its sparkle.'
    },

    ['uwu_master'] = {
        label = 'Master Figure',
        weight = 1,
        stack = true,
        close = true,
        description = 'A legendary figure of a martial arts master.'
    },

    ['uwu_princessrobo'] = {
        label = 'Princess Robo Figure',
        weight = 1,
        stack = true,
        close = true,
        description = 'A futuristic figure of Princess Robo, the ruler of the tech kingdom.'
    },

-- Cofee Machine
    ['uwu_expresoshot'] = {
        label = 'Shot Of Espresso',
        weight = 1,
        stack = true,
        close = true,
        description = 'A bold espresso shot brewed fresh.'
    },

    ['uwu_milk'] = {
        label = 'Milk',
        weight = 1,
        stack = true,
        close = true,
        description = 'Milk.'
    },

    ['uwu_steamedmilk'] = {
        label = 'Steamed Milk',
        weight = 1,
        stack = true,
        close = true,
        description = 'Velvety steamed milk.'
    },

    ['uwu_frostedmilk'] = {
        label = 'Frosted Milk',
        weight = 1,
        stack = true,
        close = true,
        description = 'Frosted milk.'
    },

    ['uwu_vanillasyrup'] = {
        label = 'Vanilla Syrup',
        weight = 1,
        stack = true,
        close = true,
        description = 'Smooth vanilla syrup.'
    },

    ['uwu_cinnamon'] = {
        label = 'Cinnamon',
        weight = 1,
        stack = true,
        close = true,
        description = 'Fragrant cinnamon spice.'
    },

    ['uwu_caramelsyrup'] = {
        label = 'Caramel Syrup',
        weight = 1,
        stack = true,
        close = true,
        description = 'Rich caramel syrup.'
    },

    ['uwu_caramelsauce'] = {
        label = 'Caramel Sauce',
        weight = 1,
        stack = true,
        close = true,
        description = 'Decadent caramel sauce.'
    },

    ['uwu_chocolate'] = {
        label = 'Chocolate',
        weight = 1,
        stack = true,
        close = true,
        description = 'Luxurious chocolate.'
    },

    ['uwu_peppermintextract'] = {
        label = 'Peppermint Extract',
        weight = 1,
        stack = true,
        close = true,
        description = 'Cool peppermint extract.'
    },

    ['uwu_brownsugar'] = {
        label = 'Brown Sugar',
        weight = 1,
        stack = true,
        close = true,
        description = 'Sweet brown sugar crystals.'
    },

    ['uwu_cocoapowder'] = {
        label = 'Cocoa Powder',
        weight = 1,
        stack = true,
        close = true,
        description = 'Rich cocoa powder.'
    },

    ['uwu_whiskersvanillalatte'] = {
        label = 'Whiskers Vanilla Latte',
        weight = 1,
        stack = true,
        close = true,
        description = 'A rich and creamy vanilla latte with a smooth espresso base, purrfect for a cozy day.'
    },

    ['uwu_purrfectcaramelmacchiato'] = {
        label = 'Purrfect Caramel Macchiato',
        weight = 1,
        stack = true,
        close = true,
        description = 'Indulge in a velvety caramel macchiato, a delightful blend of sweet caramel and bold espresso.'
    },

    ['uwu_meowchamintmocha'] = {
        label = 'Meowcha Mint Mocha',
        weight = 1,
        stack = true,
        close = true,
        description = 'A refreshing twist of mint blended with rich chocolate and espresso, the ultimate mocha treat.'
    },

    ['uwu_kittyscreamycappuccino'] = {
        label = 'Kittys Creamy Cappuccino',
        weight = 1,
        stack = true,
        close = true,
        description = 'A classic cappuccino with an extra creamy texture, crafted to perfection for every coffee lover.'
    },

    ['uwu_uwucatcafehotchocolate'] = {
        label = 'ChocoPaws Delight',
        weight = 1,
        stack = true,
        close = true,
        description = 'A warm and comforting cup of rich, velvety hot chocolate, perfect for cozy moments with a playful twist.'
    },

-- Mixer
    ['uwu_flour'] = {
        label = 'Flour',
        weight = 1,
        stack = true,
        close = true,
        description = 'Essential flour, perfect for crafting smooth dough.'
    },

    ['uwu_rawegg'] = {
        label = 'Raw Egg',
        weight = 1,
        stack = true,
        close = true,
        description = 'Fresh egg, ready to blend into your dough creation.'
    },

    ['uwu_butter'] = {
        label = 'Butter',
        weight = 1,
        stack = true,
        close = true,
        description = 'Rich, creamy butter, ideal for baking.'
    },

    ['uwu_yeast'] = {
        label = 'Yeast',
        weight = 1,
        stack = true,
        close = true,
        description = 'Active yeast to help your dough rise to perfection.'
    },

    ['uwu_strawberry'] = {
        label = 'Strawberry',
        weight = 1,
        stack = true,
        close = true,
        description = 'Fresh and sweet strawberry.'
    },

    ['uwu_blueberry'] = {
        label = 'Blueberry',
        weight = 1,
        stack = true,
        close = true,
        description = 'Fresh and sweet blueberry.'
    },

    ['uwu_normaldough'] = {
        label = 'Dough',
        weight = 1,
        stack = true,
        close = true,
        description = 'Basic dough, ready to be transformed into a tasty treat.'
    },

    ['uwu_chocolatedough'] = {
        label = 'Chocolate Dough',
        weight = 1,
        stack = true,
        close = true,
        description = 'Rich chocolate dough, perfect for baking delicious cookies.'
    },

    ['uwu_cupcakedough'] = {
        label = 'Cupcake Dough',
        weight = 1,
        stack = true,
        close = true,
        description = 'Soft, fluffy cupcake dough, ready to be baked to perfection.'
    },

-- Oven
    ['uwu_chocopurrfectioncake'] = {
        label = 'Choco Purrfection Cake',
        weight = 1,
        stack = true,
        close = true,
        description = 'Chocolate cake for chocolate lowers.'
    },

    ['uwu_kittenscloudpancakes'] = {
        label = 'Kitten’s Cloud Pancakes',
        weight = 1,
        stack = true,
        close = true,
        description = 'Soft, fluffy pancakes that melt in your mouth, topped with an adorable kitten-themed design.'
    },

    ['uwu_strawberrymeowdelight'] = {
        label = 'Strawberry Meow Delight',
        weight = 1,
        stack = true,
        close = true,
        description = 'Fluffy strawberry pancakes with a sweet kitten-inspired topping, perfect for any dessert lover.'
    },

    ['uwu_mintypawprintcupcake'] = {
        label = 'Minty Pawprint Cupcake',
        weight = 1,
        stack = true,
        close = true,
        description = 'A refreshing mint-flavored cupcake decorated with a cute pawprint, offering a delightful minty treat.'
    },

    ['uwu_caramelkittycrunch'] = {
        label = 'Caramel Kitty Crunch',
        weight = 1,
        stack = true,
        close = true,
        description = 'A rich caramel cupcake with a crunchy toffee topping, finished with a drizzle of caramel and cute kitty ear decorations.'
    },

    ['uwu_vanillameowtasticake'] = {
        label = 'Vanilla Meowtastic Cake',
        weight = 1,
        stack = true,
        close = true,
        description = 'A delightful vanilla cake with layers of creamy vanilla buttercream, adorned with charming pastel cat whiskers and fondant ears.'
    },	

    ['uwu_espressopawscupcake'] = {
        label = 'Espresso Paws Cupcake',
        weight = 1,
        stack = true,
        close = true,
        description = 'A rich espresso cupcake with a smooth coffee-flavored frosting, topped with a sprinkle of cocoa and cute pawprint decorations.'
    },

    ['uwu_cinnamonwhiskerdelight'] = {
        label = 'Cinnamon Whisker Delight',
        weight = 1,
        stack = true,
        close = true,
        description = 'A warm cinnamon cupcake with a swirl of creamy cinnamon frosting, finished with a dusting of cinnamon sugar and playful whisker accents.'
    },

-- Stove
    ['uwu_noodles'] = {
        label = 'Noodles',
        weight = 1,
        stack = true,
        close = true,
        description = 'Noodles ready to be put into a delicious dish.'
    },

    ['uwu_rawsteak'] = {
        label = 'Raw Steak',
        weight = 1,
        stack = true,
        close = true,
        description = 'Raw steak ready to be grilled.'
    },

    ['uwu_grilledsteak'] = {
        label = 'Grilled Steak',
        weight = 1,
        stack = true,
        close = true,
        description = 'Grilled steak ready to be eaten.'
    },

    ['uwu_friedegg'] = {
        label = 'Fried Egg',
        weight = 1,
        stack = true,
        close = true,
        description = 'Fried egg ready to be put into a burger and eaten.'
    },

    ['uwu_rawonion'] = {
        label = 'Onion',
        weight = 1,
        stack = true,
        close = true,
        description = 'Onion ready to be cut.'
    },

    ['uwu_slicedonion'] = {
        label = 'Sliced Onion',
        weight = 1,
        stack = true,
        close = true,
        description = 'Sliced onion ready to be put put into a delicious meal.'
    },

    ['uwu_rice'] = {
        label = 'Rice',
        weight = 1,
        stack = true,
        close = true,
        description = 'Cooking rice.'
    },

    ['uwu_friedrice'] = {
        label = 'Fried Rice',
        weight = 1,
        stack = true,
        close = true,
        description = 'Best tasting fried rice in your whole life.'
    },

    ['uwu_steakeggbreakfastspecial'] = {
        label = 'Steak & Egg Breakfast Special',
        weight = 1,
        stack = true,
        close = true,
        description = 'A classic combo of grilled steak, fried egg, and caramelized onions. A perfect hearty breakfast!'
    },

    ['uwu_caramelizedonionsteakstirfry'] = {
        label = 'Caramelized Onion Steak Stir-Fry',
        weight = 1,
        stack = true,
        close = true,
        description = 'Tender steak stir-fried with sweet caramelized onions, creating a rich and savory dish with a hint of sweetness.'
    },

    ['uwu_chilliramen'] = {
        label = 'Chilli Ramen',
        weight = 1,
        stack = true,
        close = true,
        description = 'Spicy ramen which will fill you up and make your face red.'
    },

    ['uwu_kungpao'] = {
        label = 'Kung Pao',
        weight = 1,
        stack = true,
        close = true,
        description = 'A bold and spicy dish with a satisfying blend of flavors, offering a deliciously balanced experience in every bite.'
    },

    ['uwu_shanghaisoyscallionnoodles'] = {
        label = 'Shanghai Soy Scallion Noodles',
        weight = 1,
        stack = true,
        close = true,
        description = 'A flavorful and aromatic dish with a perfect balance of savory and satisfying textures.'
    },

    ['uwu_rawchillipepper'] = {
        label = 'Chilli Pepper',
        weight = 1,
        stack = true,
        close = true,
        description = 'Chilli pepper ready to be cut.'
    },

    ['uwu_slicedchillipepper'] = {
        label = 'Sliced Chilli Pepper',
        weight = 1,
        stack = true,
        close = true,
        description = 'Sliced chilli pepper ready to be eaten.'
    },

    ['uwu_rawcucumber'] = {
        label = 'Cucumber',
        weight = 1,
        stack = true,
        close = true,
        description = 'Cucumber ready to be cut!'
    },

    ['uwu_slicedcucumber'] = {
        label = 'Sliced cucumber',
        weight = 1,
        stack = true,
        close = true,
        description = 'Sliced cucumber ready to be put on a burger and eaten!'
    },

    ['uwu_rawchicken'] = {
        label = 'Raw chicken',
        weight = 1,
        stack = true,
        close = true,
        description = 'Raw chicken.'
    },

    ['uwu_grilledchicken'] = {
        label = 'Grilled chicken',
        weight = 1,
        stack = true,
        close = true,
        description = 'Grilled chicken.'
    },

    ['uwu_grilledchickenpiece'] = {
        label = 'Grilled chicken piece',
        weight = 1,
        stack = true,
        close = true,
        description = 'Grilled chicken piece.'
    },
})

insert({	-- FiveCode - Unicorn
	-- Other
	['vu_ticket'] = {
		label = 'Ticket - Vanilla Unicorn',
		weight = 1,
		stack = true,
		close = true,
		description = 'Vanilla unicorn ticket.'
	},

	['vu_cleansponge'] = {
		label = 'Clean Sponge',
		weight = 1,
		stack = true,
		close = true,
		description = 'Clean sponge which is ready for some cleaning!'
	},

	['vu_dirtysponge'] = {
		label = 'Dirty Sponge',
		weight = 1,
		stack = true,
		close = true,
		description = 'Dirty sponge which needs to be cleaned!'
	},

	['vu_redwoodcigpack'] = {
		label = 'Redwood Cigarette Pack',
		weight = 1,
		stack = true,
		close = true,
		description = 'A pack of premium Redwood cigarettes, the favorite brand of Vinewood elites.'
	},

	['vu_redwoodcigsingle'] = {
		label = 'Redwood Cigarette',
		weight = 1,
		stack = true,
		close = true,
		description = 'A single Redwood cigarette, smooth and satisfying.'
	},

	['vu_estanciacigpack'] = {
		label = 'Estancia Cigarette Pack',
		weight = 1,
		stack = true,
		close = true,
		description = 'A pack of Estancia cigarettes, known for their bold and rich flavor.'
	},

	['vu_estanciacigsingle'] = {
		label = 'Estancia Cigarette',
		weight = 1,
		stack = true,
		close = true,
		description = 'A single Estancia cigarette, a strong hit for those who crave intensity.'
	},

	['vu_sugar'] = {
		label = 'Sugar',
		weight = 1,
		stack = true,
		close = true,
		description = 'Sugar.'
	},

	['vu_ice'] = {
		label = 'Ice',
		weight = 1,
		stack = true,
		close = true,
		description = 'Ice ready to cool your drink!'
	},

	['vu_soda'] = {
		label = 'Soda',
		weight = 1,
		stack = true,
		close = true,
		description = 'Soda.'
	},

	['vu_juice'] = {
		label = 'Juice',
		weight = 1,
		stack = true,
		close = true,
		description = 'Juice.'
	},

	['vu_coconutcream'] = {
		label = 'Coconut Cream',
		weight = 1,
		stack = true,
		close = true,
		description = 'Coconut Cream.'
	},

	-- Snacks
	['vu_cleanbowl'] = {
		label = 'Clean Bowl',
		weight = 1,
		stack = true,
		close = true,
		description = 'Clean bowl to put food into.'
	},

	['vu_dirtybowl'] = {
		label = 'Dirty Bowl',
		weight = 1,
		stack = true,
		close = true,
		description = 'Dirty bowl ready to be cleaned.'
	},

	['vu_beanbowl'] = {
		label = 'Bean Bowl',
		weight = 1,
		stack = true,
		close = true,
		description = 'Bean bowl ready to be eaten.'
	},

	['vu_nutbowl'] = {
		label = 'Nut Bowl',
		weight = 1,
		stack = true,
		close = true,
		description = 'Nut bowl ready to be eaten.'
	},

	['vu_beans'] = {
		label = 'Beans',
		weight = 1,
		stack = true,
		close = true,
		description = 'Beans to put into a clean bowl.'
	},

	['vu_nuts'] = {
		label = 'Nuts',
		weight = 1,
		stack = true,
		close = true,
		description = 'Nuts to put into a clean bowl.'
	},

	-- Drinks
	['vu_cleanshortglass'] = {
		label = 'Clean Short Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'Clean short glass ready to be filled up with a drink of your choice.'
	},

	['vu_dirtyshortglass'] = {
		label = 'Dirty Short Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'Dirty short glass ready to be cleaned.'
	},

	['vu_cleantallglass'] = {
		label = 'Clean Tall Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'Clean tall glass ready to be filled up with a drink of your choice.'
	},

	['vu_dirtytallglass'] = {
		label = 'Dirty Tall Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'Dirty tall glass ready to be cleaned.'
	},

	['vu_cleancocktailglass'] = {
		label = 'Clean Cocktail Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'Clean cocktail glass ready to be filled up with a drink of your choice.'
	},

	['vu_dirtycocktailglass'] = {
		label = 'Dirty Cocktail Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'Dirty cocktail glass ready to be cleaned.'
	},

	['vu_rhumbottle'] = {
		label = 'Rhum Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'A bottle of fine rhum.'
	},
		
	['vu_tequilabottle'] = {
		label = 'Tequila Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'A premium bottle of tequila.'
	},
		
	['vu_vodkabottle'] = {
		label = 'Vodka Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'A crisp and clean vodka bottle, perfect for mixing or enjoying straight.'
	},
		
	['vu_whiskeybottle'] = {
		label = 'Whiskey Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'A smooth bottle of aged whiskey.'
	},

	['vu_mojitodrink'] = {
		label = 'Mojito Cocktail',
		weight = 1,
		stack = true,
		close = true,
		description = 'A refreshing cocktail made with rum, mint, lime, sugar, and soda water.'
	},

	['vu_pinacoladadrink'] = {
		label = 'Piña Colada',
		weight = 1,
		stack = true,
		close = true,
		description = 'A tropical mix of rum, pineapple, and coconut cream over ice.'
	},

	['vu_tequilasunrisedrink'] = {
		label = 'Tequila Sunrise',
		weight = 1,
		stack = true,
		close = true,
		description = 'A vibrant cocktail with tequila, citrus juice, and a hint of sweetness.'
	},

	['vu_unicornblissdrink'] = {
		label = 'Unicorn Bliss',
		weight = 1,
		stack = true,
		close = true,
		description = 'A smooth vodka cocktail with citrus juice and a hint of lemon.'
	},

	['vu_lossantosdrink'] = {
		label = 'Los Santos',
		weight = 1,
		stack = true,
		close = true,
		description = 'A smooth vodka cocktail with citrus juice and a hint of lemon.'
	},

	['vu_paletobaydrink'] = {
		label = 'Paleto Bay',
		weight = 1,
		stack = true,
		close = true,
		description = 'A smooth vodka cocktail with citrus juice and a hint of lemon.'
	},
		
	['vu_rhumdrink'] = {
		label = 'Rhum Drink',
		weight = 1,
		stack = true,
		close = true,
		description = 'A rich and flavorful cocktail crafted with premium rhum.'
	},
		
	['vu_tequiladrink'] = {
		label = 'Tequila Shot',
		weight = 1,
		stack = true,
		close = true,
		description = 'A strong and smooth tequila shot.'
	},
		
	['vu_whiskeydrink'] = {
		label = 'Whiskey Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'A fine glass of aged whiskey, perfect for sipping and enjoying.'
	},

	['vu_vodkadrink'] = {
		label = 'Vodka Glass',
		weight = 1,
		stack = true,
		close = true,
		description = 'A crisp and clean glass of vodka, best served chilled.'
	},
		
	['vu_lossantos'] = {
		label = 'Los Santos',
		weight = 1,
		stack = true,
		close = true,
		description = 'A signature city-inspired cocktail with a unique blend of flavors.'
	},
		
	['vu_paletobay'] = {
		label = 'Paleto Bay',
		weight = 1,
		stack = true,
		close = true,
		description = 'A tropical and smooth drink inspired by the coastal town of Paleto Bay.'
	},	


	-- Cutting Table
	['vu_rawlime'] = {
		label = 'Raw Lime',
		weight = 1,
		stack = true,
		close = true,
		description = 'Raw Lime.'
	},

	['vu_slicedlime'] = {
		label = 'Sliced Lime',
		weight = 1,
		stack = true,
		close = true,
		description = 'Sliced Lime.'
	},

	['vu_rawlemon'] = {
		label = 'Raw Lemon',
		weight = 1,
		stack = true,
		close = true,
		description = 'Raw Lemon.'
	},

	['vu_slicedlemon'] = {
		label = 'Sliced Lemon',
		weight = 1,
		stack = true,
		close = true,
		description = 'Sliced Lemon.'
	},

	['vu_rawstrawberry'] = {
		label = 'Raw Strawberry',
		weight = 1,
		stack = true,
		close = true,
		description = 'Raw Strawberry.'
	},

	['vu_slicedstrawberry'] = {
		label = 'Sliced Strawberry',
		weight = 1,
		stack = true,
		close = true,
		description = 'Sliced Strawberry.'
	},

	['vu_rawmint'] = {
		label = 'Raw Mint',
		weight = 1,
		stack = true,
		close = true,
		description = 'Raw mint.'
	},

	['vu_slicedmint'] = {
		label = 'Sliced Mint',
		weight = 1,
		stack = true,
		close = true,
		description = 'Sliced mint.'
	},
})

insert({	-- ???? idk i forgot :<
    ['sludgie'] = {
        name = 'sludgie',
        label = 'Sludgie',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 2500,
            notification = 'You quenched your thirst with a Coffee'
        }
    },
    ['ecola_light'] = {
        name = 'ecola_light',
        label = 'Ecola light',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 2500,
            notification = 'You quenched your thirst with a Coffee'
        }
    },
    ['ecola'] = {
        name = 'ecola',
        label = 'Ecola',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 2500,
            notification = 'You quenched your thirst with a Coffee'
        }
    },
    ['coffee'] = {
        name = 'coffee',
        label = 'Coffee',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 2500,
            notification = 'You quenched your thirst with a Coffee'
        }
    },
    ['fries'] = {
        name = 'fries',
        label = 'Fries',
        weight = 350,
        client = {
            status = { hunger = 200000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = 'prop_food_cb_chips', pos = vec3(0.02, 0.02, -0.02), rot = vec3(0.0, 0.0, 0.0) },
            usetime = 2500,
            notification = 'You eat Fries'
        }
    },
    ['pizza_ham'] = {
        name = 'pizza_ham',
        label = 'Pizza Ham',
        weight = 350,
        client = {
            status = { hunger = 200000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = 'prop_food_cb_chips', pos = vec3(0.02, 0.02, -0.02), rot = vec3(0.0, 0.0, 0.0) },
            usetime = 2500,
            notification = 'You eat Fries'
        }
    },
    ['chips'] = {
        name = 'chips',
        label = 'Chips',
        weight = 350,
        client = {
            status = { hunger = 200000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = 'prop_food_cb_chips', pos = vec3(0.02, 0.02, -0.02), rot = vec3(0.0, 0.0, 0.0) },
            usetime = 2500,
            notification = 'You eat Chips'
        }
    },
    ['donut'] = {
        name = 'donut',
        label = 'Donut',
        weight = 350,
        client = {
            status = { hunger = 200000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = 'prop_amb_donut', pos = vec3(0.02, 0.02, -0.02), rot = vec3(0.0, 0.0, 0.0) },
            usetime = 2500,
            notification = 'You eat Donut'
        }
    },
    ['wire_cutter'] = {
        name = 'wire_cutter',
        label = 'cutter',
        weight = 100,
        stack = true,
        consume = 0,
        close = true,
    },
    ['cigarrete'] = {
        name = 'cigarrete',
        label = 'Cigarrete',
        weight = 100,
        stack = true,
        consume = 0,
        close = true,
    },
    ['screwdriver'] = {
        name = 'screwdriver',
        label = 'Screw Driver',
        weight = 100,
        stack = true,
        consume = 0,
        close = true,
    },
})

insert({	-- JG mechanic
	-- Servicing Items
	["engine_oil"] = {
		label = "Engine Oil",
		weight = 1000,
	},
	["tyre_replacement"] = {
		label = "Tyre Replacement",
		weight = 1000,
	},
	["clutch_replacement"] = {
		label = "Clutch Replacement",
		weight = 1000,
	},
	["air_filter"] = {
		label = "Air Filter",
		weight = 100,
	},
	["spark_plug"] = {
		label = "Spark Plug",
		weight = 1000,
	},
	["brakepad_replacement"] = {
		label = "Brakepad Replacement",
		weight = 1000,
	},
	["suspension_parts"] = {
		label = "Suspension Parts",
		weight = 1000,
	},
	-- Engine Items
	["i4_engine"] = {
		label = "I4 Engine",
		weight = 1000,
	},
	["v6_engine"] = {
		label = "V6 Engine",
		weight = 1000,
	},
	["v8_engine"] = {
		label = "V8 Engine",
		weight = 1000,
	},
	["v12_engine"] = {
		label = "V12 Engine",
		weight = 1000,
	},
	["turbocharger"] = {
		label = "Turbocharger",
		weight = 1000,
	},
	-- Electric Engines
	["ev_motor"] = {
		label = "EV Motor",
		weight = 1000,
	},
	["ev_battery"] = {
		label = "EV Battery",
		weight = 1000,
	},
	["ev_coolant"] = {
		label = "EV Coolant",
		weight = 1000,
	},
	-- Drivetrain Items
	["awd_drivetrain"] = {
		label = "AWD Drivetrain",
		weight = 1000,
	},
	["rwd_drivetrain"] = {
		label = "RWD Drivetrain",
		weight = 1000,
	},
	["fwd_drivetrain"] = {
		label = "FWD Drivetrain",
		weight = 1000,
	},
	-- Tuning Items
	["slick_tyres"] = {
		label = "Slick Tyres",
		weight = 1000,
	},
	["semi_slick_tyres"] = {
		label = "Semi Slick Tyres",
		weight = 1000,
	},
	["offroad_tyres"] = {
		label = "Offroad Tyres",
		weight = 1000,
	},
	["drift_tuning_kit"] = {
		label = "Drift Tuning Kit",
		weight = 1000,
	},
	["ceramic_brakes"] = {
		label = "Ceramic Brakes",
		weight = 1000,
	},
	-- Cosmetic Items
	["lighting_controller"] = {
		label = "Lighting Controller",
		weight = 100,
		client = {
		event = "jg-mechanic:client:show-lighting-controller",
		}
	},
	["stancing_kit"] = {
		label = "Stancer Kit",
		weight = 100,
		client = {
		event = "jg-mechanic:client:show-stancer-kit",
		}
	},
	["cosmetic_part"] = {
		label = "Cosmetic Parts",
		weight = 100,
	},
	["respray_kit"] = {
		label = "Respray Kit",
		weight = 1000,
	},
	["vehicle_wheels"] = {
		label = "Vehicle Wheels Set",
		weight = 1000,
	},
	["tyre_smoke_kit"] = {
		label = "Tyre Smoke Kit",
		weight = 1000,
	},
	["bulletproof_tyres"] = {
		label = "Bulletproof Tyres",
		weight = 1000,
	},
	["extras_kit"] = {
		label = "Extras Kit",
		weight = 1000,
	},
	-- Nitrous & Cleaning Items
	["nitrous_bottle"] = {
		label = "Nitrous Bottle",
		weight = 1000,
		client = {
		event = "jg-mechanic:client:use-nitrous-bottle",
		}
	},
	["empty_nitrous_bottle"] = {
		label = "Empty Nitrous Bottle",
		weight = 1000,
	},
	["nitrous_install_kit"] = {
		label = "Nitrous Install Kit",
		weight = 1000,
	},
	["cleaning_kit"] = {
		label = "Cleaning Kit",
		weight = 1000,
		client = {
		event = "jg-mechanic:client:clean-vehicle",
		}
	},
	["repair_kit"] = {
		label = "Repair Kit",
		weight = 1000,
		client = {
		event = "jg-mechanic:client:repair-vehicle",
		}
	},
	["duct_tape"] = {
		label = "Duct Tape",
		weight = 1000,
		client = {
		event = "jg-mechanic:client:use-duct-tape",
		}
	},
	-- Performance Item
	["performance_part"] = {
		label = "Performance Parts",
		weight = 1000,
	},
	-- Mechanic Tablet Item
	["mechanic_tablet"] = {
		label = "Mechanic Tablet",
		weight = 1000,
		client = {
		event = "jg-mechanic:client:use-tablet",
		}
	},
	-- Gearbox
	["manual_gearbox"] = {
		label = "Manual Gearbox",
		weight = 1000,
	},
})

insert({	-- okokPhone
	['okokphone'] = {
			label = 'Phone',
			weight = 190,
			stack = false,
			consume = 0,
			server = {
					export = "okokPhone.oxOpenPhone"
			}
	},
	['simcard'] = {
				label = 'Sim Card',
				weight = 1,
				stack = false,
				consume = 0,
				server = {
					export = "okokPhone.oxUseSimCard"
				}
		},
})

insert({	-- okokGarage
	['keys'] = {
		label = 'Car Keys',
		weight = 1,
		stack = false,
		close = false,
		description = "Car Keys",
		server = {
			export = 'okokGarage.lockvehicle',
		},
	},
})

insert({	-- quasarHousing
	['housekey'] = {
		label = 'House Key',
		weight = 100,
		stack = false,
		close = true,
		description = 'Your house key, do not lose it.',
		server = { export = 'qs-housing.useHouseKey' },
	},
	['lockpick'] = { label = 'Lockpick', weight = 100, stack = true },
	['police_stormram'] = { label = 'Police Storm Ram', weight = 800, stack = false },
	['pet_food'] = { label = 'Pet Food', weight = 200, stack = true },
	['pet_water'] = { label = 'Pet Water', weight = 200, stack = true },
})

return items