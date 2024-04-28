AddEventHandler("playerSpawnedObject", function(obj)
    local playerName = GetPlayerName(source)
    local identifiers = GetPlayerIdentifiers(source)
    local playerSteamID, fivemID, xblID, ip, discordID, liveID = "", "", "", "", "", ""

    for _, id in ipairs(identifiers) do
        if string.find(id, "steam:") then
            playerSteamID = id
        elseif string.find(id, "license:") then
            fivemID = id
        elseif string.find(id, "xbl:") then
            xblID = id
        elseif string.find(id, "ip:") then
            ip = id
        elseif string.find(id, "discord:") then
            discordID = id
        elseif string.find(id, "live:") then
            liveID = id
        end
    end

    local message = playerName .. " with Steam ID " .. playerSteamID
    if fivemID ~= "" then message = message .. ", FiveM ID " .. fivemID end
    if xblID ~= "" then message = message .. ", XBL ID " .. xblID end
    if ip ~= "" then message = message .. ", IP " .. ip end
    if discordID ~= "" then message = message .. ", Discord ID " .. discordID end
    if liveID ~= "" then message = message .. ", Live ID " .. liveID end

    print(message .. " spawned an object.")
end)
