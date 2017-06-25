# Antum Minerals mod API


## -- Globals --

### ***minerals***
- Global mod identifier

### ***aminerals.modname***
- Mod name according to 'mod.conf' or determined by label of containing folder
- type: *string*

### ***aminerals.modpath***
- Local path to mod
- type: *string*

### ***aminerals.disabled_minerals***
- List of minerals to be disabled
- type: *string table*

### ***aminerals.override_others***
- Setting indicating whether or not objects from 3rd party mods should be overridden
- type: *bool*


## -- Methods/Functions --

### ***aminerals.log(message)***
- Logs message output with header
- param: *message*
  - String message to be logged/displayed

### ***aminerals.log_debug(message)***
- Logs message if verbosity is set to high
- param: *message*
  - String message to be logged/displayed

### ***aminerals.register(name, def)***
- Registers a new item
- param: *name*
  - Name of new item
- param: *def*
  - Item definition

### ***aminerals.register_lump(name, def)***
- Registers a new mineral lump & logs message
- param: *name*
  - Name of new item
- param: *def*
  - Item definition

### ***aminerals.register_gem(name, def)***
- Registers a new gem & logs message
- param: *name*
  - Name of new item
- param: *def*
  - Item definition

### ***aminerals.register_ingot(name, def)***
- Registers a new ingot & logs message
- param: *name*
  - Name of new item
- param: *def*
  - Item definition

### ***aminerals.register_node(name, def, log)***
- Registers a regular node
- param: *name*
  - String name of new node ('aminerals:' prepended if not detected in string)
- param: *def*
  - Node definition
- param: *log*
  - Boolean value to determine if registration message should be logged (for overriding from sub functions)

### ***aminerals.register_mineral(name, def)***
- Registers a new mineral & logs message
- param: *name*
  - String name of new node ('aminerals:' prepended if not detected in string)
- param: *def*
  - Node definition

### ***aminerals.override(old, new)***
- Overrides a node/item & creates aliases of an existing one
- param: *old*
  - Name of item being replaced
- param: *new*
  - Item name that replaced item will reference

### ***aminerals.override_type(name, modname, suffix)***
- Overrides a node/item using a common mod name & optional suffix
- param: *name*
  - Base name that is common for old & new objects
- param: *modname*
  - Name of the mod from which the item is being overridden
- param: *suffix*
  - Common string to append to both old & new objects name

### ***aminerals.mod_exists(modname)***
- Checks for existing global or mod path
- param: *modname*
  - Name of mod to check for
- return: *bool*
  - *true* if mod is available

### ***aminerals.list_contains(list, value)***
- Checks table contents for a specified a value
- param: *list*
  - Table to be iterated
- param: *value*
  - String to search for in *list*
- return: *bool*
  - *true* if *value* is found in *list*

### ***aminerals.enabled(mineral)***
- Checks if a mineral is enabled
- param: *mineral*
  - String name of mineral
- return: *bool*
  - *true* if *mineral* is not found in disabled list

### ***aminerals.titleize(str)***
- Titleizes a string (e.g., converts 'hello' to 'Hello')
- param: *str*
  - String value to be converted
- FIXME: Only titleizes first letter in string (should convert all whitespace-separated substrings)

### ***aminerals.get_texture(name, suffix, variant)***
- Retrieves filename string for texture
- param: *name*
  - Base name of item
- param: *suffix*
  - Optional suffix to append to *name*
- param: *variant*
  - Optionall suffix to append to *name*
- return: *string*
  - Formatted filename of image

### ***aminerals.format_name(name, suffix, variant)***
- Prepends mod name to item name string
- param: *name*
  - String name of node/item
- param: *suffix*
  - Optional string to be appended to name
- param: *variant*
  - Additional optional suffix
- return: *string*
  - New formatted name
