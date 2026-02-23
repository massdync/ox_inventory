return {
    -- [[ Thomas police badge ]] --
    ['hkp'] = {
        label = '警察證件',
        weight = 500,
        stack = false,
        close = true,
        description = 'HKP的證件',
        client = {
            image = 'custom/hkp.png',
        }
    },

    -- [[ drugseed TEST items ]] --
    ['weedseed'] = {
        label = '大麻種子 (測試)',
        weight = 1,
    },
    ['cocaseed'] = {
        label = '可卡種子 (測試)',
        weight = 1,
    },
    ['iodine'] = {
        label = '碘 (測試)',
        weight = 1,
    },
    ['acetone'] = {
        label = '丙酮 (測試)',
        weight = 1,
    },

	-- For debugging
	['saratoga_water'] = {
		label = 'Saratoga Water',
        description = "Ashton Hall is proud of you",
		weight = 10,
		client = {
            image = "custom/saratoga_water.png",
			status = {
				thirst = 1000000,
				hunger = 1000000,
				stress = -1000000,
			},
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},
}