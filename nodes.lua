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


local ores = {
	{'clay', },
	{'coal', {cracky=3}},
	{'copper', {cracky=2}},
	{'gold', {cracky=2}},
	{'iron', {cracky=2}},
	{'tin', {cracky=2}},
}

for index, mineral in ipairs(ores) do
	local ore = minerals[1]
	local groups = minerals[2]
	
	if minerals.enabled(ore) then
		minerals.register_mineral(ore, {
			groups = groups,
		})
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
	local gem = minerals[1]
	local groups = minerals[2]
	
	if minerals.enabled(gem) then
		minerals.register_mineral(gem, {
			groups = groups,
			suffix = '_gem',
		})
	end
end
