return {
	-- Example, see data/items.lua for more detailed info/format
    ['cartracker'] = {
		label = "Car Tracker",
		weight = 1,
		stack = false,
		close = false,
		description = "Put this in vehicles' trunk or glovebox to track them",
		client = {
			-- RESOURCE_NAME.ITEM_NAME
			--export = 'ct.cartracker'
		},
		server = {
			--export = 'ct.cartracker'
		}
	},

	-- For debugging
	['saratoga_water'] = {
		label = 'Saratoga Water',
		weight = 10,
		client = {
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