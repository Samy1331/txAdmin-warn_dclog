ESX = nil 


function DiscordHook(hook,message,color)
    local hooke = 'https://discord.com/api/webhooks/1026319270218567790/DVlmIoTgdbm6trI1p3ahivKFDRIhr2npz5qBftO57DCZEsh8kQfxKsJPWk-QL-Nm9qWJ'
    local embeds = {
                {
            ["title"] = message,
            ["type"] = "rich",
            ["color"] = color,
            ['footer'] = {
            ['text'] = 'R4GE-V System'
            },
            ['timestamp'] = os.date('!%Y-%m-%dT%H:%M:%SZ')
            }}
            
    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(hooke, function(err, text, headers) end, 'POST', json.encode({ username = hook,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end






AddEventHandler('txAdmin:events:playerWarned', function(e)
    --TriggerClientEvent("Xalo:annouce", -1,  "" .. e.author .. " verwarnt den Spieler " .. GetPlayerName(e.target) .. " Grund: " .. e.reason, 10000)
	--
	msg ="**R4GE-V Warn-System**\n> Team: "..e.author.." \n> Spieler: " ..GetPlayerName(e.target).. " \n> Grund: "..e.reason.."" DiscordHook('System', msg, 7536724)
end)

AddEventHandler('EasyAdmin:banPlayer', function(playerId,reason,expires, offline)
     --TriggerClientEvent("Xalo:annouce", -1, ""..getName(source,true).." bannt Spieler "..CachedPlayers[playerId].name.." für "..reason, 3
	 --
	 msg ="**R4GE-V Ban-System**\n> Team: "..getName(source,true).." \n> Spieler: " ..CachedPlayers[playerId].name.. " \n> Grund: "..reason.."" DiscordHook('System', msg, 7536724)
end)