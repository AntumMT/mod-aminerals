dofile(minetest.get_modpath("xomobs").."/api.lua")

xomobs:register_mob("xomobs:illuminati", {
	type = "monster",
	hp_max = 20000,
	hp_min = 20000,
	collisionbox = {-1.0, -1.25, -1.0, 1.0, 1.0, 1.0},
	visual = "mesh",
	mesh = "illuminati.obj",
	textures = {
		{"xomobs_illuminati.png"},
	},
	visual_size = {x=20,y=20},
	makes_footstep_sound = true,
	view_range = 50,
	walk_velocity = 2.50,
	run_velocity = 3.50,
	knock_back = 0,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	damage = 300,
		drops = {
		{name = "xebase:bow_infinity",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "xebase:horn_of_plenty",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "xebase:illuminati_block",
		chance = 1,
		min = 1,
		max = 1,},
	},
	light_resistant = true,
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	shoot_offset = 1,
	fall_speed = -50,
  fly = true,
	attack_type = "shoot",
		arrow = "xomobs:fireballil",
		shoot_interval = 0.5,
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
})

minetest.register_craftitem("xomobs:illuminati_egg", {
	description = "suspicious looking triangle(summons the illuminati)",
	inventory_image = "xomobs_illuminati_summon.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "xomobs:illuminati")
			itemstack:take_item()
		end
		return itemstack
	end,
})


xomobs:register_mob("xomobs:golemboss_ph1", {
	type = "monster",
	hp_max = 5000,
	hp_min = 5000,
	collisionbox = {-1.0, -0.0, -1.0, 1.0, 3.0, 1.0},
	visual = "mesh",
	mesh = "mobs_dungeon_master.x",
	textures = {
		{"xomobs_golem1.png"},
	},
	visual_size = {x=8,y=8},
	makes_footstep_sound = true,
	view_range = 1000,
	walk_velocity = 4,
	run_velocity = 4,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	on_die = function(self, pos)
		local num = math.random(1, 1)
		for i=1,num do
			minetest.add_entity({x=pos.x + math.random(-2, 2), y=pos.y + 1, z=pos.z + (math.random(-2, 2))}, "xomobs:golemboss_ph2")
		end
		local num = math.random(1, 2)
		for i=1,num do
			minetest.add_entity({x=pos.x + math.random(-2, 2), y=pos.y + 1, z=pos.z + (math.random(-2, 2))}, "xomobs:corrupt_player")
		end
		local num = math.random(1, 2)
		for i=1,num do
			minetest.add_entity({x=pos.x + math.random(-2, 2), y=pos.y + 1, z=pos.z + (math.random(-2, 2))}, "xomobs:radioactive_alien")
		end
		local num = math.random(1, 2)
		for i=1,num do
			minetest.add_entity({x=pos.x + math.random(-2, 2), y=pos.y + 1, z=pos.z + (math.random(-2, 2))}, "xomobs:illusion_alien")
		end
		local num = math.random(1, 2)
		for i=1,num do
			minetest.add_entity({x=pos.x + math.random(-2, 2), y=pos.y + 1, z=pos.z + (math.random(-2, 2))}, "xomobs:mettie")
		end
	end,
	damage = 400,
		drops = {
	},
	light_resistant = true,
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	reach = 6,
	attack_type = "shoot",
		arrow = "xomobs:laser2",
		shoot_interval = 0.4,
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
})

xomobs:register_mob("xomobs:golemboss_ph2", {
	type = "monster",
	hp_max = 5000,
	hp_min = 5000,
	collisionbox = {-1.0, -0.0, -1.0, 1.0, 3.0, 1.0},
	visual = "mesh",
	mesh = "mobs_dungeon_master.x",
	textures = {
		{"xomobs_golem2.png"},
	},
	visual_size = {x=8,y=8},
	makes_footstep_sound = true,
	view_range = 1000,
	walk_velocity = 4,
	run_velocity = 4,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	on_die = function(self, pos)
		local num = math.random(1, 1)
		for i=1,num do
			minetest.add_entity({x=pos.x + math.random(-2, 2), y=pos.y + 1, z=pos.z + (math.random(-2, 2))}, "xomobs:golemboss_ph3")
		end
		local num = math.random(1, 2)
		for i=1,num do
			minetest.add_entity({x=pos.x + math.random(-2, 2), y=pos.y + 1, z=pos.z + (math.random(-2, 2))}, "xomobs:corrupt_player")
		end
		local num = math.random(1, 2)
		for i=1,num do
			minetest.add_entity({x=pos.x + math.random(-2, 2), y=pos.y + 1, z=pos.z + (math.random(-2, 2))}, "xomobs:radioactive_alien")
		end
		local num = math.random(1, 2)
		for i=1,num do
			minetest.add_entity({x=pos.x + math.random(-2, 2), y=pos.y + 1, z=pos.z + (math.random(-2, 2))}, "xomobs:illusion_alien")
		end
		local num = math.random(1, 2)
		for i=1,num do
			minetest.add_entity({x=pos.x + math.random(-2, 2), y=pos.y + 1, z=pos.z + (math.random(-2, 2))}, "xomobs:mettie")
		end
	end,
	damage = 400,
		drops = {
	},
	light_resistant = true,
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	reach = 6,
	attack_type = "shoot",
		arrow = "xomobs:laser2",
		shoot_interval = 0.3,
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
})

xomobs:register_mob("xomobs:golemboss_ph3", {
	type = "monster",
	hp_max = 5000,
	hp_min = 5000,
	collisionbox = {-1.0, -0.0, -1.0, 1.0, 3.0, 1.0},
	visual = "mesh",
	mesh = "mobs_dungeon_master.x",
	textures = {
		{"xomobs_golem1.png"},
	},
	visual_size = {x=8,y=8},
	makes_footstep_sound = true,
	view_range = 1000,
	damage = 250,
		drops = {
		{name = "xebase:bow_phantom",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "xebase:chemical",
		chance = 1,
		min = 1,
		max = 1,},
	},
	walk_velocity = 4,
	run_velocity = 4,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	on_die = function(self, pos)
		local num = math.random(1, 2)
		for i=1,num do
			minetest.add_entity({x=pos.x + math.random(-2, 2), y=pos.y + 1, z=pos.z + (math.random(-2, 2))}, "xomobs:corrupt_player")
		end
		local num = math.random(1, 2)
		for i=1,num do
			minetest.add_entity({x=pos.x + math.random(-2, 2), y=pos.y + 1, z=pos.z + (math.random(-2, 2))}, "xomobs:radioactive_alien")
		end
		local num = math.random(1, 2)
		for i=1,num do
			minetest.add_entity({x=pos.x + math.random(-2, 2), y=pos.y + 1, z=pos.z + (math.random(-2, 2))}, "xomobs:illusion_alien")
		end
		local num = math.random(1, 2)
		for i=1,num do
			minetest.add_entity({x=pos.x + math.random(-2, 2), y=pos.y + 1, z=pos.z + (math.random(-2, 2))}, "xomobs:mettie")
		end
	end,
	damage = 400,
	light_resistant = true,
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	reach = 6,
	attack_type = "shoot",
		arrow = "xomobs:laser2",
		shoot_interval = 0.2,
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
})

minetest.register_craftitem("xomobs:golem_egg", {
	description = "alien golem spawnegg(place it down, and a murderous bossmob will be born!)",
	inventory_image = "xomobs_golemegg.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "xomobs:golemboss_ph3")
			itemstack:take_item()
		end
		return itemstack
	end,
})


minetest.register_craftitem("xomobs:corruptslime_egg", {
	description = "corrupt slime spawnegg",
	inventory_image = "xomobs_corruptslimeegg.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "xomobs:corrupt_slime")
			itemstack:take_item()
		end
		return itemstack
	end,
})

xomobs:register_mob("xomobs:slimeboss_ph1", {
	type = "monster",
	hp_max = 2500,
	hp_min = 2500,
	collisionbox = {-2.0, -2.0, -2.0, 2.0, 2.0, 2.0},
	visual = "cube",
	textures = {
		{"xomobs_slimeside.png", "xomobs_slimeside.png", "xomobs_slimeside.png", "xomobs_slimeside.png", "xomobs_slimeface.png", "xomobs_slimeside.png"},
	},
	visual_size = {x=4,y=4},
	makes_footstep_sound = true,
	view_range = 1000,
	walk_velocity = 4,
	run_velocity = 4,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	on_die = function(self, pos)
		local num = math.random(1, 1)
		for i=1,num do
			minetest.add_entity({x=pos.x + math.random(-2, 2), y=pos.y + 1, z=pos.z + (math.random(-2, 2))}, "xomobs:slimeboss_ph2")
		end
		local num = math.random(5, 10)
		for i=1,num do
			minetest.add_entity({x=pos.x + math.random(-2, 2), y=pos.y + 1, z=pos.z + (math.random(-2, 2))}, "xomobs:slimeslave")
		end
	end,
	damage = 400,
		drops = {
	},
	light_resistant = true,
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	walk_chance = 0,
	jump_chance = 30,
	jump_height = 30,
	fall_speed = -50,
	reach = 6,
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
})


dofile(minetest.get_modpath("xomobs").."/api.lua")
xomobs:register_mob("xomobs:slimeboss_ph2", {
	type = "monster",
	hp_max = 2000,
	hp_min = 2000,
	collisionbox = {-1.5, -1.5, -1.5, 1.5, 1.5, 1.5},
	visual = "cube",
	textures = {
		{"xomobs_slimeside.png", "xomobs_slimeside.png", "xomobs_slimeside.png", "xomobs_slimeside.png", "xomobs_slimeface.png", "xomobs_slimeside.png"},
	},
	visual_size = {x=3,y=3},
	makes_footstep_sound = true,
	view_range = 1000,
	walk_velocity = 6,
	run_velocity = 6,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	on_die = function(self, pos)
		local num = math.random(1, 1)
		for i=1,num do
			minetest.add_entity({x=pos.x + math.random(-2, 2), y=pos.y + 1, z=pos.z + (math.random(-2, 2))}, "xomobs:slimeboss_ph3")
		end
		local num = math.random(5, 10)
		for i=1,num do
			minetest.add_entity({x=pos.x + math.random(-2, 2), y=pos.y + 1, z=pos.z + (math.random(-2, 2))}, "xomobs:slimeslave")
		end
	end,
	damage = 300,
		drops = {
	},
	light_resistant = true,
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	walk_chance = 0,
	jump_chance = 30,
	jump_height = 25,
	fall_speed = -50,
	reach = 5,
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
})

dofile(minetest.get_modpath("xomobs").."/api.lua")
xomobs:register_mob("xomobs:slimeboss_ph3", {
	type = "monster",
	hp_max = 1500,
	hp_min = 1500,
	collisionbox = {-1.0, -1.0, -1.0, 1.0, 1.0, 1.0},
	visual = "cube",
	textures = {
		{"xomobs_slimeside.png", "xomobs_slimeside.png", "xomobs_slimeside.png", "xomobs_slimeside.png", "xomobs_slimeface.png", "xomobs_slimeside.png"},
	},
	visual_size = {x=2,y=2},
	makes_footstep_sound = true,
	view_range = 1000,
	walk_velocity = 8.5,
	run_velocity = 8.5,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	damage = 250,
		drops = {
		{name = "xebase:bow_tri",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "xebase:slime",
		chance = 1,
		min = 1,
		max = 1,},
	},
	light_resistant = true,
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	walk_chance = 0,
	jump_chance = 30,
	jump_height = 20,
	fall_speed = -50,
	reach = 4,
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
})


xomobs:register_mob("xomobs:slimeslave", {
	type = "monster",
	hp_max = 500,
	hp_min = 500,
	collisionbox = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	visual = "cube",
	textures = {
		{"xomobs_slimeside.png", "xomobs_slimeside.png", "xomobs_slimeside.png", "xomobs_slimeside.png", "xomobs_slimeface.png", "xomobs_slimeside.png"},
	},
	visual_size = {x=1,y=1},
	makes_footstep_sound = true,
	view_range = 1000,
	walk_velocity = 10,
	run_velocity = 10,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	damage = 150,
		drops = {
	},
	light_resistant = true,
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	walk_chance = 0,
	jump_chance = 30,
	jump_height = 15,
	fall_speed = -50,
	reach = 3,
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
})


minetest.register_craftitem("xomobs:slimeboss_summon", {
	description = "pre-packed lord of slimes(this box contains a the lord of slimes, place it to take him out, and duel him)",
	inventory_image = "xomobs_slime_summon.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "xomobs:slimeboss_ph1")
			itemstack:take_item()
		end
		return itemstack
	end,
})



xomobs:register_mob("xomobs:platinumskeleton", {
	type = "monster",
	hp_max = 15,
	hp_min = 15,
	collisionbox = {-0.4, -1.01, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "humanoid.b3d",
	textures = {
		{"xomobs_Skeleton.png", "xomobs_platinumarmor.png", "xtraores_sword_platinum.png"},
	},
	visual_size = {x=1,y=1},
	makes_footstep_sound = true,
	view_range = 20,
	walk_velocity = 1.10,
	run_velocity = 2,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	damage = 7,
		drops = {
		{name = "xebase:bone",
		chance = 1,
		min = 0,
		max = 3,},
		{name = "xtraores:stone_with_platinum",
		chance = 25,
		min = 1,
		max = 1,},
		{name = "xtraores:platinum_lump",
		chance = 4,
		min = 1,
		max = 10,},
		{name = "xtraores:platinum_bar",
		chance = 4,
		min = 1,
		max = 10,},
		{name = "xtraores:pick_platinum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:pick_platinum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:axe_platinum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:spear_platinum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:shovel_platinum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:sword_platinum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:helmet_platinum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:chestplate_platinum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:shield_platinum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:leggings_platinum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:boots_platinum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xomobs:platinumskeleton_egg",
		chance = 500,
		min = 1,
		max = 1,},

	},
	light_resistant = true,
	armor = 30,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
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
})
xomobs:register_spawn("xomobs:platinumskeleton", {"default:stone"},20, -1, 500, 5, -100)

minetest.register_craftitem("xomobs:platinumskeleton_egg", {
	description = "platinum armored skeleton spawnegg",
	inventory_image = "xomobs_platinumskeletonegg.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "xomobs:platinumskeleton")
			itemstack:take_item()
		end
		return itemstack
	end,
})

xomobs:register_mob("xomobs:cobaltskeleton", {
	type = "monster",
	hp_max = 15,
	hp_min = 15,
	collisionbox = {-0.4, -1.01, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "humanoid.b3d",
	textures = {
		{"xomobs_Skeleton.png", "xomobs_cobaltarmor.png", "xtraores_sword_cobalt.png"},
	},
	visual_size = {x=1,y=1},
	makes_footstep_sound = true,
	view_range = 20,
	walk_velocity = 2.20,
	run_velocity = 3.5,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	damage = 10,
		drops = {
		{name = "xebase:bone",
		chance = 1,
		min = 0,
		max = 3,},
		{name = "xtraores:stone_with_cobalt",
		chance = 25,
		min = 1,
		max = 1,},
		{name = "xtraores:cobalt_lump",
		chance = 4,
		min = 1,
		max = 10,},
		{name = "xtraores:cobalt_bar",
		chance = 4,
		min = 1,
		max = 10,},
		{name = "xtraores:pick_cobalt",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:pick_cobalt",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:axe_cobalt",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:spear_cobalt",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:shovel_cobalt",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:sword_cobalt",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:helmet_cobalt",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:chestplate_cobalt",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:shield_cobalt",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:leggings_cobalt",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:boots_cobalt",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xomobs:cobaltskeleton_egg",
		chance = 500,
		min = 1,
		max = 1,},

	},
	light_resistant = true,
	armor = 15,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
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
})
xomobs:register_spawn("xomobs:cobaltskeleton", {"default:stone"},20, -1, 500, 5, -650)

minetest.register_craftitem("xomobs:cobaltskeleton_egg", {
	description = "cobalt armored skeleton spawnegg",
	inventory_image = "xomobs_cobaltskeletonegg.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "xomobs:cobaltskeleton")
			itemstack:take_item()
		end
		return itemstack
	end,
})

xomobs:register_mob("xomobs:osminumskeleton", {
	type = "monster",
	hp_max = 15,
	hp_min = 15,
	collisionbox = {-0.4, -1.01, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "humanoid.b3d",
	textures = {
		{"xomobs_Skeleton.png", "xomobs_osminumarmor.png", "xtraores_sword_osminum.png"},
	},
	visual_size = {x=1,y=1},
	makes_footstep_sound = true,
	view_range = 20,
	walk_velocity = 1.10,
	run_velocity = 2.0,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	damage = 15,
		drops = {
		{name = "xebase:bone",
		chance = 1,
		min = 0,
		max = 3,},
		{name = "xtraores:stone_with_osminum",
		chance = 25,
		min = 1,
		max = 1,},
		{name = "xtraores:osminum_lump",
		chance = 4,
		min = 1,
		max = 10,},
		{name = "xtraores:osminum_bar",
		chance = 4,
		min = 1,
		max = 10,},
		{name = "xtraores:pick_osminum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:pick_osminum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:axe_osminum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:spear_osminum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:shovel_osminum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:sword_osminum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:helmet_osminum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:chestplate_osminum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:shield_osminum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:leggings_osminum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:boots_osminum",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xomobs:osminumskeleton_egg",
		chance = 500,
		min = 1,
		max = 1,},
	},
	light_resistant = true,
	armor = 13,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
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
})
xomobs:register_spawn("xomobs:osminumskeleton", {"default:stone"},20, -1, 500, 5, -1000)

minetest.register_craftitem("xomobs:osminumskeleton_egg", {
	description = "osminum armored skeleton spawnegg",
	inventory_image = "xomobs_osminumskeletonegg.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "xomobs:osminumskeleton")
			itemstack:take_item()
		end
		return itemstack
	end,
})


xomobs:register_mob("xomobs:adamantiteskeleton", {
	type = "monster",
	hp_max = 15,
	hp_min = 15,
	collisionbox = {-0.4, -1.01, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "humanoid.b3d",
	textures = {
		{"xomobs_Skeleton.png", "xomobs_adamantitearmor.png", "xtraores_sword_adamantite.png"},
	},
	visual_size = {x=1,y=1},
	makes_footstep_sound = true,
	view_range = 20,
	walk_velocity = 1.10,
	run_velocity = 2.0,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	damage = 20,
		drops = {
		{name = "xebase:bone",
		chance = 1,
		min = 0,
		max = 3,},
		{name = "xtraores:stone_with_adamantite",
		chance = 25,
		min = 1,
		max = 1,},
		{name = "xtraores:adamantite_lump",
		chance = 4,
		min = 1,
		max = 10,},
		{name = "xtraores:adamantite_bar",
		chance = 4,
		min = 1,
		max = 10,},
		{name = "xtraores:pick_adamantite",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:pick_adamantite",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:axe_adamantite",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:spear_adamantite",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:shovel_adamantite",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:sword_adamantite",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:helmet_adamantite",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:chestplate_adamantite",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:shield_adamantite",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:leggings_adamantite",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:boots_adamantite",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xomobs:adamantiteskeleton_egg",
		chance = 500,
		min = 1,
		max = 1,},
	},
	light_resistant = true,
	armor = 10,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
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
})
xomobs:register_spawn("xomobs:adamantiteskeleton", {"default:stone"},20, -1, 500, 5, -2000)

minetest.register_craftitem("xomobs:adamantiteskeleton_egg", {
	description = "adamantite armored skeleton spawnegg",
	inventory_image = "xomobs_adamantiteskeletonegg.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "xomobs:adamantiteskeleton")
			itemstack:take_item()
		end
		return itemstack
	end,
})

xomobs:register_mob("xomobs:rariumskeleton", {
	type = "monster",
	hp_max = 15,
	hp_min = 15,
	collisionbox = {-0.4, -1.01, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "humanoid.b3d",
	textures = {
		{"xomobs_Skeleton.png", "xomobs_rariumarmor.png", "xtraores_sword_rarium.png"},
	},
	visual_size = {x=1,y=1},
	makes_footstep_sound = true,
	view_range = 20,
	walk_velocity = 2.20,
	run_velocity = 3.5,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	damage = 30,
		drops = {
		{name = "xebase:bone",
		chance = 1,
		min = 0,
		max = 3,},
		{name = "xtraores:stone_with_rarium",
		chance = 25,
		min = 1,
		max = 1,},
		{name = "xtraores:rarium_lump",
		chance = 4,
		min = 1,
		max = 10,},
		{name = "xtraores:rarium_bar",
		chance = 4,
		min = 1,
		max = 10,},
		{name = "xtraores:pick_rarium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:pick_rarium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:axe_rarium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:spear_rarium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:shovel_rarium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:sword_rarium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:helmet_rarium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:chestplate_rarium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:shield_rarium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:leggings_rarium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:boots_rarium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xomobs:rariumskeleton_egg",
		chance = 500,
		min = 1,
		max = 1,},
	},
	light_resistant = true,
	armor = 8,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
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
})
xomobs:register_spawn("xomobs:rariumskeleton", {"default:stone"},20, -1, 500, 5, -5000)

minetest.register_craftitem("xomobs:rariumskeleton_egg", {
	description = "rarium armored skeleton spawnegg",
	inventory_image = "xomobs_rariumskeletonegg.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "xomobs:rariumskeleton")
			itemstack:take_item()
		end
		return itemstack
	end,
})

xomobs:register_mob("xomobs:unobtaniumskeleton", {
	type = "monster",
	hp_max = 15,
	hp_min = 15,
	collisionbox = {-0.4, -1.01, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "humanoid.b3d",
	textures = {
		{"xomobs_Skeleton.png", "xomobs_unobtaniumarmor.png", "xtraores_sword_unobtanium.png"},
	},
	visual_size = {x=1,y=1},
	makes_footstep_sound = true,
	view_range = 20,
	walk_velocity = 3.00,
	run_velocity = 4.25,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	damage = 35,
		drops = {
		{name = "xebase:bone",
		chance = 1,
		min = 0,
		max = 3,},
		{name = "xtraores:stone_with_unobtanium",
		chance = 25,
		min = 1,
		max = 1,},
		{name = "xtraores:unobtanium_lump",
		chance = 4,
		min = 1,
		max = 10,},
		{name = "xtraores:unobtanium_bar",
		chance = 4,
		min = 1,
		max = 10,},
		{name = "xtraores:pick_unobtanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:pick_unobtanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:axe_unobtanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:spear_unobtanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:shovel_unobtanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:sword_unobtanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:helmet_unobtanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:chestplate_unobtanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:shield_unobtanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:leggings_unobtanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:boots_unobtanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xomobs:unobtaniumskeleton_egg",
		chance = 500,
		min = 1,
		max = 1,},
	},
	light_resistant = true,
	armor = 5,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
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
})
xomobs:register_spawn("xomobs:unobtaniumskeleton", {"default:stone"},20, -1, 500, 5, -10000)

minetest.register_craftitem("xomobs:unobtaniumskeleton_egg", {
	description = "unobtanium armored skeleton spawnegg",
	inventory_image = "xomobs_unobtaniumskeletonegg.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "xomobs:unobtaniumskeleton")
			itemstack:take_item()
		end
		return itemstack
	end,
})

xomobs:register_mob("xomobs:titaniumskeleton", {
	type = "monster",
	hp_max = 15,
	hp_min = 15,
	collisionbox = {-0.4, -1.01, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "humanoid.b3d",
	textures = {
		{"xomobs_Skeleton.png", "xomobs_titaniumarmor.png", "xtraores_sword_titanium.png"},
	},
	visual_size = {x=1,y=1},
	makes_footstep_sound = true,
	view_range = 20,
	walk_velocity = 3.00,
	run_velocity = 4.25,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	damage = 50,
		drops = {
		{name = "xebase:bone",
		chance = 1,
		min = 0,
		max = 3,},
		{name = "xtraores:stone_with_titanium",
		chance = 25,
		min = 1,
		max = 1,},
		{name = "xtraores:titanium_lump",
		chance = 4,
		min = 1,
		max = 10,},
		{name = "xtraores:titanium_bar",
		chance = 4,
		min = 1,
		max = 10,},
		{name = "xtraores:pick_titanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:pick_titanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:axe_titanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:spear_titanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:shovel_titanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores:sword_titanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:helmet_titanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:chestplate_titanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:shield_titanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:leggings_titanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xtraores_armor:boots_titanium",
		chance = 40,
		min = 1,
		max = 1,},
		{name = "xomobs:titaniumskeleton_egg",
		chance = 500,
		min = 1,
		max = 1,},
	},
	light_resistant = true,
	armor = 3,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
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
})
xomobs:register_spawn("xomobs:titaniumskeleton", {"default:stone"},20, -1, 500, 5, -20000)

minetest.register_craftitem("xomobs:titaniumskeleton_egg", {
	description = "titanium armored skeleton spawnegg",
	inventory_image = "xomobs_titaniumskeletonegg.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "xomobs:titaniumskeleton")
			itemstack:take_item()
		end
		return itemstack
	end,
})

xomobs:register_mob("xomobs:legendaryskeleton", {
	type = "monster",
	hp_max = 300,
	hp_min = 300,
	collisionbox = {-0.4, -1.01, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "humanoid.b3d",
	textures = {
		{"xomobs_Skeleton.png", "xomobs_legendaryarmor.png", "xebase_true_excalibur.png"},
	},
	visual_size = {x=1,y=1},
	makes_footstep_sound = true,
	view_range = 20,
	walk_velocity = 2.50,
	run_velocity = 3.50,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	damage = 200,
		drops = {
		{name = "xomobs:slimeboss_summon",
		chance = 20,
		min = 1,
		max = 1,},
		{name = "xebase:bone",
		chance = 1,
		min = 3,
		max = 6,},
		{name = "xebase:legendary_bar",
		chance = 1,
		min = 0,
		max = 5,},
		{name = "xebase:drill_legendary",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "xtraores:sword_excalibur",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "xebase:true_excalibur",
		chance = 100,
		min = 1,
		max = 1,},
		{name = "xebase:true_gungir",
		chance = 200,
		min = 1,
		max = 1,},
		{name = "xebase:chestplate_rusty",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "xebase:shield_rusty",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "xebase:leggings_rusty",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "xebase:boots_rusty",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "xomobs:legendaryskeleton_egg",
		chance = 1000,
		min = 1,
		max = 1,},
	},
	light_resistant = true,
	armor = 15,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
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
})
xomobs:register_spawn("xomobs:legendaryskeleton", {"default:stone"},20, -1, 1000, 5, -30000)

minetest.register_craftitem("xomobs:legendaryskeleton_egg", {
	description = "legendary armored skeleton spawnegg",
	inventory_image = "xomobs_legendaryskeletonegg.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "xomobs:legendaryskeleton")
			itemstack:take_item()
		end
		return itemstack
	end,
})

xomobs:register_mob("xomobs:radioactive_alien", {
	type = "monster",
	hp_max = 1000,
	hp_min = 1000,
	collisionbox = {-0.4, -1.01, -0.4, 0.4, 1.1, 0.4},
	visual = "mesh",
	mesh = "humanoid.b3d",
	textures = {
		{"xomobs_radioactive.png", "xomobs_noarmor.png", "xebase_laser_rifle.png"},
	},
	visual_size = {x=1,y=1},
	makes_footstep_sound = true,
	view_range = 50,
	walk_velocity = 2.50,
	run_velocity = 3.50,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	damage = 300,
		drops = {
		{name = "xebase:laser",
		chance = 100,
		min = 1,
		max = 1,},
		{name = "xebase:laser_shotgun",
		chance = 200,
		min = 1,
		max = 1,},
		{name = "xebase:battery",
		chance = 1,
		min = 3,
		max = 10,},
		{name = "xebase:red_lightsaber",
		chance = 200,
		min = 1,
		max = 1,},
		{name = "xebase:white_lightsaber",
		chance = 200,
		min = 1,
		max = 1,},
		{name = "xebase:blue_lightsaber",
		chance = 200,
		min = 1,
		max = 1,},
		{name = "xebase:yellow_lightsaber",
		chance = 200,
		min = 1,
		max = 1,},
		{name = "xebase:green_lightsaber",
		chance = 200,
		min = 1,
		max = 1,},
		{name = "xebase:purple_lightsaber",
		chance = 200,
		min = 1,
		max = 1,},
		{name = "xebase:radioactive_tissue_sample",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "xomobs:radioactive_alien_egg",
		chance = 500,
		min = 1,
		max = 1,},
	},
	light_resistant = true,
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	attack_type = "shoot",
		arrow = "xomobs:laser",
		shoot_interval = 0.5,
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
})

xomobs:register_spawn("xomobs:radioactive_alien", {"xebase:star"},20, -1, 200, 35, 8000)

minetest.register_craftitem("xomobs:radioactive_alien_egg", {
	description = "radiactive alien spawnegg",
	inventory_image = "xomobs_radioactive_alienegg.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "xomobs:radioactive_alien")
			itemstack:take_item()
		end
		return itemstack
	end,
})

xomobs:register_mob("xomobs:corrupt_player", {
	type = "monster",
	hp_max = 1000,
	hp_min = 1000,
	collisionbox = {-0.4, -1.01, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "humanoid.b3d",
	textures = {
		{"xomobs_corrupt.png", "xomobs_noarmor.png", "xebase_red_lightsaber.png"},
	},
	visual_size = {x=1,y=1},
	makes_footstep_sound = true,
	view_range = 20,
	walk_velocity = 2.50,
	run_velocity = 3.50,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	damage = 300,
		drops = {
		{name = "xebase:red_lightsaber",
		chance = 200,
		min = 1,
		max = 1,},
		{name = "xebase:white_lightsaber",
		chance = 200,
		min = 1,
		max = 1,},
		{name = "xebase:blue_lightsaber",
		chance = 200,
		min = 1,
		max = 1,},
		{name = "xebase:yellow_lightsaber",
		chance = 200,
		min = 1,
		max = 1,},
		{name = "xebase:green_lightsaber",
		chance = 200,
		min = 1,
		max = 1,},
		{name = "xebase:purple_lightsaber",
		chance = 200,
		min = 1,
		max = 1,},
		{name = "xebase:nebula_tissue_sample",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "xomobs:corrupt_player_egg",
		chance = 500,
		min = 1,
		max = 1,},
	},
	light_resistant = true,
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
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
})

xomobs:register_spawn("xomobs:corrupt_player", {"xebase:corrupt"},20, -1, 200, 35, 8000)

minetest.register_craftitem("xomobs:corrupt_player_egg", {
	description = "corrupt player spawnegg",
	inventory_image = "xomobs_corrupt_playeregg.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "xomobs:corrupt_player")
			itemstack:take_item()
		end
		return itemstack
	end,
})

xomobs:register_arrow("xomobs:laser", {
	visual = "wielditem",
	visual_size = {x=1.0, y=1.0},
	textures = {"xebase:lasershott"},
	velocity = 30,

	hit_player = function(self, player)
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=200},
		}, 0)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=200},
		}, 0)
	end,

	hit_node = function(self, pos, node)
	end
})

xomobs:register_arrow("xomobs:laser2", {
	visual = "wielditem",
	visual_size = {x=1.0, y=1.0},
	textures = {"xebase:lasershott"},
	velocity = 75,

	hit_player = function(self, player)
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=200},
		}, 0)
	end,

})

xomobs:register_mob("xomobs:illusion_alien", {
	type = "monster",
	hp_max = 1000,
	hp_min = 1000,
	collisionbox = {-0.4, -1.01, -0.4, 0.4, 1.1, 0.4},
	visual = "mesh",
	mesh = "humanoid.b3d",
	textures = {
		{"xomobs_illusion.png", "xomobs_noarmor.png", "xebase_laser_rifle.png"},
	},
	visual_size = {x=1,y=1},
	makes_footstep_sound = true,
	view_range = 50,
	walk_velocity = 2.50,
	run_velocity = 3.50,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	damage = 300,
		drops = {
		{name = "xebase:bigmama_blade",
		chance = 2000,
		min = 1,
		max = 1,},
		{name = "xebase:plasmagun",
		chance = 1000,
		min = 1,
		max = 1,},
		{name = "xebase:laser_rifle",
		chance = 100,
		min = 1,
		max = 1,},
		{name = "xebase:battery",
		chance = 1,
		min = 5,
		max = 15,},
		{name = "xebase:bigmama_handle",
		chance = 2000,
		min = 1,
		max = 1,},
		{name = "xebase:illusium_bar",
		chance = 1,
		min = 0,
		max = 5,},
		{name = "xebase:illusion_tissue_sample",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "xomobs:illusion_alien_egg",
		chance = 500,
		min = 1,
		max = 1,},
	},
	light_resistant = true,
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	attack_type = "shoot",
		arrow = "xomobs:illusion",
		shoot_interval = 0.5,
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
})

xomobs:register_spawn("xomobs:illusion_alien", {"xebase:comet"},20, -1, 200, 35, 8000)

minetest.register_craftitem("xomobs:illusion_alien_egg", {
	description = "illusion alien spawnegg",
	inventory_image = "xomobs_illusion_alienegg.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "xomobs:illusion_alien")
			itemstack:take_item()
		end
		return itemstack
	end,
})

xomobs:register_arrow("xomobs:illusion", {
	visual = "wielditem",
	visual_size = {x=0.0, y=0.0},
	textures = {"xebase:lasershott"},
	velocity = 30,

	hit_player = function(self, player)
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=200},
		}, 0)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=200},
		}, 0)
	end,

	hit_node = function(self, pos, node)
	end
})

xomobs:register_mob("xomobs:mettie", {
	type = "monster",
	hp_max = 1500,
	hp_min = 1500,
	collisionbox = {-0.4, -0.00, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "humanoid.b3d",
	textures = {
		{"xomobs_mettie.png", "xomobs_noarmor.png", "xomobs_noarmor.png"},
	},
	visual_size = {x=1,y=1},
	makes_footstep_sound = true,
	view_range = 20,
	walk_velocity = 2.00,
	run_velocity = 3.00,
	blood_texture = "xebase_meteorite_lump.png",
	blood_amount = 20,
	damage = 200,
		drops = {
		{name = "xebase:meteorite",
		chance = 3,
		min = 0,
		max = 5,},
		{name = "xebase:rifle",
		chance = 250,
		min = 1,
		max = 1,},
		{name = "xebase:meteorite_shard",
		chance = 6,
		min = 0,
		max = 5,},
		{name = "xebase:meteorite_nugget",
		chance = 12,
		min = 0,
		max = 5,},
		{name = "xebase:meteorite_lump",
		chance = 24,
		min = 0,
		max = 5,},
		{name = "xebase:meteorite_bar",
		chance = 48,
		min = 0,
		max = 5,},
		{name = "xebase:living_meteorite",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "xomobs:mettie_egg",
		chance = 500,
		min = 1,
		max = 1,},
	},
	light_resistant = true,
	armor = 100,
	drawtype = "front",
	replace_rate = 1,
	replace_what = {"air"},
	replace_with = "xebase:meteor_flame",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
  fly = true,
	attack_type = "dogfight",
	reach = 2,
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
})

xomobs:register_spawn("xomobs:mettie", {"xebase:meteorite"},20, -1, 200, 20, 8000)

minetest.register_craftitem("xomobs:mettie_egg", {
	description = "mettie spawnegg",
	inventory_image = "xomobs_mettieegg.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "xomobs:mettie")
			itemstack:take_item()
		end
		return itemstack
	end,
})


xomobs:register_mob("xomobs:solar_knight", {
	type = "monster",
	hp_max = 1000,
	hp_min = 1000,
	collisionbox = {-0.4, -1.01, -0.4, 0.4, 1.1, 0.4},
	visual = "mesh",
	mesh = "humanoid.b3d",
	textures = {
		{"xomobs_noarmor.png", "xomobs_fieryarmor.png", "xomobs_noarmor.png"},
	},
	visual_size = {x=1,y=1},
	makes_footstep_sound = true,
	view_range = 50,
	walk_velocity = 2.50,
	run_velocity = 3.50,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	damage = 300,
		drops = {
		{name = "xebase:plasmagun",
		chance = 200,
		min = 1,
		max = 1,},
		{name = "xebase:battery",
		chance = 1,
		min = 3,
		max = 10,},
		{name = "xebase:sun_stone",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "xebase:solarium_bar",
		chance = 50,
		min = 1,
		max = 1,},
		{name = "xomobs:solar_knight_egg",
		chance = 500,
		min = 1,
		max = 1,},
	},
	light_resistant = true,
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	attack_type = "shoot",
		arrow = "xomobs:fireball",
		shoot_interval = 3.0,
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
})

xomobs:register_spawn("xomobs:solar_knight", {"xebase:sunstone"},20, -1, 200, 35, 8000)

minetest.register_craftitem("xomobs:solar_knight_egg", {
	description = "radiactive alien spawnegg",
	inventory_image = "xomobs_solar_knightegg.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "xomobs:solar_knight")
			itemstack:take_item()
		end
		return itemstack
	end,
})

xomobs:register_mob("xomobs:corrupt_slime", {
	type = "monster",
	hp_max = 200,
	hp_min = 200,
	collisionbox = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	visual = "cube",
	textures = {
		{"xomobs_slimeside_corrupt.png", "xomobs_slimeside_corrupt.png", "xomobs_slimeside_corrupt.png", "xomobs_slimeside_corrupt.png", "xomobs_slimeface_corrupt.png", "xomobs_slimeside_corrupt.png"},
	},
	visual_size = {x=1,y=1},
	makes_footstep_sound = true,
	view_range = 1000,
	walk_velocity = 10,
	run_velocity = 10,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	damage = 150,
		drops = {
		{name = "xebase:purple_slime_ball",
		chance = 1,
		min = 0,
		max = 5,},
		{name = "xebase:jello",
		chance = 1,
		min = 0,
		max = 5,},
	},
	light_resistant = true,
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	walk_chance = 0,
	jump_chance = 30,
	jump_height = 15,
	fall_speed = -50,
	reach = 3,
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
})

xomobs:register_spawn("xomobs:corrupt_slime", {"xebase:grass"},20, -1, 200, 15, 20000)

xomobs:register_spawn("xomobs:corrupt_slime", {"xebase:stone"},20, -1, 200, 15, 20000)

xomobs:register_arrow("xomobs:fireball", {
	visual = "sprite",
	visual_size = {x=1, y=1},
	textures = {"xebase_fireball.png"},
	velocity = 15,

	-- direct hit, no fire... just plenty of pain
	hit_player = function(self, player)
		local s = self.object:getpos()
		local p = player:getpos()
		local vec = {x=s.x-p.x, y=s.y-p.y, z=s.z-p.z}
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=300},
		}, vec)
	end,

	-- node hit, bursts into flame (cannot blast through obsidian)
	hit_node = function(self, pos, node)

		for dx=-1,1 do
			for dy=-1,1 do
				for dz=-1,1 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.env:get_node(p).name
					if n ~= "default:diamondblock" and n ~= "xebase:sunstone" then	
					if minetest.registered_nodes[n].groups.flammable or math.random(1, 100) <= 30 then
						minetest.env:set_node(p, {name="xebase:hellfire"})
					else
						minetest.env:set_node(p, {name="xebase:hellfire"})
					end
					end
				end
			end
		end
	end
})

xomobs:register_arrow("xomobs:fireballil", {
	visual = "sprite",
	visual_size = {x=1, y=1},
	textures = {"xebase_fireball.png"},
	velocity = 15,

	-- direct hit, no fire... just plenty of pain
	hit_player = function(self, player)
		local s = self.object:getpos()
		local p = player:getpos()
		local vec = {x=s.x-p.x, y=s.y-p.y, z=s.z-p.z}
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=300},
		}, vec)
	end,

	-- node hit, bursts into flame (cannot blast through obsidian)
	hit_node = function(self, pos, node)

		for dx=-1,1 do
			for dy=0,2 do
				for dz=0,2 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.env:get_node(p).name
					if n ~= "default:diamondblock" and n ~= "xebase:sunstone" then	
					if minetest.registered_nodes[n].groups.flammable or math.random(0, 0) <= 30 then
						minetest.env:set_node(p, {name="xebase:illuminati_flame"})
					else
						minetest.env:set_node(p, {name="xebase:illuminati_flame"})
					end
					end
				end
			end
		end
	end
})

xomobs:register_mob("xomobs:zombie", {
	type = "monster",
	hp_max = 500,
	hp_min = 500,
	collisionbox = {-0.4, -1.01, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "humanoid.b3d",
	textures = {
		{"xomobs_zombie.png", "xomobs_noarmor.png", "xomobs_noarmor.png"},
	},
	visual_size = {x=1,y=1},
	makes_footstep_sound = true,
	view_range = 20,
	walk_velocity = 1.10,
	run_velocity = 2,
	blood_texture = "xomobs_bone.png",
	blood_amount = 20,
	damage = 300,
		drops = {
	},
	light_resistant = true,
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
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
})
xomobs:register_spawn("xomobs:zombie", {"xebase:illuminati_flame"},20, -1, 50, 20, 8000)





