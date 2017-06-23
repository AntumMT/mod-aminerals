--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


-- Checks for existing global or mod path
local function mod_exists(modname)
	if minetest.global_exists(modname) or minetest.get_modpath(modname) then
		return true
	end
	
	return false
end


-- Override 'default'
if mod_exists('default') then
	local default_minerals = {
		'coal',
		'copper',
		'diamond',
		'gold',
		'iron',
		'mese',
		'tin',
	}
	
	for index, mineral in ipairs(default_minerals) do
		-- Ore/Minerals
		local old = 'default:stone_with_' .. mineral
		local new = 'minerals:' .. mineral
		minetest.unregister_item(old)
		minetest.register_alias(old, new)
		
		-- Lumps
		old = 'default:' .. mineral .. '_lump'
		new = 'minerals:' .. mineral .. '_lump'
		minetest.unregister_item(old)
		minetest.register_alias(old, new)
	end
end


-- Override 'gems'
-- FIXME: 'gems_encrustable' & 'gems_tools' conflict
if mod_exits('gems') then
end


-- Override 'moreores'
if mod_exists('moreores') then
end


-- Override 'ores'
if mod_exists('ores') then
end


-- Override 'oresplus'
if mod_exists('oresplus') then
end


-- Override 'rainbow_ore'
if mod_exists('rainbow_ore') then
end


-- Override 'uranium'
if mod_exists('uranium') then
end


-- Override 'xtraores'
if mod_exists('xtraores') then
end
