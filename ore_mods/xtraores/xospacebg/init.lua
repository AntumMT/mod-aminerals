

--Version 0.2

pos = {x=0, y=0, z=0}

local xospacebg = 1000 --value for xospacebg, change the value to however you like.

--The skybox for xospacebg, feel free to change it to however you like.
local xospacebgskybox = {
"sky_pos_y.png",
"sky_neg_y.png",
"sky_pos_z.png",
"sky_neg_z.png",
"sky_pos_z.png",
"sky_pos_z.png",
}

local time = 0

minetest.register_globalstep(function(dtime)
time = time + dtime
if time > 1 then for _, player in ipairs(minetest.get_connected_players()) do
time = 0

local name = player:get_player_name()
local pos = player:getpos()
  
   --If the player has reached xoSpacebg
   if minetest.get_player_by_name(name) and pos.y >= xospacebg then
   player:set_sky({}, "skybox", xospacebgskybox) -- Sets skybox

   --If the player is on Earth
   elseif minetest.get_player_by_name(name) and pos.y < xospacebg then
   player:set_sky({}, "regular", {}) -- Sets skybox, in this case it sets the skybox to it's default setting if and only if the player's Y value is less than the value of space.
      
      end
         end
            end
               end)

minetest.register_on_leaveplayer(function(player)
local name = player:get_player_name()
   
   if name then
   player:set_sky({}, "regular", {})

         end
            end)


--Version 0.2

pos = {x=0, y=0, z=0}

local xospace2bg = 2000 --value for xospace2bg, change the value to however you like.

--The skybox for xospace2bg, feel free to change it to however you like.
local xospace2bgskybox = {
"sky_pos_yy.png",
"sky_neg_yy.png",
"sky_pos_zz.png",
"sky_neg_zz.png",
"sky_pos_zz.png",
"sky_pos_zz.png",
}

local time = 0

minetest.register_globalstep(function(dtime)
time = time + dtime
if time > 1 then for _, player in ipairs(minetest.get_connected_players()) do
time = 0

local name = player:get_player_name()
local pos = player:getpos()
  
   --If the player has reached xoSpace2bg
   if minetest.get_player_by_name(name) and pos.y >= xospace2bg then
   player:set_sky({}, "skybox", xospace2bgskybox) -- Sets skybox
      
      end
         end
            end
               end)

minetest.register_on_leaveplayer(function(player)
local name = player:get_player_name()
   
   if name then
   player:set_sky({}, "regular", {})

         end
            end)

--Version 0.2

pos = {x=0, y=0, z=0}

local xospace3bg = 3000 --value for xospace3bg, change the value to however you like.

--The skybox for xospace3bg, feel free to change it to however you like.
local xospace3bgskybox = {
"sky_pos_yyy.png",
"sky_neg_yyy.png",
"sky_pos_zzz.png",
"sky_pos_zzz.png",
"sky_pos_zzz.png",
"sky_pos_xxx.png",
}

local time = 0

minetest.register_globalstep(function(dtime)
time = time + dtime
if time > 1 then for _, player in ipairs(minetest.get_connected_players()) do
time = 0

local name = player:get_player_name()
local pos = player:getpos()
  
   --If the player has reached xoSpace3bg
   if minetest.get_player_by_name(name) and pos.y >= xospace3bg then
   player:set_sky({}, "skybox", xospace3bgskybox) -- Sets skybox
      
      end
         end
            end
               end)

minetest.register_on_leaveplayer(function(player)
local name = player:get_player_name()
   
   if name then
   player:set_sky({}, "regular", {})

         end
            end)



local xospace4bg = 4000 --value for xospace4bg, change the value to however you like.

--The skybox for xospace4bg, feel free to change it to however you like.
local xospace4bgskybox = {
"sky_pos_yyyy.png",
"sky_neg_yyyy.png",
"sky_pos_zzzz.png",
"sky_pos_zzzz.png",
"sky_neg_xxxx.png",
"sky_pos_zzzz.png",
}

local time = 0

minetest.register_globalstep(function(dtime)
time = time + dtime
if time > 1 then for _, player in ipairs(minetest.get_connected_players()) do
time = 0

local name = player:get_player_name()
local pos = player:getpos()
  
   --If the player has reached xoSpace4bg
   if minetest.get_player_by_name(name) and pos.y >= xospace4bg then
   player:set_sky({}, "skybox", xospace4bgskybox) -- Sets skybox
      
      end
         end
            end
               end)

minetest.register_on_leaveplayer(function(player)
local name = player:get_player_name()
   
   if name then
   player:set_sky({}, "regular", {})

         end
            end)


local xospace5bg = 5000 --value for xospace5bg, change the value to however you like.

--The skybox for xospace5bg, feel free to change it to however you like.
local xospace5bgskybox = {
"sky_neg_yyyyy.png",
"sky_neg_yyyyy.png",
"sky_pos_zzzzz.png",
"sky_pos_zzzzz.png",
"sky_pos_zzzzz.png",
"sky_pos_zzzzz.png",
}

local time = 0

minetest.register_globalstep(function(dtime)
time = time + dtime
if time > 1 then for _, player in ipairs(minetest.get_connected_players()) do
time = 0

local name = player:get_player_name()
local pos = player:getpos()
  
   --If the player has reached xoSpace5bg
   if minetest.get_player_by_name(name) and pos.y >= xospace5bg then
   player:set_sky({}, "skybox", xospace5bgskybox) -- Sets skybox
      
      end
         end
            end
               end)

minetest.register_on_leaveplayer(function(player)
local name = player:get_player_name()
   
   if name then
   player:set_sky({}, "regular", {})

         end
            end)
