--[[
Blocks from ores and minerals and whatnot

Format:

Block Def

Craft to block

Craft from block (if applicable)

]]--

--Bismuth
minetest.register_node("xote:bismuth_block", {
		tiles = {"xote_bismuth_block.png"},
		description = "Bismuth Block",
		groups = {cracky=2},
})

minetest.register_craft({
		type = "shapeless",
		output = 'xote:bismuth_block',
		recipe = {'xote:bismuth_lump', 'xote:bismuth_lump', 'xote:bismuth_lump', 'xote:bismuth_lump', 'xote:bismuth_lump', 'xote:bismuth_lump', 'xote:bismuth_lump', 'xote:bismuth_lump', 'xote:bismuth_lump'},
})

--Tungsten
minetest.register_node("xote:tungsten_block", {
		tiles = {"xote_tungsten_block.png"},
		description = "Tungsten Block",
		groups = {cracky=1},
})

minetest.register_craft({
		type = "shapeless",
		output = 'xote:tungsten_block',
		recipe = {'xote:tungsten_ingot', 'xote:tungsten_ingot', 'xote:tungsten_ingot', 'xote:tungsten_ingot', 'xote:tungsten_ingot', 'xote:tungsten_ingot', 'xote:tungsten_ingot', 'xote:tungsten_ingot', 'xote:tungsten_ingot'},
})

minetest.register_craft({
		type = "shapeless",
		output = 'xote:tungsten_ingot 9',
		recipe = {'xote:tungsten_block'},
})

