local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local ScreenGui

local function Setup()
	if ScreenGui then
		ScreenGui:Destroy()
		ScreenGui = nil
	end

	local Character = Player.Character or Player.CharacterAdded:Wait()
	local RootPart = Character:WaitForChild("HumanoidRootPart")
	local Humanoid: Humanoid = Character:WaitForChild("Humanoid")


	local PlayerGui = Player:WaitForChild("PlayerGui")

	ScreenGui = Instance.new("ScreenGui")
	ScreenGui.Parent = PlayerGui

	local TopBar = Instance.new("Frame")
	TopBar.Position = UDim2.new(0.35, 0, 0.129, 0)
	TopBar.Size = UDim2.new(0, 240, 0, 38)
	TopBar.BackgroundColor3 = Color3.fromRGB(255, 39, 32)
	TopBar.Active = true
	TopBar.Draggable = true
	TopBar.Parent = ScreenGui

	local MinimizeButton = Instance.new("ImageButton")
	MinimizeButton.Position = UDim2.new(0.887, 0, 0, 0)
	MinimizeButton.Size = UDim2.new(0, 26, 0, 26)
	MinimizeButton.Image = "rbxassetid://11255032783"
	MinimizeButton.Parent = TopBar
	MinimizeButton.BackgroundTransparency = 1

	local Frame = Instance.new("Frame")
	Frame.Position = UDim2.new(-0.002, 0, 0.993, 0)
	Frame.Size = UDim2.new(0, 240, 0, 371)
	Frame.BackgroundColor3 = Color3.fromRGB(255, 39, 32)
	Frame.Parent = TopBar
	

	local PrisonButton = Instance.new("TextButton")
	PrisonButton.Position = UDim2.new(0.083, 0, 0.063, 0)
	PrisonButton.Size = UDim2.new(0, 200, 0, 50)
	PrisonButton.Text = "Prisão"
	PrisonButton.Parent = Frame 
	PrisonButton.BackgroundColor3 = Color3.fromRGB(255, 150, 65)
	PrisonButton.TextScaled = true

	local CriminalButton = Instance.new("TextButton")
	CriminalButton.Position = UDim2.new(0.083, 0, 0.246, 0)
	CriminalButton.Size = UDim2.new(0, 200, 0, 50)
	CriminalButton.Text = "Auto Criminal"
	CriminalButton.Parent = Frame
	CriminalButton.BackgroundColor3 = Color3.fromRGB(213, 18, 21)
	CriminalButton.TextScaled = true

	local GunsButton = Instance.new("TextButton")
	GunsButton.Position = UDim2.new(0.083, 0,0.432, 0)
	GunsButton.Size = UDim2.new(0, 200,0, 50)
	GunsButton.BackgroundColor3 = Color3.fromRGB(111, 77, 43)
	GunsButton.Parent = Frame
	GunsButton.Text = "Get All Guns"
	GunsButton.TextScaled = true
	
	
	local TopBarStroke = Instance.new("UIStroke")
	TopBarStroke.Parent = TopBar
	TopBarStroke.Thickness = 2

	local FrameStroke = Instance.new("UIStroke")
	FrameStroke.Parent = Frame
	FrameStroke.Thickness = 2

	MinimizeButton.MouseButton1Down:Connect(function()
		Frame.Visible = not Frame.Visible
		if MinimizeButton.Image == "rbxassetid://11255032783" then
			MinimizeButton.Image = "rbxassetid://97880448391331"
		elseif MinimizeButton.Image == "rbxassetid://97880448391331" then
			MinimizeButton.Image = "rbxassetid://11255032783"
		end
	end)

	PrisonButton.MouseButton1Down:Connect(function()
		RootPart.CFrame = CFrame.new(874.77, 99.99, 2275.22)
	end)

	CriminalButton.MouseButton1Down:Connect(function()
		RootPart.CFrame = CFrame.new(-935.53, 94.13, 2044.95)
	end)

	GunsButton.MouseButton1Down:Connect(function()
		RootPart.CFrame = CFrame.new(-938.788574, 99.3828735, 2039.18945, -0.999932408, -0.000327760994, -0.0116229327, 8.10527325e-08, 0.999602437, -0.0281952713, 0.011627553, -0.0281933658, -0.999534845)
		task.wait(2)
		RootPart.CFrame = CFrame.new(-931.743835, 101.429962, 2039.17712, -0.999943495, 0.000280032138, 0.0106283231, 8.12098833e-08, 0.99965328, -0.0263309497, -0.010632012, -0.0263294596, -0.999596775)
		task.wait(0.5)
		RootPart.CFrame = CFrame.new(874.77, 99.99, 2275.22)
	end)

	Humanoid.Died:Connect(function()
		if ScreenGui then
			ScreenGui:Destroy()
			ScreenGui = nil
		end
	end)
end

Setup()

Player.CharacterAdded:Connect(function()
	Setup()
end)
