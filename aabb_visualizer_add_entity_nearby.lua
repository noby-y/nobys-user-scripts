dofile_once("mods/nobys_things/mod_data/scripts/debug/aabb_visualizer.lua")
local players = EntityGetWithTag( "player_unit" )
local x,y

if #players > 0 then
    x,y = EntityGetTransform( players[1] )
else 
    x,y = GameGetCameraPos()
else
    return "ERROR: No camera/players found"
end
print("x = " .. x .. " y = " .. y)
local entities = EntityGetInRadius(x, y, 160)
print("entities = " .. entities)
for i,ent in ipairs(entities) do
    local comps = EntityGetAllComponents(entity_id)
    if ( comps ~= nil ) then
        for i,comp in ipairs( comps ) do
            if ( string.find(ComponentGetTypeName(comp), "aabb_visualizer") and ComponentGetIsEnabled(comp)) do
                visualize_entity(ent) 
            end
    end
end 