# **A compilation of useful user scripts for Component Explorer mod**

## Instalation

1. Download code in ZIP
2. Unpack contents of ZIP folder
3. Copy the contents of `Nobys-user-scripts-main` folder into the `user-scripts` folder
   - `user-scripts` folder can be opened through Lua Console in Component Explorer 


## List of user scripts

### `entity_list_coord.lua`
A script used to add coordinates column to the entity list window

### `spawn_debug_turret.lua`
[Noby's Things](https://github.com/noby-y/nobys_things) mod is required for this to work

Spawns a stationary turret at player location. The turret can be modified through Entity Picker:

> VariableStorageComponent #1 
>> `name` == `projectile_file`  
>> `value_string` => enter path to any projectile you want the turret to shoot

> VariableStorageComponent #2 
>> `name` == `vel_x`   
>> `value_int` => enter whatever initial horinzontal velocity you want the projectile to have (0 default)

> VariableStorageComponent #3 
>> `name` == `vel_y`   
>> `value_int` => enter whatever initial vertical velocity you want the projectile to have (600 default)

> LuaComponent
>> `execute_every_n_frame` => enter turret's shooting frequency



# **Utility script**
This script adds some utility functions that can help you write your own 
user scripts

## How to include in your script
`user_script("utils/utils.lua")` - add this line at the start of your user script

## List of functions

```lua
function utils_print_test()
```
Prints "*Utility scripts are imported correctly*" into the console to check whether the utility script was imported correctly

______
```lua
function entity_list_contains(new_column)
``` 
Checks if an entity list already contains an extra column with the same `name` field as `new_column`'s `name`, otherwise returns `false`

### Parameters:  
`new_column` - pass your new column

### Returns:  
`true`   
`false`


______
```lua
function table_contains(table, value)
```
Checks whether a `table` contains a certain `value`

### Parameters: 
`table` - pass the table you want to check   
`value` - pass the value you want to find

### Returns:  
`true`   
`false`