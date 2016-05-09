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
