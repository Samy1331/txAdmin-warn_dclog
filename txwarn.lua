ESX = nil 
function DiscordHook(hook,message,color)
    local hooke = ''
    local embeds = {
                {
            ["title"] = message,
            ["type"] = "rich",
            ["color"] = color,
            ['footer'] = {
            ['text'] = 'Discord -> Samy#1331'
            },
            ['timestamp'] = os.date('!%Y-%m-%dT%H:%M:%SZ')
            }}
            
    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(hooke, function(err, text, headers) end, 'POST', json.encode({ username = hook,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end
AddEventHandler('txAdmin:events:playerWarned', function(e)
	msg ="**Warn-System**\n> Team: "..e.author.." \n> Spieler: " ..GetPlayerName(e.target).. " \n> Grund: "..e.reason.."" DiscordHook('System', msg, 7536724)
end)

