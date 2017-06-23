--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


--[[ ORES

minerals:
  - minerals:coal
  - minerals:copper
  - minerals:diamond
  - minerals:gold
  - minerals:iron
  - minerals:mese
  - minerals:tin

]]


-- Coal
minerals.register_mineral('minerals:raw_coal', {
	description = 'Coal Ore',
	tiles = {'default_stone.png^minerals_raw_coal.png'},
	groups = {cracky = 3},
	drop = 'minerals:coal_lump',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_alias('minerals:coal', 'minerals:raw_coal')

-- Copper
minerals.register_mineral('minerals:raw_copper', {
	description = 'Copper Ore',
	tiles = {'default_stone.png^minerals_raw_copper.png'},
	groups = {cracky = 2},
	drop = 'minerals:copper_lump',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_alias('minerals:copper', 'minerals:raw_copper')

-- Diamond
minerals.register_mineral('minerals:raw_diamond', {
	description = 'Diamond Ore',
	tiles = {'default_stone.png^minerals_raw_diamond.png'},
	groups = {cracky = 1},
	drop = 'minerals:diamond',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_alias('minerals:diamond', 'minerals:raw_diamond')

-- Gold
minerals.register_mineral('minerals:raw_gold', {
	description = 'Gold Ore',
	tiles = {'default_stone.png^minerals_raw_gold.png'},
	groups = {cracky = 2},
	drop = 'minerals:gold_lump',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_alias('minerals:gold', 'minerals:raw_gold')

-- Iron
minerals.register_mineral('minerals:raw_iron', {
	description = 'Iron Ore',
	tiles = {'default_stone.png^minerals_raw_iron.png'},
	groups = {cracky = 2},
	drop = 'minerals:iron_lump',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_alias('minerals:iron', 'minerals:raw_iron')

-- Mese
minerals.register_mineral('minerals:raw_mese', {
	description = 'Mese Ore',
	tiles = {'default_stone.png^minerals_raw_mese.png'},
	groups = {cracky = 1},
	drop = 'minerals:mese_crystal',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_alias('minerals:mese', 'minerals:raw_mese')

-- Tin
minerals.register_mineral('minerals:raw_tin', {
	description = 'Tin Ore',
	tiles = {'default_stone.png^minerals_raw_tin.png'},
	groups = {cracky = 2},
	drop = 'minerals:tin_lump',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_alias('minerals:tin', 'minerals:raw_tin')
