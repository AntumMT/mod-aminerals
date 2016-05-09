ARMOR_MATERIALS.emerald = "oresplus:emerald"

if ARMOR_MATERIALS.emerald then
	minetest.register_tool(":3d_armor:helmet_emerald", {
		description = "Emerald Helmet",
		inventory_image = "3d_armor_inv_helmet_emerald.png",
		groups = {armor_head=18, armor_heal=15, armor_use=170, armor_fire=0.7},
		wear = 0,
	})
	minetest.register_tool(":3d_armor:chestplate_emerald", {
		description = "Emerald Chestplate",
		inventory_image = "3d_armor_inv_chestplate_emerald.png",
		groups = {armor_torso=29, armor_heal=17, armor_use=170, armor_fire=0.6},
		wear = 0,
	})
	minetest.register_tool(":3d_armor:leggings_emerald", {
		description = "Emerald Leggings",
		inventory_image = "3d_armor_inv_leggings_emerald.png",
		groups = {armor_legs=28, armor_heal=15, armor_use=160, armor_fire=0.7},
		wear = 0,
	})
	minetest.register_tool(":3d_armor:boots_emerald", {
		description = "Emerald Boots",
		inventory_image = "3d_armor_inv_boots_emerald.png",
		groups = {armor_feet=20, armor_heal=16, armor_use=170, armor_fire=0.8},
		wear = 0,
	})
	minetest.register_tool(":shields:shield_emerald", {
		description = "Emerald Shield",
		inventory_image = "shields_inv_shield_emerald.png",
		groups = {armor_shield=15, armor_heal=12, armor_use=50},
		wear = 0,
	})
end
