user_script("utils/utils.lua")

local entity_list = dofile_once("mods/component-explorer/entity_list.lua")

local coord_column = {
    name = "Coord",
    func = function(entity_id)
        local x, y = EntityGetTransform(entity_id)
        return ("%.2f, %.2f"):format(x, y)
    end
}

if entity_list_contains(entity_list.extra_columns, coord_column) then
    print("this column already exists")
else
    table.insert(entity_list.extra_columns, coord_column)
end
