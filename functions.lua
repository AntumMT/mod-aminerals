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
