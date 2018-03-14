--[[
Supertools adds physics altering items into the mod
]]--

--gravity dampener
minetest.register_craftitem("xote:gravity_dampener", {
		description = "Gravity Dampener (L-Click ON | R-Click OFF)",
		inventory_image = "xote_gravity_dampener.png",
		on_use = function(itemstack, player)
			player:set_physics_override({
				gravity = 0.1,
			})
		end,
		on_secondary_use = function(itemstack, player)
			player:set_physics_override({
				gravity = 1.0,
			})
		end,
})

--gas tank
minetest.register_craftitem("xote:gas_tank", {
		description = "Gas Tank",
		inventory_image = "xote_gas_tank.png",
})

minetest.register_craft({
		output = 'xote:gas_tank 2',
		recipe = {
				{'default:steel_ingot', 'xote:bucket_gas', 'default:steel_ingot'},
				{'default:steel_ingot', 'xote:bucket_gas', 'default:steel_ingot'},
				{'default:steel_ingot', 'xote:bucket_gas', 'default:steel_ingot'},
		},
		replacements = {{ 'xote:bucket_gas', 'bucket:bucket_empty' }, { 'xote:bucket_gas', 'bucket:bucket_empty' }, { 'xote:bucket_gas', 'bucket:bucket_empty' }}
})

--battery pack
minetest.register_craftitem("xote:battery_pack", {
		description = "Battery Pack",
		inventory_image = "xote_battery_pack.png",
})

minetest.register_craft({
		output = 'xote:battery_pack',
		recipe = {
				{'', 'xote:plastic_sheet', ''},
				{'xote:nuclear_battery', 'xote:wire', 'xote:nuclear_battery'},
				{'', 'xote:plastic_sheet', ''},
		}
})

--gravity chip
minetest.register_craftitem("xote:gravity_chip", {
		description = "Gravity chip",
		inventory_image = "xote_gravity_chip.png",
})

minetest.register_craft({
		output = 'xote:gravity_chip',
		recipe = {
				{'xote:titanium_ingot', 'xote:titanium_ingot', 'xote:titanium_ingot'},
				{'xote:fireopal', 'xote:wire', 'xote:fireopal'},
				{'xote:tungsten_ingot', 'xote:tungsten_ingot', 'xote:tungsten_ingot'},
		}
})

--gravity dampener crafting
minetest.register_craft({
		output = 'xote:gravity_dampener',
		recipe = {
				{'xote:wire', 'xote:battery_pack', 'xote:wire'},
				{'', 'xote:gravity_chip', ''},
				{'', '', ''},
		}
})

minetest.register_craft({
		output = 'xote:gravity_dampener',
		recipe = {
				{'', '', ''},
				{'xote:wire', 'xote:battery_pack', 'xote:wire'},
				{'', 'xote:gravity_chip', ''},
		}
})

--rocket pack
minetest.register_craftitem("xote:rocket_pack", {
		description = "Rocket Pack (L-Click ON | R-Click OFF)",
		inventory_image = "xote_rocket_pack.png",
		on_use = function(itemstack, player)
			player:set_physics_override({
				speed = 3.0,
			})
		end,
		on_secondary_use = function(itemstack, player)
			player:set_physics_override({
				speed = 1.0,
			})
		end,
})

minetest.register_craft({
		output = 'xote:rocket_pack',
		recipe = {
				{'xote:wire', 'xote:titanium_ingot', 'xote:wire'},
				{'xote:gas_tank', 'farming:cotton', 'xote:gas_tank'},
				{'', 'xote:titanium_ingot', ''},
		}
})

--turbo rocket pack
minetest.register_craftitem("xote:turbo_rocket_pack", {
		description = "Turbo Rocket Pack (L-Click ON | R-Click OFF)",
		inventory_image = "xote_turbo_rocket_pack.png",
		on_use = function(itemstack, player)
			player:set_physics_override({
				speed = 5.0,
			})
		end,
		on_secondary_use = function(itemstack, player)
			player:set_physics_override({
				speed = 1.0,
			})
		end,
})

minetest.register_craft({
		output = 'xote:rocket_pack',
		recipe = {
				{'xote:wire', 'xote:violettam_ingot', 'xote:wire'},
				{'xote:gas_tank', 'farming:cotton', 'xote:gas_tank'},
				{'xote:gas_tank', 'xote:violettam_ingot', 'xote:gas_tank'},
		}
})