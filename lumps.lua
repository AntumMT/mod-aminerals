--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


minetest.register_craftitem('minerals:coal_lump', {
	description = 'Coal Lump',
	inventory_image = 'minerals_coal_lump.png',
	groups = {
		coal=1,
		flammable=1,
	},
})
