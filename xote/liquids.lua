--barrel
minetest.register_craft({
		output = 'xote:barrel',
		recipe = {
			{'default:steel_ingot', '', 'default:steel_ingot'},
			{'default:steel_ingot', '', 'default:steel_ingot'},
			{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		}
})
--oil barrel
minetest.register_craft({
		output = 'xote:oil_barrel',
		recipe = {
			{'xote:bucket_oil', 'xote:bucket_oil', 'xote:bucket_oil'},
			{'xote:bucket_oil', 'xote:barrel', 'xote:bucket_oil'},
			{'xote:bucket_oil', 'xote:bucket_oil', 'xote:bucket_oil'},
		},
	replacements = {{"xote:bucket_oil", "bucket:bucket_empty"}}
})
minetest.register_ore({
		ore_type = "scatter",
		ore = "xote:oil_source",
		wherein = "default:stone",
		clust_scarcity = 19 * 19 * 19,
		clust_num_ores = 3,
		clust_size = 3,
		y_min = -31000,
		y_max = -100,
})
minetest.register_node("xote:barrel_1", {
		tiles = {
			"xote_barrel_top.png",
			"xote_oil_bottom.png",
			"xote_barrel_1.png",
			"xote_barrel_1.png",
			"xote_barrel_1.png",
			"xote_barrel_1.png"
		},
		description = "Barrel 1/8 Full",
		groups = {cracky=2, not_in_creative_inventory=1},
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:barrel_1',
		recipe = {"xote:barrel", "xote:bucket_oil"},
		replacements = {{ 'xote:bucket_oil', 'bucket:bucket_empty' }}
})
--barrel 2
minetest.register_node("xote:barrel_2", {
		tiles = {
			"xote_barrel_top.png",
			"xote_oil_bottom.png",
			"xote_barrel_2.png",
			"xote_barrel_2.png",
			"xote_barrel_2.png",
			"xote_barrel_2.png"
		},
		description = "Barrel 2/8 Full",
		groups = {cracky=2, not_in_creative_inventory=1},
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:barrel_2',
		recipe = {"xote:barrel_1", "xote:bucket_oil"},
		replacements = {{ 'xote:bucket_oil', 'bucket:bucket_empty' }}
})
--barrel 3
minetest.register_node("xote:barrel_3", {
		tiles = {
			"xote_barrel_top.png",
			"xote_oil_bottom.png",
			"xote_barrel_3.png",
			"xote_barrel_3.png",
			"xote_barrel_3.png",
			"xote_barrel_3.png"
		},
		description = "Barrel 3/8 Full",
		groups = {cracky=2, not_in_creative_inventory=1},
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:barrel_3',
		recipe = {"xote:barrel_2", "xote:bucket_oil"},
		replacements = {{ 'xote:bucket_oil', 'bucket:bucket_empty' }}
})
--barrel 4
minetest.register_node("xote:barrel_4", {
		tiles = {
			"xote_barrel_top.png",
			"xote_oil_bottom.png",
			"xote_barrel_4.png",
			"xote_barrel_4.png",
			"xote_barrel_4.png",
			"xote_barrel_4.png"
		},
		description = "Barrel 4/8 Full",
		groups = {cracky=2, not_in_creative_inventory=1},
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:barrel_4',
		recipe = {"xote:barrel_3", "xote:bucket_oil"},
		replacements = {{ 'xote:bucket_oil', 'bucket:bucket_empty' }}
})
--barrel 5
minetest.register_node("xote:barrel_5", {
		tiles = {
			"xote_barrel_top.png",
			"xote_oil_bottom.png",
			"xote_barrel_5.png",
			"xote_barrel_5.png",
			"xote_barrel_5.png",
			"xote_barrel_5.png"
		},
		description = "Barrel 5/8 Full",
		groups = {cracky=2, not_in_creative_inventory=1},
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:barrel_5',
		recipe = {"xote:barrel_4", "xote:bucket_oil"},
		replacements = {{ 'xote:bucket_oil', 'bucket:bucket_empty' }}
})
--barrel 6
minetest.register_node("xote:barrel_6", {
		tiles = {
			"xote_barrel_top.png",
			"xote_oil_bottom.png",
			"xote_barrel_6.png",
			"xote_barrel_6.png",
			"xote_barrel_6.png",
			"xote_barrel_6.png"
		},
		description = "Barrel 6/8 Full",
		groups = {cracky=2, not_in_creative_inventory=1},
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:barrel_6',
		recipe = {"xote:barrel_5", "xote:bucket_oil"},
		replacements = {{ 'xote:bucket_oil', 'bucket:bucket_empty' }}
})
--barrel 7
minetest.register_node("xote:barrel_7", {
		tiles = {
			"xote_barrel_top.png",
			"xote_oil_bottom.png",
			"xote_barrel_7.png",
			"xote_barrel_7.png",
			"xote_barrel_7.png",
			"xote_barrel_7.png"
		},
		description = "Barrel 7/8 Full",
		groups = {cracky=2, not_in_creative_inventory=1},
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:barrel_7',
		recipe = {"xote:barrel_6", "xote:bucket_oil"},
		replacements = {{ 'xote:bucket_oil', 'bucket:bucket_empty' }}
})
--barrel
minetest.register_craft({
		type = "shapeless",
		output = 'xote:oil_barrel',
		recipe = {"xote:barrel_7", "xote:bucket_oil"},
		replacements = {{ 'xote:bucket_oil', 'bucket:bucket_empty' }}
})
--oil cooking
minetest.register_craft({
	type = "fuel",
	recipe = "xote:bucket_oil",
	burntime = 500,
	replacements = {{"xote:bucket_oil", "bucket:bucket_empty"}},
})
--back to bucket
minetest.register_craft({
		type = "shapeless",
		output = 'xote:bucket_oil',
		recipe = {"xote:barrel_7", "bucket:bucket_empty"},
		replacements = {{ 'xote:barrel_7', 'xote:barrel_6' }}
})
--6
minetest.register_craft({
		type = "shapeless",
		output = 'xote:bucket_oil',
		recipe = {"xote:barrel_6", "bucket:bucket_empty"},
		replacements = {{ 'xote:barrel_6', 'xote:barrel_5' }}
})
--5
minetest.register_craft({
		type = "shapeless",
		output = 'xote:bucket_oil',
		recipe = {"xote:barrel_5", "bucket:bucket_empty"},
		replacements = {{ 'xote:barrel_5', 'xote:barrel_4' }}
})
--4
minetest.register_craft({
		type = "shapeless",
		output = 'xote:bucket_oil',
		recipe = {"xote:barrel_4", "bucket:bucket_empty"},
		replacements = {{ 'xote:barrel_4', 'xote:barrel_3' }}
})
--3
minetest.register_craft({
		type = "shapeless",
		output = 'xote:bucket_oil',
		recipe = {"xote:barrel_3", "bucket:bucket_empty"},
		replacements = {{ 'xote:barrel_3', 'xote:barrel_2' }}
})
--2
minetest.register_craft({
		type = "shapeless",
		output = 'xote:bucket_oil',
		recipe = {"xote:barrel_2", "bucket:bucket_empty"},
		replacements = {{ 'xote:barrel_2', 'xote:barrel_1' }}
})
--1
minetest.register_craft({
		type = "shapeless",
		output = 'xote:bucket_oil',
		recipe = {"xote:barrel_1", "bucket:bucket_empty"},
		replacements = {{ 'xote:barrel_1', 'xote:barrel' }}
})
--full
minetest.register_craft({
		type = "shapeless",
		output = 'xote:bucket_oil',
		recipe = {"xote:oil_barrel", "bucket:bucket_empty"},
		replacements = {{ 'xote:oil_barrel', 'xote:barrel_7' }}
})
--still
minetest.register_node("xote:still", {
		tiles = {
			"xote_still_top_1.png",
			"xote_still_side.png",
			"xote_still_side.png",
			"xote_still_side.png",
			"xote_still_side.png",
			"xote_still_side.png"
		},
		description = "Still",
		groups = {cracky=2},
})
minetest.register_craft({
		output = 'xote:still',
		recipe = {
			{'default:copper_ingot', 'farming:wheat', 'default:copper_ingot'},
			{'default:copper_ingot', 'bucket:bucket_water', 'default:copper_ingot'},
			{'default:copper_ingot', 'default:copper_ingot', 'default:copper_ingot'},
		},
		replacements = {{ 'bucket:bucket_water', 'bucket:bucket_empty' }}	
})
--still2
minetest.register_node("xote:still_2", {
		tiles = {
			"xote_still_top_2.png",
			"xote_still_side.png",
			"xote_still_side.png",
			"xote_still_side.png",
			"xote_still_side.png",
			"xote_still_side.png"
		},
		description = "Still (2/4 done)",
		groups = {cracky=2, not_in_creative_inventory=1},
})
--still3
minetest.register_node("xote:still_3", {
		tiles = {
			"xote_still_top_3.png",
			"xote_still_side.png",
			"xote_still_side.png",
			"xote_still_side.png",
			"xote_still_side.png",
			"xote_still_side.png"
		},
		description = "Still (3/4 done)",
		groups = {cracky=2, not_in_creative_inventory=1},
})
--still4
minetest.register_node("xote:still_4", {
		tiles = {
			"xote_still_top_4.png",
			"xote_still_side.png",
			"xote_still_side.png",
			"xote_still_side.png",
			"xote_still_side.png",
			"xote_still_side.png"
		},
		description = "Still (Complete)",
		groups = {cracky=2, not_in_creative_inventory=1},
})
--abm
minetest.register_abm({
    nodenames = {"xote:still"},
    interval = 300.0, -- Run every 10 mins
    chance = 1, -- Select every 1 in 1 nodes
    action = function(pos, node, active_object_count, active_object_count_wider)
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "xote:still_2"})
    end
})
minetest.register_abm({
    nodenames = {"xote:still_2"},
    interval = 600.0, -- Run every 10 mins
    chance = 1, -- Select every 1 in 1 nodes
    action = function(pos, node, active_object_count, active_object_count_wider)
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "xote:still_3"})
    end
})
minetest.register_abm({
    nodenames = {"xote:still_3"},
    interval = 900.0, -- Run every 10 mins
    chance = 1, -- Select every 1 in 1 nodes
    action = function(pos, node, active_object_count, active_object_count_wider)
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "xote:still_4"})
    end
})

--booze
minetest.register_node("xote:beer", {
	description = "Bottle of Beer",
	drawtype = "plantlike",
	tiles = {"xote_beer.png"},
	inventory_image = "xote_beer.png",
	wield_image = "xote_beer.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
	on_use = minetest.item_eat(5,"vessels:glass_bottle")
})
minetest.register_node("xote:vodka", {
	description = "Bottle of Vodka",
	drawtype = "plantlike",
	tiles = {"xote_vodka.png"},
	inventory_image = "xote_vodka.png",
	wield_image = "xote_vodka.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
	on_use = minetest.item_eat(5,"vessels:glass_bottle")
})
minetest.register_node("xote:apple_cider", {
	description = "Bottle of Apple Cider",
	drawtype = "plantlike",
	tiles = {"xote_apple_cider.png"},
	inventory_image = "xote_apple_cider.png",
	wield_image = "xote_apple_cider.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
	on_use = minetest.item_eat(4,"vessels:glass_bottle")
})
minetest.register_node("xote:apple_cider_glass", {
	description = "Glass of Apple Cider",
	drawtype = "plantlike",
	tiles = {"xote_apple_cider_glass.png"},
	inventory_image = "xote_apple_cider_glass.png",
	wield_image = "xote_apple_cider_glass.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
	on_use = minetest.item_eat(2,"vessels:drinking_glass")
})
minetest.register_node("xote:vodka_glass", {
	description = "Glass of Vodka",
	drawtype = "plantlike",
	tiles = {"xote_vodka_glass.png"},
	inventory_image = "xote_vodka_glass.png",
	wield_image = "xote_vodka_glass.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
	on_use = minetest.item_eat(2.5,"vessels:drinking_glass")
})
--end
minetest.register_craft({
		type = "shapeless",
		output = 'xote:vodka_glass 2',
		recipe = {"xote:vodka", "vessels:drinking_glass", "vessels:drinking_glass"},
		replacements = {{ 'xote:vodka', 'vessels:glass_bottle'}}
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:beer 8',
		recipe = {"xote:still_2", "vessels:glass_bottle", "vessels:glass_bottle", "vessels:glass_bottle", "vessels:glass_bottle", "vessels:glass_bottle", "vessels:glass_bottle", "vessels:glass_bottle", "vessels:glass_bottle"},
		replacements = {{ 'xote:still_2', 'xote:still_empty' }}
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:apple_cider_glass 2',
		recipe = {"xote:apple_cider", "vessels:drinking_glass", "vessels:drinking_glass"},
		replacements = {{ 'xote:apple_cider', 'vessels:glass_bottle' }}
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:apple_cider',
		recipe = {"default:apple", "default:apple", "vessels:glass_bottle"}
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:vodka 8',
		recipe = {"xote:still_3", "vessels:glass_bottle", "vessels:glass_bottle", "vessels:glass_bottle", "vessels:glass_bottle", "vessels:glass_bottle", "vessels:glass_bottle", "vessels:glass_bottle", "vessels:glass_bottle"},
		replacements = {{ 'xote:still_3', 'xote:still_empty' }}
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:still',
		recipe = {"xote:still_empty", "bucket:bucket_water", "farming:wheat"},
		replacements = {{ 'bucket:bucket_water', 'bucket:bucket_empty' }}
})
--eth
minetest.register_node("xote:ethanol_source", {
    drawtype = "liquid",
    paramtype = "light",

    inventory_image = minetest.inventorycube("xote_ethanol.png"),
    -- ^ this is required to stop the inventory image from being animated

    tiles = {
        {
            name = "xote_ethanol_source_animated.png",
            animation = {
                type     = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length   = 2.0
            }
        }
    },

    special_tiles = {
        -- New-style water source material (mostly unused)
        {
            name      = "xote_ethanol_source_animated.png",
            animation = {type = "vertical_frames", aspect_w = 16,
                aspect_h = 16, length = 2.0},
            backface_culling = false,
        }
    },

    --
    -- Behavior
    --
    walkable     = false, -- The player falls through
    pointable    = false, -- The player can't highlight it
    diggable     = false, -- The player can't dig it
    buildable_to = true,  -- Nodes can be replace this node

    alpha = 175,

    --
    -- Liquid Properties
    --
    drowning = 1,
    liquidtype = "source",

    liquid_alternative_flowing = "xote:ethanol_flowing",
    -- ^ when the liquid is flowing

    liquid_alternative_source = "xote:ethanol_source",
    -- ^ when the liquid is a source

    liquid_viscosity = 4.5,
    -- ^ how fast

    liquid_range = 3,
    -- ^ how far

    post_effect_color = {a=175, r=244, g=253, b=95},
    -- ^ color of screen when the player is submerged
    groups = {not_in_creative_inventory=1},
})
minetest.register_node("xote:ethanol_flowing", {
	description = "Flowing Ethanol",
	drawtype = "flowingliquid",
	tiles = {"xote_ethanol.png"},
	special_tiles = {
		{
			name = "xote_ethanol_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "xote_ethanol_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 175,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "xote:ethanol_flowing",
	liquid_alternative_source = "xote:ethanol_source",
	liquid_viscosity = 4.5,
	post_effect_color = {a = 175, r = 244, g = 253, b = 95},
	groups = {not_in_creative_inventory=1},
})
bucket.register_liquid(
	"xote:ethanol_source",
	"xote:ethanol_flowing",
	"xote:bucket_ethanol",
	"xote_bucket_ethanol.png",
	"Ethanol Bucket"
)
minetest.register_craft({
		type = "shapeless",
		output = 'xote:bucket_ethanol',
		recipe = {"xote:still_4", "bucket:bucket_empty"},
		replacements = {{ 'xote:still_4', 'xote:still_empty' }}
})
--empty still
minetest.register_node("xote:still_empty", {
		tiles = {
			"xote_still_side.png",
			"xote_still_side.png",
			"xote_still_side.png",
			"xote_still_side.png",
			"xote_still_side.png",
			"xote_still_side.png"
		},
		description = "Empty Still)",
		groups = {cracky=2},
})
minetest.register_craft({
		output = 'xote:still_empty',
		recipe = {
			{'default:copper_ingot', '', 'default:copper_ingot'},
			{'default:copper_ingot', '', 'default:copper_ingot'},
			{'default:copper_ingot', 'default:copper_ingot', 'default:copper_ingot'},
		},
		replacements = {{ 'bucket:bucket_water', 'bucket:bucket_empty' }}	
})
--Gasoline
minetest.register_node("xote:gas_flowing", {
	description = "Flowing Gasoline",
	drawtype = "flowingliquid",
	tiles = {"xote_gas.png"},
	special_tiles = {
		{
			name = "xote_gas_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "xote_gas_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 175,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "xote:gas_flowing",
	liquid_alternative_source = "xote:gas_source",
	liquid_viscosity = 4.5,
	post_effect_color = {a = 175, r = 212, g = 206, b = 0},
	groups = {not_in_creative_inventory=1},
})
bucket.register_liquid(
	"xote:gas_source",
	"xote:gas_flowing",
	"xote:bucket_gas",
	"xote_bucket_gas.png",
	"Gasoline Bucket"
)
minetest.register_node("xote:gas_source", {
    drawtype = "liquid",
    paramtype = "light",

    inventory_image = minetest.inventorycube("xote_gas.png"),
    -- ^ this is required to stop the inventory image from being animated

    tiles = {
        {
            name = "xote_gas_source_animated.png",
            animation = {
                type     = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length   = 2.0
            }
        }
    },

    special_tiles = {
        -- New-style water source material (mostly unused)
        {
            name      = "xote_gas_source_animated.png",
            animation = {type = "vertical_frames", aspect_w = 16,
                aspect_h = 16, length = 2.0},
            backface_culling = false,
        }
    },

    --
    -- Behavior
    --
    walkable     = false, -- The player falls through
    pointable    = false, -- The player can't highlight it
    diggable     = false, -- The player can't dig it
    buildable_to = true,  -- Nodes can be replace this node

    alpha = 175,

    --
    -- Liquid Properties
    --
    drowning = 1,
    liquidtype = "source",

    liquid_alternative_flowing = "xote:gas_flowing",
    -- ^ when the liquid is flowing

    liquid_alternative_source = "xote:gas_source",
    -- ^ when the liquid is a source

    liquid_viscosity = 4.5,
    -- ^ how fast

    liquid_range = 3,
    -- ^ how far

    post_effect_color = {a=178, r=212, g=206, b=0},
    -- ^ color of screen when the player is submerged
    groups = {not_in_creative_inventory=1},
})
--Gas crafting
minetest.register_craft({
		type = "shapeless",
		output = 'xote:bucket_gas 2',
		recipe = {'xote:bucket_oil', 'xote:bucket_ethanol'},
})
--Ethanol
minetest.register_node("xote:eth_barrel", {
		tiles = {
			"xote_eth_barrel_top.png",
			"xote_eth_bottom.png",
			"xote_eth_barrel_side.png",
			"xote_eth_barrel_side.png",
			"xote_eth_barrel_side.png",
			"xote_eth_barrel_side.png"
		},
		description = "Ethanol Barrel (Complete)",
	groups = {cracky=2},
})
--oil barrel
minetest.register_craft({
		output = 'xote:eth_barrel',
		recipe = {
			{'xote:bucket_ethanol', 'xote:bucket_ethanol', 'xote:bucket_ethanol'},
			{'xote:bucket_ethanol', 'xote:barrel', 'xote:bucket_ethanol'},
			{'xote:bucket_ethanol', 'xote:bucket_ethanol', 'xote:bucket_ethanol'},
		},
	replacements = {{"xote:bucket_oil", "bucket:bucket_empty"}}
})
minetest.register_node("xote:eth_barrel_1", {
		tiles = {
			"xote_barrel_top.png",
			"xote_eth_bottom.png",
			"xote_eth_barrel_1.png",
			"xote_eth_barrel_1.png",
			"xote_eth_barrel_1.png",
			"xote_eth_barrel_1.png"
		},
		description = "Ethanol Barrel 1/8 Full",
		groups = {cracky=2, not_in_creative_inventory=1},
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:eth_barrel_1',
		recipe = {"xote:barrel", "xote:bucket_ethanol"},
		replacements = {{ 'xote:bucket_ethanol', 'bucket:bucket_empty' }}
})
--barrel 2
minetest.register_node("xote:eth_barrel_2", {
		tiles = {
			"xote_barrel_top.png",
			"xote_eth_bottom.png",
			"xote_eth_barrel_2.png",
			"xote_eth_barrel_2.png",
			"xote_eth_barrel_2.png",
			"xote_eth_barrel_2.png"
		},
		description = "Ethanol Barrel 2/8 Full",
		groups = {cracky=2, not_in_creative_inventory=1},
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:eth_barrel_2',
		recipe = {"xote:eth_barrel_1", "xote:bucket_ethanol"},
		replacements = {{ 'xote:bucket_ethanol', 'bucket:bucket_empty' }}
})
--barrel 3
minetest.register_node("xote:eth_barrel_3", {
		tiles = {
			"xote_barrel_top.png",
			"xote_eth_bottom.png",
			"xote_eth_barrel_3.png",
			"xote_eth_barrel_3.png",
			"xote_eth_barrel_3.png",
			"xote_eth_barrel_3.png"
		},
		description = "Ethanol Barrel 3/8 Full",
		groups = {cracky=2, not_in_creative_inventory=1},
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:eth_barrel_3',
		recipe = {"xote:eth_barrel_2", "xote:bucket_ethanol"},
		replacements = {{ 'xote:bucket_ethanol', 'bucket:bucket_empty' }}
})
--barrel 4
minetest.register_node("xote:eth_barrel_4", {
		tiles = {
			"xote_barrel_top.png",
			"xote_eth_bottom.png",
			"xote_eth_barrel_4.png",
			"xote_eth_barrel_4.png",
			"xote_eth_barrel_4.png",
			"xote_eth_barrel_4.png"
		},
		description = "Ethanol Barrel 4/8 Full",
		groups = {cracky=2, not_in_creative_inventory=1},
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:eth_barrel_4',
		recipe = {"xote:eth_barrel_3", "xote:bucket_ethanol"},
		replacements = {{ 'xote:bucket_ethanol', 'bucket:bucket_empty' }}
})
--barrel 5
minetest.register_node("xote:eth_barrel_5", {
		tiles = {
			"xote_barrel_top.png",
			"xote_eth_bottom.png",
			"xote_eth_barrel_5.png",
			"xote_eth_barrel_5.png",
			"xote_eth_barrel_5.png",
			"xote_eth_barrel_5.png"
		},
		description = "Ethanol Barrel 5/8 Full",
		groups = {cracky=2, not_in_creative_inventory=1},
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:eth_barrel_5',
		recipe = {"xote:eth_barrel_4", "xote:bucket_ethanol"},
		replacements = {{ 'xote:bucket_ethanol', 'bucket:bucket_empty' }}
})
--barrel 6
minetest.register_node("xote:eth_barrel_6", {
		tiles = {
			"xote_barrel_top.png",
			"xote_eth_bottom.png",
			"xote_eth_barrel_6.png",
			"xote_eth_barrel_6.png",
			"xote_eth_barrel_6.png",
			"xote_eth_barrel_6.png"
		},
		description = "Ethanol Barrel 6/8 Full",
		groups = {cracky=2, not_in_creative_inventory=1},
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:eth_barrel_6',
		recipe = {"xote:eth_barrel_5", "xote:bucket_ethanol"},
		replacements = {{ 'xote:bucket_ethanol', 'bucket:bucket_empty' }}
})
--barrel 7
minetest.register_node("xote:eth_barrel_7", {
		tiles = {
			"xote_barrel_top.png",
			"xote_eth_bottom.png",
			"xote_eth_barrel_7.png",
			"xote_eth_barrel_7.png",
			"xote_eth_barrel_7.png",
			"xote_eth_barrel_7.png"
		},
		description = "Ethanol Barrel 7/8 Full",
		groups = {cracky=2, not_in_creative_inventory=1},
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:eth_barrel_7',
		recipe = {"xote:eth_barrel_6", "xote:bucket_ethanol"},
		replacements = {{ 'xote:bucket_ethanol', 'bucket:bucket_empty' }}
})
--barrel
minetest.register_craft({
		type = "shapeless",
		output = 'xote:eth_barrel',
		recipe = {"xote:eth_barrel_7", "xote:bucket_ethanol"},
		replacements = {{ 'xote:bucket_ethanol', 'bucket:bucket_empty' }}
})
--oil cooking
minetest.register_craft({
	type = "fuel",
	recipe = "xote:bucket_ethanol",
	burntime = 300,
	replacements = {{"xote:bucket_ethanol", "bucket:bucket_empty"}},
})
--back to bucket
minetest.register_craft({
		type = "shapeless",
		output = 'xote:bucket_ethanol',
		recipe = {"xote:eth_barrel_7", "bucket:bucket_empty"},
		replacements = {{ 'xote:eth_barrel_7', 'xote:eth_barrel_6' }}
})
--6
minetest.register_craft({
		type = "shapeless",
		output = 'xote:bucket_ethanol',
		recipe = {"xote:eth_barrel_6", "bucket:bucket_empty"},
		replacements = {{ 'xote:eth_barrel_6', 'xote:eth_barrel_5' }}
})
--5
minetest.register_craft({
		type = "shapeless",
		output = 'xote:bucket_ethanol',
		recipe = {"xote:eth_barrel_5", "bucket:bucket_empty"},
		replacements = {{ 'xote:eth_barrel_5', 'xote:eth_barrel_4' }}
})
--4
minetest.register_craft({
		type = "shapeless",
		output = 'xote:bucket_ethanol',
		recipe = {"xote:eth_barrel_4", "bucket:bucket_empty"},
		replacements = {{ 'xote:eth_barrel_4', 'xote:eth_barrel_3' }}
})
--3
minetest.register_craft({
		type = "shapeless",
		output = 'xote:bucket_ethanol',
		recipe = {"xote:eth_barrel_3", "bucket:bucket_empty"},
		replacements = {{ 'xote:eth_barrel_3', 'xote:eth_barrel_2' }}
})
--2
minetest.register_craft({
		type = "shapeless",
		output = 'xote:bucket_ethanol',
		recipe = {"xote:eth_barrel_2", "bucket:bucket_empty"},
		replacements = {{ 'xote:eth_barrel_2', 'xote:eth_barrel_1' }}
})
--1
minetest.register_craft({
		type = "shapeless",
		output = 'xote:bucket_ethanol',
		recipe = {"xote:eth_barrel_1", "bucket:bucket_empty"},
		replacements = {{ 'xote:eth_barrel_1', 'xote:barrel' }}
})
--full
minetest.register_craft({
		type = "shapeless",
		output = 'xote:bucket_ethanol',
		recipe = {"xote:eth_barrel", "bucket:bucket_empty"},
		replacements = {{ 'xote:eth_barrel', 'xote:eth_barrel_7' }}
})
--corn syrup
minetest.register_node("xote:corn_syrup", {
	description = "Bottle of Corn Syrup",
	drawtype = "plantlike",
	tiles = {"xote_corn_syrup.png"},
	inventory_image = "xote_corn_syrup.png",
	wield_image = "xote_corn_syrup.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults()
})
minetest.register_craft({
		type = "shapeless",
		output = 'xote:corn_syrup',
		recipe = {"xote:corn", "xote:corn", "vessels:glass_bottle"}
})
