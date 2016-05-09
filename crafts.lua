minetest.register_craft({
	output = "oresplus:emerald 9",
	recipe = {{"oresplus:emerald_block"}}
})

minetest.register_craft({
	output = "oresplus:emerald_block",
	recipe = {
		{"oresplus:emerald", "oresplus:emerald", "oresplus:emerald"},
		{"oresplus:emerald", "oresplus:emerald", "oresplus:emerald"},
		{"oresplus:emerald", "oresplus:emerald", "oresplus:emerald"}
	}
})

minetest.register_craft({
	output = "oresplus:glowstone",
	recipe = {
		{"oresplus:glowstone_dust", "oresplus:glowstone_dust"},
		{"oresplus:glowstone_dust", "oresplus:glowstone_dust"}
	}
})

minetest.register_craft({
	output = "oresplus:golden_apple",
	recipe = {
		{"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"},
		{"default:gold_ingot", "default:apple", "default:gold_ingot"},
		{"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"}
	}
})

minetest.register_craft({
	output = "oresplus:sword_emerald",
	recipe = {
		{"oresplus:emerald"},
		{"oresplus:emerald"},
		{"group:stick"},
	}
})

minetest.register_craft({
	output = "oresplus:axe_emerald",
	recipe = {
		{"oresplus:emerald", "oresplus:emerald"},
		{"group:stick", "oresplus:emerald"},
		{"group:stick", ""},
	}
})

minetest.register_craft({
	output = "oresplus:axe_emerald",
	recipe = {
		{"oresplus:emerald", "oresplus:emerald"},
		{"oresplus:emerald", "group:stick"},
		{"", "group:stick"},
	}
})

minetest.register_craft({
	output = "oresplus:shovel_emerald",
	recipe = {
		{"oresplus:emerald"},
		{"group:stick"},
		{"group:stick"},
	}
})

minetest.register_craft({
	output = "oresplus:pick_emerald",
	recipe = {
		{"oresplus:emerald", "oresplus:emerald", "oresplus:emerald"},
		{"", "group:stick", ""},
		{"", "group:stick", ""},
	}
})
