--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


ore = {}
ore.modname = minetest.get_current_modname()
ore.modpath = minetest.get_modpath(ore.modname)


local scripts = {
	'nodes',
	'crafting',
}

for index, script in ipairs(scripts) do
	dofile(ore.modpath .. '/' .. script .. '.lua')
end
