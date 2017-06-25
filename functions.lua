--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


-- *** LOGGING ***

-- Logs message output with header
function aminerals.log(message)
	if minetest.settings:get_bool('log_mods') then
		minetest.log('action', '[' .. aminerals.modname .. '] ' .. message)
	end
end


--[[ Logs message if verbosity is set to high

	@param message
		String message to be logged/displayed
]]
function aminerals.log_debug(message)
	if minetest.settings:get_bool('log_mods') then
		minetest.log('verbose', '[' .. aminerals.modname .. '] ' .. message)
	end
end



-- *** ITEM & NODE REGISTRATION ***

-- Registers a new item
function aminerals.register(name, def)
	-- DEBUG:
	if def.register_drop.description ~= nil then
		def.register_drop.description = def.register_drop.description .. ' (minerals)'
	end
	
	name = aminerals.format_name(name)
	
	if def.suffix ~= nil then
		name = name .. def.suffix
	end
	
	minetest.register_craftitem(name, def)
end


-- Registers a new mineral lump & logs message
function aminerals.register_lump(name, def)
	-- Default suffix
	if def.suffix == nil then
		def.suffix = '_lump'
	end
	
	-- Default description
	if def.description == nil then
		def.description = aminerals.titleize(name) .. ' Lump'
	end
	
	-- Default inventory image
	if def.inventory_image == nil then
		def.inventory_image = aminerals.modname .. '_' .. name .. def.suffix .. '.png'
	end
	
	aminerals.register(name, def)
	
	if def.suffix then
		name = name .. def.suffix
	end
	
	local fullname = aminerals.modname .. ':' .. name
	
	minetest.register_alias(name .. def.suffix, fullname)
	minetest.register_alias('lump_of_' .. name, fullname)
	
	aminerals.log('Registered mineral lump "' .. fullname .. '"')
end


-- Registers a new gem & logs message
function aminerals.register_gem(name, def)
	-- Default suffix
	if def.suffix == nil then
		def.suffix = '_gem'
	end
	
	-- Default description
	if def.description == nil then
		def.description = aminerals.titleize(name) .. ' Gem'
	end
	
	-- Default inventory image
	if def.inventory_image == nil then
		def.inventory_image = aminerals.modname .. '_' .. name .. def.suffix .. '.png'
	end
	
	aminerals.register(name, def)
	
	if def.suffix then
		name = name .. def.suffix
	end
	
	local fullname = aminerals.modname .. ':' .. name
	
	minetest.register_alias(name .. def.suffix, fullname)
	
	aminerals.log('Registered gem "' .. fullname .. '"')
end


-- Registers a new ingot & logs message
function aminerals.register_ingot(name, def)
	-- Default suffix
	if def.suffix == nil then
		def.suffix = '_ingot'
	end
	
	-- Default description
	if def.description == nil then
		def.description = aminerals.titleize(name) .. ' Ingot'
	end
	
	-- Default inventory image
	if def.inventory_image == nil then
		def.inventory_image = aminerals.modname .. '_' .. name .. def.suffix .. '.png'
	end
	
	aminerals.register(name, def)
	
	if def.suffix then
		name = name .. def.suffix
	end
	
	local fullname = aminerals.modname .. ':' .. name
	
	minetest.register_alias(name .. def.suffix, fullname)
	
	aminerals.log('Registered ingot "' .. fullname .. '"')
end


--[[ Registers a regular node
	
	@param name
		String name of new node ('aminerals:' prepended if not detected in string)
	@param def
		Node definition
	@param log
		Boolean value to determine if registration message should be logged (for overriding
		from sub functions)
]]
function aminerals.register_node(name, def, log)
	if log == nil then
		log = true
	end
	
	if def.tiles == nil then
		def.tiles = aminerals.get_texture(name)
	end
	
	name = aminerals.format_name(name)
	
	-- Drops self by default
	if def.drop == nil then
		def.drop = name
	end
	
	-- DEBUG:
	if def.description ~= nil then
		def.description = def.description .. ' (minerals)'
	end
	
	minetest.register_node(name, def)
	
	if log then
		--aminerals.log_debug('Registered node: ' .. name)
		aminerals.log('Registered node: ' .. name)
	end
end


-- Registers a new mineral & logs message
function aminerals.register_mineral(name, def)
	local fullname = aminerals.format_name(name)
	
	-- Default type is 'ore'
	if def.type == nil then
		def.type = 'ore'
	end
	
	-- Default description
	if def.description == nil then
		def.description = aminerals.titleize(name) .. ' Ore'
	end
	
	-- Default texture
	if def.tiles == nil then
		def.tiles = {'default_stone.png^' .. aminerals.get_texture(name)}
	end
	
	-- Default drop
	if def.drop == nil then
		def.drop = fullname
		
		-- Ores drop 'lumps'
		local drop_suffix = def.type
		if drop_suffix == 'ore' then
			drop_suffix = 'lump'
		end
		
		def.drop = def.drop .. '_' .. drop_suffix
	end
	
	-- Number of items dropped
	if def.drop_count ~= nil then
		def.drop = def.drop .. ' ' .. tostring(def.drop_count)
	end
	
	-- Default sounds
	if def.sounds == nil then
		def.sounds = default.node_sound_stone_defaults()
	end
	
	aminerals.register_node(fullname, def, false)
	minetest.register_alias(name .. '_ore', fullname)
	
	aminerals.log('Registered mineral "' .. name .. '"')
	
	-- Registers drop as new craft item
	if def.register_drop then
		-- Make sure there is no whitespace in item name
		def.drop = string.split(def.drop, ' ')[1]
		aminerals.register(def.drop, def.register_drop)
		
		aminerals.log('Registered dropped item "' .. def.drop)
	end
end



-- *** OVERRIDING ***

-- Overrides a node/item & creates aliases of an existing one
function aminerals.override(old, new)
	new = aminerals.format_name(new)
	
	aminerals.log('Overriding "' .. old .. '" with "' .. new .. '" ...')
	
	minetest.unregister_item(old)
	minetest.register_alias(old, new)
end


-- Overrides a node/item using a common mod name & optional suffix
function aminerals.override_type(name, modname, suffix)
	local old = name
	local new = name
	
	if modname then
		old = modname .. ':' .. old
	end
	
	if suffix then
		old = old .. '_' .. suffix
		new = new .. '_' .. suffix
	end
	
	aminerals.override(old, new)
end



-- *** CHECKS ***

-- Checks for existing global or mod path
function aminerals.mod_exists(modname)
	if minetest.global_exists(modname) or minetest.get_modpath(modname) then
		return true
	end
	
	return false
end


-- Checks table contents for a specified a value
function aminerals.list_contains(list, value)
	for index, list_item in ipairs(list) do
		if list_item == value then
			return true
		end
	end
	
	return false
end


-- Checks if a mineral is enabled
function aminerals.enabled(mineral)
	return not aminerals.list_contains(aminerals.disabled_minerals, mineral)
end



-- *** HELPERS ***

-- Titleizes a string
-- FIXME: Only titleizes first word
function aminerals.titleize(str)
	return str:gsub('^%l', string.upper)
end


-- Retrieves filename string for texture
function aminerals.get_texture(name, suffix, variant)
	local texture = aminerals.modname
	
	for index, S in ipairs({name, suffix, variant}) do
		if S then
			texture = texture .. '_' .. S
		end
	end
	
	texture = texture .. '.png'
	
	return texture
end


--[[ Prepends mod name to item name string
	Checks if name begins with 'aminerals:' & formats so if not.
	
	@param name
		String name of node/item
	@suffix
		Optional string to be appended to name
	@variant
		Additional optional suffix
	@return
		New formatted name
]]
function aminerals.format_name(name, suffix, variant)
	if not string.find(name, aminerals.modname .. ':') then
		name = aminerals.modname .. ':' .. name
	end
	
	for index, S in ipairs({suffix, variant}) do
		if S then
			name = name .. '_' .. S
		end
	end
	
	return name
end
