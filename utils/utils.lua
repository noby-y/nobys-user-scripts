--* user_script("utils/utils.lua")

function entity_list_contains(new_column)
    local entity_list = dofile_once("mods/component-explorer/entity_list.lua")
    for i = 1,#entity_list.extra_columns do
        if (entity_list.extra_columns[i].name == new_column.name) then
            return true
        end
    end
    return false
end

function table_contains(table, value)
    for i = 1,#table do
        if (table[i] == value) then
            return true
        end
    end
    return false
end

function utils_print_test()
    print("Utility scripts are imported correctly")
end