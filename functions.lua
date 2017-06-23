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

-- Registers a new mineral & logs message
function minerals.register_mineral(name, def)
	minetest.register_node(name, def)
	minerals.log('Registered mineral "' .. name .. '"')
end
