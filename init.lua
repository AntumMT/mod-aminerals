--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


aminerals = {}
aminerals.modname = minetest.get_current_modname()
aminerals.modpath = minetest.get_modpath(aminerals.modname)

-- Set to 'false' to prevent overriding minerals from other mods
aminerals.override_others = minetest.settings:get_bool('aminerals.override_others')
if aminerals.override_others == nil then
	-- Default value is 'true'
	aminerals.override_others = true
end

-- List of minerals to disable
aminerals.disabled_minerals = {}
local disabled_list = minetest.settings:get('aminerals.disabled_minerals')

if disabled_list ~= nil then
	-- Split comma-separated (& semi-color-sparated) list into table
	-- FIXME: Remove whitespace
	for index, mineral in ipairs(string.split(disabled_list, ',')) do
		if string.find(mineral, ';') then
			-- Semi-colons
			for index, mineral in ipairs(string.split(mineral, ';')) do
				table.insert(aminerals.disabled_minerals, mineral)
			end
		else
			-- No semi-colon
			table.insert(aminerals.disabled_minerals, mineral)
		end
	end
end


-- For compatibility with other mods
if not minetest.global_exists('default') then
	default = {}
end


local scripts = {
	'functions',
	'items',
	'nodes',
	'crafting',
}

for index, script in ipairs(scripts) do
	dofile(aminerals.modpath .. '/' .. script .. '.lua')
end


-- DEBUG:
if aminerals.disabled_minerals and minetest.settings:get_bool('log_mods') then
	aminerals.log('Disabled minerals:')
	for index, mineral in ipairs(aminerals.disabled_minerals) do
		aminerals.log('  ' .. mineral)
	end
end
