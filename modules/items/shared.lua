local function useExport(resource, export)
	return function(...)
		return exports[resource][export](nil, ...)
	end
end

local ItemList = {}
local isServer = IsDuplicityVersion()

local function setImagePath(path)
    if path then
        return path:match('^[%w]+://') and path or ('%s/%s'):format(client.imagepath, path)
    end
end

---@param data OxItem
local function newItem(data)
	data.weight = data.weight or 0

	if data.close == nil then
		data.close = true
	end

	if data.stack == nil then
		data.stack = true
	end

	local clientData, serverData = data.client, data.server
	---@cast clientData -nil
	---@cast serverData -nil

	if not data.consume and (clientData and (clientData.status or clientData.usetime or clientData.export) or serverData?.export) then
		data.consume = 1
	end

	if isServer then
        ---@cast data OxServerItem
        serverData = data.server
		data.client = nil

		if not data.durability then
			if data.degrade or (data.consume and data.consume ~= 0 and data.consume < 1) then
				data.durability = true
			end
		end

        if not serverData then goto continue end

        if serverData.export then
            data.cb = useExport(string.strsplit('.', serverData.export))
        end
	else
        ---@cast data OxClientItem
        clientData = data.client
		data.server = nil
		data.count = 0

        if not clientData then goto continue end

        if clientData.export then
            data.export = useExport(string.strsplit('.', clientData.export))
        end

        clientData.image = setImagePath(clientData.image)

        if clientData.propTwo then
            clientData.prop = clientData.prop and { clientData.prop, clientData.propTwo } or clientData.propTwo
            clientData.propTwo = nil
        end
	end

    ::continue::
	ItemList[data.name] = data
end

--------------------------------------------------

local function loadWeapons(weapons, debug)
    weapons = weapons or {}
    debug = debug or false
    for type_, data in pairs(weapons) do
        for k, v in pairs(data) do
            v.name = k
            v.close = type_ == 'Ammo' and true or false
            v.weight = v.weight or 0

            if type_ == 'Weapons' then
                ---@cast v OxWeapon
                v.model = v.model or k -- actually weapon type or such? model for compatibility
                v.hash = joaat(v.model)
                v.stack = v.throwable and true or false
                v.durability = v.durability or 0.05
                v.weapon = true
            else
                v.stack = true
            end

            v[type_ == 'Ammo' and 'ammo' or type_ == 'Components' and 'component' or type_ == 'Tints' and 'tint' or 'weapon'] = true

            if isServer then v.client = nil else
                v.count = 0
                v.server = nil
                local clientData = v.client

                if clientData?.image then
                    clientData.image = setImagePath(clientData.image)
                end
            end
            
            -- k: str, v: table
            ItemList[k] = v
            if (debug) then
                print('Added weapon: ' .. k)
            end
        end
    end
end

loadWeapons(lib.load('data.weapons'))
loadWeapons(lib.load('data.custom.weapons'), true)

--------------------------------------------------

local function loadItems(items, debug)
    items = items or {}
    debug = debug or false
    for k, v in pairs(items) do
        v.name = k
        local success, response = pcall(newItem, v)

        if not success then
            warn(('An error occurred while creating item "%s" callback!\n^1SCRIPT ERROR: %s^0'):format(k, response))
        else
            if (debug) then
                print('Added item: ' .. k)
            end
        end
    end
end

local CARDS_DEBUG_MSG = false

loadItems(lib.load('data.items'))
loadItems(lib.load('data.custom.items'), CARDS_DEBUG_MSG)
loadItems(lib.load('data.custom.items_cards'), CARDS_DEBUG_MSG)

----------

ItemList.cash = ItemList.money

return ItemList
