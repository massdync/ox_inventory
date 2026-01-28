return {
    -- [[ Thomas police badge ]] --
    ['hkp'] = {
        label = '警察證件',
        weight = 500,
        stack = false,         -- Police ID should usually be unique per player, not stackable
        close = true,          -- Matches shouldClose = true (closes inventory on use)
        description = 'HKP的證件',
        client = {
            image = 'hkp.png',
            -- Optional: If using this item triggers something (e.g., show ID animation/menu),
            -- add an export here instead of old QB events
            -- export = 'your_police_resource.showHKPID'
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

    -- [[ Card test ]] --
    ['jj_s66_001ssp'] = {
        label = 'test',
        weight=1
    }
}