--[[
xtraores was the following addition
]]--
--[[
--bismuth
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
	
--tungsten
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
minetest.register_craftitem("xote:tungsten_ingot", {
		description = "Tungsten Ingot",
		inventory_image = "xote_tungsten_ingot.png"
})

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

minetest.register_craft({
		type = "cooking",
		recipe = "xote:wolframite_ore",
		output = "xote:tungsten_ingot",
})
]]--
--Tungsten Carbide pick
minetest.register_tool("xote:tungsten_pick", {
	description = "Tungsten Carbide Pickaxe",
	inventory_image = "xote_tungsten_pick.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=25, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craftitem("xote:tungsten_carbide", {
		description = "Tungsten Carbide",
		inventory_image = "xote_tungsten_carbide.png"
})

minetest.register_craft({
		type = "shapeless",
		output = 'xote:tungsten_carbide',
		recipe = {'xote:tungsten_ingot', 'default:flint'},
})

minetest.register_craft({
		output = 'xote:tungsten_pick',
		recipe = {
				{'xote:tungsten_carbide', 'xote:tungsten_carbide', 'xote:tungsten_carbide'},
				{'', 'default:stick', ''},
				{'', 'default:stick', ''},
		}
})

--Tungsten Carbide Axe
minetest.register_tool("xote:tungsten_axe", {
	description = "Tungsten Carbide Axe",
	inventory_image = "xote_tungsten_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.30, [2]=1.20, [3]=0.80}, uses=35, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
		output = 'xote:tungsten_axe',
		recipe = {
				{'', 'xote:tungsten_carbide', 'xote:tungsten_carbide'},
				{'', 'default:stick', 'xote:tungsten_carbide'},
				{'', 'default:stick', ''},
		}
})

minetest.register_craft({
		output = 'xote:tungsten_axe',
		recipe = {
				{'xote:tungsten_carbide', 'xote:tungsten_carbide', ''},
				{'xote:tungsten_carbide', 'default:stick', ''},
				{'', 'default:stick', ''},
		}
})

--Titanium Carbide Axe
minetest.register_tool("xote:titanium_axe", {
	description = "Titanium Carbide Axe",
	inventory_image = "xote_titanium_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.30, [2]=1.20, [3]=0.80}, uses=45, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
		output = 'xote:titanium_axe',
		recipe = {
				{'', 'xote:titanium_carbide', 'xote:titanium_carbide'},
				{'', 'default:stick', 'xote:titanium_carbide'},
				{'', 'default:stick', ''},
		}
})

minetest.register_craft({
		output = 'xote:titanium_axe',
		recipe = {
				{'xote:titanium_carbide', 'xote:titanium_carbide', ''},
				{'xote:titanium_carbide', 'default:stick', ''},
				{'', 'default:stick', ''},
		}
})

--Violettam axe
minetest.register_tool("xote:violettam_axe", {
	description = "Violettam Axe",
	inventory_image = "xote_violettam_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.90, [2]=.70, [3]=0.30}, uses=55, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
		output = 'xote:titanium_axe',
		recipe = {
				{'', 'xote:violettam_ingot', 'xote:violettam_ingot'},
				{'', 'default:stick', 'xote:violettam_ingot'},
				{'', 'default:stick', ''},
		}
})

minetest.register_craft({
		output = 'xote:titanium_axe',
		recipe = {
				{'xote:violettam_ingot', 'xote:violettam_ingot', ''},
				{'xote:violettam_ingot', 'default:stick', ''},
				{'', 'default:stick', ''},
		}
})

--Tungsten Carbide Shovel
minetest.register_tool("xote:tungsten_shovel", {
	description = "Tungsten Carbide Shovel",
	inventory_image = "xote_tungsten_shovel.png",
	wield_image = "xote_tungsten_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.15, [2]=0.55, [3]=0.35}, uses=35, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
		output = 'xote:tungsten_shovel',
		recipe = {
				{'', 'xote:tungsten_carbide', ''},
				{'', 'default:stick', ''},
				{'', 'default:stick', ''},
		}
})

--Titanium carbide shovel
minetest.register_tool("xote:titanium_shovel", {
	description = "Titanium Carbide Shovel",
	inventory_image = "xote_titanium_shovel.png",
	wield_image = "xote_titanium_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.12, [2]=0.52, [3]=0.32}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
		output = 'xote:titanium_shovel',
		recipe = {
				{'', 'xote:titanium_carbide', ''},
				{'', 'default:stick', ''},
				{'', 'default:stick', ''},
		}
})

--Violettam
minetest.register_tool("xote:violettam_shovel", {
	description = "Violettam Shovel",
	inventory_image = "xote_violettam_shovel.png",
	wield_image = "xote_violettam_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=0.90, [2]=0.40, [3]=0.20}, uses=55, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
		output = 'xote:violettam_shovel',
		recipe = {
				{'', 'xote:violettam_carbide', ''},
				{'', 'default:stick', ''},
				{'', 'default:stick', ''},
		}
})
--[[
--Rutile
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
]]--
--Ti Ingot
minetest.register_craftitem("xote:titanium_ingot", {
		description = "Titanium Ingot",
		inventory_image = "xote_titanium_ingot.png"
})

minetest.register_craft({
		type = "cooking",
		recipe = "xote:rutile_ore",
		output = "xote:titanium_ingot",
})

minetest.register_craftitem("xote:titanium_carbide", {
		description = "Titanium Carbide",
		inventory_image = "xote_titanium_carbide.png"
})

minetest.register_craft({
		type = "shapeless",
		output = 'xote:titanium_carbide',
		recipe = {'xote:titanium_ingot', 'default:flint'},
})

--TiC pick
minetest.register_tool("xote:titanium_pick", {
	description = "Titanium Carbide Pickaxe",
	inventory_image = "xote_titanium_pick.png",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.2, [2]=1.2, [3]=0.70}, uses=25, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
		output = 'xote:titanium_pick',
		recipe = {
				{'xote:titanium_carbide', 'xote:titanium_carbide', 'xote:titanium_carbide'},
				{'', 'default:stick', ''},
				{'', 'default:stick', ''},
		}
})
--[[
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
]]--
--Violettam Ingot
--[[
minetest.register_craftitem("xote:violettam_ingot", {
		description = "Violettam Ingot",
		inventory_image = "xote_violettam_ingot.png"
})

minetest.register_craft({
		type = "cooking",
		recipe = "xote:violettam_ore",
		output = "xote:violettam_ingot",
})
]]--
--Violettam Pickaxe
minetest.register_tool("xote:violettam_pick", {
	description = "Violettam Pickaxe",
	inventory_image = "xote_violettam_pick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.5, [2]=0.75, [3]=0.375}, uses=50, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
		output = 'xote:violettam_pick',
		recipe = {
				{'xote:violettam_ingot', 'xote:violettam_ingot', 'xote:violettam_ingot'},
				{'', 'default:stick', ''},
				{'', 'default:stick', ''},
		}
})

--titanium Violetite
minetest.register_craftitem("xote:titanium_violetite", {
		description = "Titanium Violetite Ingot",
		inventory_image = "xote_titanium_violetite.png"
})

minetest.register_craft({
		type = "shapeless",
		recipe = {"xote:violettam_ingot", "xote:violettam_ingot", "xote:titanium_ingot"},
		output = 'xote:titanium_violetite 3', 
})

minetest.register_tool("xote:titanium_violetite_pick", {
	description = "Titanium Violetite Pickaxe",
	inventory_image = "xote_titanium_violetite_pick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.25, [3]=0.2}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
		output = 'xote:titanium_violetite_pick',
		recipe = {
				{'xote:titanium_violetite', 'xote:titanium_violetite', 'xote:titanium_violetite'},
				{'', 'default:stick', ''},
				{'', 'default:stick', ''},
		}
})
--[[
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
]]--
--Ti rod
minetest.register_craftitem("xote:titanium_rod", {
		description = "Titanium Rod",
		inventory_image = "xote_titanium_rod.png"
})

minetest.register_craft({
		type = "shapeless",
		recipe = {"xote:titanium_ingot"},
		output = 'xote:titanium_rod 2', 
})

--Ti Rod Titanium Carbide
minetest.register_tool("xote:ti_titanium_pick", {
	description = "TiC Pick (+20 Dur | -.2 Speed)",
	inventory_image = "xote_ti_titanium_pick.png",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.4, [2]=1.4, [3]=0.90}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
		output = 'xote:ti_titanium_pick',
		recipe = {
				{'xote:titanium_carbide', 'xote:titanium_carbide', 'xote:titanium_carbide'},
				{'', 'xote:titanium_rod', ''},
				{'', 'xote:titanium_rod', ''},
		}
})

minetest.register_tool("xote:titanium_pick", {
	description = "Titanium Carbide Pickaxe",
	inventory_image = "xote_titanium_pick.png",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.2, [2]=1.2, [3]=0.70}, uses=25, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
		output = 'xote:titanium_pick',
		recipe = {
				{'xote:titanium_carbide', 'xote:titanium_carbide', 'xote:titanium_carbide'},
				{'', 'default:stick', ''},
				{'', 'default:stick', ''},
		}
})

--Ti V Pick
minetest.register_tool("xote:ti_violettam_pick", {
	description = "Violettam Pick (+20 Dur | -.2 Speed)",
	inventory_image = "xote_ti_violettam_pick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.7, [2]=0.95, [3]=0.575}, uses=70, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
		output = 'xote:ti_violettam_pick',
		recipe = {
				{'xote:violettam_ingot', 'xote:violettam_ingot', 'xote:violettam_ingot'},
				{'', 'xote:titanium_rod', ''},
				{'', 'xote:titanium_rod', ''},
		}
})

--oil
minetest.register_node("xote:oil_source", {
    drawtype = "liquid",
    paramtype = "light",

    inventory_image = minetest.inventorycube("xote_oil.png"),
    tiles = {
        {
            name = "xote_oil_source_animated.png",
            animation = {
                type     = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length   = 2.0
            }
        }
    },

    special_tiles = {
        {
            name      = "xote_oil_source_animated.png",
            animation = {type = "vertical_frames", aspect_w = 16,
                aspect_h = 16, length = 2.0},
            backface_culling = false,
        }
    },

    walkable     = false,
    pointable    = false,
    diggable     = false,
    buildable_to = true,

    alpha = 250,
	
    drowning = 1,
    liquidtype = "source",

    liquid_alternative_flowing = "xote:oil_flowing",


    liquid_alternative_source = "xote:oil_source",


    liquid_viscosity = 4.5,


    liquid_range = 3,


    post_effect_color = {a=230, r=10, g=10, b=10},
    groups = {not_in_creative_inventory=1}
})
minetest.register_node("xote:oil_flowing", {
	description = "Flowing Oil",
	drawtype = "flowingliquid",
	tiles = {"xote_oil.png"},
	special_tiles = {
		{
			name = "xote_oil_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "xote_oil_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 250,
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
	liquid_alternative_flowing = "xote:oil_flowing",
	liquid_alternative_source = "xote:oil_source",
	liquid_viscosity = 4.5,
	post_effect_color = {a = 230, r = 30, g = 30, b = 30},
	groups = {not_in_creative_inventory=1}
})
--oil bucket
bucket.register_liquid(
	"xote:oil_source",
	"xote:oil_flowing",
	"xote:bucket_oil",
	"xote_bucket_oil.png",
	"Oil Bucket"
)

--oil barrel
minetest.register_node("xote:oil_barrel", {
		tiles = {
			"xote_oil_top.png",
			"xote_oil_bottom.png",
			"xote_oil_side.png",
			"xote_oil_side.png",
			"xote_oil_side.png",
			"xote_oil_side.png"
		},
		description = "Oil Barrel",
		groups = {cracky=2},
})

minetest.register_node("xote:barrel", {
		tiles = {
			"xote_barrel_top.png",
			"xote_barrel_bottom.png",
			"xote_barrel_side.png",
			"xote_barrel_side.png",
			"xote_barrel_side.png",
			"xote_barrel_side.png"
		},
		description = "Empty Barrel",
		groups = {cracky=2},
})

--plastic
minetest.register_craftitem("xote:raw_plastic", {
		description = "Raw Plastic",
		inventory_image = "xote_raw_plastic.png"
})

minetest.register_craftitem("xote:plastic_sheet", {
		description = "Plastic Sheet",
		inventory_image = "xote_plastic_sheet.png"
})

minetest.register_craft({
		type = "cooking",
		recipe = "xote:bucket_oil",
		output = "xote:raw_plastic 10",
		replacements = {{ 'xote:bucket_oil', 'bucket:bucket_empty' }}
})

minetest.register_craft({
		type = "cooking",
		recipe = "xote:raw_plastic",
		output = "xote:plastic_sheet",
		replacements = {{ 'xote:bucket_oil', 'bucket:bucket_empty' }}
})

--wire
minetest.register_craftitem("xote:wire", {
		description = "Wire Spool",
		inventory_image = "xote_wire.png"
})

minetest.register_craft({
		type = "shapeless",
		output = 'xote:wire 10',
		recipe = {"xote:plastic_sheet", "xote:plastic_sheet", "default:copper_ingot"}
})
