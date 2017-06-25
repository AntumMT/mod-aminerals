--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


local exists_default = aminerals.mod_exists('default')


-- *** INGOTS ***

local ingots = {
	'bronze',
	'copper',
	'gold',
	'iron',
	'tin',
}

for index, ingot in ipairs(ingots) do
	if aminerals.enabled(ingot) then
		aminerals.register_ingot(ingot, {})
		
		if aminerals.override_others then
			local fullname = aminerals.modname .. ':' .. ingot .. '_ingot'
			
			if exists_default then
				-- 'default:iron_ingot' is not a registered item
				if ingot == 'iron' then
					ingot = 'steel'
				end
				
				-- 'default' uses naming convention 'default:<ingot>_ingot'
				aminerals.override('default:' .. ingot .. '_ingot', fullname)
			end
		end
	end
end


-- *** BRICKS ***

local bricks = {
	'clay',
}

for index, brick in ipairs(bricks) do
	aminerals.register(brick, {
		description = aminerals.titleize(brick) .. ' Brick',
		suffix = '_brick',
		inventory_image = aminerals.get_texture(brick, 'brick'),
	})
	
	aminerals.override_type(brick, 'default', 'brick')
end
