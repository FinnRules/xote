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
