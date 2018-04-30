--[[
Code to handle all cooking, smelting and fuel.
]]--

--Smelting
minetest.register_craft({
		type = "cooking",
		recipe = "xote:pitchblende_ore",
		output = "xote:uranium_ingot",
})

minetest.register_craft({
		type = "cooking",
		recipe = "xote:galena_ore",
		output = "xote:lead_ingot",
})

minetest.register_craft({
		type = "cooking",
		recipe = "xote:sphalerite_ore",
		output = "xote:zinc_ingot",
})

minetest.register_craft({
		type = "cooking",
		recipe = "xote:zircon_ore",
		output = "xote:zirconium_ingot",
})

minetest.register_craft({
		type = "cooking",
		recipe = "xote:zirconium_ingot",
		output = "xote:cubic_zirconia",
})

minetest.register_craft({
		type = "cooking",
		recipe = "xote:wolframite_ore",
		output = "xote:tungsten_ingot",
})




minetest.register_craft({
		type = "cooking",
		recipe = "xote:violettam_ore",
		output = "xote:violettam_ingot",
})
