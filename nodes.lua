--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


local exists_default = aminerals.mod_exists('default')



--[[ ORES

new nodes:
- aminerals:coal
- aminerals:copper
- aminerals:gold
- aminerals:iron
- aminerals:tin

overrides:
- default:stone_with_coal
- default:stone_with_copper
- default:stone_with_gold
- default:stone_with_iron
- default:stone_with_tin

new items:
- aminerals:coal_lump
- aminerals:copper_lump
- aminerals:gold_lump
- aminerals:iron_lump
- aminerals:tin_lump

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
	
	if aminerals.enabled(ore) then
		aminerals.register_mineral(ore, {
			groups = groups,
			type = 'ore',
			register_drop = {
				description = aminerals.titleize(ore) .. ' Lump',
				inventory_image = aminerals.get_texture(ore .. '_lump'),
			}
		})
		
		if aminerals.override_others then
			if exists_default then
				-- 'default' uses naming convention 'default:stone_with_<ore>'
				aminerals.override('default:stone_with_' .. ore, ore)
				aminerals.override_type(ore, 'default', 'lump')
			end
		end
	end
end



--[[ CLAY

new nodes:
- aminerals:clay

overrides:
- default:clay

new items:
- aminerals:clay_lump

overrides:
- default:clay_lump

]]

if aminerals.enabled('clay') then
	aminerals.register_mineral('clay', {
		description = 'Clay',
		tiles = {'minerals_clay.png'},
		groups = {crumbly=3},
		drop_count = 4,
		sounds = default.node_sound_dirt_defaults(),
		register_drop = {
			description = 'Clay Lump',
			inventory_image = aminerals.get_texture('clay_lump'),
		}
	})
	
	if aminerals.override_others then
		if exists_default then
			aminerals.override_type('clay', 'default')
			aminerals.override_type('clay_lump', 'default')
		end
	end
end



--[[ GEMS

new nodes:
- aminerals:diamond
- aminerals:mese

overrides:
- default:stone_with_diamond
- default:stone_with_mese

new items:
- aminerals:diamond_gem
- aminerals:mese_gem
- aminerals:mese_fragment

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
			inventory_image=aminerals.get_texture('diamond_gem'),
		}
	},
	{
		'mese', {cracky=1},
		register_drop = {
			description='Mese Crystal',
			inventory_image=aminerals.get_texture('mese_gem'),
		}
	},
}

for index, mineral in ipairs(gems) do
	local gem = mineral[1]
	local groups = mineral[2]
	
	if aminerals.enabled(gem) then
		aminerals.register_mineral(gem, {
			groups = groups,
			type = 'gem',
			register_drop = mineral.register_drop,
		})
		
		if aminerals.override_others then
			if exists_default then
				-- 'default' uses naming convention 'default:stone_with_<gem>'
				aminerals.override('default:stone_with_' .. gem, gem)
			end
		end
	end
end

if aminerals.enabled('mese') then
	aminerals.register('mese_fragment', {
		description = 'Mese Crystal Fragment',
		inventory_image = aminerals.get_texture('mese_fragment'),
	})
	
	if aminerals.override_others and exists_default then
		aminerals.override('default:mese_crystal_fragment', 'mese_fragment')
	end
end
