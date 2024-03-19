dofile_once("mods/nobys_things/mod_data/scripts/debug/aabb_visualizer.lua")
local players = EntityGetWithTag( "player_unit" )
local x,y

if #players > 0 then
    x,y = EntityGetTransform( players[1] )
elseif #players <= 0 then
    x,y = GameGetCameraPos()
else
    return "ERROR: No camera/players found"
end

local entities = EntityGetInRadius(x, y, 160)

for i,ent in ipairs(entities) do
    local comps = EntityGetAllChildren(ent, "aabb_visualizer")
    if ( comps == nil or next(comps) == nil ) then
        visualize_entity(ent)
    end
end 