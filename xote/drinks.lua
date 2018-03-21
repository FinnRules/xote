--soda first

--bad code
minetest.register_craftitem("xote:soda_cola", {
		description = "Cola",
		inventory_image = "xote_soda_cola.png",
		on_use = function(itemstack, player)
			local time = 0,
      player:set_physics_override({
				gravity = 0.1,
			})
      while time < 5000 do
        time = time + 1,
        if time >= 4999 then
          player:set_physics_override({
				    gravity = 1.0,
			    })  
        end
      end
		end
})
