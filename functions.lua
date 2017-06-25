--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


-- *** LOGGING ***

-- Logs message output with header
function minerals.log(message)
	if minetest.settings:get_bool('log_mods') then
		minetest.log('action', '[' .. minerals.modname .. '] ' .. message)
	end
end


--[[ Logs message if verbosity is set to high

	@param message
		String message to be logged/displayed
]]
function minerals.log_debug(message)
	if minetest.settings:get_bool('log_mods') then
		minetest.log('verbose', '[' .. minerals.modname .. '] ' .. message)
	end
end



-- *** ITEM & NODE REGISTRATION ***

-- Registers a new item
function minerals.register(name, def)
	if not string.find(name, minerals.modname .. ':') then
		name = minerals.modname .. ':' .. name
	end
	
	if def.suffix ~= nil then
		name = name .. def.suffix
	end
	
	if not string.find(name, minerals.modname .. ':') then
		name = minerals.modname .. ':' .. name
	end
	
	minetest.register_craftitem(name, {
		description = def.description,
		inventory_image = def.inventory_image,
		wield_image = def.wield_image,
		wield_scale = def.wield_scale,
		groups = def.groups,
		stack_max = def.stack_max,
		liquids_pointable = def.liquids_pointable,
	})
end


-- Registers a new mineral lump & logs message
function minerals.register_lump(name, def)
	-- Default suffix
	if def.suffix == nil then
		def.suffix = '_lump'
	end
	
	-- Default description
	if def.description == nil then
		def.description = minerals.titleize(name) .. ' Lump'
	end
	
	-- Default inventory image
	if def.inventory_image == nil then
		def.inventory_image = minerals.modname .. '_' .. name .. def.suffix .. '.png'
	end
	
	minerals.register(name, def)
	
	if def.suffix then
		name = name .. def.suffix
	end
	
	local fullname = minerals.modname .. ':' .. name
	
	minetest.register_alias(name .. def.suffix, fullname)
	minetest.register_alias('lump_of_' .. name, fullname)
	
	minerals.log('Registered mineral lump "' .. fullname .. '"')
end


-- Registers a new gem & logs message
function minerals.register_gem(name, def)
	-- Default suffix
	if def.suffix == nil then
		def.suffix = '_gem'
	end
	
	-- Default description
	if def.description == nil then
		def.description = minerals.titleize(name) .. ' Gem'
	end
	
	-- Default inventory image
	if def.inventory_image == nil then
		def.inventory_image = minerals.modname .. '_' .. name .. def.suffix .. '.png'
	end
	
	minerals.register(name, def)
	
	if def.suffix then
		name = name .. def.suffix
	end
	
	local fullname = minerals.modname .. ':' .. name
	
	minetest.register_alias(name .. def.suffix, fullname)
	
	minerals.log('Registered gem "' .. fullname .. '"')
end


-- Registers a new ingot & logs message
function minerals.register_ingot(name, def)
	-- Default suffix
	if def.suffix == nil then
		def.suffix = '_ingot'
	end
	
	-- Default description
	if def.description == nil then
		def.description = minerals.titleize(name) .. ' Ingot'
	end
	
	-- Default inventory image
	if def.inventory_image == nil then
		def.inventory_image = minerals.modname .. '_' .. name .. def.suffix .. '.png'
	end
	
	minerals.register(name, def)
	
	if def.suffix then
		name = name .. def.suffix
	end
	
	local fullname = minerals.modname .. ':' .. name
	
	minetest.register_alias(name .. def.suffix, fullname)
	
	minerals.log('Registered ingot "' .. fullname .. '"')
end


--[[ Registers a regular node
	
	@param name
		String name of new node ('minerals:' prepended if not detected in string)
	@param def
		Node definition
	@param log
		Boolean value to determine if registration message should be logged (for overriding
		from sub functions)
]]
function minerals.register_node(name, def, log)
	if log == nil then
		log = true
	end
	
	if def.tiles == nil then
		def.tiles = minerals.get_texture(name)
	end
	
	name = minerals.format_name(name)
	
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
		--minerals.log_debug('Registered node: ' .. name)
		minerals.log('Registered node: ' .. name)
	end
end


-- Registers a new mineral & logs message
function minerals.register_mineral(name, def)
	local fullname = minerals.format_name(name)
	
	-- Default type is 'ore'
	if def.type == nil then
		def.type = 'ore'
	end
	
	-- Default description
	if def.description == nil then
		def.description = minerals.titleize(name) .. ' Ore'
	end
	
	-- Default texture
	if def.tiles == nil then
		def.tiles = {'default_stone.png^' .. minerals.get_texture(name)}
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
	
	minerals.register_node(fullname, def, false)
	minetest.register_alias(name .. '_ore', fullname)
	
	minerals.log('Registered mineral "' .. name .. '"')
end



-- *** OVERRIDING ***

-- Overrides a node/item & creates aliases of an existing one
function minerals.override(old, new)
	new = minerals.format_name(new)
	
	minerals.log('Overriding "' .. old .. '" with "' .. new .. '" ...')
	
	minetest.unregister_item(old)
	minetest.register_alias(old, new)
end


-- Overrides a node/item using a common mod name & optional suffix
function minerals.override_type(name, modname, suffix)
	local old = name
	local new = name
	
	if modname then
		old = modname .. ':' .. old
	end
	
	if suffix then
		old = old .. '_' .. suffix
		new = new .. '_' .. suffix
	end
	
	minerals.override(old, new)
end



-- *** CHECKS ***

-- Checks for existing global or mod path
function minerals.mod_exists(modname)
	if minetest.global_exists(modname) or minetest.get_modpath(modname) then
		return true
	end
	
	return false
end


-- Checks table contents for a specified a value
function minerals.list_contains(list, value)
	for index, list_item in ipairs(list) do
		if list_item == value then
			return true
		end
	end
	
	return false
end


-- Checks if a mineral is enabled
function minerals.enabled(mineral)
	return not minerals.list_contains(minerals.disabled_minerals, mineral)
end



-- *** HELPERS ***

-- Titleizes a string
-- FIXME: Only titleizes first word
function minerals.titleize(str)
	return str:gsub('^%l', string.upper)
end


-- Retrieves filename string for texture
function minerals.get_texture(name, suffix, variant)
	local texture = minerals.modname
	
	for index, S in ipairs({name, suffix, variant}) do
		if S then
			texture = texture .. '_' .. S
		end
	end
	
	texture = texture .. '.png'
	
	return texture
end


--[[ Prepends mod name to item name string
	Checks if name begins with 'minerals:' & formats so if not.
	
	@param name
		String name of node/item
	@suffix
		Optional string to be appended to name
	@variant
		Additional optional suffix
	@return
		New formatted name
]]
function minerals.format_name(name, suffix, variant)
	if not string.find(name, minerals.modname .. ':') then
		name = minerals.modname .. ':' .. name
	end
	
	for index, S in ipairs({suffix, variant}) do
		if S then
			name = name .. '_' .. S
		end
	end
	
	return name
end
