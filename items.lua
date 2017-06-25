--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
--]]


local exists_default = minerals.mod_exists('default')


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
