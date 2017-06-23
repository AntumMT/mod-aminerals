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
minerals.register_mineral('minerals:coal', {
	description = 'Coal Ore',
	tiles = {'default_stone.png^minerals_coal.png'},
	groups = {cracky = 3},
	drop = 'minerals:coal_lump',
	sounds = default.node_sound_stone_defaults(),
})

-- Copper
minerals.register_mineral('minerals:copper', {
	description = 'Copper Ore',
	tiles = {'default_stone.png^minerals_copper.png'},
	groups = {cracky = 2},
	drop = 'minerals:copper_lump',
	sounds = default.node_sound_stone_defaults(),
})

-- Diamond
minerals.register_mineral('minerals:diamond', {
	description = 'Diamond Ore',
	tiles = {'default_stone.png^minerals_diamond.png'},
	groups = {cracky = 1},
	drop = 'minerals:diamond',
	sounds = default.node_sound_stone_defaults(),
})

-- Gold
minerals.register_mineral('minerals:gold', {
	description = 'Gold Ore',
	tiles = {'default_stone.png^minerals_gold.png'},
	groups = {cracky = 2},
	drop = 'minerals:gold_lump',
	sounds = default.node_sound_stone_defaults(),
})

-- Iron
minerals.register_mineral('minerals:iron', {
	description = 'Iron Ore',
	tiles = {'default_stone.png^minerals_iron.png'},
	groups = {cracky = 2},
	drop = 'minerals:iron_lump',
	sounds = default.node_sound_stone_defaults(),
})

-- Mese
minerals.register_mineral('minerals:mese', {
	description = 'Mese Ore',
	tiles = {'default_stone.png^minerals_mese.png'},
	groups = {cracky = 1},
	drop = 'minerals:mese_crystal',
	sounds = default.node_sound_stone_defaults(),
})

-- Tin
minerals.register_mineral('minerals:tin', {
	description = 'Tin Ore',
	tiles = {'default_stone.png^minerals_tin.png'},
	groups = {cracky = 2},
	drop = 'minerals:tin_lump',
	sounds = default.node_sound_stone_defaults(),
})
