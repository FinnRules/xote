--soda first

--bad code
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
	
