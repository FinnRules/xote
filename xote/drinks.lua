--[[
--cola (gravity)
minetest.register_craftitem("xote:soda_cola", {
	description = "Cola",
	inventory_image = "xote_soda_cola.png",
	on_use = function(itemstack, player)
		playerr:set_physics_override({
                gravity= 0.1,
            	})
            -- undo after 30 seconds
            minetest.after(30, function(player)
                player:set_physics_override({
                    gravity = 1,
                })
            end, player)
})
--Gingerale (speed)	
minetest.register_craftitem("xote:soda_ginderale", {
	description = "Ginger Ale",
	inventory_image = "xote_soda_ginderale.png",
	on_use = function(itemstack, player)
		playerr:set_physics_override({
                speed= 3.0,
            	})
            -- undo after 30 seconds
            minetest.after(30, function(player)
                player:set_physics_override({
                    speed = 1,
                })
            end, player)
})
--orange soda (jump)		
minetest.register_craftitem("xote:soda_orange", {
	description = "Orange Soda",
	inventory_image = "xote_soda_orange.png",
	on_use = function(itemstack, player)
		playerr:set_physics_override({
                jump= 3.0,
            	})
            -- undo after 30 seconds
            minetest.after(30, function(player)
                player:set_physics_override({
                    jump = 1,
                })
            end, player)
})
]]--
--redux
--cola
minetest.register_node("xote:soda_cola", {
	description = "Cola",
	drawtype = "plantlike",
	tiles = {"xote_soda_cola.png"},
	inventory_image = "xote_soda_cola.png",
	wield_image = "xote_soda_cola.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
	on_use = function(itemstack, player)
		playerr:set_physics_override({
                gravity= 0.1,
            	})
            -- undo after 30 seconds
            minetest.after(30, function(player)
                player:set_physics_override({
                    gravity = 1,
                })
            end, player)
})
--orange
minetest.register_node("xote:soda_orange", {
	description = "Orange Soda",
	drawtype = "plantlike",
	tiles = {"xote_soda_orange.png"},
	inventory_image = "xote_soda_orange.png",
	wield_image = "xote_soda_orange.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
	on_use = function(itemstack, player)
		playerr:set_physics_override({
                speed= 3.0,
            	})
            -- undo after 30 seconds
            minetest.after(30, function(player)
                player:set_physics_override({
                    speed = 1,
                })
            end, player)
})
