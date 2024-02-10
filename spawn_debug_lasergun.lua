local players = EntityGetWithTag( "player_unit" )

if #players > 0 then
    local x,y = EntityGetTransform( players[1] )
    EntityLoad("mods/nobys_things/mod_data/entities/buildings/debug_lasergun.xml", x, y)
end
