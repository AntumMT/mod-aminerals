--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


-- *** ORE LUMPS ***

minetest.register_craftitem('minerals:coal_lump', {
	description = 'Coal Lump',
	inventory_image = 'minerals_lump_coal.png',
	groups = {
		coal=1,
		flammable=1,
	},
})

local lumps = {
	'copper',
	'gold',
	'iron',
	'tin',
}

for index, lump in ipairs(lumps) do
	local lump_name = 'minerals:lump_' .. lump
	minetest.register_craftitem(lump_name, {
		description = minerals.titleize(lump) .. ' Lump',
		inventory_image = 'minerals_lump_' .. lump .. '.png',
	})
	minetest.register_alias('minerals:' .. lump .. '_lump', lump_name)
	minetest.register_alias(lump .. '_lump', lump_name)
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
