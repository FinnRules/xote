--[[
XOMinerals originally added purely decorational items to the game but now they have some use
]]--
--[[
--Lapis Lazuli
minetest.register_node("xote:lapis_ore", {
		tiles = {"default_stone.png^xote_lapis_ore.png"},
		description = "Lapis Lazuli Ore",
		groups = {cracky=3},
		drop = "xote:lapis"
})

minetest.register_ore({
		ore_type = "scatter",
		ore = "xote:lapis_ore",
		wherein = "default:stone",
		clust_scarcity = 23 * 23 * 23,
		clust_num_ores = 10,
		clust_size = 13,
		y_min = -31000,
		y_max = -230,
})

minetest.register_craftitem("xote:lapis", {
		description = "Lapis Lazuli",
		inventory_image = "xote_lapis.png"
})

--Amethyst
minetest.register_node("xote:amethyst_ore", {
		tiles = {"default_stone.png^xote_amethyst_ore.png"},
		description = "Amethyst Ore",
		groups = {cracky=2},
		drop = "xote:amethyst"
})

minetest.register_ore({
		ore_type = "scatter",
		ore = "xote:amethyst_ore",
		wherein = "default:stone",
		clust_scarcity = 20 * 20 * 20,
		clust_num_ores = 10,
		clust_size = 13,
		y_min = -31000,
		y_max = -300,
})

minetest.register_craftitem("xote:amethyst", {
		description = "Amethyst",
		inventory_image = "xote_amethyst.png"
})

--Fire Opal
minetest.register_node("xote:fireopal_ore", {
		tiles = {"default_stone.png^xote_fireopal_ore.png"},
		description = "Fire Opal Ore",
		groups = {cracky=2},
		drop = "xote:fireopal"
})

minetest.register_ore({
		ore_type = "scatter",
		ore = "xote:fireopal_ore",
		wherein = "default:stone",
		clust_scarcity = 25 * 25 * 25,
		clust_num_ores = 10,
		clust_size = 13,
		y_min = -31000,
		y_max = -300,
})

minetest.register_craftitem("xote:fireopal", {
		description = "Fire Opal",
		inventory_image = "xote_fireopal.png"
})

--Opal
minetest.register_node("xote:opal_ore", {
		tiles = {"default_stone.png^xote_opal_ore.png"},
		description = "Opal Ore",
		groups = {cracky=2},
		drop = "xote:opal"
})

minetest.register_ore({
		ore_type = "scatter",
		ore = "xote:opal_ore",
		wherein = "default:stone",
		clust_scarcity = 20 * 20 * 20,
		clust_num_ores = 5,
		clust_size = 10,
		y_min = -31000,
		y_max = -300,
})

minetest.register_craftitem("xote:opal", {
		description = "Opal",
		inventory_image = "xote_opal.png"
})
]]--

--Amethyst block
minetest.register_node("xote:lapis_block", {
		tiles = {"xote_lapis_block.png"},
		description = "Lapis Block",
		groups = {cracky = 2},
})

minetest.register_craft({
		type = "shapeless",
		recipe = {"xote:lapis", "xote:lapis", "xote:lapis", "xote:lapis", "xote:lapis", "xote:lapis", "xote:lapis", "xote:lapis", "xote:lapis"},
		output = 'xote:lapis_block', 
})

minetest.register_craft({
		type = "shapeless",
		recipe = {"xote:lapis_block"},
		output = 'xote:lapis 9', 
})

--lapis block
minetest.register_node("xote:amethyst_block", {
		tiles = {"xote_amethyst_block.png"},
		description = "Amethyst Block",
		groups = {cracky = 1},
})

minetest.register_craft({
		type = "shapeless",
		recipe = {"xote:amethyst", "xote:amethyst", "xote:amethyst", "xote:amethyst", "xote:amethyst", "xote:amethyst", "xote:amethyst", "xote:amethyst", "xote:amethyst"},
		output = 'xote:amethyst_block', 
})

minetest.register_craft({
		type = "shapeless",
		recipe = {"xote:amethyst_block"},
		output = 'xote:amethyst 9', 
})
