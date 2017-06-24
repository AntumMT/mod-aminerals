--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


minerals = {}
minerals.modname = minetest.get_current_modname()
minerals.modpath = minetest.get_modpath(minerals.modname)

-- List of minerals to disable
minerals.disabled_minerals = {}
-- Split comma-separated (& semi-color-sparated) list into table
-- FIXME: Remove whitespace
for index, mineral in ipairs(string.split(minetest.settings:get('minerals.disabled_minerals'), ',')) do
	if string.find(mineral, ';') then
		-- Semi-colons
		for index, mineral in ipairs(string.split(mineral, ';')) do
			table.insert(minerals.disabled_minerals, mineral)
		end
	else
		-- No semi-colon
		table.insert(minerals.disabled_minerals, mineral)
	end
end


local scripts = {
	'functions',
	'overrides',
	'items',
	'nodes',
	'crafting',
}

for index, script in ipairs(scripts) do
	dofile(minerals.modpath .. '/' .. script .. '.lua')
end


-- DEBUG:
if minerals.disabled_minerals and minetest.settings:get_bool('log_mods') then
	minerals.log('Disabled minerals:')
	for index, mineral in ipairs(minerals.disabled_minerals) do
		minerals.log('  ' .. mineral)
	end
end
