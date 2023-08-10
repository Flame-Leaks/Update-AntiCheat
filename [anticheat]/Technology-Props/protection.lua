checkWhitelistProps = function(props)
    for a,b in pairs(Config.PropsWhitelisted) do
        if props == GetHashKey(b) then 
            return true 
        end
    end
end

AddEventHandler('entityCreating', function(entity) 
    local entity_model = GetEntityModel(entity) 
    local check_props = checkWhitelistProps(entity_model) 

    if GetEntityType(entity) == 3 then 
        if not check_props then 
            CancelEvent() 
        end
    end
end)
