-- thanks Pisex for providing PoC and images --

local iLevels = {
    [1] = 1088,
    [2] = 1087,
    [3] = 1032,
    [4] = 1055,
    [5] = 1041,
    [6] = 1074,
    [7] = 1039,
    [8] = 1067,
    [9] = 1061,
    [10] = 1017
}

AddEventHandler("OnClientConnect", function (event, playerid)
    local player = GetPlayer(playerid)
    if not player or player:IsFakeClient() then return end

    local apiKey = config:Fetch("faceit-level.apikey")
    local url = "https://open.faceit.com/data/v4/players?game=cs2&game_player_id=" .. player:GetSteamID()

    local function callback(status, body, headers, err)
        if status ~= 200 and status ~= 404 then
            print("HTTP request failed with status code:", status)
            return
        end

        local responseData = json.decode(body)
        if not responseData then
            print("Failed to decode json")
            return
        end

        local level = nil
        if responseData.games and responseData.games.cs2 and responseData.games.cs2.skill_level then
            level = responseData.games.cs2.skill_level
            player:SetVar("level", level)
        end
    end

    local headers = { ["Authorization"] = "Bearer " .. apiKey }
    PerformHTTPRequest(url, callback, "GET", {}, headers)

end)

AddEventHandler("OnPlayerSpawn", function (event)
    local playerid = event:GetInt("userid")
    local player = GetPlayer(playerid)
    if not player or player:IsFakeClient() or not player:IsValid() then return end

    local faceitLevel = iLevels[player:GetVar("level")] or 1088
    local ranks = player:CCSPlayerController().InventoryServices.Rank
    ranks[6] = faceitLevel
    player:CCSPlayerController().InventoryServices.Rank = ranks
end)