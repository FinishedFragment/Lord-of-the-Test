lottmobs = {}

dofile(minetest.get_modpath("lottmobs").."/horse.lua")
dofile(minetest.get_modpath("lottmobs").."/trader_goods.lua")
dofile(minetest.get_modpath("lottmobs").."/trader.lua")
dofile(minetest.get_modpath("lottmobs").."/special_mobs.lua")
-- Mobs

mobs:register_mob("lottmobs:elf", {
	type = "npc",
	hp_min = 25,
	hp_max = 40,
	collisionbox = {-0.3,-1.1,-0.3, 0.3,0.91,0.3},
	textures = {
		{"lottmobs_lorien_elf_1.png", "lottarmor_trans.png", "lottarmor_trans.png"},
		{"lottmobs_lorien_elf_2.png", "lottarmor_trans.png", "lottarmor_trans.png"},
		{"lottmobs_lorien_elf_3.png", "lottarmor_trans.png", "lottarmor_trans.png"},
	},
	visual = "mesh",
	visual_size = {x=0.95, y=1.15},
	mesh = "lottarmor_character.x",
	view_range = 20,
	makes_footstep_sound = true,
	walk_velocity = 1.5,
	run_velocity = 4,
	damage = 4,
	armor = 200,
	drops = {
		{name = "lottplants:mallornsapling",
		chance = 5,
		min = 1,
		max = 1,},
		{name = "lottplants:mallornwood",
		chance = 5,
		min = 1,
		max = 6,},
		{name = "lottplants:mallorntree",
		chance = 5,
		min = 1,
		max = 4,},
		{name = "lottweapons:silver_spear",
		chance = 75,
		min = 1,
		max = 1,},
		{name = "lottores:blue_gem",
		chance = 200,
		min = 1,
		max = 1,},
		{name = "lottplants:yavannamiresapling",
		chance = 250,
		min = 1,
		max = 1,},
		{name = "lottores:mithril_lump",
		chance = 500,
		min = 1,
		max = 3,},
	},
	light_resistant = true,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 10,
	light_damage = 0,
	attack_type = "dogfight",
	follow = "lottother:narya",
	animation = {
		speed_normal = 15,
		speed_run = 20,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	sounds = {
		war_cry = "mobs_die_yell",
		death = "default_death",
		attack = "mobs_slash_attack",
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
mobs:register_spawn("lottmobs:elf", {"lottmapgen:lorien_grass"}, 20, 0, 6000, 3, 31000)

minetest.register_craftitem("lottmobs:meat", {
	description = "Cooked Meat",
	inventory_image = "lottmobs_meat.png",
	on_use = minetest.item_eat(4),
})

minetest.register_craftitem("lottmobs:meat_raw", {
	description = "Raw Meat",
	inventory_image = "lottmobs_meat_raw.png",
})

minetest.register_craft({
	type = "cooking",
	output = "lottmobs:meat",
	recipe = "lottmobs:meat_raw",
})

mobs:register_mob("lottmobs:chicken", {
	type = "animal",
	hp_min = 5,
	hp_max = 10,
	collisionbox = {-0.3,0,-0.3, 0.3,0.8,0.3},
	textures = {
		{"lottmobs_chicken.png"},
	},
	visual = "mesh",
	mesh = "chicken_model.x",
	makes_footstep_sound = true,
	walk_velocity = 1,
	armor = 300,
		drops = {
		{name = "lottmobs:meat_raw",
		chance = 1,
		min = 1,
		max = 1,},
	},
	light_resistant = true,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 10,
	light_damage = 0,
	animation = {
		speed_normal = 10,
		speed_run = 15,
		stand_start = 0,
		stand_end = 0,
		sit_start = 1,
		sit_end = 9,
		walk_start = 10,
		walk_end = 50,
	},
	jump = true,
	step=1,
	passive = true,
	sounds = {
	},
})
mobs:register_spawn("lottmobs:chicken", {"lottmapgen:gondor_grass"}, 20, -1, 6000, 3, 31000)
mobs:register_spawn("lottmobs:chicken", {"lottmapgen:dunland_grass"}, 20, -1, 6000, 3, 31000)
mobs:register_spawn("lottmobs:chicken", {"lottmapgen:rohan_grass"}, 20, -1, 6000, 3, 31000)
mobs:register_spawn("lottmobs:chicken", {"lottmapgen:shire_grass"}, 20, -1, 5000, 3, 31000)

mobs:register_mob("lottmobs:ent", {
	type = "npc",
	hp_min = 50,
	hp_max = 70,
	collisionbox = {-0.5, 0, -0.5, 0.5, 5, 0.5},
	textures = {
		{"lottmobs_ent.png"},
	},
	visual_size = {x=3.5,y=3.5},
	visual = "mesh",
	mesh = "ent_model.x",
	view_range = 20,
	makes_footstep_sound = true,
	walk_velocity = 1,
	run_velocity = 1.5,
	armor = 100,
	damage = 5,
	drops = {
		{name = "default:tree",
		chance = 10,
		min = 5,
		max = 10,},
		{name = "lottplants:aldersapling",
		chance = 25,
		min = 1,
		max = 2,},
		{name = "lottplants:applesapling",
		chance = 25,
		min = 1,
		max = 2,},
		{name = "lottplants:birchsapling",
		chance = 25,
		min = 1,
		max = 2,},
		{name = "lottplants:beechsapling",
		chance = 25,
		min = 1,
		max = 2,},
		{name = "lottplants:culumaldasapling",
		chance = 25,
		min = 1,
		max = 2,},
		{name = "lottplants:elmsapling",
		chance = 25,
		min = 1,
		max = 2,},
		{name = "lottplants:lebethronsapling",
		chance = 25,
		min = 1,
		max = 2,},
		{name = "lottplants:plumsapling",
		chance = 25,
		min = 1,
		max = 2,},
		{name = "lottplants:rowansapling",
		chance = 25,
		min = 1,
		max = 2,},
		{name = "lottplants:yavannamiresapling",
		chance = 250,
		min = 1,
		max = 1,},
	},
	light_resistant = true,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 60,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 17,
		stand_end = 17,
		walk_start = 10,
		walk_end = 80,
		run_start = 10,
		run_end = 80,
		punch_start = 1,
		punch_end = 1,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_die_yell",
		death = "mobs_yeti_death",
		attack = "default_punch2",
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,

})
mobs:register_spawn("lottmobs:ent", {"lottmapgen:fangorn_grass"}, 20, -1, 6000, 3, 31000)

mobs:register_mob("lottmobs:spider", {
	type = "monster",
	hp_min = 20,
	hp_max = 40,
	collisionbox = {-0.9, -0.01, -0.7, 0.7, 0.6, 0.7},
	textures = {
		{"lottmobs_spider.png"},
		{"lottmobs_spider_1.png"},
		{"lottmobs_spider_2.png"},
	},
	visual_size = {x=7,y=7},
	visual = "mesh",
	mesh = "spider_model.x",
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
    armor = 200,
	damage = 3,
	drops = {
		{name = "farming:string",
		chance = 10,
		min = 3,
		max = 6,},
	},
    light_resistant = true,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 1,
		stand_end = 1,
		walk_start = 20,
		walk_end = 40,
		run_start = 20,
		run_end = 40,
		punch_start = 50,
		punch_end = 90,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_eerie",
		death = "mobs_howl",
		attack = "mobs_oerkki_attack",
	},
	step = 1,
})
mobs:register_spawn("lottmobs:spider", {"lottmapgen:mirkwood_grass"}, 20, -10, 6000, 3, 31000)

mobs:register_mob("lottmobs:rohan_guard", {
	type = "npc",
	hp_min = 20,
	hp_max = 30,
	collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
	textures = {
		{"lottmobs_rohan_guard.png"},
		{"lottmobs_rohan_guard_1.png"},
		{"lottmobs_rohan_guard_2.png"},
		{"lottmobs_rohan_guard_3.png"},
	},
	visual = "mesh",
	mesh = "human_model.x",
	makes_footstep_sound = true,
	view_range = 12,
	walk_velocity = 1,
	run_velocity = 3,
	armor = 100,
	damage = 5,
	drops = {
		{name = "default:sword_stone",
		chance = 10,
		min = 1,
		max = 1,},
		{name = "default:bronze_ingot",
		chance = 10,
		min = 1,
		max = 1,},
		{name = "lottweapons:stone_spear",
		chance = 25,
		min = 1,
		max = 1,},
		{name = "default:steel_sword",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "lottores:galvornsword",
		chance = 150,
		min = 1,
		max = 1,},
		{name = "lottweapons:steel_spear",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "lottarmor:helmet_rohan",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "lottarmor:chestplate_rohan",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "lottarmor:leggings_rohan",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "lottarmor:boots_rohan",
		chance = 50,
		min = 1,
		max = 1,},
	},
	light_resistant = true,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 10,
	light_damage = 0,
	attack_type = "dogfight",
	follow = "lottother:narya",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_die_yell",
		death = "default_death",
		attack = "default_punch2",
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
mobs:register_spawn("lottmobs:rohan_guard", {"lottmapgen:rohan_grass"}, 20, -1, 6000, 3, 31000)

mobs:register_mob("lottmobs:gondor_guard", {
	type = "npc",
	hp_min = 20,
	hp_max = 30,
	collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
	textures = {
		{"lottmobs_gondor_guard.png"},
		{"lottmobs_gondor_guard_1.png"},
		{"lottmobs_gondor_guard_2.png"},
		{"lottmobs_gondor_guard_3.png"},
	},
	visual = "mesh",
	mesh = "human_model.x",
	makes_footstep_sound = true,
	view_range = 12,
	walk_velocity = 1,
	run_velocity = 2.5,
	armor = 100,
	damage = 5,
	drops = {
		{name = "lottweapons:galvorn_warhammer",
		chance = 150,
		min = 1,
		max = 1,},
		{name = "default:steel_ingot",
		chance = 10,
		min = 2,
		max = 5,},
		{name = "lottweapons:galvorn_battleaxe",
		chance = 150,
		min = 1,
		max = 1,},
		{name = "default:steel_sword",
		chance = 25,
		min = 1,
		max = 1,},
		{name = "lottplants:whitesapling",
		chance = 250,
		min = 1,
		max = 1,},
		{name = "lottweapons:steel_battleaxe",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "lottweapons:steel_warhammer",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "lottarmor:helmet_gondor",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "lottarmor:chestplate_gondor",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "lottarmor:leggings_gondor",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "lottarmor:boots_gondor",
		chance = 50,
		min = 1,
		max = 1,},
	},
	light_resistant = true,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	attack_type = "dogfight",
	follow = "lottother:narya",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_die_yell",
		death = "default_death",
		attack = "default_punch2",
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
mobs:register_spawn("lottmobs:gondor_guard", {"lottmapgen:gondor_grass"}, 20, -1, 6000, 3, 31000)

mobs:register_mob("lottmobs:dunlending", {
	type = "monster",
	hp_min = 17,
	hp_max = 27,
	collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
	visual = "mesh",
	mesh = "human_model.x",
	textures = {
		{"lottmobs_dunlending.png"},
		{"lottmobs_dunlending_1.png"},
		{"lottmobs_dunlending_2.png"},
		{"lottmobs_dunlending_3.png"},
	},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
    armor = 200,
	run_velocity = 3,
	damage = 3,
	drops = {
		{name = "default:axe_stone",
		chance = 10,
		min = 1,
		max = 1,},
		{name = "default:axe_steel",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "lottores:galvornaxe",
		chance = 100,
		min = 1,
		max = 1,},
		{name = "lottweapons:steel_battleaxe",
		chance = 25,
		min = 1,
		max = 1,},
		{name = "lottweapons:galvorn_battleaxe",
		chance = 75,
		min = 1,
		max = 1,},
		{name = "lottweapons:steel_warhammer",
		chance = 100,
		min = 1,
		max = 1,},
	},
    light_resistant = true,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_barbarian_yell2",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	step = 1,
})
mobs:register_spawn("lottmobs:dunlending", {"lottmapgen:dunland_grass"}, 20, -1, 6000, 3, 31000)

mobs:register_mob("lottmobs:hobbit", {
	type = "animal",
	hp_min = 5,
	hp_max = 15,
	collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
	textures = {
		{"lottmobs_hobbit.png"},
		{"lottmobs_hobbit_1.png"},
		{"lottmobs_hobbit_2.png"},
		{"lottmobs_hobbit_3.png"},
	},
	visual = "mesh",
	mesh = "dwarf_model.x",
	makes_footstep_sound = true,
	walk_velocity = 1,
	armor = 300,
	drops = {
		{name = "flowers:rose",
		chance = 1,
		min = 1,
		max = 1,},
	},
	light_resistant = true,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	step=1,
	passive = true,
	sounds = {
	},
})
mobs:register_spawn("lottmobs:hobbit", {"lottmapgen:shire_grass"}, 20, -1, 6000, 3, 31000)

mobs:register_mob("lottmobs:orc", {
	type = "monster",
	hp_min = 15,
	hp_max = 35,
	collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
	visual = "mesh",
	mesh = "human_model.x",
	textures = {
		{"lottmobs_orc.png"},
		{"lottmobs_orc_1.png"},
		{"lottmobs_orc_2.png"},
	},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
     armor = 200,
	run_velocity = 3,
	damage = 2,
	drops = {
		{name = "bones:bone",
		chance = 2,
		min = 1,
		max = 1,},
	},
    light_resistant = true,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 10,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_death1",
		attack = "default_punch2",
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
mobs:register_spawn("lottmobs:orc", {"lottmapgen:mordor_stone"}, 20, -1, 500, 3, 31000)
mobs:register_spawn("lottmobs:orc", {"lottmapgen:angsnowblock"}, 20, -1, 6000, 5, 31000)

mobs:register_mob("lottmobs:uruk_hai", {
	type = "monster",
	hp_min = 25,
	hp_max = 40,
	collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
	visual = "mesh",
	mesh = "human_model.x",
	textures = {
		{"lottmobs_uruk_hai.png"},
		{"lottmobs_uruk_hai_1.png"},
		{"lottmobs_uruk_hai_2.png"},
		{"lottmobs_uruk_hai_3.png"},
	},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
     armor = 100,
	run_velocity = 3,
	damage = 4,
	drops = {
		{name = "default:stone_sword",
		chance = 100,
		min = 1,
		max = 1,},
	},
        light_resistant = true,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_barbarian_yell2",
		death = "mobs_death2",
		attack = "mobs_slash_attack",
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
mobs:register_spawn("lottmobs:uruk_hai", {"lottmapgen:mordor_stone"}, 15, -1, 2000, 3, 31000)
mobs:register_spawn("lottmobs:uruk_hai", {"lottmapgen:fangorn_grass"}, 2, -1, 2000, 3, 31000)

mobs:register_mob("lottmobs:battle_troll", {
	type = "monster",
	hp_min = 45,
	hp_max = 60,
	collisionbox = {-0.7, -0.01, -0.7, 0.7, 2.6, 0.7},
	visual = "mesh",
	mesh = "troll_model.x",
	textures = {
		{"lottmobs_battle_troll.png"},
	},
	visual_size = {x=8, y=8},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 1,
	damage = 6,
	drops = {
		{name = "bones:bone",
		chance = 5,
		min = 1,
		max = 1,},
	},
        light_resistant = true,
	armor = 100,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 1,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		stand_start = 0,
		stand_end = 19,
		walk_start = 20,
		walk_end = 35,
		punch_start = 36,
		punch_end = 48,
		speed_normal = 15,
		speed_run = 15,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_howl",
		death = "mobs_howl",
		attack = "mobs_stone_death",
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
mobs:register_spawn("lottmobs:battle_troll", {"lottmapgen:mordor_stone"}, 10, -1, 10000, 5, 31000)

mobs:register_mob("lottmobs:half_troll", {
	type = "monster",
	hp_min = 20,
	hp_max = 30,
	collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
	visual = "mesh",
	mesh = "human_model.x",
	textures = {
		{"lottmobs_half_troll.png"},
	},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 4,
     armor = 100,
	drops = {
		{name = "default:sword_steel",
		chance = 100,
		min = 1,
		max = 1,},
	},
        light_resistant = true,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 10,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_die_yell",
		death = "default_death",
		attack = "default_punch2",
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
mobs:register_spawn("lottmobs:half_troll", {"default:snow"}, 15, -1, 8000, 3, 31000)
mobs:register_spawn("lottmobs:half_troll", {"default:snowblock"}, 15, -1, 8000, 3, 31000)
mobs:register_spawn("lottmobs:half_troll", {"lottmapgen:angsnowblock"}, 20, -1, 6000, 5, 31000)

mobs:register_mob("lottmobs:nazgul", {
	type = "monster",
	hp_min = 90,
	hp_max = 110,
	collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
	visual = "mesh",
	mesh = "ringwraith_model.x",
	textures = {
		{"lottmobs_nazgul.png"},
	},
	visual_size = {x=2, y=2},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 10,
	drops = {
		{name = "lottores:mithril_ingot",
		chance = 1,
		min = 9,
		max = 20,},
	},
	drawtype = "front",
     armor = 100,
	water_damage = 10,
	lava_damage = 0,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "shoot",
	arrow = "lottmobs:darkball",
	shoot_interval = 4,
	sounds = {
		attack = "lottmobs:darkball",
	},
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 1,
		stand_end = 1,
		walk_start = 20,
		walk_end = 60,
		punch_start = 70,
		punch_end = 110,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_die_yell",
		death = "default_death",
		attack = "default_punch2",
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
mobs:register_spawn("lottmobs:nazgul", {"default:stone"}, 2, -1, 20000, 3, -50)

mobs:register_mob("lottmobs:witch_king", {
	type = "monster",
	hp_min = 250,
	hp_max = 350,
	collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
	visual = "mesh",
	mesh = "human_model.x",
	textures = {
		{"lottmobs_witch_king.png"},
	},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
     armor = 100,
	run_velocity = 3,
	damage = 12,
	drops = {
		{name = "lottores:mithril_ingot",
		chance = 1,
		min = 40,
		max = 90,},
	},
	drawtype = "front",
	water_damage = 1,
	lava_damage = 0,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "shoot",
	arrow = "lottmobs:darkball",
	shoot_interval = 2,
	sounds = {
		attack = "lottmobs:darkball",
	},
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_die_yell",
		death = "default_death",
		attack = "default_punch2",
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
mobs:register_spawn("lottmobs:witch_king", {"default:stone"}, 2, -1, 40000, 10, -1000)

mobs:register_mob("lottmobs:balrog", {
	type = "monster",
	hp_min = 1000,
	hp_max = 1250,
	collisionbox = {-0.6,-2.0,-0.6, 0.6,1.6,0.6},
	visual_size = {x=2, y=2},
	visual = "mesh",
	mesh = "balrog_model.b3d",
	textures = {
		{"lottmobs_balrog.png"},
	},
	makes_footstep_sound = true,
	view_range = 15,
     armor = 100,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 20,
	drops = {
		{name = "lottores:mithril_ingot",
		chance = 1,
		min = 99,
		max = 999,},
	},
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "shoot",
	arrow = "lottmobs:fireslash",
	shoot_interval = 4,
	sounds = {
		attack = "lottmobs:fireslash",
	},
	animation = {
		stand_start = 0,
		stand_end = 19,
		walk_start = 20,
		walk_end = 35,
		punch_start = 36,
		punch_end = 48,
		speed_normal = 15,
		speed_run = 15,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_die_yell",
		death = "default_death",
		attack = "default_punch2",
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
mobs:register_spawn("lottmobs:balrog", {"default:stone"}, 2, -1, 100000, 10, -10000)

mobs:register_mob("lottmobs:dead_men", {
	type = "monster",
	hp_min = 1,
	hp_max = 1,
	collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
	visual = "mesh",
	mesh = "human_model.x",
	textures = {
		{"lottmobs_dead_men.png"},
	},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 1,
	run_velocity = 1,
	damage = 2,
	armor = 1,
	water_damage = 0,
	lava_damage = 0,
	light_damage = 1,
	drawtype = "front",
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_die_yell",
		death = "default_death",
		attack = "default_punch2",
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
mobs:register_spawn("lottmobs:dead_men", {"default:mossycobble"}, 2, -1, 6000, 10, -100)

mobs:register_mob("lottmobs:troll", {
	type = "monster",
	hp_min = 50,
	hp_max = 65,
	collisionbox = {-0.7, -0.01, -0.7, 0.7, 2.6, 0.7},
	visual = "mesh",
	mesh = "troll_model.x",
	textures = {
		{"lottmobs_troll.png"},
		{"lottmobs_troll_1.png"},
		{"lottmobs_troll_2.png"},
		{"lottmobs_troll_3.png"},
	},
	visual_size = {x=8, y=8},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 1,
	damage = 10,
     armor = 100,
	drops = {
		{name = "default:stone",
		chance = 1,
		min = 5,
		max = 7,},
	},
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 60,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		stand_start = 0,
		stand_end = 19,
		walk_start = 20,
		walk_end = 35,
		punch_start = 36,
		punch_end = 48,
		speed_normal = 15,
		speed_run = 15,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_die_yell",
		death = "default_death",
		attack = "default_punch2",
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
mobs:register_spawn("lottmobs:troll", {"default:stone"}, 2, -1, 8000, 5, -10)
mobs:register_spawn("lottmobs:troll", {"default:snow"}, 2, -1, 6000, 5, 31000)
mobs:register_spawn("lottmobs:troll", {"default:snowblock"}, 2, -1, 6000, 5, 31000)
mobs:register_spawn("lottmobs:troll", {"lottmapgen:angsnowblock"}, 2, -1, 6000, 5, 31000)

mobs:register_mob("lottmobs:dwarf", {
	type = "npc",
	hp_min = 20,
	hp_max = 30,
	collisionbox = {-0.3,-.85,-0.3, 0.3,0.68,0.3},
	textures = {
		{"lottmobs_dwarf.png", "lottarmor_trans.png", "lottarmor_trans.png"},
		{"lottmobs_dwarf_1.png", "lottarmor_trans.png", "lottarmor_trans.png"},
		{"lottmobs_dwarf_2.png", "lottarmor_trans.png", "lottarmor_trans.png"},
		{"lottmobs_dwarf_3.png", "lottarmor_trans.png", "lottarmor_trans.png"},
	},
	visual = "mesh",
	visual_size = {x=1.1, y=0.85},
	mesh = "lottarmor_character.x",
	view_range = 10,
	makes_footstep_sound = true,
	walk_velocity = 1,
	run_velocity = 2,
	armor = 200,
	damage = 4,
	drops = {
		{name = "default:diamond",
		chance = 30,
		min = 1,
		max = 2,},
	},
	light_resistant = true,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 10,
	light_damage = 0,
	attack_type = "dogfight",
	follow = "lottother:narya",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_die_yell",
		death = "default_death",
		attack = "default_punch2",
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
mobs:register_spawn("lottmobs:dwarf", {"default:stone"}, 15, -1, 6000, 3, -10)
mobs:register_spawn("lottmobs:dwarf", {"lottmapgen:ironhill_grass"}, 20, -1, 6000, 3, 31000)

-- Arrows

mobs:register_arrow("lottmobs:darkball", {
	visual = "sprite",
	visual_size = {x=1, y=1},
	textures = {"lottmobs_darkball.png"},
	velocity = 5,
	hit_player = function(self, player)
		local s = self.object:getpos()
		local p = player:getpos()
		local vec = {x=s.x-p.x, y=s.y-p.y, z=s.z-p.z}
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=4},
		}, vec)
		local pos = self.object:getpos()
		for dx=-1,1 do
			for dy=-1,1 do
				for dz=-1,1 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.env:get_node(pos).name
					if minetest.registered_nodes[n].groups.flammable or math.random(1, 100) <= 30 then
						minetest.env:set_node(p, {name="fire:basic_flame"})
					else
						minetest.env:remove_node(p)
					end
				end
			end
		end
	end,
	hit_node = function(self, pos, node)
		for dx=-1,1 do
			for dy=-2,1 do
				for dz=-1,1 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.env:get_node(pos).name
					if minetest.registered_nodes[n].groups.flammable or math.random(1, 100) <= 30 then
						minetest.env:set_node(p, {name="fire:basic_flame"})
					else
						minetest.env:remove_node(p)
					end
				end
			end
		end
	end
})

mobs:register_arrow("lottmobs:fireslash", {
	visual = "sprite",
	visual_size = {x=1, y=1},
	textures = {"lottmobs_fireslash.png"},
	velocity = 5,
	hit_player = function(self, player)
		local s = self.object:getpos()
		local p = player:getpos()
		local vec = {x=s.x-p.x, y=s.y-p.y, z=s.z-p.z}
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=8},
		}, vec)
		local pos = self.object:getpos()
		for dx=-1,1 do
			for dy=-1,1 do
				for dz=-1,1 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.env:get_node(pos).name
					if minetest.registered_nodes[n].groups.flammable or math.random(1, 100) <= 30 then
						minetest.env:set_node(p, {name="fire:basic_flame"})
					else
						minetest.env:remove_node(p)
					end
				end
			end
		end
	end,
	hit_mob = function(self, player)
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=1},
		}, 0)
	end,
	hit_node = function(self, pos, node)
		for dx=-1,1 do
			for dy=-2,1 do
				for dz=-1,1 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.env:get_node(pos).name
					if minetest.registered_nodes[n].groups.flammable or math.random(1, 100) <= 30 then
						minetest.env:set_node(p, {name="fire:basic_flame"})
					else
						minetest.env:remove_node(p)
					end
				end
			end
		end
	end
})
