return {
    -- Example, see data/weapons.lua for more detailed info/example
    Weapons = {
        -- Custom
		['WEAPON_NEON_SMG'] = {
			label = 'Neon SMG',
			weight = 1000,
			durability = 0.05,
			ammoname = 'ammo-rifle',
            client = {
                image = 'custom/WEAPON_NEON_SMG.png'
            }
		},

		['WEAPON_NEON_AK'] = {
			label = 'Neon AK',
			weight = 4500,
			durability = 0.03,
			ammoname = 'ammo-rifle2',
            client = {
                image = 'custom/WEAPON_NEON_AK.png'
            }
		},
    }
}