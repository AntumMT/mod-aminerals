--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


local exists_default = minerals.mod_exists('default')


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
	
	if minerals.override_others then
		if exists_default then
			minerals.override('default:coal_lump', 'minerals:coal_lump')
		end
	end
end


--[[ BASIC MINERALS

overrides:

]]

local lumps = {
	'clay',
	'copper',
	'gold',
	'iron',
	'tin',
}

for index, lump in ipairs(lumps) do
	if minerals.enabled(lump) then
		minerals.register_lump(lump, {})
		
		if minerals.override_others then
			local fullname = minerals.modname .. ':' .. lump .. '_lump'
			
			if exists_default then
				-- 'default' uses naming convention 'default:<lump>_lump'
				minerals.override('default:' .. lump .. '_lump', fullname)
			end
		end
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
		
		if minerals.override_others then
			local fullname = minerals.modname .. ':' .. ingot .. '_ingot'
			
			if exists_default then
				-- 'default:iron_ingot' is not a registered item
				if ingot == 'iron' then
					ingot = 'steel'
				end
				
				-- 'default' uses naming convention 'default:<ingot>_ingot'
				minerals.override('default:' .. ingot .. '_ingot', fullname)
			end
		end
	end
end


-- *** GEMS ***

minerals.register_gem('mese', {
	description = 'Mese Crystal',
})

minerals.register_gem('diamond', {
	description = 'Diamond',
})

if minerals.override_others and exists_default then
	minerals.override('default:mese_crystal', 'minerals:mese_gem')
	minerals.override('default:diamond', 'minerals:diamond_gem')
end


-- *** BRICKS ***

local bricks = {
	'clay',
}

for index, brick in ipairs(bricks) do
	minerals.register(brick, {
		description = minerals.titleize(brick) .. ' Brick',
		suffix = '_brick',
		inventory_image = minerals.get_texture(brick, 'brick'),
	})
	
	minerals.override_type(brick, 'default', 'brick')
end
