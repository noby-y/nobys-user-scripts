dofile_once("mods/nobys_things/mod_data/scripts/debug/aabb_visualizer.lua")
local players = EntityGetWithTag( "player_unit" )

if #players > 0 then
    local x,y = EntityGetTransform( players[1] )
    local entities = EntityGetInRadius(x, y, 160)
    for i,ent in ipairs(entities) do
        visualize_entity(ent) 
    end 
end