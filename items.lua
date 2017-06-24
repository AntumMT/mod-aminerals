--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


--[[ COAL

overrides:
- default:coal_lump

]]

if minerals.enabled('coal') then
	minerals.register_lump('coal', {
		groups = {
			coal=1,
			flammable=1,
		},
	})
end


--[[ BASIC MINERALS

overrides:

]]

local lumps = {
	'copper',
	'gold',
	'iron',
	'tin',
}

for index, lump in ipairs(lumps) do
	if minerals.enabled(lump) then
		minerals.register_lump(lump, {})
	end
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
	if minerals.enabled(ingot) then
		minerals.register_ingot(ingot, {})
	end
end


-- *** GEMS ***

minerals.register_gem('mese', {
	description = 'Mese Crystal',
})

minerals.register_gem('diamond', {
	description = 'Diamond',
})
