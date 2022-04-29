local version = "1"
local S = minetest.get_translator("marbles")
local path = minetest.get_modpath("marbles")

minetest.register_node("marbles:marbles", {
	description = S("Marbles"),
	tiles = {"marbles.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "marbles:marbles 9",
	recipe = {
		{"default:gravel", "default:cobble", "default:gravel"},
        {"default:cobble", "dye:orange", "default:cobble"},
        {"default:gravel", "default:cobble", "default:gravel"},
	}
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "marbles:marbles",
	wherein = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 6,
	clust_size = 5,
	y_min = -31000,
	y_max = -5,
})

if minetest.get_modpath("moreblocks") then
    dofile(path .. "/moreblocks.lua") --Moreblocks
end

print("Mables Mod [" ..version.. "] Loaded!")