# Antum Minerals mod API


## -- Globals --

### ***minerals***
- Global mod identifier

### ***minerals.modname***
- Mod name according to 'mod.conf' or determined by label of containing folder
- Type: string

### ***minerals.modpath***
- Local path to mod
- Type: string

### ***minerals.disabled_minerals***
- List of minerals to be disabled
- Type: string table

### 


## -- Methods/Functions --

### ***minerals.log(message)***
- Logs message output with header
- Return type: nil

### ***minerals.register(name, def)***
- Registers a new item
- Return type: nil

### ***minerals.register_lump(name, def)***
- Registers a new mineral lump & logs message
- Return type: nil

### ***minerals.register_gem(name, def)***
- Registers a new gem & logs message
- Return value: nil

### ***minerals.register_mineral(name, def)***
- Registers a new mineral & logs message
- Return type: nil

### ***minerals.override(old, new)***
- Overrides a node/item & creates aliases of an existing node/item
- Return type: nil

### ***minerals.mod_exists(modname)***
- Checks for existing global or mod path
- Return type: bool

### ***minerals.titleize(str)***
- Titleizes a string (e.g., converts 'hello' to 'Hello'
- Return type: nil
- FIXME: Only titleizes first letter in string (should convert all whitespace-separated substrings)

### ***minerals.list_contains(list, value)***
- Checks table contents for a specified a value
- Return type: bool

### ***minerals.enabled(mineral)***
- Checks if a mineral is enabled
- Return type: bool
