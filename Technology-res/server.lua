RegisterNetEvent("Technology-res:LotaBojufkaRPKurwoJebana")
AddEventHandler("Technology-res:LotaBojufkaRPKurwoJebana", function()
	DropPlayer(source, 'Technology-res ' .. Config.KickMsg)
end)