local players = EntityGetWithTag( "player_unit" )
local x,y
if #players > 0 then
    x,y = EntityGetTransform( players[1] )
else 
    x,y = GameGetCameraPos()
end
EntityLoad("mods/nobys_things/mod_data/entities/buildings/debug_turret.xml", x, y)


