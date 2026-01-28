local function createCard(label, imgPath)
    return {
        label = label,
        weight = 1,
        stack = true,
        client = {
            image = imgPath
        }
    }
end

return {
    -- [[ Card test ]] --
    ['jj_s66_box'] = {
        label = '',
        description = '',
        stack = false,
        weight = 100,
        client = {
            image = 'custom/jj_s66/_box.png'
        }
    },
    ['jj_s66_pack'] = {
        label = '【ジョジョの奇妙な冒険 黄金の風】卡包',
        description = '黃金之風的卡包，每包內含9張卡牌',
        stack = true,
        weight = 10,
        client = {
            image = 'custom/jj_s66/_pack.png'
        }
    },
}