--Top of rope
minetest.register_node("xote:rope_top", {
	description = "Rope",
	drawtype = "nodebox",
--	tiles = {"xote_rope_top.png"},
	inventory_image = "xote_rope_top.png",
	wield_image = "xote_rope_top.png",
	paramtype = "light",
  paramtype2 = 'facedir',
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.050, -0.5, -0.050, 0.050, 0.5, 0.050},
		  {-0.050, 0.5, 0.5, 0.050, 0.450, 0.0}, 
		}
	},
	groups = {oddly_breakable_by_hand = 2}
})


--bottom of rope
minetest.register_node("xote:rope_bottom", {
	description = "Rope bottom",
	drawtype = "nodebox",
	tiles = {"xote_rope_bottom.png"},
	inventory_image = "xote_rope_bottom.png",
	wield_image = "xote_rope_bottom.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.050, -0.5, -0.050, 0.050, 0.5, 0.050},
		}
	},
	groups = {oddly_breakable_by_hand = 2}
})
--abm to create new rope beneath rope where there is air



minetest.register_abm({
    nodenames = {"xote:rope_top"},
    neighbors = {"air"},
    interval = 1, 
   	chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
     if minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z}).name == "air" then
		 minetest.set_node({x = pos.x, y = pos.y - 1, z = pos.z}, {name = "xote:rope_bottom"}) 
      end
		end
})

minetest.register_abm({
    nodenames = {"xote:rope_bottom"},
    neighbors = {"air"},
    interval = 1, 
   	chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
     if minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z}).name == "xote:rope_top" or   
     minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z}).name == "xote:rope_bottom" then
     if minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z}).name == "air" then
		 minetest.set_node({x = pos.x, y = pos.y - 1, z = pos.z}, {name = "xote:rope_bottom"}) 
      end
		end
   end
})

minetest.register_abm({
    nodenames = {"xote:rope_bottom"},
    neighbors = {"air"},
    interval = 1, 
   	chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
     if minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z}).name ~= "xote:rope_top" or   
     minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z}).name ~= "xote:rope_bottom" then
		 minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "air"}) 
		end
   end
})
