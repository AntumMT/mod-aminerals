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

-- Un-registers an item & replaces it as an alias
local function replace_item(old, new)
	minetest.unregister_item(old)
	minetest.register_alias(old, new)
end


-- Override 'default'
if mod_exists('default') then
	local default_minerals = {
		'coal',
		'copper',
		'gold',
		'iron',
		'tin',
	}
	
	local default_gems = {
		'diamond',
		'mese',
	}
	
	for index, mineral in ipairs(default_minerals + default_gems) do
		-- Ore/Mineral blocks
		local old = 'default:stone_with_' .. mineral
		local new = 'minerals:' .. mineral
		minetest.unregister_item(old)
		minetest.register_alias(old, new)
	end
	
	for index, mineral in ipairs(default_minerals) do
		-- Lumps
		replace_item('default:' .. mineral .. '_lump', 'minerals:' .. mineral .. '_lump')
	end
	
	-- Gems
	replace_item('default:diamond', 'minerals:gem_diamond')
	replace_item('default:mese_crystal', 'minerals:gem_mese')
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
