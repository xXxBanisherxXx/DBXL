-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TrueFalseAttack = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TrueFalseEnergy = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")
local textr1 = Instance.new("TextBox")
local textr2 = Instance.new("TextBox")
local TrueFalseDefense = Instance.new("TextLabel")
local TextButton_3 = Instance.new("TextButton")
local KillNpcs = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.541058421, 0, 0.0872865245, 0)
Frame.Size = UDim2.new(0, 458, 0, 363)

TrueFalseAttack.Name = "TrueFalseAttack"
TrueFalseAttack.Parent = Frame
TrueFalseAttack.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TrueFalseAttack.Size = UDim2.new(0, 163, 0, 50)
TrueFalseAttack.Font = Enum.Font.SourceSans
TrueFalseAttack.TextColor3 = Color3.fromRGB(0, 0, 0)
TrueFalseAttack.TextSize = 14.000

TextButton.Parent = TrueFalseAttack
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(1.19631898, 0, 0, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Attack"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

TrueFalseEnergy.Name = "TrueFalseEnergy"
TrueFalseEnergy.Parent = Frame
TrueFalseEnergy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TrueFalseEnergy.Position = UDim2.new(0, 0, 0.137082279, 0)
TrueFalseEnergy.Size = UDim2.new(0, 163, 0, 50)
TrueFalseEnergy.Font = Enum.Font.SourceSans
TrueFalseEnergy.TextColor3 = Color3.fromRGB(0, 0, 0)
TrueFalseEnergy.TextSize = 14.000

TextButton_2.Parent = TrueFalseEnergy
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.Position = UDim2.new(1.19631898, 0, 0, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Ki"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000

textr1.Name = "textr1"
textr1.Parent = Frame
textr1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textr1.Position = UDim2.new(0.18910256, 0, 0.594202876, 0)
textr1.Size = UDim2.new(0, 200, 0, 50)
textr1.Font = Enum.Font.SourceSans
textr1.PlaceholderText = "Npc 1 here"
textr1.Text = ""
textr1.TextColor3 = Color3.fromRGB(0, 0, 0)
textr1.TextSize = 14.000

textr2.Name = "textr2"
textr2.Parent = Frame
textr2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textr2.Position = UDim2.new(0.18910256, 0, 0.815217376, 0)
textr2.Size = UDim2.new(0, 200, 0, 50)
textr2.Font = Enum.Font.SourceSans
textr2.PlaceholderText = "Npc 2 Here"
textr2.Text = ""
textr2.TextColor3 = Color3.fromRGB(0, 0, 0)
textr2.TextSize = 14.000

TrueFalseDefense.Name = "TrueFalseDefense"
TrueFalseDefense.Parent = Frame
TrueFalseDefense.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TrueFalseDefense.Position = UDim2.new(0, 0, 0.274823308, 0)
TrueFalseDefense.Size = UDim2.new(0, 163, 0, 50)
TrueFalseDefense.Font = Enum.Font.SourceSans
TrueFalseDefense.TextColor3 = Color3.fromRGB(0, 0, 0)
TrueFalseDefense.TextSize = 14.000

TextButton_3.Parent = TrueFalseDefense
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.Position = UDim2.new(1.19631898, 0, 0, 0)
TextButton_3.Size = UDim2.new(0, 200, 0, 50)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Defense"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000

KillNpcs.Name = "Kill Npcs"
KillNpcs.Parent = Frame
KillNpcs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KillNpcs.Position = UDim2.new(0.661572039, 0, 0.592286468, 0)
KillNpcs.Size = UDim2.new(0, 138, 0, 50)
KillNpcs.Font = Enum.Font.SourceSans
KillNpcs.Text = "Kill Npcs"
KillNpcs.TextColor3 = Color3.fromRGB(0, 0, 0)
KillNpcs.TextSize = 14.000

-- Scripts:

local function NXAJZZ_fake_script() -- Frame.F 
	local script = Instance.new('LocalScript', Frame)

	local KillNpc = script.Parent["Kill Npcs"]
	local Npc1 = script.Parent.textr1
	local Npc2 = script.Parent.textr2
	local TrueAndFalseAttack = script.Parent.TrueFalseAttack
	local TrueAndFalseKi = script.Parent.TrueFalseEnergy
	local TrueAndFalseDefense = script.Parent.TrueFalseDefense
	local VirtualInputManager = game:GetService('VirtualInputManager')
	
	getgenv().Attack = false
	getgenv().Ki = false
	getgenv().Defense = false
	
	TrueAndFalseAttack.TextButton.MouseButton1Click:Connect(function()
		if getgenv().Attack == false then
			getgenv().Attack = true
		else
			getgenv().Attack = false
		end
	end)
KillNpc.MouseButton1Click:Connect(function() 
                        if game.Workspace:FindFirstChild(Npc1.Text) then
game.Workspace:FindFirstChild(Npc1.Text).Head:Destroy()
end
 if game.Workspace:FindFirstChild(Npc2.Text) then
game.Workspace:FindFirstChild(Npc2.Text).Head:Destroy()
end
	end)
	TrueAndFalseKi.TextButton.MouseButton1Click:Connect(function()
		if getgenv().Ki == false then
			getgenv().Ki = true
		else
			getgenv().Ki = false
		end
	end)
	TrueAndFalseDefense.TextButton.MouseButton1Click:Connect(function()
		if getgenv().Defense == false then
			getgenv().Defense = true
		else
			getgenv().Defense = false
		end
	end)
	
		while wait() do
		if getgenv().Attack == true then
			TrueAndFalseAttack.Text = "Enabled"
				VirtualInputManager:SendKeyEvent(true, "F", false, game)
			else
				TrueAndFalseAttack.Text = "Disabled"
		end
		if getgenv().Ki == true then
			TrueAndFalseKi.Text = "Enabled"
			VirtualInputManager:SendKeyEvent(true, "T", false, game)
		else
			TrueAndFalseKi.Text = "Disabled"
		end
		if getgenv().Defense == true then
			TrueAndFalseDefense.Text = "Enabled"
			VirtualInputManager:SendKeyEvent(true, "R", false, game)
		else
			TrueAndFalseDefense.Text = "Disabled"
		end
	end
	
end
coroutine.wrap(NXAJZZ_fake_script)()
local function KAJGZC_fake_script() -- Frame.Drag 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(KAJGZC_fake_script)()
