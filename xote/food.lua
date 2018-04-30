

--Sugar
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

--truffle
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
