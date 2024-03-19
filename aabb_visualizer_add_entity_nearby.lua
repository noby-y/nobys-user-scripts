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
    local comps = EntityGetAllComponents(ent)
    if ( comps ~= nil ) then
        local vis_exists = false
        for i,comp in ipairs( comps ) do
            if ( string.find(ComponentGetTypeName(comp), "aabb_visualizer") and ComponentGetIsEnabled(comp)) then
                vis_exists = true
            end
        end
        if not vis_exists then
            visualize_entity(ent) 
        end
    end
end 