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

-- Registers a new mineral lump & logs message
function minerals.register_lump(name, groups)
	local suffix = name .. '_lump'
	local canonical = minerals.modname .. ':' .. suffix
	minetest.register_craftitem(canonical, {
		description = minerals.titleize(name) .. ' Lump',
		inventory_image = minerals.modname .. suffix .. '.png',
		groups = groups,
	})
	minetest.register_alias(suffix, canonical)
	minetest.register_alias('lump_of_' .. name, canonical)
	
	minerals.log('Registered mineral lump "' .. canonical .. '"')
end

-- Registers a new mineral & logs message
function minerals.register_mineral(name, def)
	minetest.register_node(name, def)
	minerals.log('Registered mineral "' .. name .. '"')
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
