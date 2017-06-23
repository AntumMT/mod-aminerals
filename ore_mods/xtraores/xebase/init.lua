minetest.register_node("xebase:illuminati_block", {
	description = "illuminati block(not exactly a block... more to a triangle...)",
	drawtype = "mesh",
	mesh = "illuminati.obj",
	tiles = {"xomobs_illuminati.png"},
	is_ground_content = true,
	visual_scale = 0.6,
	light_source = 14,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("xebase:cryptonite_block", {
	description = "cryptonite block",
	tiles = {"xebase_block_cryptonite.png"},
	is_ground_content = true,
	light_source = 14,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xebase:cryptonite_block',
	recipe = {
		{'xebase:cryptonite_bar','xebase:cryptonite_bar','xebase:cryptonite_bar'},
	{'xebase:cryptonite_bar','xebase:cryptonite_bar','xebase:cryptonite_bar'},
	{'xebase:cryptonite_bar','xebase:cryptonite_bar','xebase:cryptonite_bar'},
	}
})

minetest.register_craft({
	output = 'xebase:cryptonite_bar 9',
	recipe = {
	{'','xebase:cryptonite_block',''},
	}
})

minetest.register_node("xebase:cryptonite_brick", {
	description = "cryptonite brick",
	tiles = {"xebase_brick_cryptonite.png"},
	is_ground_content = true,
	light_source = 7,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xebase:cryptonite_brick',
	recipe = {
		{'','xebase:cryptonite_bar',''},
	{'','default:cobble',''},
	}
})


minetest.register_node("xebase:solarium_block", {
	description = "solarium block",
	tiles = {"xebase_block_solarium.png"},
	is_ground_content = true,
	light_source = 14,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xebase:solarium_block',
	recipe = {
		{'xebase:solarium_bar','xebase:solarium_bar','xebase:solarium_bar'},
	{'xebase:solarium_bar','xebase:solarium_bar','xebase:solarium_bar'},
	{'xebase:solarium_bar','xebase:solarium_bar','xebase:solarium_bar'},
	}
})

minetest.register_craft({
	output = 'xebase:solarium_bar 9',
	recipe = {
	{'','xebase:solarium_block',''},
	}
})

minetest.register_node("xebase:solarium_brick", {
	description = "solarium brick",
	tiles = {
		{
			name = "xebase_brick_solarium.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1
			},
		},
	},
	is_ground_content = true,
	light_source = 7,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xebase:solarium_brick',
	recipe = {
		{'','xebase:solarium_bar',''},
	{'','default:cobble',''},
	}
})

minetest.register_craft({
	output = 'xebase:fake_lava 3',
	recipe = {
		{'','xebase:illusium_bar',''},
	{'xebase:illusium_bar','bucket:bucket_lava','xebase:illusium_bar'},
	{'','xebase:illusium_bar',''},
	}
}) 

minetest.register_node("xebase:fake_lava", {
	description = "fake lava",
	drawtype = "glasslike",
	tiles = {
		{
			name = "default_lava_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1
			},
		},
	},
	paramtype = "light",
	light_source = 14,
	walkable = false,
	sunlight_propagates = true,
	groups = {dig_immediate = 3},
})

minetest.register_craft({
	output = 'xomobs:golem_egg',
	recipe = {
		{'xebase:nebula_tissue_sample','','xebase:radiactive_tissue_sample'},
	{'','xebase:illusion_tissue_sample',''},
	{'xebase:sun_stone','','xebase:living_meteorite'},
	}
})

minetest.register_craft({
	output = 'xomobs:illuminati_egg',
	recipe = {
		{'xebase:slime','','xebase:chemical'},
	}
})

minetest.register_craftitem("xebase:horn_of_plenty", {
	description = "horn of plenty(hp+1|infinite use!)",
	stack_max= 1,
	inventory_image = "xebase_horn_of_plenty.png",
	on_use = minetest.item_eat(1, 'xebase:horn_of_plenty'),
})

minetest.register_node("xebase:illuminati_flame", {
	drawtype = "firelike",
	tiles = {
		{
			name = "xebase_illuminatiflame.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1
			},
		},
	},
	inventory_image = "xebase_illuminatiflame.png",
	paramtype = "light",
	light_source = 14,
	walkable = false,
	buildable_to = true,
	sunlight_propagates = true,
	damage_per_second = 4,
	groups = {dig_immediate = 3, not_in_creative_inventory = 1},
	drop = "",
})

minetest.register_abm({
	nodenames = {"xebase:illuminati_flame"},
	interval = 8,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y+0
		if minetest.get_node(pos).name == "xebase:illuminati_flame" then
			node.name = "air"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_craftitem("xebase:chemical", {
	description = "strange chemical(a chemical that was gotten from the boss, can be used with item from other boss to make the final boss)",
	inventory_image = "xebase_chemical.png",
})

minetest.register_node("xebase:slime_block", {
	description = "purple slime block",
	tiles = {"xebase_purple_slime_block.png"},
	is_ground_content = true,
	groups = {snappy=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xebase:slime_block',
	recipe = {
		{'xebase:purple_slime_ball','xebase:purple_slime_ball','xebase:purple_slime_ball'},
	{'xebase:purple_slime_ball','xebase:purple_slime_ball','xebase:purple_slime_ball'},
	{'xebase:purple_slime_ball','xebase:purple_slime_ball','xebase:purple_slime_ball'},
	}
})

minetest.register_craftitem("xebase:purple_slime_ball", {
	description = "purple slimeball",
	inventory_image = "xebase_purple_slimeball.png",
})

minetest.register_craft({
	output = 'default:torch 8',
	recipe = {
		{'xebase:purple_slime_ball'},
		{'group:stick'},
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "xebase:purple_slime_ball",
	burntime = 100,
})

minetest.register_craftitem("xebase:jello", {
	description = "purple jello(hp+5)",
	inventory_image = "xebase_jello.png",
	on_use = minetest.item_eat(5),
})

minetest.register_node("xebase:shifty_block", {
	description = "shifty block(shifts from visible to invisible, and back)",
	drawtype = "glasslike",
	tiles = {
		{
			name = "xebase_block_shifty.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 25
			},
		},
	},
	is_ground_content = true,
	paramtype = "light",
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xebase:shifty_block',
	recipe = {
		{'','xebase:illusium_bar',''},
	{'xebase:illusium_bar','default:glass','xebase:illusium_bar'},
	{'','xebase:illusium_bar',''},
	}
})


minetest.register_node("xebase:trollface", {
	description = "trololololololololololololoolololololololololololololololololololololololololololololloololololololololololoolololololololololoololollolololololololololololololololololololololololololololololollolololololololoololol",
	tiles = {"xebabse_troll_block.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_abm({
	nodenames = {"xebase:trollface"},
	interval = 20,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y+0
		if minetest.get_node(pos).name == "xebase:trollface" then
			node.name = "air"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	nodenames = {"xebase:trollface"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "nssm:venomous_gas" then
			node.name = "xebase:trollface"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:trollface"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-1
		if minetest.get_node(pos).name == "nssm:venomous_gas" then
			node.name = "xebase:trollface"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:trollface"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.x = pos.x-1
		if minetest.get_node(pos).name == "nssm:venomous_gas" then
			node.name = "xebase:trollface"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:trollface"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.x = pos.x+1
		if minetest.get_node(pos).name == "nssm:venomous_gas" then
			node.name = "xebase:trollface"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:trollface"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.z+1
		if minetest.get_node(pos).name == "nssm:venomous_gas" then
			node.name = "xebase:trollface"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:trollface"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.z = pos.z-1
		if minetest.get_node(pos).name == "nssm:venomous_gas" then
			node.name = "xebase:trollface"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	nodenames = {"xebase:rarium_block"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "nssm:venomous_gas" then
			node.name = "xebase:trollface"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_craftitem("xebase:slime", {
	description = "slime lord's slime(all whats left from slime lord, if it gets mixed up with the part of other boss, it makes even stronger boss!)",
	inventory_image = "xebase_slime.png",
})

minetest.register_tool("xebase:bow_infinity", {
	description = "infinity bow(ranged damage 20|needs no ammo to shoot!)",
	inventory_image = "xebase_bow_infinity.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "") then
			minetest.sound_play("", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xebase:infinityarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 25, y=dir.y * 25, z=dir.z * 25})
				obj:setacceleration({x=dir.x * -3, y=-5, z=dir.z * -3})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local xebase_infinityarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'xebase:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xebase_infinityarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.1 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xebase:infinityarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 20
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 20
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xebase:infinityarrow", xebase_infinityarrow )

minetest.register_tool("xebase:bow_tri", {
	description = "tribow(ranged damage 50|uses arrows to shoot|shoots 3 at once)",
	inventory_image = "xebase_bow_tri.png",
	wield_scale = {x=2.0,y=2.0,z=0.5},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xebase:arrow 3") then
			minetest.sound_play("", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xebase:arrow 3")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xebase:triarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 25, y=dir.y * 25, z=dir.z * 25})
				obj:setacceleration({x=dir.x * -3, y=-5, z=dir.z * -3})

			pos.y = pos.y + 0
			local obj = minetest.add_entity(pos, "xebase:triarrow")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 25, y=dir.y * 25, z=dir.z * 35})
				obj:setacceleration({x=dir.x * -3, y=-5, z=dir.z * -3})

			pos.y = pos.y + 0
			local obj = minetest.add_entity(pos, "xebase:triarrow")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 25, y=dir.y * 25, z=dir.z * 15})
				obj:setacceleration({x=dir.x * -3, y=-5, z=dir.z * -3})

				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local xebase_triarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'xebase:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xebase_triarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.1 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xebase:triarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 50
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 50
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "xebase:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xebase:triarrow", xebase_triarrow )



minetest.register_tool("xebase:bow_phantom", {
	description = "phantom bow(ranged damage 50|uses arrows to shoot|penetrates blocks and targets)",
	inventory_image = "xebase_bow_phantom.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xebase:arrow 1") then
			minetest.sound_play("", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xebase:arrow")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xebase:phantomarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 25, y=dir.y * 25, z=dir.z * 25})
				obj:setacceleration({x=dir.x * -3, y=-5, z=dir.z * -3})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local xebase_phantomarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'xebase:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xebase_phantomarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.1 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xebase:phantomarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 50
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				end
			else
				local damage = 50
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xebase:phantomarrow", xebase_phantomarrow )


minetest.register_craftitem("xebase:arrow", {
	description = "arrow (ammunition for bows)",
	stack_max= 1000,
	inventory_image = "xebase_arrow_inv.png",
})
minetest.register_craft({
	output = 'xebase:arrow 5',
	recipe = {
		{'', 'default:steel_ingot', ''},
		{'', 'default:stick', ''},
		{'default:paper', 'default:stick', 'default:paper'},
	}
})

minetest.register_craft({
	output = 'xebase:arrow 3',
	recipe = {
		{'', 'default:steel_ingot', ''},
		{'', 'default:stick', ''},
		{'default:leaves', 'default:stick', 'default:leaves'},
	}
})

minetest.register_craftitem("xebase:shotarrow", {
	inventory_image = "xebase_arrow.png",
})

minetest.register_tool("xebase:bow_platinum", {
	description = "platinum bow(ranged damage 7|uses arrows to shoot)",
	inventory_image = "xebase_bow_platinum.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xebase:arrow 1") then
			minetest.sound_play("", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xebase:arrow")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xebase:plarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 25, y=dir.y * 25, z=dir.z * 25})
				obj:setacceleration({x=dir.x * -3, y=-5, z=dir.z * -3})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local xebase_plarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'xebase:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xebase_plarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.1 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xebase:plarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 7
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 7
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "xebase:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xebase:plarrow", xebase_plarrow )

minetest.register_craft({
	output = 'xebase:bow_platinum',
	recipe = {
		{'', 'xtraores:platinum_bar', 'xtraores:platinum_bar'},
		{'xtraores:platinum_bar', '', 'farming:cotton'},
		{'xtraores:platinum_bar', 'farming:cotton', '' },
	}
})

minetest.register_tool("xebase:bow_cobalt", {
	description = "cobalt bow(ranged damage 10|uses arrows to shoot)",
	inventory_image = "xebase_bow_cobalt.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xebase:arrow 1") then
			minetest.sound_play("", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xebase:arrow")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xebase:cobaltarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 25, y=dir.y * 25, z=dir.z * 25})
				obj:setacceleration({x=dir.x * -3, y=-5, z=dir.z * -3})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local xebase_cobaltarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'xebase:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xebase_cobaltarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.1 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xebase:cobaltarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 10
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 10
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "xebase:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xebase:cobaltarrow", xebase_cobaltarrow )

minetest.register_craft({
	output = 'xebase:bow_cobalt',
	recipe = {
		{'', 'xtraores:cobalt_bar', 'xtraores:cobalt_bar'},
		{'xtraores:cobalt_bar', '', 'farming:cotton'},
		{'xtraores:cobalt_bar', 'farming:cotton', '' },
	}
})

minetest.register_tool("xebase:bow_osminum", {
	description = "osminum bow(ranged damage 15|uses arrows to shoot)",
	inventory_image = "xebase_bow_osminum.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xebase:arrow 1") then
			minetest.sound_play("", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xebase:arrow")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xebase:osminumarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 25, y=dir.y * 25, z=dir.z * 25})
				obj:setacceleration({x=dir.x * -3, y=-5, z=dir.z * -3})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local xebase_osminumarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'xebase:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xebase_osminumarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.1 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xebase:osminumarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 15
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 15
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "xebase:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xebase:osminumarrow", xebase_osminumarrow )

minetest.register_craft({
	output = 'xebase:bow_osminum',
	recipe = {
		{'', 'xtraores:osminum_bar', 'xtraores:osminum_bar'},
		{'xtraores:osminum_bar', '', 'farming:cotton'},
		{'xtraores:osminum_bar', 'farming:cotton', '' },
	}
})

minetest.register_tool("xebase:bow_adamantite", {
	description = "adamantite bow(ranged damage 20|uses arrows to shoot)",
	inventory_image = "xebase_bow_adamantite.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xebase:arrow 1") then
			minetest.sound_play("", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xebase:arrow")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xebase:adamantitearrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 25, y=dir.y * 25, z=dir.z * 25})
				obj:setacceleration({x=dir.x * -3, y=-5, z=dir.z * -3})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local xebase_adamantitearrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'xebase:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xebase_adamantitearrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.1 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xebase:adamantitearrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 20
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 20
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "xebase:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xebase:adamantitearrow", xebase_adamantitearrow )

minetest.register_craft({
	output = 'xebase:bow_adamantite',
	recipe = {
		{'', 'xtraores:adamantite_bar', 'xtraores:adamantite_bar'},
		{'xtraores:adamantite_bar', '', 'farming:cotton'},
		{'xtraores:adamantite_bar', 'farming:cotton', '' },
	}
})


minetest.register_tool("xebase:bow_rarium", {
	description = "rarium bow(ranged damage 30|uses arrows to shoot)",
	inventory_image = "xebase_bow_rarium.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xebase:arrow 1") then
			minetest.sound_play("", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xebase:arrow")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xebase:rariumarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 25, y=dir.y * 25, z=dir.z * 25})
				obj:setacceleration({x=dir.x * -3, y=-5, z=dir.z * -3})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local xebase_rariumarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'xebase:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xebase_rariumarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.1 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xebase:rariumarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 30
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 30
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "xebase:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xebase:rariumarrow", xebase_rariumarrow )

minetest.register_craft({
	output = 'xebase:bow_rarium',
	recipe = {
		{'', 'xtraores:rarium_bar', 'xtraores:rarium_bar'},
		{'xtraores:rarium_bar', '', 'farming:cotton'},
		{'xtraores:rarium_bar', 'farming:cotton', '' },
	}
})

minetest.register_tool("xebase:bow_unobtanium", {
	description = "unobtanium bow(ranged damage 35|uses arrows to shoot)",
	inventory_image = "xebase_bow_unobtanium.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xebase:arrow 1") then
			minetest.sound_play("", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xebase:arrow")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xebase:unobtaniumarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 25, y=dir.y * 25, z=dir.z * 25})
				obj:setacceleration({x=dir.x * -3, y=-5, z=dir.z * -3})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local xebase_unobtaniumarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'xebase:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xebase_unobtaniumarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.1 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xebase:unobtaniumarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 35
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 35
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "xebase:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xebase:unobtaniumarrow", xebase_unobtaniumarrow )

minetest.register_craft({
	output = 'xebase:bow_unobtanium',
	recipe = {
		{'', 'xtraores:unobtanium_bar', 'xtraores:unobtanium_bar'},
		{'xtraores:unobtanium_bar', '', 'farming:cotton'},
		{'xtraores:unobtanium_bar', 'farming:cotton', '' },
	}
})

minetest.register_tool("xebase:bow_titanium", {
	description = "titanium bow(ranged damage 40|uses arrows to shoot)",
	inventory_image = "xebase_bow_titanium.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xebase:arrow 1") then
			minetest.sound_play("", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xebase:arrow")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xebase:titaniumarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 25, y=dir.y * 25, z=dir.z * 25})
				obj:setacceleration({x=dir.x * -3, y=-5, z=dir.z * -3})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local xebase_titaniumarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'xebase:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xebase_titaniumarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.1 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xebase:titaniumarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 40
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 40
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "xebase:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xebase:titaniumarrow", xebase_titaniumarrow )

minetest.register_craft({
	output = 'xebase:bow_titanium',
	recipe = {
		{'', 'xtraores:titanium_bar', 'xtraores:titanium_bar'},
		{'xtraores:titanium_bar', '', 'farming:cotton'},
		{'xtraores:titanium_bar', 'farming:cotton', '' },
	}
})



minetest.register_craft({
	output = 'xebase:flaming_sword',
	recipe = {
		{'xebase:solarium_bar','xebase:solarium_bar','xebase:solarium_bar'},
	{'xebase:solarium_bar', 'xebase:true_excalibur','xebase:solarium_bar'},
	{'xebase:solarium_bar','xebase:true_gungir','xebase:solarium_bar'},
	}
})

minetest.register_tool("xebase:flaming_sword", {
	description = "flaming sword(a sword forged out of fire, deals 300 dmg!) ",
	range = 10,
	wield_scale = {x=2.5,y=2.5,z=1.0},
	inventory_image = "xebase_flaming_Sword.png",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.0125, [2]=0.05, [3]=0.006}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=300, immortal=1},
	}
})

minetest.register_craftitem("xebase:sun_stone", {
	description = "sun stone(a stone with miniature sun inside!)",
	inventory_image = "xebase_sun_stone.png",
})


minetest.register_node("xebase:meteor_flame", {
	drawtype = "firelike",
	tiles = {
		{
			name = "xebase_meteorflame.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1
			},
		},
	},
	inventory_image = "xebase_meteorflame.png",
	paramtype = "light",
	light_source = 14,
	walkable = false,
	buildable_to = true,
	sunlight_propagates = true,
	damage_per_second = 1,
	groups = {dig_immediate = 3, not_in_creative_inventory = 1},
	drop = "",
})

minetest.register_node("xebase:hellfire", {
	drawtype = "firelike",
	tiles = {
		{
			name = "xebase_hellfire.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1
			},
		},
	},
	inventory_image = "xebase_hellfire.png",
	paramtype = "light",
	light_source = 14,
	walkable = false,
	buildable_to = true,
	sunlight_propagates = true,
	damage_per_second = 2,
	groups = {dig_immediate = 3, not_in_creative_inventory = 1},
	drop = "",
})


minetest.register_abm({
	nodenames = {"xebase:meteor_flame"},
	interval = 10,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y+0
		if minetest.get_node(pos).name == "xebase:meteor_flame" then
			node.name = "air"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	nodenames = {"xebase:hellfire"},
	interval = 10,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y+0
		if minetest.get_node(pos).name == "xebase:hellfire" then
			node.name = "air"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_craftitem("xebase:rifleshot", {
	wield_scale = {x=1.0,y=1,z=0.33},
	inventory_image = "xebase_rifleshot.png",
})

minetest.register_tool("xebase:rifle", {
	description = "rifle(ranged damage 150|uses titanium bullets to shoot|penetrates targets)",
	wield_scale = {x=2.0,y=2.0,z=1.0},
	inventory_image = "xebase_rifle.png",
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xtraores:titanium_bullet 1") then
			minetest.sound_play("empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xtraores:titanium_bullet ")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xebase:rifleshot")
			if obj then
				minetest.sound_play("rifle_shoot", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 30})
				obj:setacceleration({x=dir.x * 0, y=0, z=dir.z * 0})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local xebase_rifleshot = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=1, y=1},
	textures = {"xebase:rifleshot"},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xebase_rifleshot.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.1 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xebase:rifleshot" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 150
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				end
			else
				local damage = 150
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.9})

			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end


	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xebase:rifleshot", xebase_rifleshot )


minetest.register_craftitem("xebase:living_meteorite", {
	description = "living meteorite(looks like a regular meteor... BUT IT'S ALIVE!!!)",
	inventory_image = "xebase_living_meteorite.png",
})

minetest.register_tool("xebase:plasmagun", {
	description = "plasmagun(ranged damage 100|uses batteries to shoot(consumes 3 batteries)|shoots slow moving plasma balls that contonously hurts and penetrates targets)",
	wield_scale = {x=3.50,y=3.5,z=2.0},
	inventory_image = "xebase_plasmagun.png",
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xebase:battery 3") then
			minetest.sound_play("empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xebase:battery 3")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xebase:plasmagunshot")
			if obj then
				minetest.sound_play("rifle_shoot", {object=obj})
				obj:setvelocity({x=dir.x * 2, y=dir.y * 2, z=dir.z * 2})
				obj:setacceleration({x=dir.x * 0, y=0, z=dir.z * 0})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local xebase_plasmagunshot = {
	physical = false,
	timer = 0,
	visual = "sprite",
	visual_size = {x=3, y=3},
	textures = {"xebase_plasmaball.png"},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xebase_plasmagunshot.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 1.5 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 3)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xebase:plasmagunshot" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 100
					obj:punch(self.object, 0.1, {
						full_punch_interval = 0.1,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				end
			else
				local damage = 100
				obj:punch(self.object, 0.1, {
					full_punch_interval = 0.1,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xebase:plasmagunshot", xebase_plasmagunshot )


minetest.register_craft({
	output = 'xebase:bigmama',
	recipe = {
	{'','','xebase:bigmama_blade'},
	{'','xebase:bigmama_handle',''},
	{'xebase:bigmama_blade','',''},
	}
})


minetest.register_craftitem("xebase:bigmama_blade", {
	description = "big mama blade(surprise! its a secret item!)",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "xebase_bigmama_blade.png",
})

minetest.register_craftitem("xebase:bigmama_handle", {
	description = "bigmama handle(surprise! its a secret item! )",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "xebase_bigmama_handle.png",
})

minetest.register_tool("xebase:bigmama", {
	description = "big mama!(surprise! its a secret item!|this gigantic weapon will smash anyone in your way! 500 dmg!) ",
	range = 20,
	wield_scale = {x=6.0,y=6.0,z=1.0},
	groups = {not_in_creative_inventory = 1},
	inventory_image = "xebase_bigmama.png",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.0125, [2]=0.05, [3]=0.006}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=500},
	}
})


minetest.register_tool("xebase:laser_shotgun", {
	description = "laser_shotgun(ranged damage 100|uses batteries to to shoot (consumes 2))",
	wield_scale = {x=1.5,y=1.5,z=1.5},
	inventory_image = "xebase_laser_shotgun.png",
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xebase:battery 2") then
			minetest.sound_play("empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xebase:battery 2")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xebase:laser_shotgunshot")
			if obj then
				minetest.sound_play("shotgun_shoot", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 30})
				obj:setacceleration({x=dir.x * 0, y= 0, z=dir.z * 0})

			pos.y = pos.y + 0
			local obj = minetest.add_entity(pos, "xebase:laser_shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 33})
				obj:setacceleration({x=dir.x * 0, y= 0, z=dir.z * 0})

			pos.y = pos.y + 0
			local obj = minetest.add_entity(pos, "xebase:laser_shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 36})
				obj:setacceleration({x=dir.x * 0, y= 0, z=dir.z * 0})
			pos.y = pos.y + 0
			local obj = minetest.add_entity(pos, "xebase:laser_shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 39})
				obj:setacceleration({x=dir.x * 0, y= 0, z=dir.z * 0})

			pos.y = pos.y + 0
			local obj = minetest.add_entity(pos, "xebase:laser_shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 42})
				obj:setacceleration({x=dir.x * 0, y= 0, z=dir.z * 0})

			pos.y = pos.y + 0
			local obj = minetest.add_entity(pos, "xebase:laser_shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 27})
				obj:setacceleration({x=dir.x * 0, y= 0, z=dir.z * 0})

			pos.y = pos.y + 0
			local obj = minetest.add_entity(pos, "xebase:laser_shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 24})
				obj:setacceleration({x=dir.x * 0, y= 0, z=dir.z * 0})
			pos.y = pos.y + 0
			local obj = minetest.add_entity(pos, "xebase:laser_shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 21})
				obj:setacceleration({x=dir.x * 0, y= 0, z=dir.z * 0})
			pos.y = pos.y + 0
			local obj = minetest.add_entity(pos, "xebase:laser_shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 18})
				obj:setacceleration({x=dir.x * 0, y= 0, z=dir.z * 0})

				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local xebase_laser_shotgunshot = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=1, y=1},
	textures = {"xebase:lasershott"},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xebase_laser_shotgunshot.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.11 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xebase:laser_shotgunshot" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 100
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				end
			else
				local damage = 100
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xebase:laser_shotgunshot", xebase_laser_shotgunshot )


minetest.register_craftitem("xebase:nebula_tissue_sample", {
	description = "nebula tissue sample(a sample of nebula alien tissue, its sayd if all space zone aliens join in, they create a strong monster, hopeffuly, a sample of theyr tissue is enough)",
	inventory_image = "xebase_nebula_tissue_sample.png",
})

minetest.register_craftitem("xebase:illusion_tissue_sample", {
	description = "illusion tissue sample(a sample of illusion alien tissue, its sayd if all space zone aliens join in, they create a strong monster, hopeffuly, a sample of theyr tissue is enough)",
	inventory_image = "xebase_illusion_tissue_sample.png",
})

minetest.register_craftitem("xebase:radiactive_tissue_sample", {
	description = "radioactive tissue sample(a sample of radioactive alien tissue, its sayd if all space zone aliens join in, they create a strong monster, hopeffuly, a sample of theyr tissue is enough)",
	inventory_image = "xebase_radioactive_tissue_sample.png",
})

minetest.register_tool("xebase:laser", {
	description = "laser rifle(ranged damage 200|uses batteries to shoot|penetrates targets and blocks)",
	wield_scale = {x=1.5,y=1.5,z=2.0},
	inventory_image = "xebase_laser_rifle.png",
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xebase:battery 1") then
			minetest.sound_play("empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xebase:battery")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xebase:lasershot")
			if obj then
				minetest.sound_play("rifle_shoot", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 30})
				obj:setacceleration({x=dir.x * 0, y=0, z=dir.z * 0})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local xebase_lasershot = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=1, y=1},
	textures = {"xebase:lasershot"},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xebase_lasershot.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.1 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xebase:lasershot" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 200
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				end
			else
				local damage = 200
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.9})
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xebase:lasershot", xebase_lasershot )


minetest.register_craftitem("xebase:battery", {
	stack_max= 500,
	description = "battery charge(ammunition for power related guns)",
	inventory_image = "xebase_battery.png",
})


minetest.register_craftitem("xebase:lasershot", {
	wield_scale = {x=1.0,y=3,z=1.0},
	inventory_image = "xebase_lasershot.png",
})

minetest.register_craftitem("xebase:lasershott", {
	wield_scale = {x=0.1,y=2.5,z=1.0},
	inventory_image = "xebase_lasershot.png",
})

minetest.register_tool("xebase:purple_lightsaber", {
	description = "purple lightsaber(the hy-tech sword, deals 200 dmg!) ",
	range = 7,
	wield_scale = {x=1.5,y=1.5,z=2.0},
	inventory_image = "xebase_purple_lightsaber.png",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.0125, [2]=0.05, [3]=0.006}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=200},
	}
})

minetest.register_craft({
	output = 'xebase:purple_lightsaber',
	recipe = {
		{'xebase:cryptonite_bar','xtraores:rarium_lump','xebase:cryptonite_bar'},
	{'xebase:plutonium_crystal','xebase:true_excalibur','xebase:plutonium_crystal'},
	{'xebase:meteorite_bar','xebase:meteorite_bar','xebase:meteorite_bar'},
	}
})

minetest.register_tool("xebase:blue_lightsaber", {
	description = "blue lightsaber(the hy-tech sword, deals 200 dmg!) ",
	range = 7,
	wield_scale = {x=1.5,y=1.5,z=2.0},
	inventory_image = "xebase_blue_lightsaber.png",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.0125, [2]=0.05, [3]=0.006}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=200},
	}
})

minetest.register_craft({
	output = 'xebase:blue_lightsaber',
	recipe = {
		{'xebase:cryptonite_bar','xtraores:osminum_lump','xebase:cryptonite_bar'},
	{'xebase:plutonium_crystal','xebase:true_excalibur','xebase:plutonium_crystal'},
	{'xebase:meteorite_bar','xebase:meteorite_bar','xebase:meteorite_bar'},
	}
})


minetest.register_tool("xebase:green_lightsaber", {
	description = "green lightsaber(the hy-tech sword, deals 200 dmg!) ",
	range = 7,
	wield_scale = {x=1.5,y=1.5,z=2.0},
	inventory_image = "xebase_green_lightsaber.png",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.0125, [2]=0.05, [3]=0.006}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=200},
	}
})

minetest.register_craft({
	output = 'xebase:green_lightsaber',
	recipe = {
		{'xebase:cryptonite_bar','xtraores:cobalt_lump','xebase:cryptonite_bar'},
	{'xebase:plutonium_crystal','xebase:true_excalibur','xebase:plutonium_crystal'},
	{'xebase:meteorite_bar','xebase:meteorite_bar','xebase:meteorite_bar'},
	}
})


minetest.register_tool("xebase:red_lightsaber", {
	description = "red lightsaber(the hy-tech sword, deals 200 dmg!) ",
	range = 7,
	wield_scale = {x=1.5,y=1.5,z=2.0},
	inventory_image = "xebase_red_lightsaber.png",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.0125, [2]=0.05, [3]=0.006}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=200},
	}
})

minetest.register_craft({
	output = 'xebase:red_lightsaber',
	recipe = {
		{'xebase:cryptonite_bar','xtraores:adamantite_lump','xebase:cryptonite_bar'},
	{'xebase:plutonium_crystal','xebase:true_excalibur','xebase:plutonium_crystal'},
	{'xebase:meteorite_bar','xebase:meteorite_bar','xebase:meteorite_bar'},
	}
})

minetest.register_tool("xebase:yellow_lightsaber", {
	description = "yellow  lightsaber(the hy-tech sword, deals 200 dmg!) ",
	range = 7,
	wield_scale = {x=1.5,y=1.5,z=2.0},
	inventory_image = "xebase_yellow_lightsaber.png",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.0125, [2]=0.05, [3]=0.006}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=200},
	}
})

minetest.register_craft({
	output = 'xebase:yellow_lightsaber',
	recipe = {
		{'xebase:cryptonite_bar','default:mese_crystal','xebase:cryptonite_bar'},
	{'xebase:plutonium_crystal','xebase:true_excalibur','xebase:plutonium_crystal'},
	{'xebase:meteorite_bar','xebase:meteorite_bar','xebase:meteorite_bar'},
	}
})

minetest.register_tool("xebase:white_lightsaber", {
	description = "white lightsaber(the hy-tech sword, deals 200 dmg!) ",
	range = 7,
	wield_scale = {x=1.5,y=1.5,z=2.0},
	inventory_image = "xebase_white_lightsaber.png",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.0125, [2]=0.05, [3]=0.006}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=200},
	}
})

minetest.register_craft({
	output = 'xebase:white_lightsaber',
	recipe = {
		{'xebase:cryptonite_bar','default:diamond','xebase:cryptonite_bar'},
	{'xebase:plutonium_crystal','xebase:true_excalibur','xebase:plutonium_crystal'},
	{'xebase:meteorite_bar','xebase:meteorite_bar','xebase:meteorite_bar'},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "xebase:illusium_bar",
	recipe = "xebase:illusium_lump",
})

minetest.register_craftitem("xebase:illusium_lump", {
	description = "illusium lump(this metal is realy illusious... good for trolling!)",
	inventory_image = "xebase_illusium_lump.png",
})

minetest.register_craftitem("xebase:illusium_bar", {
	description = "illusium bar(this metal is realy illusious... good for trolling!)",
	inventory_image = "xebase_illusium_bar.png",
})

minetest.register_node("xebase:ore_illusium", {
	description = "illusium ore",
	tiles = {"xebase_sunstone.png^xebase_illusium_ore.png"},
	is_ground_content = true,
	groups = {space=1, level=4},
	light_source = default.LIGHT_MAX - 0,
	drop = 'xebase:illusium_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	type = "cooking",
	output = "xebase:solarium_bar",
	recipe = "xebase:solarium_lump",
})

minetest.register_craftitem("xebase:solarium_lump", {
	description = "solarium lump(hot to the touch, hot stuff u can make outta this!)",
	inventory_image = "xebase_solarium_lump.png",
})

minetest.register_craftitem("xebase:solarium_bar", {
	description = "solarium bar(hot to the touch, hot stuff u can make outta this!)",
	inventory_image = "xebase_solarium_bar.png",
})

minetest.register_node("xebase:ore_solarium", {
	description = "solarium ore",
	tiles = {"xebase_sunstone.png^xebase_solarium_ore.png"},
	is_ground_content = true,
	groups = {space=1, level=4},
	light_source = default.LIGHT_MAX - 0,
	drop = 'xebase:solarium_lump',
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craftitem("xebase:plutonium_crystal", {
	description = "plutonium crystal(dangerous, and perfectly suitable for weapons!)",
	inventory_image = "xebase_plutonium_crystal.png",
})



minetest.register_node("xebase:ore_plutonium", {
	description = "plutonium ore",
	tiles = {"xebase_comet.png^xebase_plutonium_ore.png"},
	is_ground_content = true,
	groups = {space=1, level=4},
	light_source = default.LIGHT_MAX - 0,
	drop = 'xebase:plutonium_crystal',
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craft({
	output = 'xebase:cryptonite_lump',
	recipe = {
		{'xebase:cryptonite','xebase:stardust','xebase:cryptonite'},
	{'xebase:stardust','xebase:cryptonite','xebase:stardust'},
	{'xebase:cryptonite','xebase:stardust','xebase:cryptonite'},
	}
})

minetest.register_craftitem("xebase:cryptonite_lump", {
	description = "cryptonite lump",
	inventory_image = "xebase_cryptonite_lump.png",
})
minetest.register_craftitem("xebase:cryptonite_bar", {
	description = "cryptonite bar",
	inventory_image = "xebase_cryptonite_bar.png",
})

minetest.register_craft({
	type = "cooking",
	output = "xebase:cryptonite_bar",
	recipe = "xebase:cryptonite_lump",
})

minetest.register_craft({
	output = 'xebase:meteorite_shard',
	recipe = {
		{'xebase:meteorite','xebase:meteorite','xebase:meteorite'},
	{'xebase:meteorite','xebase:meteorite','xebase:meteorite'},
	{'xebase:meteorite','xebase:meteorite','xebase:meteorite'},
	}
})

minetest.register_craftitem("xebase:meteorite_shard", {
	description = "meteorite shard(this is a strong metal found in meteorite, but unfortunately, its quite uncommon there)",
	inventory_image = "xebase_meteorite_shard.png",
})

minetest.register_craft({
	output = 'xebase:meteorite_nugget',
	recipe = {
		{'xebase:meteorite_shard','xebase:meteorite_shard','xebase:meteorite_shard'},
	{'xebase:meteorite_shard','xebase:meteorite_shard','xebase:meteorite_shard'},
	{'xebase:meteorite_shard','xebase:meteorite_shard','xebase:meteorite_shard'},
	}
})

minetest.register_craftitem("xebase:meteorite_nugget", {
	description = "meteorite nugget",
	inventory_image = "xebase_meteorite_nugget.png",
})

minetest.register_craft({
	output = 'xebase:meteorite_lump',
	recipe = {
		{'xebase:meteorite_nugget','xebase:meteorite_nugget','xebase:meteorite_nugget'},
	{'xebase:meteorite_nugget','xebase:meteorite_nugget','xebase:meteorite_nugget'},
	{'xebase:meteorite_nugget','xebase:meteorite_nugget','xebase:meteorite_nugget'},
	}
})

minetest.register_craftitem("xebase:meteorite_lump", {
	description = "meteorite lump",
	inventory_image = "xebase_meteorite_lump.png",
})

minetest.register_craftitem("xebase:meteorite_bar", {
	description = "meteorite bar",
	inventory_image = "xebase_meteorite_bar.png",
})

minetest.register_craft({
	type = "cooking",
	output = "xebase:meteorite_bar",
	recipe = "xebase:meteorite_lump",
})

minetest.register_node("xebase:platinum_block", {
	description = "platinum block",
	tiles = {"xebase_block_platinum.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xebase:platinum_block',
	recipe = {
		{'xtraores:platinum_bar','xtraores:platinum_bar','xtraores:platinum_bar'},
	{'xtraores:platinum_bar','xtraores:platinum_bar','xtraores:platinum_bar'},
	{'xtraores:platinum_bar','xtraores:platinum_bar','xtraores:platinum_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores:platinum_bar 9',
	recipe = {
		{'xebase:platinum_block'},
	}
})

minetest.register_node("xebase:cobalt_block", {
	description = "cobalt block",
	tiles = {"xebase_block_cobalt.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xebase:cobalt_block',
	recipe = {
		{'xtraores:cobalt_bar','xtraores:cobalt_bar','xtraores:cobalt_bar'},
	{'xtraores:cobalt_bar','xtraores:cobalt_bar','xtraores:cobalt_bar'},
	{'xtraores:cobalt_bar','xtraores:cobalt_bar','xtraores:cobalt_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores:cobalt_bar 9',
	recipe = {
		{'xebase:cobalt_block'},
	}
})

minetest.register_node("xebase:osminum_block", {
	description = "osminum block",
	tiles = {"xebase_block_osminum.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xebase:osminum_block',
	recipe = {
		{'xtraores:osminum_bar','xtraores:osminum_bar','xtraores:osminum_bar'},
	{'xtraores:osminum_bar','xtraores:osminum_bar','xtraores:osminum_bar'},
	{'xtraores:osminum_bar','xtraores:osminum_bar','xtraores:osminum_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores:osminum_bar 9',
	recipe = {
		{'xebase:osminum_block'},
	}
})

minetest.register_node("xebase:adamantite_block", {
	description = "adamantite block",
	tiles = {"xebase_block_adamantite.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xebase:adamantite_block',
	recipe = {
		{'xtraores:adamantite_bar','xtraores:adamantite_bar','xtraores:adamantite_bar'},
	{'xtraores:adamantite_bar','xtraores:adamantite_bar','xtraores:adamantite_bar'},
	{'xtraores:adamantite_bar','xtraores:adamantite_bar','xtraores:adamantite_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores:adamantite_bar 9',
	recipe = {
		{'xebase:adamantite_block'},
	}
})

minetest.register_node("xebase:rarium_block", {
	description = "rarium block",
	tiles = {"xebase_block_rarium.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xebase:rarium_block',
	recipe = {
		{'xtraores:rarium_bar','xtraores:rarium_bar','xtraores:rarium_bar'},
	{'xtraores:rarium_bar','xtraores:rarium_bar','xtraores:rarium_bar'},
	{'xtraores:rarium_bar','xtraores:rarium_bar','xtraores:rarium_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores:rarium_bar 9',
	recipe = {
		{'xebase:rarium_block'},
	}
})

minetest.register_node("xebase:unobtanium_block", {
	description = "unobtanium block",
	tiles = {"xebase_block_unobtanium.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xebase:unobtanium_block',
	recipe = {
		{'xtraores:unobtanium_bar','xtraores:unobtanium_bar','xtraores:unobtanium_bar'},
	{'xtraores:unobtanium_bar','xtraores:unobtanium_bar','xtraores:unobtanium_bar'},
	{'xtraores:unobtanium_bar','xtraores:unobtanium_bar','xtraores:unobtanium_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores:unobtanium_bar 9',
	recipe = {
		{'xebase:unobtanium_block'},
	}
})

minetest.register_node("xebase:titanium_block", {
	description = "titanium block",
	tiles = {"xebase_block_titanium.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xebase:titanium_block',
	recipe = {
		{'xtraores:titanium_bar','xtraores:titanium_bar','xtraores:titanium_bar'},
	{'xtraores:titanium_bar','xtraores:titanium_bar','xtraores:titanium_bar'},
	{'xtraores:titanium_bar','xtraores:titanium_bar','xtraores:titanium_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores:titanium_bar 9',
	recipe = {
		{'xebase:titanium_block'},
	}
})

minetest.register_node("xebase:geminitinum_block", {
	description = "geminitinum block",
	tiles = {"xebase_block_geminitinum.png"},
	light_source = default.LIGHT_MAX - 7,
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xebase:geminitinum_block',
	recipe = {
		{'xtraores:geminitinum_bar','xtraores:geminitinum_bar','xtraores:geminitinum_bar'},
	{'xtraores:geminitinum_bar','xtraores:geminitinum_bar','xtraores:geminitinum_bar'},
	{'xtraores:geminitinum_bar','xtraores:geminitinum_bar','xtraores:geminitinum_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores:geminitinum_bar 9',
	recipe = {
		{'xebase:geminitinum_block'},
	}
})

minetest.register_node("xebase:unearthly_block", {
	description = "unearthly block",
	tiles = {"xebase_block_unearthly.png"},
	light_source = default.LIGHT_MAX - 0,
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xebase:unearthly_block',
	recipe = {
		{'xebase:unearthly_gem','xebase:unearthly_gem','xebase:unearthly_gem'},
	{'xebase:unearthly_gem','xebase:unearthly_gem','xebase:unearthly_gem'},
	{'xebase:unearthly_gem','xebase:unearthly_gem','xebase:unearthly_gem'},
	}
})

minetest.register_craft({
	output = 'xebase:unearthly_gem 9',
	recipe = {
		{'xebase:unearthly_block'},
	}
})




minetest.register_craftitem("xebase:unearthly_gem", {
	description = "unearthly gem(this shouldn't be found in earth... must have gotten here when the meteors hit earth while it was being created...)",
	inventory_image = "xebase_unearthly_gem.png",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xebase:ore_unearthly",
	wherein        = "default:stone",
	clust_scarcity = 30*30*30,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -30000,
	flags          = "absheight",
})

minetest.register_node("xebase:ore_unearthly", {
	description = "unearthly ore",
	tiles = {"default_stone.png^xebase_unearthly_ore.png"},
	is_ground_content = true,
	groups = {weryhard=0},
	light_source = default.LIGHT_MAX - 0,
	drop = 'xebase:unearthly_gem',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_tool("xebase:holly_shotgun", {
	description = "holly_shotgun(ranged damage 50|uses shotgun shells to shoot)",
	wield_scale = {x=1.5,y=1.5,z=1.5},
	inventory_image = "xebase_holly_shotgun.png",
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xebase:shell 1") then
			minetest.sound_play("empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xebase:shell")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xebase:holly_shotgunshot")
			if obj then
				minetest.sound_play("shotgun_shoot", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 30})
				obj:setacceleration({x=dir.x * 0, y= 0, z=dir.z * 0})

			pos.y = pos.y + 0
			local obj = minetest.add_entity(pos, "xebase:holly_shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 33})
				obj:setacceleration({x=dir.x * 0, y= 0, z=dir.z * 0})

			pos.y = pos.y + 0
			local obj = minetest.add_entity(pos, "xebase:holly_shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 36})
				obj:setacceleration({x=dir.x * 0, y= 0, z=dir.z * 0})
			pos.y = pos.y + 0
			local obj = minetest.add_entity(pos, "xebase:holly_shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 39})
				obj:setacceleration({x=dir.x * 0, y= 0, z=dir.z * 0})

			pos.y = pos.y + 0
			local obj = minetest.add_entity(pos, "xebase:holly_shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 42})
				obj:setacceleration({x=dir.x * 0, y= 0, z=dir.z * 0})

			pos.y = pos.y + 0
			local obj = minetest.add_entity(pos, "xebase:holly_shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 27})
				obj:setacceleration({x=dir.x * 0, y= 0, z=dir.z * 0})

			pos.y = pos.y + 0
			local obj = minetest.add_entity(pos, "xebase:holly_shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 24})
				obj:setacceleration({x=dir.x * 0, y= 0, z=dir.z * 0})
			pos.y = pos.y + 0
			local obj = minetest.add_entity(pos, "xebase:holly_shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 21})
				obj:setacceleration({x=dir.x * 0, y= 0, z=dir.z * 0})
			pos.y = pos.y + 0
			local obj = minetest.add_entity(pos, "xebase:holly_shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 18})
				obj:setacceleration({x=dir.x * 0, y= 0, z=dir.z * 0})

				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})
minetest.register_craft({
	output = 'xebase:holly_shotgun',
	recipe = {
		{'xebase:legendary_bar', '', ''},
		{'', 'xebase:legendary_bar', 'xebase:true_excalibur'},
		{'', 'xebase:legendary_bar', 'xebase:legendary_bar'},
	}
})

local xebase_holly_shotgunshot = {
	physical = false,
	timer = 0,
	visual = "sprite",
	visual_size = {x=0.25, y=0.25,},
	textures = {'xebase_shot.png'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xebase_holly_shotgunshot.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.11 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xebase:holly_shotgunshot" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 50
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 50
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xebase:holly_shotgunshot", xebase_holly_shotgunshot )



minetest.register_tool("xebase:drill_legendary", {
	description = "the legendary drill(this drill is the fastest and longest reaching drill, ever made!)",
	range = 10,
	wield_scale = {x=2.5,y=2.5,z=5.0},
	inventory_image = "xebase_drill_legendary.png",
	tool_capabilities = {
		full_punch_interval = 0.00025,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.00, [2]=0.00, [3]=0.00}, uses=2000, maxlevel=3},
			weryhard = {times={[3]=0.00, [2]=0.00, [1]=0.00, [0]=0.00}, uses=2000, maxlevel=3},
			crumbly = {times={[1]=0.00, [2]=0.00, [3]=0.00}, uses=2000, maxlevel=3},
		},
		damage_groups = {fleshy=40},
	},
})

minetest.register_tool("xebase:drill_unearthly", {
	description = "unearthly drill(the best drill possible, made into even better one, that allows digging space blocks!)",
	range = 10,
	wield_scale = {x=2.5,y=2.5,z=5.0},
	inventory_image = "xebase_drill_unearthly.png",
	tool_capabilities = {
		full_punch_interval = 0.00025,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.00, [2]=0.00, [3]=0.00}, uses=2000, maxlevel=3},
			weryhard = {times={[3]=0.00, [2]=0.00, [1]=0.00, [0]=0.00}, uses=2000, maxlevel=3},
			crumbly = {times={[1]=0.00, [2]=0.00, [3]=0.00}, uses=2000, maxlevel=3},
			space = {times={[1]=1.00, [2]=0.50, [3]=0.25}, uses=2000, maxlevel=4},
		},
		damage_groups = {fleshy=40},
	},
})

minetest.register_craft({
	output = 'xebase:drill_unearthly',
	recipe = {
		{'xebase:unearthly_gem','xebase:unearthly_gem','xebase:unearthly_gem'},
	{'xebase:unearthly_gem','xebase:drill_legendary','xebase:unearthly_gem'},
	{'xebase:unearthly_gem','xebase:unearthly_gem','xebase:unearthly_gem'},
	}
})



minetest.register_craftitem("xebase:legendary_bar", {
	description = "legendary bar(the metal of gods!)",
	inventory_image = "xebase_legendary_bar.png",
})

minetest.register_tool("xebase:true_gungir", {
	description = "true gungir(the legendary weapon, enchanted by the gods! deals 250 dmg!) ",
	range = 15,
	wield_scale = {x=2.5,y=2.5,z=1.0},
	inventory_image = "xebase_true_gungir.png",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.0125, [2]=0.05, [3]=0.006}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=250},
	}
})

minetest.register_tool("xebase:true_excalibur", {
	description = "true excalibur(the legendary weapon, enchanted by the gods! deals 125 dmg!) ",
	range = 8,
	wield_scale = {x=2.5,y=2.5,z=1.0},
	inventory_image = "xebase_true_excalibur.png",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.0125, [2]=0.05, [3]=0.006}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=125},
	}
})

	minetest.register_tool("xebase:helmet_rusty", {
		description = "rusty legendary Helmet(its quite useless it this condition, but, if you reinforce it with the stongest materials in earth and space, you have the stronges armor possible!)",
		inventory_image = "xebase_inv_helmet_rusty.png",
		groups = {armor_head=15, armor_heal=10, physics_gravity=-0.0, physics_speed=-0.10, physics_jump=0.0, armor_fire=1, armor_use=20},
		wear = 0,
	})
	minetest.register_tool("xebase:chestplate_rusty", {
		description = "rusty legendary Chestplate(its quite useless it this condition, but, if you reinforce it with the stongest materials in earth and space, you have the stronges armor possible!)",
		inventory_image = "xebase_inv_chestplate_rusty.png",
		groups = {armor_torso=20, armor_heal=10, physics_gravity=-0.0, physics_speed=-0.10, physics_jump=0.0, armor_fire=1, armor_use=20},
		wear = 0,
	})
	minetest.register_tool("xebase:leggings_rusty", {
		description = "rusty legendary Leggings(its quite useless it this condition, but, if you reinforce it with the stongest materials in earth and space, you have the stronges armor possible!)",
		inventory_image = "xebase_inv_leggings_rusty.png",
		groups = {armor_legs=20, armor_heal=10, physics_gravity=-0.0, physics_speed=-0.1, physics_jump=0.0, armor_fire=1, armor_use=20},
		wear = 0,
	})
	minetest.register_tool("xebase:boots_rusty", {
		description = "rusty legendary Boots(its quite useless it this condition, but, if you reinforce it with the stongest materials in earth and space, you have the stronges armor possible!)",
		inventory_image = "xebase_inv_boots_rusty.png",
		groups = {armor_feet=15, armor_heal=10, physics_gravity=-0.0, physics_speed=-0.10, physics_jump=0.0, armor_fire=1, armor_use=20},
		wear = 0,
	})
	minetest.register_tool("xebase:shield_rusty", {
		description = "rusty legendary Shield(its quite useless it this condition, but, if you reinforce it with the stongest materials in earth and space, you have the stronges armor possible!)",

		inventory_image = "xebase_inv_shield_rusty.png",
		groups = {armor_shield=15, armor_heal=10, physics_gravity=-0.0, physics_speed=-0.10, physics_jump=0.0, armor_fire=1, armor_use=20},
		wear = 0,
	})

	minetest.register_tool("xebase:helmet_legendary", {
		description = "legendary Helmet",
		inventory_image = "xebase_inv_helmet_legendary.png",
		groups = {armor_head=17.8, armor_heal=15, physics_gravity=-0.175, physics_speed=1.25, physics_jump=0.275, armor_fire=1, armor_use=20},
		wear = 0,
	})
	minetest.register_tool("xebase:chestplate_legendary", {
		description = "legendary Chestplate",
		inventory_image = "xebase_inv_chestplate_legendary.png",
		groups = {armor_torso=22.8, armor_heal=15, physics_gravity=-0.175, physics_speed=1.25, physics_jump=0.275, armor_fire=1, armor_use=20},
		wear = 0,
	})
	minetest.register_tool("xebase:leggings_legendary", {
		description = "legendary Leggings",
		inventory_image = "xebase_inv_leggings_legendary.png",
		groups = {armor_legs=22.8, armor_heal=15, physics_gravity=-0.175, physics_speed=1.25, physics_jump=0.275, armor_fire=1, armor_use=20},
		wear = 0,
	})
	minetest.register_tool("xebase:boots_legendary", {
		description = "legendary Boots",
		inventory_image = "xebase_inv_boots_legendary.png",
		groups = {armor_feet=17.8, armor_heal=15, physics_gravity=-0.175, physics_speed=1.25, physics_jump=0.275, armor_fire=1, armor_use=20},
		wear = 0,
	})
	minetest.register_tool("xebase:boots_blastoff", {
		description = "blastoff Boots(use them on your own risk!)",
		inventory_image = "xebase_inv_boots_blastoff.png",
		groups = {armor_feet=26.0, armor_heal=15, physics_gravity=-0.175, physics_speed=1.25, physics_jump=10.0, armor_fire=1, armor_use=20},
		wear = 0,
	})
	minetest.register_tool("xebase:shield_legendary", {
		description = "legendary Shield",
		inventory_image = "xebase_inv_shield_legendary.png",
		groups = {armor_shield=17.8, armor_heal=15, physics_gravity=-0.175, physics_speed=1.25, physics_jump=0.275, armor_fire=1, armor_use=20},
		wear = 0,
	})

minetest.register_craft({
	output = 'xebase:helmet_legendary',
	recipe = {
		{'xtraores:geminitinum_bar','xebase:cryptonite_bar','xtraores:geminitinum_bar'},
	{'xebase:solarium_bar','xebase:helmet_rusty','xebase:solarium_bar'},
	{'xebase:meteorite_bar','xebase:cryptonite_bar','xebase:meteorite_bar'},
	}
})

minetest.register_craft({
	output = 'xebase:chestplate_legendary',
	recipe = {
		{'xtraores:geminitinum_bar','xebase:cryptonite_bar','xtraores:geminitinum_bar'},
	{'xebase:solarium_bar','xebase:chestplate_rusty','xebase:solarium_bar'},
	{'xebase:meteorite_bar','xebase:cryptonite_bar','xebase:meteorite_bar'},
	}
})

minetest.register_craft({
	output = 'xebase:leggings_legendary',
	recipe = {
		{'xtraores:geminitinum_bar','xebase:cryptonite_bar','xtraores:geminitinum_bar'},
	{'xebase:solarium_bar','xebase:leggings_rusty','xebase:solarium_bar'},
	{'xebase:meteorite_bar','xebase:cryptonite_bar','xebase:meteorite_bar'},
	}
})

minetest.register_craft({
	output = 'xebase:shield_legendary',
	recipe = {
		{'xtraores:geminitinum_bar','xebase:cryptonite_bar','xtraores:geminitinum_bar'},
	{'xebase:solarium_bar','xebase:shield_rusty','xebase:solarium_bar'},
	{'xebase:meteorite_bar','xebase:cryptonite_bar','xebase:meteorite_bar'},
	}
})

minetest.register_craft({
	output = 'xebase:boots_legendary',
	recipe = {
		{'xtraores:geminitinum_bar','xebase:cryptonite_bar','xtraores:geminitinum_bar'},
	{'xebase:solarium_bar','xebase:boots_rusty','xebase:solarium_bar'},
	{'xebase:meteorite_bar','xebase:cryptonite_bar','xebase:meteorite_bar'},
	}
})

minetest.register_craft({
	output = 'xebase:boots_blastoff',
	recipe = {
		{'xtraores:titanium_bar','xebase:titanium_bar','xtraores:titanium_bar'},
	{'xebase:solarium_bar','xebase:boots_legendary','xebase:solarium_bar'},
	{'xebase:solarium_bar','xebase:plutonium_crystal','xebase:solarium_bar'},
	}
})




minetest.register_craftitem("xebase:bone", {
	description = "bone",
	inventory_image = "xomobs_bone.png",
	range = 0,
	on_use = function(itemstack, user, pointed_thing)
			if not minetest.setting_getbool("creative_mode") then itemstack:take_item()
		end
		if pointed_thing.type ~= "nothing" then
			local pointed = minetest.get_pointed_thing_position(pointed_thing)
			if vector.distance(user:getpos(), pointed) < 8 then
				return itemstack
			end
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir then
			pos.y = pos.y + 1.5
			local obj = minetest.add_entity(pos, "xebase:bone")
			if obj then
				obj:setvelocity({x=dir.x * 20, y=dir.y * 20, z=dir.z * 20})
				obj:setacceleration({x=dir.x * -3, y=-10, z=dir.z * -3})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local xebase_bone = {
	physical = false,
	timer = 0,
	visual = "sprite",
	visual_size = {x=0.5, y=0.5,},
	textures = {'xomobs_bone.png'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xebase_bone.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.12 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xebase:bone" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 15
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 15
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "xebase:bone")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xebase:bone", xebase_bone)


minetest.register_craftitem("xebase:stardust", {
	description = "star dust",
	inventory_image = "xebase_stardust.png",
})

minetest.register_craftitem("xebase:shell", {
	description = "strong shotgun shell(used as ammo for shotguns)",
	stack_max= 500,
	inventory_image = "xebase_shell.png",
})
minetest.register_craft({
	output = 'xebase:shell 50',
	recipe = {
		{'xtraores:geminitinum_lump', 'xtraores:geminitinum_lump', 'xtraores:geminitinum_lump'},
		{'xtraores:titanium_bar', 'xtraores:titanium_bar', 'xtraores:titanium_bar'},
		{'default:gold_ingot', 'default:gold_ingot', 'default:gold_ingot'},

	}
})


minetest.register_node("xebase:pillar", {
	description = "corrupt nebula pillar",
	drawtype = "nodebox",
			node_box = {
				type = "fixed",
				fixed = {  
{ -0.00, -0.1, -0.00, 0.00, 0.1, 0.00, },	     
{ -0.5, -0.75, -0.5, 0.5, 0.90, 0.5, },
			
				},
			},
	tiles = {"xebase_top.png", "xebase_top.png",
		"xebase_pillar.png", "xebase_pillar.png",
		"xebase_pillar.png", "xebase_pillar.png"},
	light_source = default.LIGHT_MAX - 10,
	damage_per_second = 5,
	walkable = false,
	is_ground_content = true,
	liquid_renewable = false,
	liquidtype = "source",
	liquid_range= 0,
	liquid_alternative_flowing = "xebase:pillar",
	liquid_alternative_source = "xebase:pillar",
	liquid_viscosity = 100,
	groups = {cracky=3},
	paramtype = "light",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_abm({
	nodenames = {"xebase:corrupt"},
	interval = 1,
	chance = 100000,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "air" then
			node.name = "xebase:pillar"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	nodenames = {"xebase:pillar", "xebase:roots"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-1
		if minetest.get_node(pos).name == "default:dirt_with_grass" then
			node.name = "xebase:grass"
			minetest.set_node(pos, node)
		end
	end
})


-------------------------nebulavinegrow---------------------

minetest.register_abm({
	nodenames = {"xebase:pillar", "xebase:roots"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-2
		if minetest.get_node(pos).name == "air" then
			node.name = "xebase:roots"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	nodenames = {"xebase:pillar", "xebase:roots"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-3
		if minetest.get_node(pos).name == "air" then
			node.name = "xebase:roots"
			minetest.set_node(pos, node)
		end
	end
})


minetest.register_abm({
	nodenames = {"xebase:pillar", "xebase:roots"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-1
		if minetest.get_node(pos).name == "air" then
			node.name = "xebase:roots"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	nodenames = {"xebase:pillar", "xebase:roots"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-4
		if minetest.get_node(pos).name == "air" then
			node.name = "xebase:roots"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	nodenames = {"xebase:pillar", "xebase:roots"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-5
		if minetest.get_node(pos).name == "air" then
			node.name = "xebase:roots"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	nodenames = {"xebase:pillar", "xebase:roots"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-6
		if minetest.get_node(pos).name == "air" then
			node.name = "xebase:roots"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	nodenames = {"xebase:pillar", "xebase:roots"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-7
		if minetest.get_node(pos).name == "air" then
			node.name = "xebase:roots"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	nodenames = {"xebase:pillar", "xebase:roots"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-8
		if minetest.get_node(pos).name == "air" then
			node.name = "xebase:roots"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	nodenames = {"xebase:pillar", "xebase:roots"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-9
		if minetest.get_node(pos).name == "air" then
			node.name = "xebase:roots"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	nodenames = {"xebase:pillar", "xebase:roots"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-10
		if minetest.get_node(pos).name == "air" then
			node.name = "xebase:roots"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	nodenames = {"xebase:pillar", "xebase:roots"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-10
		if minetest.get_node(pos).name == "air" then
			node.name = "xebase:roots"
			minetest.set_node(pos, node)
		end
	end
})


minetest.register_abm({
	nodenames = {"xebase:pillar", "xebase:roots"},
	interval = 5,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-11
		if minetest.get_node(pos).name == "xebase:corrupt" then
			node.name = "xebase:roots"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	nodenames = {"xebase:pillar", "xebase:roots"},
	interval = 5,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-12
		if minetest.get_node(pos).name == "xebase:corrupt" then
			node.name = "xebase:roots"
			minetest.set_node(pos, node)
		end
	end
})


minetest.register_abm({
	nodenames = {"xebase:pillar", "xebase:roots"},
	interval = 5,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-13
		if minetest.get_node(pos).name == "xebase:corrupt" then
			node.name = "xebase:roots"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	nodenames = {"xebase:pillar", "xebase:roots"},
	interval = 5,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-14
		if minetest.get_node(pos).name == "xebase:corrupt" then
			node.name = "xebase:roots"
			minetest.set_node(pos, node)
		end
	end
})


minetest.register_abm({
	nodenames = {"xebase:pillar", "xebase:roots"},
	interval = 5,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-15
		if minetest.get_node(pos).name == "xebase:corrupt" then
			node.name = "xebase:roots"
			minetest.set_node(pos, node)
		end
	end
})


---------------------------------------------------------

minetest.register_node("xebase:roots", {
	description = "nebula roots",
	walkable = false,
	drawtype = "plantlike",
	climbable = true,
	tiles = {"xebase_roots.png"},
	is_ground_content = true,
	inventory_image = "xebase_roots.png",
	light_source = default.LIGHT_MAX - 10,
	groups = {cracky=2},
	paramtype = "light",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_abm({
	nodenames = {"xebase:star"},
	interval = 1,
	chance = 25000,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "air" then
			node.name = "xebase:cryptonite"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_node("xebase:cryptonite", {
	description = "cryptonite",
	walkable = false,
	drawtype = "plantlike",
	tiles = {"xebase_cryptonite.png"},
	is_ground_content = true,
	inventory_image = "xebase_cryptonite.png",
	light_source = default.LIGHT_MAX - 0,
	groups = {space=2,level=4},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("xebase:meteorite", {
	description = "meteorite",
	tiles = {"xebase_meteorite.png"},
	is_ground_content = true,
	light_source = default.LIGHT_MAX - 7,
	groups = {space=2,level=4},
	sounds = default.node_sound_stone_defaults(),
})


	minetest.register_ore({ 
		ore_type         = "blob",
		ore              = "xebase:meteorite",
		wherein          = {"air"},
		clust_scarcity   = 40 * 40 * 40,
		clust_size       = 15,
		y_min            = 4000,
		y_max            = 5000,
		noise_threshhold = 0,
		noise_params     = {
			offset = 4,
			scale = 4,
			spread = {x = 1, y = 1, z = 1},
			seed = -316,
			octaves = 4,
			persist = 4
		},
	})

minetest.register_node("xebase:sunstone", {
	description = "sunstone",
	tiles = {"xebase_sunstone.png"},
	is_ground_content = true,
	light_source = default.LIGHT_MAX - 0,
	groups = {space=1,level=4},
	sounds = default.node_sound_stone_defaults(),
})


	minetest.register_ore({ 
		ore_type         = "blob",
		ore              = "xebase:sunstone",
		wherein          = {"air"},
		clust_scarcity   = 18 * 18 * 18,
		clust_size       = 15,
		y_min            = 5000,
		y_max            = 5500,
		noise_threshhold = 0,
		noise_params     = {
			offset = 5,
			scale = 5,
			spread = {x = 1, y = 1, z = 1},
			seed = -316,
			octaves = 5,
			persist = 5
		},
	})


minetest.register_node("xebase:comet", {
	description = "comet",
	tiles = {"xebase_comet.png"},
	is_ground_content = true,
	light_source = default.LIGHT_MAX - 3,
	groups = {space=2,level=4},
	sounds = default.node_sound_stone_defaults(),
})


	minetest.register_ore({ 
		ore_type         = "blob",
		ore              = "xebase:comet",
		wherein          = {"air"},
		clust_scarcity   = 40 * 40 * 40,
		clust_size       = 15,
		y_min            = 3000,
		y_max            = 4000,
		noise_threshhold = 0,
		noise_params     = {
			offset = 4,
			scale = 4,
			spread = {x = 1, y = 1, z = 1},
			seed = -316,
			octaves = 4,
			persist = 4
		},
	})

minetest.register_node("xebase:star", {
	description = "radioactive star",
	tiles = {"xebase_star.png"},
	light_source = default.LIGHT_MAX - 7,
	groups = {space=3,level=4},
	sounds = default.node_sound_stone_defaults(),
})

minetest.override_item("xebase:star", {drop = {
	max_items = 1,
	items = {
		{items = {'xebase:stardust'},rarity = 50},
		{items = {'xebase:star'},rarity = 1},
	}
}})



	minetest.register_ore({ 
		ore_type         = "blob",
		ore              = "xebase:star",
		wherein          = {"air"},
		clust_scarcity   = 40 * 40 * 40,
		clust_size       = 15,
		y_min            = 2000,
		y_max            = 3000,
		noise_threshhold = 0,
		noise_params     = {
			offset = 4,
			scale = 4,
			spread = {x = 1, y = 1, z = 1},
			seed = -316,
			octaves = 4,
			persist = 4
		},
	})

minetest.register_node("xebase:corrupt", {
	description = "corrupt spacey nebula thing",
	tiles = {"xebase_corrupt.png"},
	is_ground_content = true,
	light_source = default.LIGHT_MAX - 10,
	groups = {space=3,level=4},
	sounds = default.node_sound_stone_defaults(),
})


	minetest.register_ore({ 
		ore_type         = "blob",
		ore              = "xebase:corrupt",
		wherein          = {"air"},
		clust_scarcity   = 40 * 40 * 40,
		clust_size       = 15,
		y_min            = 1050,
		y_max            = 2000,
		noise_threshhold = 0,
		noise_params     = {
			offset = 4,
			scale = 4,
			spread = {x = 1, y = 1, z = 1},
			seed = -316,
			octaves = 4,
			persist = 4
		},
	})

------------------------nebula on earth-------------------

minetest.register_node("xebase:tree", {
	description = "nebula log",
	tiles = {"xebase_tree_top.png", "xebase_tree_top.png", "xebase_tree.png"},
	light_source = default.LIGHT_MAX - 8,
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})
minetest.register_craft({
	output = 'xebase:planks 4',
	recipe = {
		{'xebase:tree'},
	}
})
minetest.register_node("xebase:planks", {
	description = "nebula planks",
	tiles = {"xebase_planks.png"},
	light_source = default.LIGHT_MAX - 8,
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xebase:leaves", {
	description = "nebula leaves",
	drawtype = "allfaces_optional",
	tiles = {"xebase_leaves.png"},
	light_source = default.LIGHT_MAX - 8,
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	legacy_mineral = true,
	paramtype = "light",
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xebase:dirt", {
	description = "nebula dirt",
	tiles = {"xebase_dirt.png"},
	light_source = default.LIGHT_MAX - 8,
	is_ground_content = true,
	groups = {crumbly=3,soil=1},
})
minetest.register_node("xebase:grass", {
	description = "nebula dirt with grass",
	tiles = {"xebase_grass.png", "xebase_dirt.png", "xebase_dirt.png^xebase_grass_side.png"},
	light_source = default.LIGHT_MAX - 8,
	is_ground_content = true,
	groups = {crumbly=3,soil=1},
})
minetest.register_node("xebase:stone", {
	description = "nebula stone",
	tiles = {"xebase_stone.png"},
	light_source = default.LIGHT_MAX - 8,
	is_ground_content = true,
	groups = {weryhard=3,soil=1},
})
minetest.register_abm({
	nodenames = {"xebase:dirt","xebase:grass"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:tree" then
			node.name = "xebase:tree"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:tree","xebase:leaves"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:leaves" then
			node.name = "xebase:leaves"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:tree","xebase:leaves"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-1
		if minetest.get_node(pos).name == "default:leaves" then
			node.name = "xebase:leaves"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	nodenames = {"xebase:tree","xebase:leaves"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:tree" then
			node.name = "xebase:tree"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:tree","xebase:leaves"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-1
		if minetest.get_node(pos).name == "default:tree" then
			node.name = "xebase:tree"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	nodenames = {"xebase:tree","xebase:leaves"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.x = pos.x+1
		if minetest.get_node(pos).name == "default:leaves" then
			node.name = "xebase:leaves"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:tree","xebase:leaves"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.x = pos.x-1
		if minetest.get_node(pos).name == "default:leaves" then
			node.name = "xebase:leaves"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:tree","xebase:leaves"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.z = pos.z+1
		if minetest.get_node(pos).name == "default:leaves" then
			node.name = "xebase:leaves"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:tree","xebase:leaves"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.z = pos.z-1
		if minetest.get_node(pos).name == "default:leaves" then
			node.name = "xebase:leaves"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:tree","xebase:leaves"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.x = pos.x+1
		if minetest.get_node(pos).name == "default:tree" then
			node.name = "xebase:tree"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:tree","xebase:leaves"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.x = pos.x-1
		if minetest.get_node(pos).name == "default:tree" then
			node.name = "xebase:tree"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:tree","xebase:leaves"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.z = pos.z+1
		if minetest.get_node(pos).name == "default:tree" then
			node.name = "xebase:tree"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:tree","xebase:leaves"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.z = pos.z-1
		if minetest.get_node(pos).name == "default:tree" then
			node.name = "xebase:tree"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:dirt"},
	interval = 1,
	chance = 750,
	action = function(pos, node)
		pos.y = pos.y-1
		if minetest.get_node(pos).name == "default:stone" then
			node.name = "xebase:stone"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:stone"},
	interval = 1,
	chance = 1500,
	action = function(pos, node)
		pos.y = pos.y-1
		if minetest.get_node(pos).name == "default:stone" then
			node.name = "xebase:stone"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:stone"},
	interval = 1,
	chance = 1500,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:stone" then
			node.name = "xebase:stone"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:stone"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:dirt" then
			node.name = "xebase:dirt"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:stone"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:dirt_with_grass" then
			node.name = "xebase:grass"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:grass"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-1
		if minetest.get_node(pos).name == "default:stone" then
			node.name = "xebase:stone"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:stone"},
	interval = 1,
	chance = 1500,
	action = function(pos, node)
		pos.x = pos.x-1
		if minetest.get_node(pos).name == "default:stone" then
			node.name = "xebase:stone"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:stone"},
	interval = 1,
	chance = 1500,
	action = function(pos, node)
		pos.x = pos.x+1
		if minetest.get_node(pos).name == "default:stone" then
			node.name = "xebase:stone"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:stone"},
	interval = 1,
	chance = 1500,
	action = function(pos, node)
		pos.z = pos.z-1
		if minetest.get_node(pos).name == "default:stone" then
			node.name = "xebase:stone"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:stone"},
	interval = 1,
	chance = 1500,
	action = function(pos, node)
		pos.z = pos.z+1
		if minetest.get_node(pos).name == "default:stone" then
			node.name = "xebase:stone"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:grass"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-1
		if minetest.get_node(pos).name == "default:dirt" then
			node.name = "xebase:dirt"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"air"},
	interval = 1,
	chance = 100,
	action = function(pos, node)
		pos.y = pos.y-1
		if minetest.get_node(pos).name == "xebase:dirt" then
			node.name = "xebase:grass"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:grass"},
	interval = 1,
	chance = 750,
	action = function(pos, node)
		pos.z = pos.z-1
		if minetest.get_node(pos).name == "default:dirt_with_grass" then
			node.name = "xebase:grass"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:grass"},
	interval = 1,
	chance = 750,
	action = function(pos, node)
		pos.z = pos.z+1
		if minetest.get_node(pos).name == "default:dirt_with_grass" then
			node.name = "xebase:grass"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:grass"},
	interval = 1,
	chance = 750,
	action = function(pos, node)
		pos.x = pos.x-1
		if minetest.get_node(pos).name == "default:dirt_with_grass" then
			node.name = "xebase:grass"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:grass"},
	interval = 1,
	chance = 750,
	action = function(pos, node)
		pos.x = pos.x+1
		if minetest.get_node(pos).name == "default:dirt_with_grass" then
			node.name = "xebase:grass"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:dirt"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:dirt_with_grass" then
			node.name = "xebase:grass"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:dirt"},
	interval = 1,
	chance = 750,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:dirt" then
			node.name = "xebase:dirt"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:dirt"},
	interval = 1,
	chance = 750,
	action = function(pos, node)
		pos.y = pos.y-1
		if minetest.get_node(pos).name == "default:dirt" then
			node.name = "xebase:dirt"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:dirt"},
	interval = 1,
	chance = 750,
	action = function(pos, node)
		pos.z = pos.z+1
		if minetest.get_node(pos).name == "default:dirt" then
			node.name = "xebase:dirt"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:dirt"},
	interval = 1,
	chance = 750,
	action = function(pos, node)
		pos.z = pos.z-1
		if minetest.get_node(pos).name == "default:dirt" then
			node.name = "xebase:dirt"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:dirt"},
	interval = 1,
	chance = 750,
	action = function(pos, node)
		pos.x = pos.x+1
		if minetest.get_node(pos).name == "default:dirt" then
			node.name = "xebase:dirt"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:dirt"},
	interval = 1,
	chance = 750,
	action = function(pos, node)
		pos.x = pos.x-1
		if minetest.get_node(pos).name == "default:dirt" then
			node.name = "xebase:dirt"
			minetest.set_node(pos, node)
		end
	end
})


minetest.register_abm({
	nodenames = {"xebase:grass"},
	interval = 1,
	chance = 750,
	action = function(pos, node)
		pos.z = pos.z-1
		if minetest.get_node(pos).name == "default:dirt" then
			node.name = "xebase:grass"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:grass"},
	interval = 1,
	chance = 750,
	action = function(pos, node)
		pos.z = pos.z+1
		if minetest.get_node(pos).name == "default:dirt" then
			node.name = "xebase:grass"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:grass"},
	interval = 1,
	chance = 750,
	action = function(pos, node)
		pos.x = pos.x-1
		if minetest.get_node(pos).name == "default:dirt" then
			node.name = "xebase:grass"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xebase:grass"},
	interval = 1,
	chance = 750,
	action = function(pos, node)
		pos.x = pos.x+1
		if minetest.get_node(pos).name == "default:dirt" then
			node.name = "xebase:grass"
			minetest.set_node(pos, node)
		end
	end
})

-----------------------------------------------------------

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xebase:ore_plutonium",
	wherein        = "xebase:comet",
	clust_scarcity = 15*15*15,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = 3000,
	height_max     = 4000,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xebase:ore_illusium",
	wherein        = "xebase:sunstone",
	clust_scarcity = 15*15*15,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = 5000,
	height_max     = 6000,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xebase:ore_solarium",
	wherein        = "xebase:sunstone",
	clust_scarcity = 15*15*15,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = 5000,
	height_max     = 6000,
	flags          = "absheight",
})
