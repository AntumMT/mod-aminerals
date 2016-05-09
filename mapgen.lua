local ores_datas = {
	{"bedrock", "default:stone", 1*1*1, 5, 2, -30912, -30896},
	{"golden_apple", "default:apple", 6*6*6, 2, 2, 4, 64},
	{"stone_with_emerald", "default:stone", 28*28*28, 2, 3, -30896, -1024},
	{"stone_with_glowstone_dust", "default:stone", 24*24*24, 2, 3, -30896, -512}
}

for _, o in pairs(ores_datas) do
	minetest.register_ore({
		ore_type = "scatter",
		ore = "oresplus:"..o[1],
		wherein = o[2],
		clust_scarcity = o[3],
		clust_num_ores = o[4],
		clust_size = o[5],
		y_min = o[6],
		y_max = o[7]
	})
end
