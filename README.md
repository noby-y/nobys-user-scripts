# A compilation of useful user scripts for Component Explorer mod

## Instalation



## List of scripts

### `entity_list_coord.lua`
A script used to add coordinates column to the entity list window

### `spawn_debug_lasergun.lua`
> [Noby's Things]() mod is required for this to work

Spawns a stationarry lasergun at player location. The turret can be modified through Entity Picker:

VariableStorageComponent #1 
- `name` == `projectile_file`  
- `value_string` => enter path to any projectile you want the turret to shoot

VariableStorageComponent #2 
- `name` == `vel_x`   
- `value_int` => enter whatever initial horinzontal velocity you want the projectile to have (0 default)

VariableStorageComponent #3 
- `name` == `vel_y`   
- `value_int` => enter whatever initial vertical velocity you want the projectile to have (600 default)

LuaComponent
- `execute_every_n_frame` => enter 

## Utility script
This script adds some utility functions that can help you write your own 
user scripts

### How to include in your script
`user_script("utils/utils.lua")` - add this line at the start of your user script

### List of functions
```lua
function entity_list_contains(new_column)
``` 
Checks if an entity list already contains an extra column with the same `name` field as `new_column`'s `name`, otherwise returns `false`

Returns: 
> `true` / `false`

Parameters: 
> `new_column` - pass your new column here as is
```lua
function table_contains(table, value)
```
Returns 