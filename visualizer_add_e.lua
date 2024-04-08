if not e or not EntityGetIsAlive(e) then
    error("No entity in 'e'")
end

dofile_once("mods/nobys_things/mod_data/scripts/debug/aabb_visualizer.lua")
visualize_entity(e)