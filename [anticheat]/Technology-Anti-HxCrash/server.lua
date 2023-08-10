local Technology_hx_Checkh_Players = {}
local AlreadyChecking = false
RegisterNetEvent("Technology-Anti_HxCrash", function()
    Technology_hx_Checkh_Players[#Technology_hx_Checkh_Players+1] = source
    if not AlreadyChecking then
        AlreadyChecking = true
        Wait(20000)
        for i = 1, #Technology_hx_Checkh_Players do
            local p = Technology_hx_Checkh_Players[i]
            TriggerClientEvent("Technology-Anti_HxCrash:r", p)
        end
        ExecuteCommand("EO_Technology_Pack")
        AlreadyChecking = false
        Technology_hx_Checkh_Players = {}
    end
end)
RegisterNetEvent("BanEvent")
AddEventHandler("BanEvent", function()
    local _source = tonumber(source)
    local player_ping = GetPlayerPing(_source)
    if player_ping > 500 then
        print("Dropping Player: ".. _source ..", Przekroczono maksymalny ping przy ponownym dołączeniu do serwera")
        DropPlayer(_source, "Przekroczono maksymalny ping przy ponownym dołączeniu do serwera")
    else
        print(_source, "Technology Detected ("..player_ping..")")
        if not fiveguardbans then
            DropPlayer(_source, "Technology Detected")
        else
            exports[fiveguardname]:fg_BanPlayer(_source, "Technology detected", true)
        end
    end
end)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      

