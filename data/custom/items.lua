return {
    ['testbeer'] = {
        label = "Test Beer",
        weight = 1,
        stack = true,
        close = true,
        description = "Beer for testing",
        client = {
			status = {
				drunk = 200000
			},
			anim = {
				dict = 'mp_player_intdrink',
				clip = 'loop_bottle'
			},
			prop = {
				model = `prop_beer_bottle`,
				pos = vec3(0.00, 0.00, -0.15),
				rot = vec3(0.0, 0.0, -1.5)
			},
			usetime = 2500,
			cancel = true,
			notification = 'You drank some beer',
		}
    }
}