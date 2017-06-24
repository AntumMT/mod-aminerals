--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


--[[ COAL

overrides:
- default:coal_lump

]]

if minerals.enabled('coal') then
	minerals.register_lump('coal', {
		groups = {
			coal=1,
			flammable=1,
		},
	})
end


--[[ BASIC MINERALS

overrides:

]]

local lumps = {
	'copper',
	'gold',
	'iron',
	'tin',
}

for index, lump in ipairs(lumps) do
	if minerals.enabled(lump) then
		minerals.register_lump(lump, {})
	end
end


-- *** INGOTS ***

local ingots = {
	'bronze',
	'copper',
	'gold',
	'iron',
	'tin',
}

for index, ingot in ipairs(ingots) do
	local ingot_name = 'minerals:ingot_' .. ingot
	minetest.register_craftitem(ingot_name, {
		description = minerals.titleize(ingot) .. ' Ingot',
		inventory_image = 'minerals_ingot_' .. ingot .. '.png',
	})
	minetest.register_alias('minerals:' .. ingot .. '_ingot', ingot_name)
	minetest.register_alias(ingot .. '_ingot', ingot_name)
end


-- *** GEMS ***

-- Mese
minetest.register_craftitem('minerals:gem_mese', {
	description = 'Mese Crystal',
	inventory_image = 'minerals_gem_mese.png',
})

-- Diamond
minetest.register_craftitem('minerals:gem_diamond', {
	description = 'Diamond',
	inventory_image = 'minerals_gem_diamond.png',
})
