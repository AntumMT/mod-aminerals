minetest.register_node("oresplus:bedrock", {
	description = "Bedrock",
	tiles = {"oresplus_bedrock.png"},
	groups = {unbreakable=1},
	sounds = default.node_sound_stone_defaults(),
	on_blast = function() end,
})

for _, n in pairs({"emerald", "glowstone_dust"}) do
	minetest.register_node("oresplus:stone_with_"..n, {
		description = string.gsub(n:gsub("^%l", string.upper), "_d", " D").." Ore",
		paramtype = "light",
		tiles = {"default_stone.png^oresplus_mineral_"..n..".png"},
		groups = {cracky=2},
		drop = "oresplus:"..n,
		sounds = default.node_sound_stone_defaults()
	})

	minetest.register_craftitem("oresplus:"..n, {
		description = string.gsub(n:gsub("^%l", string.upper), "_d", " D"),
		inventory_image = "oresplus_"..n..".png",
		wield_image = "oresplus_"..n..".png"
	})
end

for _, b in pairs({ {"emerald_block", 0}, {"glowstone", 13} }) do
	minetest.register_node("oresplus:"..b[1], {
		description = string.gsub(b[1]:gsub("^%l", string.upper), "_b", " B"),
		paramtype = "light",
		light_source = b[2],
		tiles = {"oresplus_"..b[1]..".png"},
		groups = {cracky=2},
		sounds = default.node_sound_stone_defaults()
	})
end

minetest.register_node("oresplus:golden_apple", {
	description = "Golden Apple",
	drawtype = "plantlike",
	paramtype = "light",
	tiles = {"oresplus_golden_apple.png"},
	inventory_image = "oresplus_golden_apple.png",
	wield_image = "oresplus_golden_apple.png",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.4, -0.2, 0.2, 0.1, 0.2}
	},
	groups = {fleshy=3, dig_immediate=3, flammable=1, leafdecay=3, leafdecay_drop=1},
	on_use = minetest.item_eat(20)
})

