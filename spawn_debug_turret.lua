local players = EntityGetWithTag( "player_unit" )
local x,y
if #players > 0 then
    local x,y = EntityGetTransform( players[1] )
else 
    x,y = GameGetCameraPos()
else
    return "ERROR: No camera/players found"
end
EntityLoad("mods/nobys_things/mod_data/entities/buildings/debug_turret.xml", x, y)


