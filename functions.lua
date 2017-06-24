--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


-- Logs message output with header
function minerals.log(message)
	if minetest.settings:get_bool('log_mods') then
		minetest.log('action', '[' .. minerals.modname .. '] ' .. message)
	end
end


-- Registers a new item
function minerals.register(name, def)
	if def.suffix ~= nil then
		name = name .. def.suffix
	end
	
	local fullname = minerals.modname .. ':' .. name
	
	minetest.register_craftitem(fullname, {
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
		def.inventory_image = minerals.modname .. '_' .. name .. suffix .. '.png'
	end
	
	minerals.register(name, def)
	minetest.register_alias(name .. suffix, fullname)
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
		def.inventory_image = minerals.modname .. '_' .. name .. suffix .. '.png'
	end
	
	minerals.register(name, def)
	minetest.register_alias(name .. suffix, fullname)
	
	minerals.log('Registered gem "' .. fullname .. '"')
end


-- Registers a new mineral & logs message
function minerals.register_mineral(name, def)
	local fullname = minerals.modname .. ':' .. name
	
	-- Default description
	if def.description == nil then
		def.description = minerals.titleize(name) .. ' Ore'
	end
	
	-- Default texture
	if def.tiles == nil then
		def.tiles = {'default_stone.png^' .. minerals.modname .. '_' .. name .. '.png'}
	end
	
	-- Default drop
	if def.drop == nil then
		def.drop = minerals.modname .. ':' .. name
		
		-- Default drop type is 'lump' (use empty string to override)
		if def.suffix == nil then
			def.suffix = '_lump'
		end
		
		if def.suffix then
			def.drop = def.drop .. def.suffix
		end
	end
	
	-- Number of items dropped
	if def.drop_count ~= nil then
		def.drop = def.drop .. ' ' .. tostring(def.drop_count)
	end
	
	-- Default sounds
	if def.sounds == nil then
		def.sounds = default.node_sound_stone_defaults()
	end
	
	minetest.register_node(fullname, {
		description = def.description,
		tiles = def.tiles,
		groups = def.groups,
		drop = def.drop,
		sounds = def.sounds,
	})
	minetest.register_alias(name .. '_ore', fullname)
	
	minerals.log('Registered mineral "' .. name .. '"')
end


-- Overrides a node/item & creates aliases of an existing node/item
function minerals.override(old, new)
  minetest.unregister_item(old)
  minetest.register_alias(old, new)
end


-- Checks for existing global or mod path
function minerals.mod_exists(modname)
	if minetest.global_exists(modname) or minetest.get_modpath(modname) then
		return true
	end
	
	return false
end


-- Titleizes a string
-- FIXME: Only titleizes first word
function minerals.titleize(str)
	return str:gsub('^%l', string.upper)
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
