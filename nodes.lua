--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


--[[ MINERALS

ore:
- minerals:coal
- minerals:copper
- minerals:gold
- minerals:iron
- minerals:tin

gems:
- minerals:diamond
- minerals:mese

dirt:
- minerals:clay

]]


--[[ NODES THAT DROP LUMPS

overrides:
- default:stone_with_coal
- default:stone_with_copper
- default:stone_with_gold
- default:stone_with_iron
- default:stone_with_tin

]]


-- FIXME: Use setting value like 'minerals.override_minerals'
local override = true
local exists_default = minerals.mod_exists('default')


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
		})
		
		if override then
			local fullname = minerals.modname .. ':' .. ore
			
			if exists_default then
				-- 'default' uses naming convention 'default:stone_with_<ore>'
				minerals.override('default:stone_with_' .. ore, fullname)
			end
		end
	end
end


--[[ NODES THAT DROP GEMS

overrides:
- default:stone_with_diamond
- default:stone_with_mese

]]

local gems = {
	{'diamond', {cracky=1}},
	{'mese', {cracky=1}},
}

for index, mineral in ipairs(gems) do
	local gem = mineral[1]
	local groups = mineral[2]
	
	if minerals.enabled(gem) then
		minerals.register_mineral(gem, {
			groups = groups,
			suffix = '_gem',
		})
		
		if override then
			local fullname = minerals.modname .. ':' .. gem
			
			if exists_default then
				-- 'default' uses naming convention 'default:stone_with_<gem>'
				minerals.override('default:stone_with_' .. gem, fullname)
			end
		end
	end
end


--[[ CLAY

overrides:
- 'default:clay'

]]

minerals.register_mineral('clay', {
	description = 'Clay',
	tiles = {'minerals_clay.png'},
	groups = {crumbly=3},
	drop_count = 4,
	sounds = default.node_sound_dirt_defaults(),
})

if override then
	local fullname = minerals.modname .. ':clay'
	
	if exists_default then
		minerals.override('default:clay', fullname)
	end
end
