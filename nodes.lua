--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


--[[ ORES

default:
  - minerals:coal
  - minerals:copper
  - minerals:diamond
  - minerals:gold
  - minerals:iron
  - minerals:mese
  - minerals:tin

]]


-- Coal
minetest.register_node('minerals:coal', {
	description = 'Coal Ore',
	tiles = {'default_stone.png^minerals_coal.png'},
	groups = {cracky = 3},
	drop = 'minerals:coal_lump',
	sounds = default.node_sound_stone_defaults(),
})


-- Iron
