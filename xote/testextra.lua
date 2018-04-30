--[[
Testextra is the original version of the mod
]]--
--Sugar
--[[
minetest.register_craftitem("xote:sugar", {
		description = "Sugar",
		inventory_image = "xote_sugar.png"
		})
		
minetest.register_craft({
		type = "shapeless",
		output = 'xote:sugar 1',
		recipe = {"default:papyrus"}
})
--Apple Pie
minetest.register_craftitem("xote:apple_pie", {
		description = "Apple Pie",
		inventory_image = "xote_apple_pie.png",
		on_use = minetest.item_eat(10)
})

minetest.register_craft({
		output = 'xote:apple_pie 1',
		recipe = {
				{'farming:wheat', 'farming:wheat', 'farming:wheat'},
				{'xote:sugar', 'default:apple', 'xote:sugar'},
				{'farming:wheat', 'farming:wheat', 'farming:wheat'},
		}
})
--]]
--Ramie Thread
minetest.register_craftitem("xote:ramie_thread", {
		description = "Ramie Thread",
		inventory_image = "xote_ramie_thread.png",
})

minetest.register_craft({
		type = "shapeless",
		output = 'xote:ramie_thread 1',
		recipe = {"default:grass_1", "default:grass_1", "default:grass_1", "default:grass_1"}
})

--Ramie Wool
minetest.register_node("xote:ramie_wool", {
		tiles = {"xote_ramie_wool.png"},
		groups = {oddly_breakable_by_hand=2},
		description = "Ramie Wool",
})

minetest.register_craft({
		type = "shapeless",
		output = 'xote:ramie_wool 1',
		recipe = {"xote:ramie_thread", "xote:ramie_thread", "xote:ramie_thread", "xote:ramie_thread", "xote:ramie_thread", "xote:ramie_thread", "xote:ramie_thread", "xote:ramie_thread", "xote:ramie_thread"}
})

--New Bed Recipe (soon be new bed)
minetest.register_craft({
		output = 'beds:bed_bottom 1',
		recipe = {
			{'', '', ''},
			{'xote:ramie_wool', 'xote:ramie_wool', 'xote:ramie_wool'},
			{'group:wood', 'group:wood', 'groupdefault:wood'},
		}
})
--[[
--Trail Mix
minetest.register_craftitem("xote:trail_mix", {
		description = "Trail Mix",
		inventory_image = "xote_trail_mix.png",
		on_use = minetest.item_eat(3)
})

minetest.register_craft({
		type = "shapeless",
		output = 'xote:trail_mix',
		recipe = {"xote:sugar", "xote:seed_teosinte", "farming:seed_wheat"}
})
]]--
--Tile
minetest.register_craftitem("xote:tile", {
		description = "Tile",
		inventory_image = "xote_tile.png",
})

minetest.register_craft({
		output = 'xote:tile 3',
		recipe = {
			{'', '', ''},
			{'', '', ''},
			{'default:clay_lump', 'default:clay_lump', 'default:clay_lump'},
		}
})

--Plain Tile Block
minetest.register_node("xote:tile_floor", {
			tiles = {"xote_tile_floor.png"},
			groups = {cracky = 3},
			description = "Tile Floor",
})

minetest.register_craft({
		output = 'xote:tile_floor 1',
		recipe = {
			{'', '', ''},
			{'', 'xote:tile', 'xote:tile'},
			{'', 'xote:tile', 'xote:tile'},
		}
})

--Purple Tile Floor
minetest.register_node("xote:tile_floor_purple", {
			tiles = {"xote_tile_floor_purple.png"},
			groups = {cracky = 3},
			description = "Purple Tile Floor",
})

minetest.register_craft({
		output = 'xote:tile_floor_purple 1',
		recipe = {
			{'', '', ''},
			{'', 'xote:tile', 'xote:tile'},
			{'dye:violet', 'xote:tile', 'xote:tile'},
		}
})

--Green Tile Floor
minetest.register_node("xote:tile_floor_green", {
			tiles = {"xote_tile_floor_green.png"},
			groups = {cracky = 3},
			description = "Green Tile Floor",
})

minetest.register_craft({
		output = 'xote:tile_floor_green 1',
		recipe = {
			{'', '', ''},
			{'', 'xote:tile', 'xote:tile'},
			{'dye:green', 'xote:tile', 'xote:tile'},
		}
})

--White Tile Floor
minetest.register_node("xote:tile_floor_white", {
			tiles = {"xote_tile_floor_white.png"},
			groups = {cracky = 3},
			description = "White Tile Floor",
})

minetest.register_craft({
		output = 'xote:tile_floor_white 1',
		recipe = {
			{'', '', ''},
			{'', 'xote:tile', 'xote:tile'},
			{'dye:white', 'xote:tile', 'xote:tile'},
		}
})

--Grey Tile Floor
minetest.register_node("xote:tile_floor_grey", {
			tiles = {"xote_tile_floor_grey.png"},
			groups = {cracky = 3},
			description = "Grey Tile Floor",
})

minetest.register_craft({
		output = 'xote:tile_floor_grey 1',
		recipe = {
			{'', '', ''},
			{'', 'xote:tile', 'xote:tile'},
			{'dye:grey', 'xote:tile', 'xote:tile'},
		}
})

-- Dark Grey Tile Floor
minetest.register_node("xote:tile_floor_dark_grey", {
			tiles = {"xote_tile_floor_dark_grey.png"},
			groups = {cracky = 3},
			description = "Dark Grey Tile Floor",
})

minetest.register_craft({
		output = 'xote:tile_floor_dark_grey 1',
		recipe = {
			{'', '', ''},
			{'', 'xote:tile', 'xote:tile'},
			{'dye:dark_grey', 'xote:tile', 'xote:tile'},
		}
})

--Black Tile Floor
minetest.register_node("xote:tile_floor_black", {
			tiles = {"xote_tile_floor_black.png"},
			groups = {cracky = 3},
			description = "Black Tile Floor",
})

minetest.register_craft({
		output = 'xote:tile_floor_black 1',
		recipe = {
			{'', '', ''},
			{'', 'xote:tile', 'xote:tile'},
			{'dye:black', 'xote:tile', 'xote:tile'},
		}
})

--Blue Tile Floor
minetest.register_node("xote:tile_floor_blue", {
			tiles = {"xote_tile_floor_blue.png"},
			groups = {cracky = 3},
			description = "Blue Tile Floor",
})

minetest.register_craft({
		output = 'xote:tile_floor_blue 1',
		recipe = {
			{'', '', ''},
			{'', 'xote:tile', 'xote:tile'},
			{'dye:blue', 'xote:tile', 'xote:tile'},
		}
})

--Cyan Tile Floor
minetest.register_node("xote:tile_floor_cyan", {
			tiles = {"xote_tile_floor_cyan.png"},
			groups = {cracky = 3},
	
		description = "Cyan Tile Floor",
})

minetest.register_craft({
		output = 'xote:tile_floor_cyan 1',
		recipe = {
			{'', '', ''},
			{'', 'xote:tile', 'xote:tile'},
			{'dye:cyan', 'xote:tile', 'xote:tile'},
		}
})

-- Dark Green Tile Floor
minetest.register_node("xote:tile_floor_dark_green", {
			tiles = {"xote_tile_floor_dark_green.png"},
			groups = {cracky = 3},
			description = "Dark Green Tile Floor",
})

minetest.register_craft({
		output = 'xote:tile_floor_dark_green 1',
		recipe = {
			{'', '', ''},
			{'', 'xote:tile', 'xote:tile'},
			{'dye:dark_green', 'xote:tile', 'xote:tile'},
		}
})

--Yellow Tile Floor
minetest.register_node("xote:tile_floor_yellow", {
			tiles = {"xote_tile_floor_yellow.png"},
			groups = {cracky = 3},
			description = "Yellow Tile Floor",
})

minetest.register_craft({
		output = 'xote:tile_floor_yellow 1',
		recipe = {
			{'', '', ''},
			{'', 'xote:tile', 'xote:tile'},
			{'dye:yellow', 'xote:tile', 'xote:tile'},
		}
})

--Orange Tile Floor
minetest.register_node("xote:tile_floor_orange", {
			tiles = {"xote_tile_floor_orange.png"},
			groups = {cracky = 3},
			description = "Orange Tile Floor",
})

minetest.register_craft({
		output = 'xote:tile_floor_orange 1',
		recipe = {
			{'', '', ''},
			{'', 'xote:tile', 'xote:tile'},
			{'dye:orange', 'xote:tile', 'xote:tile'},
		}
})

--Brown Tile Floor
minetest.register_node("xote:tile_floor_brown", {
			tiles = {"xote_tile_floor_brown.png"},
			groups = {cracky = 3},
			description = "Brown Tile Floor",
})

minetest.register_craft({
		output = 'xote:tile_floor_brown 1',
		recipe = {
			{'', '', ''},
			{'', 'xote:tile', 'xote:tile'},
			{'dye:brown', 'xote:tile', 'xote:tile'},
		}
})

--Red Tile Floor
minetest.register_node("xote:tile_floor_red", {
			tiles = {"xote_tile_floor_red.png"},
			groups = {cracky = 3},
			description = "Red Tile Floor",
})

minetest.register_craft({
		output = 'xote:tile_floor_red 1',
		recipe = {
			{'', '', ''},
			{'', 'xote:tile', 'xote:tile'},
			{'dye:red', 'xote:tile', 'xote:tile'},
		}
})

--Pink Tile Floor
minetest.register_node("xote:tile_floor_pink", {
			tiles = {"xote_tile_floor_pink.png"},
			groups = {cracky = 3},
			description = "Pink Tile Floor",
})

minetest.register_craft({
		output = 'xote:tile_floor_pink 1',
		recipe = {
			{'', '', ''},
			{'', 'xote:tile', 'xote:tile'},
			{'dye:pink', 'xote:tile', 'xote:tile'},
		}
})

--Magenta Tile Floor
minetest.register_node("xote:tile_floor_magenta", {
			tiles = {"xote_tile_floor_magenta.png"},
			groups = {cracky = 3},
			description = "Magenta Tile Floor",
})

minetest.register_craft({
		output = 'xote:tile_floor_magenta 1',
		recipe = {
			{'', '', ''},
			{'', 'xote:tile', 'xote:tile'},
			{'dye:magenta', 'xote:tile', 'xote:tile'},
		}
})

--Light Blue Tile
minetest.register_node("xote:tile_floor_light_blue", {
			tiles = {"xote_tile_floor_light_blue.png"},
			groups = {cracky = 3},
			description = "Light Blue Tile Floor",
})

minetest.register_craft({
		output = 'xote:tile_floor_light_blue 1',
		recipe = {
			{'', '', ''},
			{'', 'xote:tile', 'xote:tile'},
			{'xote:light_blue_dye', 'xote:tile', 'xote:tile'},
		}
})

--Light Blue Dye
minetest.register_craftitem("xote:light_blue_dye", {
		description = "Light Blue Dye",
		inventory_image = "xote_light_blue_dye.png",
})

minetest.register_craft({
		type = "shapeless",
		output = 'xote:light_blue_dye 2',
		recipe = {'dye:blue', 'dye:white'}
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

--Uranium Ingot
minetest.register_craftitem("xote:uranium_ingot", {
		description = "Uranium Ingot",
		inventory_image = "xote_uranium_ingot.png",
})

minetest.register_craft({
		type = "cooking",
		recipe = "xote:pitchblende_ore",
		output = "xote:uranium_ingot",
})

--Lead Ingot
minetest.register_craftitem("xote:lead_ingot", {
		description = "Lead Ingot",
		inventory_image = "xote_lead_ingot.png",
})

minetest.register_craft({
		type = "cooking",
		recipe = "xote:galena_ore",
		output = "xote:lead_ingot",
})

--Lead Block
minetest.register_node("xote:lead_block", {
		tiles = {"xote_lead_block.png"},
		description = "Lead Block",
		groups = {cracky = 2},
})

minetest.register_craft({
		type = "shapeless",
		output = 'xote:lead_block',
		recipe = {'xote:lead_ingot', 'xote:lead_ingot', 'xote:lead_ingot', 'xote:lead_ingot', 'xote:lead_ingot', 'xote:lead_ingot', 'xote:lead_ingot', 'xote:lead_ingot', 'xote:lead_ingot'}
})

minetest.register_craft({
		type = "shapeless",
		output = 'xote:lead_ingot 9',
		recipe = {'xote:lead_block'}
})

--Uranium Block
minetest.register_node("xote:uranium_block", {
		tiles = {"xote_uranium_block.png"},
		description = "Uranium Block",
		groups = {cracky = 1},
		light_source = 5,
})

minetest.register_craft({
		type = "shapeless",
		output = 'xote:uranium_block',
		recipe = {'xote:uranium_ingot', 'xote:uranium_ingot', 'xote:uranium_ingot', 'xote:uranium_ingot', 'xote:uranium_ingot', 'xote:uranium_ingot', 'xote:uranium_ingot', 'xote:uranium_ingot', 'xote:uranium_ingot'},
})
		
minetest.register_craft({
		type = "shapeless",
		output = 'xote:uranium_ingot 9',
		recipe = {'xote:uranium_block'}
})
--Zinc
minetest.register_craftitem("xote:zinc_ingot", {
		description = "Zinc Ingot",
		inventory_image = "xote_zinc_ingot.png",
})

minetest.register_craft({
		type = "cooking",
		recipe = "xote:sphalerite_ore",
		output = "xote:zinc_ingot",
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

minetest.register_craft({
		type = "shapeless",
		recipe = {"xote:zinc_ingot", "default:copper_ingot"},
		output = 'default:bronze_ingot 2',
})

--Uranium Glass
minetest.register_node("xote:uranium_glass", {
		description = "Uranium Glass",
		tiles = {"xote_uranium_glass.png"},
		groups = {oddly_breakable_by_hand = 1},
		light_source = 5,
		drawtype = "glasslike",
})

minetest.register_craft({
		type = "shapeless",
		recipe = {"default:glass", "default:glass", "default:glass", "xote:uranium_ingot"},
		output = "xote:uranium_glass 3",
})

--Leaded Glass
minetest.register_node("xote:lead_glass", {
		description = "Leaded Glass",
		tiles = {"xote_lead_glass.png"},
		groups = {crumbly = 4, cracky = 1, snappy = 4, choppy = 4, explody = 4, oddly_breakable_by_hand = 4},
		drawtype = "glasslike",
})

minetest.register_craft({
		type = "shapeless",
		recipe = {"default:glass", "default:glass", "default:glass", "xote:lead_ingot"},
		output = "xote:lead_glass 3",
})

--Zirconium
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

minetest.register_craft({
		type = "cooking",
		recipe = "xote:zircon_ore",
		output = "xote:zirconium_ingot",
})

--Zirconium
minetest.register_craftitem("xote:zirconium_ingot", {
		description = "Zirconium Ingot",
		inventory_image = "xote_zirconium_ingot.png",
})

minetest.register_node("xote:zirconium_block", {
		tiles = {"xote_zirconium_block.png"},
		description = "Zirconium Block",
		groups = {cracky = 1},
})

minetest.register_craft({
		type = "shapeless",
		output = 'xote:zirconium_block',
		recipe = {'xote:zirconium_ingot', 'xote:zirconium_ingot', 'xote:zirconium_ingot', 'xote:zirconium_ingot', 'xote:zirconium_ingot', 'xote:zirconium_ingot', 'xote:zirconium_ingot', 'xote:zirconium_ingot', 'xote:zirconium_ingot'},
})
		
minetest.register_craft({
		type = "shapeless",
		output = 'xote:zirconium_ingot 9',
		recipe = {'xote:zirconium_block'}
})

--Cubic Zirconia
minetest.register_craftitem("xote:cubic_zirconia", {
		description = "Cubic Zirconia",
		inventory_image = "default_diamond.png",
})

minetest.register_craft({
		type = "cooking",
		recipe = "xote:zirconium_ingot",
		output = "xote:cubic_zirconia",
})

--Zinc Block
minetest.register_node("xote:zinc_block", {
		tiles = {"xote_zinc_block.png"},
		description = "Zinc Block",
		groups = {cracky = 1},
})

minetest.register_craft({
		type = "shapeless",
		output = 'xote:zinc_block',
		recipe = {'xote:zinc_ingot', 'xote:zinc_ingot', 'xote:zinc_ingot', 'xote:zinc_ingot', 'xote:zinc_ingot', 'xote:zinc_ingot', 'xote:zinc_ingot', 'xote:zinc_ingot', 'xote:zinc_ingot'},
})
		
minetest.register_craft({
		type = "shapeless",
		output = 'xote:zinc_ingot 9',
		recipe = {'xote:zinc_block'}
})

--Concrete
minetest.register_node("xote:concrete", {
		tiles = {"xote_concrete.png"},
		description = "Concrete",
		groups = {cracky = 3},
})

minetest.register_craft({
		type = "shapeless",
		recipe = {"default:sand", "default:sand", "default:sand", "default:gravel", "default:gravel"},
		output = 'xote:concrete 5', 
})

--Nuclear battery
minetest.register_craftitem("xote:nuclear_battery", {
		description = "Nuclear Battery",
		inventory_image = "xote_nuclear_battery.png",
})

minetest.register_craft({
    type = "fuel",
    recipe = "xote:nuclear_battery",
    burntime = 600,
})

minetest.register_craft({
		output = 'xote:nuclear_battery 1',
		recipe = {
				{'xote:lead_ingot', 'xote:uranium_ingot', 'xote:lead_ingot'},
				{'xote:uranium_ingot', 'bucket:bucket_water', 'xote:uranium_ingot'},
				{'xote:lead_ingot', 'xote:uranium_ingot', 'xote:lead_ingot'},
		},
		replacements = {{ 'bucket:bucket_water', 'bucket:bucket_empty' }}
})

minetest.register_craft({
		output = 'xote:nuclear_battery 1',
		recipe = {
				{'xote:lead_ingot', 'xote:uranium_ingot', 'xote:lead_ingot'},
				{'xote:uranium_ingot', 'bucket:bucket_river_water', 'xote:uranium_ingot'},
				{'xote:lead_ingot', 'xote:uranium_ingot', 'xote:lead_ingot'},
		}
})

--truffle
--[[
minetest.register_node("xote:truffle_ore", {
		tiles = {"default_dirt.png^xote_truffle_ore.png"},
		description = "Truffle Dirt",
		groups = {crumbly = 3},
		drop = "xote:truffle"
})

minetest.register_ore({
		ore_type = "scatter",
		ore = "xote:truffle_ore",
		wherein = "default:dirt",
		clust_scarcity = 20 * 20 * 20,
		clust_num_ores = 20,
		clust_size = 10,
		y_min = -10,
		y_max = 31000,
})

minetest.register_craftitem("xote:truffle", {
		description = "Truffle",
		inventory_image = "xote_truffle.png",
		on_use = minetest.item_eat(3)
})
]]--
