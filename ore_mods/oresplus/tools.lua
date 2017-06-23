minetest.register_tool("oresplus:pick_emerald", {
	description = "Emerald Pickaxe",
	inventory_image = "oresplus_tool_emeraldpick.png",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=5,
		groupcaps={
			cracky = {times={[1]=2.5, [2]=1.5, [3]=1.0}, uses=50, maxlevel=5},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_tool("oresplus:shovel_emerald", {
	description = "Emerald Shovel",
	inventory_image = "oresplus_tool_emeraldshovel.png",
	wield_image = "oresplus_tool_emeraldshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=1.90, [2]=1.00, [3]=0.50}, uses=50, maxlevel=4},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.register_tool("oresplus:axe_emerald", {
	description = "Emerald Axe",
	inventory_image = "oresplus_tool_emeraldaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=3,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.20, [3]=1.0}, uses=50, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
})

minetest.register_tool("oresplus:sword_emerald", {
	description = "Emerald Sword",
	inventory_image = "oresplus_tool_emeraldsword.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			snappy={times={[1]=2, [2]=1, [3]=0.50}, uses=80, maxlevel=5},
		},
		damage_groups = {fleshy=10},
	}
})

farming.register_hoe("oresplus:hoe_emerald", {
	description = "Emerald Hoe",
	inventory_image = "oresplus_tool_emeraldhoe.png",
	max_uses = 1000,
	material = "oresplus:emerald"
})
