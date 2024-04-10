# **A compilation of useful user scripts for Component Explorer mod**

## Instalation

1. Download code in ZIP
2. Unpack contents of ZIP folder
3. Copy the contents of `nobys-user-scripts-main` folder into the `user-scripts` folder
   - `user-scripts` folder can be opened through Lua Console in Component Explorer 


## List of user scripts

### 1: `entity_list_add_coords.lua`
A script used to add coordinates column to the entity list window

### 2: `spawn_debug_turret.lua`
[Noby's Things](https://github.com/noby-y/nobys_things) mod is required for this to work

Spawns a stationary turret at player location. The turret can be modified through Entity Picker:

#### VariableStorageComponent #1 
`name` == `projectile_file`  
`value_string` => enter path to any projectile you want the turret to shoot
______
#### VariableStorageComponent #2 
`name` == `vel_x`   
`value_int` => enter whatever initial horinzontal velocity you want the projectile to have (0 default)
______
#### VariableStorageComponent #3 
`name` == `vel_y`   
`value_int` => enter whatever initial vertical velocity you want the projectile to have (600 default)
______
#### LuaComponent
`execute_every_n_frame` => enter turret's shooting frequency

### 3: `visualizer_add_e.lua`
Add a visualizer for different components to the entity whose id is stored in `e` variable.  
To use first assign select entity id to the `e` variable in the lua console. For exmaple:
```lua
e = 666
```
will select entity with id `666` as the target for visualizer.  
After entering this in the console run click on the script to run it.

### 4: `visualizer_add_nearby.lua`
Add a visualizer for different components to all entities within 160 radius (same as Spells to Power) around the player or camera (if there is no player)

#### Note: 
- you can disable visualizers for different components by looking through child entities (they're named after components they visualize)
- the visualizer won't add any new visualizers if there's even 1 existing visualizer on the entity
- `AreaDamageComponent` dimensions are extremely wack and inaccurate code-wise. Don't trust it

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
Checks if an entity list already contains an extra column with the same `name` field as `new_column`'s `name`

### Parameters:  
`new_column` - pass your new column

### Returns:  
`true`   
`false`


______
```lua
function table_contains(table, value)
```
Checks whether a `table` contains select `value`

### Parameters: 
`table` - pass the table you want to check   
`value` - pass the value you want to find

### Returns:  
`true`   
`false`