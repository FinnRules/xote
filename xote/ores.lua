--[[
Consolidation of ore creation and spawning previously across many documents

Format:

Ore

Ore spawning code

Item from ore (ingot or drop)

]]--

--Galena (Lead)
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

minetest.register_craftitem("xote:lead_ingot", {
		description = "Lead Ingot",
		inventory_image = "xote_lead_ingot.png",
})

--Pitchblende (Uranium)
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

minetest.register_craftitem("xote:uranium_ingot", {
		description = "Uranium Ingot",
		inventory_image = "xote_uranium_ingot.png",
})

--Sphalerite (Zinc)
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

minetest.register_craftitem("xote:zinc_ingot", {
		description = "Zinc Ingot",
		inventory_image = "xote_zinc_ingot.png",
})

--Zircon (Zirconium)
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

minetest.register_craftitem("xote:zirconium_ingot", {
		description = "Zirconium Ingot",
		inventory_image = "xote_zirconium_ingot.png",
})

--Bismuth
minetest.register_node("xote:bismuth_ore", {
		tiles = {"default_stone.png^xote_bismuth_ore.png"},
		description = "Bismuth Ore",
		groups = {cracky=2},
		drop = "xote:bismuth_lump"
})

minetest.register_ore({
		ore_type = "scatter",
		ore = "xote:bismuth_ore",
		wherein = "default:stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 5,
		clust_size = 10,
		y_min = -31000,
		y_max = -200,
})

minetest.register_craftitem("xote:bismuth_lump", {
		description = "Bismuth Lump",
		inventory_image = "xote_bismuth_lump.png"
})

--Wolframite (Tungsten)
minetest.register_node("xote:wolframite_ore", {
		tiles = {"default_stone.png^xote_wolframite_ore.png"},
		description = "Wolframite Ore",
		groups = {cracky=1},
})

minetest.register_ore({
		ore_type = "scatter",
		ore = "xote:wolframite_ore",
		wherein = "default:stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 5,
		clust_size = 10,
		y_min = -31000,
		y_max = -500,
})

--Rutile (Titanium)
minetest.register_node("xote:rutile_ore", {
		tiles = {"default_stone.png^xote_rutile_ore.png"},
		description = "Rutile Ore",
		groups = {cracky=1},
})

minetest.register_ore({
		ore_type = "scatter",
		ore = "xote:rutile_ore",
		wherein = "default:stone",
		clust_scarcity = 12 * 12 * 13,
		clust_num_ores = 5,
		clust_size = 5,
		y_min = -31000,
		y_max = -400,
})

--Violettam
minetest.register_node("xote:violettam_ore", {
		tiles = {"default_stone.png^xote_violettam_ore.png"},
		description = "Violettam Ore",
		groups = {cracky=1},
})

minetest.register_ore({
		ore_type = "scatter",
		ore = "xote:violettam_ore",
		wherein = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 5,
		clust_size = 5,
		y_min = -31000,
		y_max = -2300,
})

--Fossil
minetest.register_node("xote:fossil", {
		tiles = {"default_stone.png^xote_fossil.png"},
		description = "Fossil",
		groups = {cracky=2},
})

minetest.register_ore({
		ore_type = "scatter",
		ore = "xote:fossil",
		wherein = "default:stone",
		clust_scarcity = 40 * 40 * 40,
		clust_num_ores = 1,
		clust_size = 1,
		y_min = -31000,
		y_max = 0,
})

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
