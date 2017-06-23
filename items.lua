--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


-- *** ORE LUMPS ***

-- Coal
minetest.register_craftitem('minerals:coal_lump', {
	description = 'Coal Lump',
	inventory_image = 'minerals_coal_lump.png',
	groups = {
		coal=1,
		flammable=1,
	},
})

-- Copper
minetest.register_craftitem('minerals:copper_lump', {
	description = 'Copper Lump',
	inventory_image = 'minerals_copper_lump.png',
})

-- Gold
minetest.register_craftitem('minerals:gold_lump', {
	description = 'Gold Lump',
	inventory_image = 'minerals_gold_lump.png',
})

-- Iron
minetest.register_craftitem('minerals:iron_lump', {
	description = 'Iron Lump',
	inventory_image = 'minerals_iron_lump.png',
})

-- Tin
minetest.register_craftitem('minerals:tin_lump', {
	description = 'Tin Lump',
	inventory_image = 'minerals_tin_lump.png',
})


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
