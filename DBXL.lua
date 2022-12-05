
local Marketplace = game:GetService('MarketplaceService');
local Players = game:GetService('Players');
local Player = Players.LocalPlayer;
local Character = Player.Character;
local TweenService = game:GetService("TweenService");
local Info = TweenInfo.new(15,Enum.EasingStyle.Quad);


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

end
