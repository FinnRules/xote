--ores

--Galena Ore
minetest.register_node("xote:galena_ore", {
		tiles = {"default_stone.png^xote_galena_ore.png"},
		description = "Galena Ore",
		groups = {cracky = 2},
})

minetest.register_ore({
		ore_type = "scatter",
		ore = "xote:galena_ore",
		wherein = "default:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 10,
		clust_size = 3,
		y_min = -31000,
		y_max = -50,
})

--Pitchblende Ore
minetest.register_node("xote:pitchblende_ore", {
		tiles = {"default_stone.png^xote_pitchblende_ore.png"},
		description = "Pitchblende Ore",
		groups = {cracky = 3},
})

minetest.register_ore({
		ore_type = "scatter",
		ore = "xote:pitchblende_ore",
		wherein = "default:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 10,
		clust_size = 3,
		y_min = -31000,
		y_max = -100,
})

--Sphalerite Ore
minetest.register_node("xote:sphalerite_ore", {
		tiles = {"default_stone.png^xote_sphalerite_ore.png"},
		description = "Sphalerite Ore",
		groups = {cracky = 2},
})

minetest.register_ore({
		ore_type = "scatter",
		ore = "xote:sphalerite_ore",
		wherein = "default:stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 5,
		clust_size = 3,
		y_min = -31000,
		y_max = -50,
})

minetest.register_node("xote:zircon_ore", {
		tiles = {"default_stone.png^xote_zircon_ore.png"},
		description = "Zircon Ore",
		groups = {cracky = 1},
})

minetest.register_ore({
		ore_type = "scatter",
		ore = "xote:zircon_ore",
		wherein = "default:stone",
		clust_scarcity = 12 * 11 * 12,
		clust_num_ores = 7,
		clust_size = 3,
		y_min = -31000,
		y_max = -150,
})
