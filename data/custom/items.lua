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
	}
}