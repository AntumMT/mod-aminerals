--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


minerals = {}
minerals.modname = minetest.get_current_modname()
minerals.modpath = minetest.get_modpath(minerals.modname)


local scripts = {
	'nodes',
	'crafting',
}

for index, script in ipairs(scripts) do
	dofile(minerals.modpath .. '/' .. script .. '.lua')
end
