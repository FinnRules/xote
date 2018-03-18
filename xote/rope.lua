--Top of rope
minetest.register_node("xote:rope_top", {
	description = "Rope",
	drawtype = "signlike",
	tiles = {"xote_rope_top.png"},
	inventory_image = "xote_rope_top.png",
	wield_image = "xote_rope_top.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	groups = {oddly_breakable_by_hand = 2}
})
--bottom of rope
minetest.register_node("xote:rope_bottom", {
	description = "Rope",
	drawtype = "signlike",
	tiles = {"xote_rope_bottom.png"},
	inventory_image = "xote_rope_bottom.png",
	wield_image = "xote_rope_bottom.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	groups = {oddly_breakable_by_hand = 2}
})
--abm to create new rope beneath rope where there is air

minetest.register_abm({
    nodenames = {"xote:rope_bottom"},
    neighbors = {"air"},
    interval = 1.0,
    action = function(pos, node, active_object_count, active_object_count_wider)
        local under = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z})
		if under.name == "air" then
		minetest.set_node({x = pos.x, y = pos.y - 1, z = pos.z}, {name = "xote:rope_bottom"})
		end
    end
})
--[[
minetest.register_abm({
    nodenames = {"xote:rope_bottom"},
--    neighbors = {"air"},
    interval = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
        local under = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z})
		if under.name == "air" then
			minetest.set_node({x = pos.x, y = pos.y - 1, z = pos.z}, {name = "xote:rope_bottom"})
		end
    end
})
]]--
--[[
minetest.register_abm({
    nodenames = {"xote:rope_bottom"},
    neighbors = {"air"},
    interval = .1,
    action = function(pos, node, active_object_count, active_object_count_wider)
        local under = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z})
		if under.name == "air" then
			minetest.set_node({x = pos.x, y = pos.y + 1, z = pos.z}, {name = "air"})
		end
    end
})
]]--
