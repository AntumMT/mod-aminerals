local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

dofile(modpath.."/mapgen.lua")
dofile(modpath.."/nodes.lua")
dofile(modpath.."/crafts.lua")
dofile(modpath.."/tools.lua")

if minetest.get_modpath("3d_armor") then
	dofile(modpath.."/armor.lua")
end

if minetest.get_modpath("xdecor") then
	dofile(modpath.."/enchanting.lua")
end

minetest.register_alias("bedrock2:bedrock", "oresplus:bedrock")
