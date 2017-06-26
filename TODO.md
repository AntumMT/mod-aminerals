
#### general

- check if 'anthracite' textures should be rename to 'antracite' (orinally in xtraores)
- rename '_lump' textures to '_raw'
- create mineral table layout in 'api.md'
- create 'register' functions:
  - 'register_mineral'
    - aminerals.register_mineral(name, def)
  - 'register_item'
    - aminerals.register_item(name, def)
    - 'def' should include 'type' attribute

#### default

- add setting to enable old mese


#### gems_encrustable

- nodes to override
  - gems:mineral_garnet
  - gems:mineral_aquamarine
  - gems:mineral_topaz
  - gems:mineral_diamond
  - gems:mineral_opal
- craft items to override
  - gems:garnet
  - gems:aquamarine
  - gems:topaz
  - gems:diamond
  - gems:opal
- crafts to override


#### gems_tools

- nodes to override
  - gems:ruby_ore
  - gems:emerald_ore
  - gems:sapphire_ore
  - gems:amethyst_ore
  - gems:ruby_block
  - gems:emerald_block
  - gems:sapphire_block
  - gems:amethyst_block

- craft items to override
  - gems:ruby_gem
  - gems:emerald_gem
  - gems:sapphire_gem
  - gems:amethyst_gem
  - gems:raw_amethyst
  - gems:raw_ruby
  - gems:raw_emerald
  - gems:raw_sapphire

- crafts to override


#### geominer

- nodes to override
  - geominer:diorite
  - geominer:granite
  - geominer:hornfels
  - geominer:scoria
  - geominer:limestone
  - geominer:slate
  - geominer:gneiss
  - geominer:marble
  - geominer:peridotite
  - geominer:ore_beryl
  - geominer:ore_emerald
  - geominer:sapphire_ore
  - geominer:hematite_ore
  - geominer:agate_ore
  - geominer:ruby_ore
  - geominer:larimar_ore
  - geominer:sunstone_ore
  - geominer:moonstone_ore

- craft items to override
  - geominer:berly (THIS IS MISSPELLED)
  - geominer:emerald
  - geominer:sapphire
  - geominer:hematite
  - geominer:agate
  - geominer:ruby
  - geominer:larimar
  - geominer:sunstone
  - geominer:moonstone
  - geominer:stick_beryl
  - geominer:stick_emerald
  - geominer:stick_sapphire
  - geominer:stick_hematite
  - geominer:stick_agate
  - geominer:stick_ruby
  - geominer:stick_larimar
  - geominer:stick_sunstone
  - geominer:stick_moonstone

- crafts to override


#### lottores

- nodes to override
  - lottores:rough_rock
  - lottores:silver_ore
  - lottores:tin_ore
  - lottores:limestone
  - lottores:lead_ore
  - lottores:mithril_ore
  - lottores:mineral_pearl
  - lottores:mineral_salt
  - lottores:tilkal
  - lottores:marble
  - lottores:silver_block
  - lottores:tin_block
  - lottores:lead_block
  - lottores:mithril_block
  - lottores:galvorn_block
  - lottores:salt
  - lottores:pearl_block
  - lottores:salt_block
  - lottores:geodes_crystal_1
  - lottores:geodes_crystal_2
  - lottores:geodes_crystal_3
  - lottores:geodes_crystal_4
  - lottores:geodes_crystal_5

- craft items to override
  - lottores:rough_rock_lump
  - lottores:silver_lump
  - lottores:silver_ingot
  - lottores:tin_lump
  - lottores:tin_ingot
  - lottores:lead_lump
  - lottores:lead_ingot
  - lottores:mithril_lump
  - lottores:mithril_ingot
  - lottores:galvorn_ingot
  - lottores:tilkal_ingot
  - lottores:orc_steel_ingot
  - lottores:pearl

- crafts to override


#### moreores

- nodes to override

- craft items to override

- crafts to override

  - moreores:mineral_\<mineral_name\>


#### nether

- nodes to override
ore_mods/nether/init.lua:minetest.register_node("nether:portal
ore_mods/nether/init.lua:minetest.register_node(":default:obsidian
ore_mods/nether/init.lua:minetest.register_node("nether:rack
ore_mods/nether/init.lua:minetest.register_node("nether:sand
ore_mods/nether/init.lua:minetest.register_node("nether:glowstone
ore_mods/nether/init.lua:minetest.register_node("nether:brick
ore_mods/nether/init.lua:minetest.register_node("nether:fence_nether_brick

- craft items to override
  - :default:mese_crystal_fragment

- crafts to override


#### ores

- nodes to override
  - ores:adamantineore
  - ores:alabasterore
  - ores:aluminumore
  - ores:aluniteore
  - ores:andesiteore
  - ores:anhydriteore
  - ores:basaltore
  - ores:bauxiteore
  - ores:bismuthore
  - ores:bituminousore
  - ores:boraxore
  - ores:brimstone
  - ores:calciteore
  - ores:cassore
  - ores:chalk
  - ores:chertore
  - ores:chromiteore
  - ores:cinore
  - ores:claystone
  - ores:cobaltiteore
  - ores:conglomerateore
  - ores:cryoliteore
  - ores:daciteore

- craft items to override
  - ores:adamantinelump
  - ores:alabasterlump
  - ores:aluminumlump
  - ores:alunitecrystal
  - ores:andesiterock
  - ores:anhydritecrystal
  - ores:basaltrock
  - ores:bauxiterock
  - ores:bismuthlump
  - ores:bituminouscoal
  - ores:boraxrock
  - ores:calcitecrystal
  - ores:casslump
  - ores:chertlump
  - ores:chromitelump
  - ores:cinlump
  - ores:cobaltlump
  - ores:cryolitelump

- crafts to override


#### oresplus

- nodes to override

- craft items to override

- crafts to override


#### quartz

- nodes to override
  - quartz:quartz_ore
  - quartz:block

- craft items to override
  - quartz:quartz_crystal
  - quartz:quartz_crystal_piece

- crafts to override


#### rainbow_ore

- nodes to override
  - rainbow_ore:rainbow_ore_block

- craft items to override
  - rainbow_ore:rainbow_ore_ingot

- crafts to override


#### technic_worldgen

- nodes to override
  - technic:mineral_uranium
  - technic:mineral_chromium
  - technic:mineral_zinc
  - technic:mineral_lead
  - technic:mineral_sulfur
  - technic:granite
  - technic:marble
  - technic:marble_bricks
  - technic:uranium_block
  - technic:chromium_block
  - technic:zinc_block
  - technic:lead_block
  - technic:cast_iron_block
  - technic:carbon_steel_block
  - technic:stainless_steel_block
  - technic:brass_block

- craft items to override
  - technic:uranium_lump
  - technic:uranium_ingot
  - technic:chromium_lump
  - technic:chromium_ingot
  - technic:zinc_lump
  - technic:zinc_ingot
  - technic:lead_lump
  - technic:lead_ingot
  - technic:sulfur_lump
  - technic:brass_ingot
  - technic:cast_iron_ingot
  - technic:carbon_steel_ingot
  - technic:stainless_steel_ingot

- crafts to override


#### uranium

- nodes to override
  - uranium:uranium_ore
  - uranium:uranium_block

- craft items to override
  - uranium:uranium_dust
  - uranium:radioactive_coal
  - uranium:uranium_gem

- crafts to override


#### xtraores

- nodes to override
  - xtraores:stone_with_platinum
  - xtraores:platinum_brick
  - xtraores:stone_with_cobalt
  - xtraores:cobalt_brick
  - xtraores:stone_with_osminum
  - xtraores:osminum_brick
  - xtraores:stone_with_adamantite
  - xtraores:adamantite_brick
  - xtraores:stone_with_rarium
  - xtraores:rarium_brick
  - xtraores:stone_with_unobtanium
  - xtraores:unobtanium_brick
  - xtraores:stone_with_titanium
  - xtraores:titanium_brick
  - xtraores:geminitinum_brick
  - xtraores:stone_with_geminitinum
  - xtraores:geminitinum_brick
  - xtraores:rainbow
  - xtraores:redmarble_polished
  - xtraores:redmarble_bricks
  - xtraores:redmarble
  - xtraores:bluemarble_polished
  - xtraores:bluemarble_bricks
  - xtraores:bluemarble
  - xtraores:blackmarble_polished
  - xtraores:blackmarble_bricks
  - xtraores:blackmarble
  - xtraores:marble_polished
  - xtraores:marble_bricks
  - xtraores:marble
  - xtraores:stone_with_antracite

- craft items to override
  - xtraores:platinum_lump
  - xtraores:platinum_bar
  - xtraores:cobalt_lump
  - xtraores:cobalt_bar
  - xtraores:osminum_lump
  - xtraores:osminum_bar
  - xtraores:adamantite_lump
  - xtraores:adamantite_bar
  - xtraores:rarium_lump
  - xtraores:rarium_bar
  - xtraores:unobtanium_lump
  - xtraores:unobtanium_bar
  - xtraores:titanium_lump
  - xtraores:titanium_bar
  - xtraores:geminitinum_lump
  - xtraores:geminitinum_bar
  - xtraores:antracite_lump

- crafts to override
