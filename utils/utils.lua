--* user_script("utils/utils.lua")

function entity_list_contains(entity_list, value)
    for i = 1,#entity_list do
        if (entity_list[i].name == value.name) then
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

function print_test()
    print("testing utils")
end