--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


local exists_default = minerals.mod_exists('default')



--[[ ORES

new nodes:
- minerals:coal
- minerals:copper
- minerals:gold
- minerals:iron
- minerals:tin

overrides:
- default:stone_with_coal
- default:stone_with_copper
- default:stone_with_gold
- default:stone_with_iron
- default:stone_with_tin

new items:
- minerals:coal_lump
- minerals:copper_lump
- minerals:gold_lump
- minerals:iron_lump
- minerals:tin_lump

overrides:
- default:coal_lump
- default:copper_lump
- default:gold_lump
- default:iron_lump
- default:tin_lump

]]


local ores = {
	{'coal', {cracky=3}},
	{'copper', {cracky=2}},
	{'gold', {cracky=2}},
	{'iron', {cracky=2}},
	{'tin', {cracky=2}},
}

for index, mineral in ipairs(ores) do
	local ore = mineral[1]
	local groups = mineral[2]
	
	if minerals.enabled(ore) then
		minerals.register_mineral(ore, {
			groups = groups,
			type = 'ore',
			register_drop = {
				description = minerals.titleize(ore) .. ' Lump',
				inventory_image = minerals.get_texture(ore .. '_lump'),
			}
		})
		
		if minerals.override_others then
			if exists_default then
				-- 'default' uses naming convention 'default:stone_with_<ore>'
				minerals.override('default:stone_with_' .. ore, ore)
				minerals.override_type(ore, 'default', 'lump')
			end
		end
	end
end



--[[ CLAY

new nodes:
- minerals:clay

overrides:
- default:clay

new items:
- minerals:clay_lump

overrides:
- default:clay_lump

]]

if minerals.enabled('clay') then
	minerals.register_mineral('clay', {
		description = 'Clay',
		tiles = {'minerals_clay.png'},
		groups = {crumbly=3},
		drop_count = 4,
		sounds = default.node_sound_dirt_defaults(),
		register_drop = {
			description = 'Clay Lump',
			inventory_image = minerals.get_texture('clay_lump'),
		}
	})
	
	if minerals.override_others then
		if exists_default then
			minerals.override_type('clay', 'default')
			minerals.override_type('clay_lump', 'default')
		end
	end
end



--[[ GEMS

new nodes:
- minerals:diamond
- minerals:mese

overrides:
- default:stone_with_diamond
- default:stone_with_mese

new items:
- minerals:diamond_gem
- minerals:mese_gem
- minerals:mese_fragment

FIXME: Some items are not being overridden
overrides:
- default:diamond
- default:mese_crystal
- default:mese_crystal_fragment

]]

local gems = {
	{
		'diamond', {cracky=1},
		register_drop = {
			description='Diamond',
			inventory_image=minerals.get_texture('diamond_gem'),
		}
	},
	{
		'mese', {cracky=1},
		register_drop = {
			description='Mese Crystal',
			inventory_image=minerals.get_texture('mese_gem'),
		}
	},
}

for index, mineral in ipairs(gems) do
	local gem = mineral[1]
	local groups = mineral[2]
	
	if minerals.enabled(gem) then
		minerals.register_mineral(gem, {
			groups = groups,
			type = 'gem',
			register_drop = mineral.register_drop,
		})
		
		if minerals.override_others then
			if exists_default then
				-- 'default' uses naming convention 'default:stone_with_<gem>'
				minerals.override('default:stone_with_' .. gem, gem)
			end
		end
	end
end
