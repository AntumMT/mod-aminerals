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

-- Override 'default' nodes
if mod_exists('default') then
end

-- Iron


-- Override 'gems' nodes
-- FIXME: 'gems_encrustable' & 'gems_tools' conflict
if mod_exits('gems') then
end


-- Override 'moreores' nodes
if mod_exists('moreores') then
end


-- Override 'ores' nodes
if mod_exists('ores') then
end


-- Override 'oresplus' nodes
if mod_exists('oresplus') then
end


-- Override 'rainbow_ore' nodes
if mod_exists('rainbow_ore') then
end


-- Override 'uranium' nodes
if mod_exists('uranium') then
end


-- Override 'xtraores' nodes
if mod_exists('xtraores') then
end
