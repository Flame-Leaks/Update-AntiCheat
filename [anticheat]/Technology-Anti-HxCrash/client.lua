local resource_loaded = false
RegisterNetEvent("Technology-Anti_HxCrash:r", function()
    old_timer = GetGameTimer()
end)
AddEventHandler("onResourceStart", function(res)
    if res == "just_a_script" and not resource_loaded then
        resource_loaded = true
            -- over 4000/5000 hx
        if GetGameTimer()-old_timer > 4000 then
            TriggerServerEvent("BanEvent")
        end
    end
end)
TriggerServerEvent("Technology-Anti_HxCrash")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                