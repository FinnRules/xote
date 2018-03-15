--Corn (plant creation)
farming.register_plant("xote:corn", {
	description = "Corn Kernel",
	inventory_image = "xote_corn_seed.png",
	steps = 4,
	minlight = 12,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
	groups = {flammable = 4}
})
--Corn > Corn Seed
minetest.register_craft({
		type = "shapeless",
		output = 'xote:seed_corn 3',
		recipe = {"xote:corn"}
})
--Teosinte 
minetest.register_node("xote:teosinte", {
    description = "Teosinte",
    drawtype = "plantlike",
    waving = 1,
    tiles = {"xote_teosinte.png"},
    -- Use texture of a taller grass stage in inventory
    inventory_image = "xote_teosinte.png",
    wield_image = "xote_teosinte.png",
    paramtype = "light",
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
    sounds = default.node_sound_leaves_defaults(),
    selection_box = {
        type = "fixed",
        fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
    },
	drop = {
        max_items = 1,
        items = {
            {items = {'xote:seed_corn'}, rarity = 10},
            {items = {'xote:seed_teosinte'}}
        }
    }
})
--Teosinte Seed
minetest.register_craftitem("xote:seed_teosinte", {
		description = "Teosinte Seed",
		inventory_image = "xote_seed_teosinte.png",
		on_use = minetest.item_eat(1)
})
--Teosinte Spawn Code
minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		fill_ratio = 0.05,
		biomes = {"grassland", "grassland_dunes", "deciduous_forest",
			"coniferous_forest", "coniferous_forest_dunes",
			"floatland_grassland", "floatland_coniferous_forest"},
		y_min = 1,
		y_max = 31000,
		decoration = "xote:teosinte",
})
--Popcorn
minetest.register_craftitem("xote:popcorn", {
		description = "Popcorn",
		inventory_image = "xote_popcorn.png",
		on_use = minetest.item_eat(3)
})
--Popcorn Recipe
minetest.register_craft({
		type = "cooking",
		recipe = "xote:seed_corn",
		output = "xote:popcorn",
})
--Alt Popcorn Recipe
minetest.register_craft({
		type = "cooking",
		recipe = "xote:corn",
		output = "xote:popcorn 3",
})
--Popcorn Bag
minetest.register_craftitem("xote:popcorn_bag", {
		description = "Popcorn Bag",
		inventory_image = "xote_popcorn_bag.png",
		on_use = minetest.item_eat(12,"default:paper")
})
--Popcorn Bag Recipe
minetest.register_craft({
		type = "shapeless",
		output = 'xote:popcorn_bag',
		recipe = {"xote:popcorn", "xote:popcorn", "xote:popcorn", "xote:popcorn", "default:paper"},
		replacements = {{ 'xote:apple_cider', 'vessels:glass_bottle' }}
})
