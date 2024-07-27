
local _New_ = Instance.new;

local SWIFT_LOL = _New_("ScreenGui", game.CoreGui);  -- game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
SWIFT_LOL.Name = "SWIFT.LOL";

local lib ={tabCount = 0}
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

--for _,v in pairs(game.CoreGui:GetChildren()) do
--	if v.Name == "SWIFT.LOL" then
--	v:Destroy()
--	end
--end


local function MakeDraggable(ClickObject, Object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	ClickObject.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
			Dragging = true
			DragStart = Input.Position
			StartPosition = Object.Position

			Input.Changed:Connect(function()
				if Input.UserInputState == Enum.UserInputState.End then
					Dragging = false
				end
			end)
		end
	end)

	ClickObject.InputChanged:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
			DragInput = Input
		end
	end)

	UserInputService.InputChanged:Connect(function(Input)
		if Input == DragInput and Dragging then
			local Delta = Input.Position - DragStart
			Object.Position = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
		end
	end)
end

function lib:Draw(e)
	 e = e or {}
	local Main = _New_("Frame", SWIFT_LOL);
	Main.BackgroundColor3 = Color3.fromRGB(24.000000469386578, 24.000000469386578, 24.000000469386578);
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Main.BorderSizePixel = 0;
	Main.Name = "Main";
	Main.Position = UDim2.new(0.3523748517036438, 0, 0.33126550912857056, 0);
	Main.Size = UDim2.new(0, 459, 0, 273);
	
	MakeDraggable(Main, Main)
	local UICorner = _New_("UICorner", Main);

	local UIStroke = _New_("UIStroke", Main);
	UIStroke.Color = Color3.fromRGB(112.000000923872, 112.000000923872, 112.000000923872);

	local TabList = _New_("Frame", Main);
	TabList.BackgroundColor3 = Color3.fromRGB(31.000000052154064, 31.000000052154064, 31.000000052154064);
	TabList.BorderColor3 = Color3.fromRGB(90.00000223517418, 90.00000223517418, 90.00000223517418);
	TabList.Name = "TabList";
	TabList.Position = UDim2.new(0.030501089990139008, 0, 0.033088237047195435, 0);
	TabList.Size = UDim2.new(0, 81, 0, 235);

	local UIListLayout = _New_("UIListLayout", TabList);
	UIListLayout.Padding = UDim.new(0, 4);
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder;

	local UIPadding = _New_("UIPadding", TabList);
	UIPadding.PaddingTop = UDim.new(0, 4);

	local TABGRAD = _New_("UIGradient", TabList);
	TABGRAD.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(84.00000259280205, 84.00000259280205, 84.00000259280205))};
	TABGRAD.Rotation = 64;
	TABGRAD.Name = "TABGRAD";

	local TabContainers = _New_("Frame", Main);
	TabContainers.BackgroundColor3 = Color3.fromRGB(31.000001952052116, 31.000001952052116, 31.000001952052116);
	TabContainers.BorderColor3 = Color3.fromRGB(65.0000037252903, 65.0000037252903, 65.0000037252903);
	TabContainers.Name = "TabContainers";
	TabContainers.Position = UDim2.new(0.26143792271614075, 0, 0.033088188618421555, 0);
	TabContainers.Size = UDim2.new(0, 325, 0, 235);

	local TABGRAD_0 = _New_("UIGradient", TabContainers);
	TABGRAD_0.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(84.00000259280205, 84.00000259280205, 84.00000259280205))};
	TABGRAD_0.Rotation = 64;
	TABGRAD_0.Name = "TABGRAD";

	local ActualTabs = _New_("Frame", TabContainers);
	ActualTabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	ActualTabs.BackgroundTransparency = 1;
	ActualTabs.BorderColor3 = Color3.fromRGB(0, 0, 0);
	ActualTabs.BorderSizePixel = 0;
	ActualTabs.Name = "ActualTabs";
	ActualTabs.Size = UDim2.new(1, 0, 1, 0);

	local ScriptGame = _New_("TextLabel", Main);
	ScriptGame.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	ScriptGame.BackgroundTransparency = 1;
	ScriptGame.BorderColor3 = Color3.fromRGB(0, 0, 0);
	ScriptGame.BorderSizePixel = 0;
	ScriptGame.Name = "ScriptGame";
	ScriptGame.Position = UDim2.new(0.05400000140070915, -3, 0.8939999938011169, 4);
	ScriptGame.Size = UDim2.new(0, 59, 0, 21);
	ScriptGame.Font = Enum.Font.Ubuntu;
	ScriptGame.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	ScriptGame.Text = e.game or "Assassin";
	ScriptGame.TextColor3 = Color3.fromRGB(150.0000062584877, 150.0000062584877, 150.0000062584877);
	ScriptGame.TextSize = 11;
	ScriptGame.TextXAlignment = Enum.TextXAlignment.Left;

	local ScriptName = _New_("TextLabel", Main);
	ScriptName.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	ScriptName.BackgroundTransparency = 1;
	ScriptName.BorderColor3 = Color3.fromRGB(0, 0, 0);
	ScriptName.BorderSizePixel = 0;
	ScriptName.Name = "ScriptName";
	ScriptName.Position = UDim2.new(0.8252788186073303, 0, 0.8940000534057617, 4);
	ScriptName.Size = UDim2.new(0, 59, 0, 21);
	ScriptName.Font = Enum.Font.Ubuntu;
	ScriptName.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	ScriptName.Text = "SWIFT.LOL";
	ScriptName.TextColor3 = Color3.fromRGB(150.0000062584877, 150.0000062584877, 150.0000062584877);
	ScriptName.TextSize = 11;
	ScriptName.TextXAlignment = Enum.TextXAlignment.Right;

	local MainGradiant = _New_("UIGradient", Main);
	MainGradiant.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(110.00000104308128, 118.00000056624413, 250.00000029802322))};
	MainGradiant.Rotation = 64;
	MainGradiant.Name = "MainGradiant";

	local Sectional = _New_("Frame", Main);
	Sectional.BackgroundColor3 = Color3.fromRGB(112.000000923872, 112.000000923872, 112.000000923872);
	Sectional.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Sectional.BorderSizePixel = 0;
	Sectional.Name = "Sectional";
	Sectional.Position = UDim2.new(0, 0, 0.9086520671844482, 0);
	Sectional.Size = UDim2.new(1, 0, 0, 1);

	local Color_Pickers = _New_("Frame", Main);
	Color_Pickers.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	Color_Pickers.BackgroundTransparency = 1;
	Color_Pickers.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Color_Pickers.BorderSizePixel = 0;
	Color_Pickers.Name = "Color Pickers";
	Color_Pickers.Position = UDim2.new(1.013071894645691, 0, 0.018315019086003304, 0);
	Color_Pickers.Size = UDim2.new(0, 184, 0, 280);
	local Players = game:GetService("Players")
	local t = {}
	
	function t:Tab(e)
		e = e or {}
		lib.tabCount = lib.tabCount +1
		local Tab = _New_("Frame", ActualTabs);
		Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		Tab.BackgroundTransparency = 1;
		Tab.BorderColor3 = Color3.fromRGB(0, 0, 0);
		Tab.BorderSizePixel = 0;
		Tab.Name = "Tab";
		Tab.Size = UDim2.new(1, 0, 1, 0);
		Tab.Visible = false;

		local Left = _New_("Frame", Tab);
		Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		Left.BackgroundTransparency = 1;
		Left.BorderColor3 = Color3.fromRGB(0, 0, 0);
		Left.BorderSizePixel = 0;
		Left.Name = "Left";
		Left.Size = UDim2.new(0, 162, 1, 0);

		local LeftFrame = _New_("ScrollingFrame", Left);
		LeftFrame.Active = true;
		LeftFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		LeftFrame.BackgroundTransparency = 1;
		LeftFrame.BorderColor3 = Color3.fromRGB(0, 0, 0);
		LeftFrame.BorderSizePixel = 0;
		LeftFrame.Name = "LeftFrame";
		LeftFrame.Position = UDim2.new(0.0555555559694767, 0, 0.0765957459807396, 0);
		LeftFrame.Size = UDim2.new(0.9259259104728699, 0, 1.0170212984085083, -30);
		LeftFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		LeftFrame.CanvasSize = UDim2.new(0, 0, 0, 0);
		LeftFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0);
		LeftFrame.ScrollBarThickness = 0;

		local UIListLayout = _New_("UIListLayout", LeftFrame);
		UIListLayout.Padding = UDim.new(0, 6);
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder;

		local UIStroke = _New_("UIStroke", LeftFrame);
		UIStroke.Color = Color3.fromRGB(74.0000031888485, 74.0000031888485, 74.0000031888485);

		local LeftText = _New_("TextLabel", Left);
		LeftText.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		LeftText.BackgroundTransparency = 1;
		LeftText.BorderColor3 = Color3.fromRGB(0, 0, 0);
		LeftText.BorderSizePixel = 0;
		LeftText.Name = "LeftText";
		LeftText.Position = UDim2.new(0.0555555559694767, 0, 0, 0);
		LeftText.Size = UDim2.new(0, 123, 0, 18);
		LeftText.Font = Enum.Font.Ubuntu;
		LeftText.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		LeftText.Text = e.Left or "Left";
		LeftText.TextColor3 = Color3.fromRGB(152.0000061392784, 152.0000061392784, 152.0000061392784);
		LeftText.TextSize = 12;
		LeftText.TextXAlignment = Enum.TextXAlignment.Left;

		local Right = _New_("Frame", Tab);
		Right.BackgroundColor3 = Color3.fromRGB(56.0000042617321, 56.0000042617321, 56.0000042617321);
		Right.BackgroundTransparency = 1;
		Right.BorderColor3 = Color3.fromRGB(0, 0, 0);
		Right.BorderSizePixel = 0;
		Right.Name = "Right";
		Right.Position = UDim2.new(0.4984615445137024, 0, 0, 0);
		Right.Size = UDim2.new(0, 162, 1, 0);
		

		local RightText = _New_("TextLabel", Right);
		RightText.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		RightText.BackgroundTransparency = 1;
		RightText.BorderColor3 = Color3.fromRGB(0, 0, 0);
		RightText.BorderSizePixel = 0;
		RightText.Name = "RightText";
		RightText.Position = UDim2.new(0.0555555559694767, 0, 0, 0);
		RightText.Size = UDim2.new(0, 123, 0, 18);
		RightText.Font = Enum.Font.Ubuntu;
		RightText.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		RightText.Text = e.Right or "Right";
		RightText.TextColor3 = Color3.fromRGB(152.0000061392784, 152.0000061392784, 152.0000061392784);
		RightText.TextSize = 12;
		RightText.TextXAlignment = Enum.TextXAlignment.Left;

		local Right_Frame = _New_("ScrollingFrame", Right);
		Right_Frame.Active = true;
		Right_Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		Right_Frame.BackgroundTransparency = 1;
		Right_Frame.BorderColor3 = Color3.fromRGB(0, 0, 0);
		Right_Frame.BorderSizePixel = 0;
		Right_Frame.Name = "Right Frame";
		Right_Frame.Position = UDim2.new(0.0555555559694767, 0, 0.0765957459807396, 0);
		Right_Frame.Size = UDim2.new(0.9259259104728699, 0, 1.0170212984085083, -30);
		Right_Frame.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Right_Frame.CanvasSize = UDim2.new(0, 0, 0, 0);
		Right_Frame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0);
		Right_Frame.ScrollBarThickness = 0;
		
		Right_Frame.MouseEnter:Connect(function()
			local mouse = Players.LocalPlayer:GetMouse()
			mouse.Icon = "rbxasset://SystemCursors/Arrow"
		end)

		local UIListLayout_0 = _New_("UIListLayout", Right_Frame);
		UIListLayout_0.Padding = UDim.new(0, 6);
		UIListLayout_0.HorizontalAlignment = Enum.HorizontalAlignment.Center;
		UIListLayout_0.SortOrder = Enum.SortOrder.LayoutOrder;

		local UIStroke_0 = _New_("UIStroke", Right_Frame);
		UIStroke_0.Color = Color3.fromRGB(74.0000031888485, 74.0000031888485, 74.0000031888485);
		

		local TabButton = _New_("TextButton", TabList);
		TabButton.BackgroundColor3 = Color3.fromRGB(85.0000025331974, 85.0000025331974, 85.0000025331974);
		TabButton.BackgroundTransparency = 1;
		TabButton.BorderColor3 = Color3.fromRGB(0, 0, 0);
		TabButton.BorderSizePixel = 0;
		TabButton.Name = "TabButton";
		TabButton.Position = UDim2.new(0, 0, 0.09090909361839294, 0);
		TabButton.Size = UDim2.new(0, 81, 0, 21);
		TabButton.ZIndex = 4;
		TabButton.Font = Enum.Font.Ubuntu;
		TabButton.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		TabButton.Text = e.Text or "NO TEXT FOUND";
		TabButton.TextColor3 = Color3.fromRGB(190.0000038743019, 190.0000038743019, 190.0000038743019);
		TabButton.TextSize = 11;

		local Graiant = _New_("Frame", TabButton);
		Graiant.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		Graiant.BackgroundTransparency = 0;
		Graiant.BorderColor3 = Color3.fromRGB(0, 0, 0);
		Graiant.BorderSizePixel = 0;
		Graiant.Name = "Graiant";
		Graiant.Size = UDim2.new(1, 0, 1, 0);
		Graiant.Visible = true

		local Active = _New_("UIGradient", Graiant);
		Active.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(54.00000058114529, 54.00000058114529, 54.00000058114529)), ColorSequenceKeypoint.new(1, Color3.fromRGB(110.00000104308128, 118.00000056624413, 250.00000029802322))};
		Active.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(1, 0.375, 0)};
		Active.Name = "Active";
		Active.Enabled = true
		Active.Rotation = 180
		

		local UIPadding = _New_("UIPadding", LeftFrame);
		UIPadding.PaddingTop = UDim.new(0, 6);
		

		local UIPadding = _New_("UIPadding", Right_Frame);
		UIPadding.PaddingTop = UDim.new(0, 6);
		
		
		
		
		TabButton.MouseButton1Click:Connect(function()
			for _,v in ipairs(ActualTabs:GetChildren()) do --// panels
				v.Visible = false
			end
			Tab.Visible = true 


			for _,v in ipairs(TabList:GetChildren()) do
				if v.Name == "TabButton" then
					v.TextColor3 = Color3.fromRGB(158, 158, 158) --// makes the tabs textcolor red
					
				end

			end


			TabButton.TextColor3 = Color3.fromRGB(110, 118, 250) --// makes the tab we just clicked text's green
			
			
		end)
		if lib.tabCount == 1 then
			Tab.Visible = true
		--	Graiant.Visible = true
			TabButton.TextColor3 = Color3.fromRGB(110, 118, 250)
		end
		
		
		local a = {}
		
		function a:Button(e)
			e = e or {}
			e.func = e.func or function()end
			

			local Button_HOVER = _New_("Frame", nil);
			Button_HOVER.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Button_HOVER.BackgroundTransparency = 1;
			Button_HOVER.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Button_HOVER.BorderSizePixel = 0;
			Button_HOVER.Name = "Button HOVER";
			Button_HOVER.Position = UDim2.new(0.09333333373069763, 0, 0.2870813310146332, 0);
			Button_HOVER.Size = UDim2.new(0, 122, 0, 13);

			local Action = _New_("TextButton", Button_HOVER);
			Action.AutoButtonColor = false;
			Action.BackgroundColor3 = Color3.fromRGB(57.00000420212746, 57.00000420212746, 57.00000420212746);
			Action.BackgroundTransparency = 1;
			Action.BorderColor3 = Color3.fromRGB(93.00000205636024, 93.00000205636024, 93.00000205636024);
			Action.Name = "Action";
			Action.Size = UDim2.new(1, 0, 1, 0);
			Action.Font = Enum.Font.SourceSans;
			Action.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Action.Text = e.Text or "BTN | TEXT NOT FOUND";
			Action.TextColor3 = Color3.fromRGB(172.00000494718552, 172.00000494718552, 172.00000494718552);
			Action.TextSize = 14;

			local Color = _New_("Frame", Button_HOVER);
			Color.BackgroundColor3 = Color3.fromRGB(77.00000301003456, 77.00000301003456, 77.00000301003456);
			Color.BorderColor3 = Color3.fromRGB(72.00000330805779, 72.00000330805779, 72.00000330805779);
			Color.Name = "Color";
			Color.Position = UDim2.new(-0.04098360612988472, 0, 0, 0);
			Color.Size = UDim2.new(1.0409835577011108, 0, 1, 0);

			local UICorner = _New_("UICorner", Color);
			UICorner.CornerRadius = UDim.new(0, 2);

			local UIStroke = _New_("UIStroke", Color);
			UIStroke.Color = Color3.fromRGB(74.0000031888485, 74.0000031888485, 74.0000031888485);

			local UIGradient = _New_("UIGradient", Color);
			UIGradient.Rotation = -83;
			UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0, 0.5187499523162842, 0), NumberSequenceKeypoint.new(1, 0.8187500238418579, 0)};
			if e.Side == "L" then
				Button_HOVER.Parent = LeftFrame
			end
			if e.Side == "R" then
				Button_HOVER.Parent = Right_Frame
			end
			
			Action.MouseButton1Down:Connect(function()
				e.func()
			end)
			

			local TweenService = game:GetService("TweenService")
			local TweenSpeed = 0.2
			local inFunc = TweenInfo.new(TweenSpeed, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0)
			
			
			Action.MouseEnter:Connect(function()
				TweenService:Create(Color, inFunc,{BackgroundColor3 = Color3.fromRGB(110, 118, 250) }):Play()
			end)
			Action.MouseLeave:Connect(function()
				TweenService:Create(Color, inFunc,{BackgroundColor3 = Color3.fromRGB(77,77,77) }):Play()
			end)
		end
		
		function a:Toggle(e)
			e = e or {}
			e.func = e.func or function()end
			

			local Toggle = _New_("Frame", nil);
			Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Toggle.BackgroundTransparency = 1;
			Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Toggle.BorderSizePixel = 0;
			Toggle.Name = "Toggle";
			Toggle.Position = UDim2.new(0.05000000074505806, 0, 0.2248803824186325, 0);
			Toggle.Size = UDim2.new(0, 135, 0, 16);
			
			
			if e.Side == "L" then
				Toggle.Parent = LeftFrame
			end
			if e.Side == "R" then
				Toggle.Parent = Right_Frame
			end
			
			local Text = _New_("TextLabel", Toggle);
			Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Text.BackgroundTransparency = 1;
			Text.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Text.BorderSizePixel = 0;
			Text.Name = "Text";
			Text.Position = UDim2.new(0.0962962955236435, 0, -0.047618865966796875, 0);
			Text.Size = UDim2.new(0.6074073910713196, 0, 0.8306198120117188, 0);
			Text.Font = Enum.Font.Ubuntu;
			Text.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Text.Text = e.Text or "Toggle | TEXT  NOT FOUND";
			Text.TextColor3 = Color3.fromRGB(172.00000494718552, 172.00000494718552, 172.00000494718552);
			Text.TextSize = 12;
			Text.TextXAlignment = Enum.TextXAlignment.Left;

			local UIPadding = _New_("UIPadding", Text);
			UIPadding.PaddingLeft = UDim.new(0, 6);

			local Action = _New_("TextButton", Toggle);
			Action.AutoButtonColor = false;
			Action.BackgroundColor3 = Color3.fromRGB(57.00000420212746, 57.00000420212746, 57.00000420212746);
			Action.BackgroundTransparency = 1;
			Action.BorderColor3 = Color3.fromRGB(93.00000205636024, 93.00000205636024, 93.00000205636024);
			Action.Name = "Action";
			Action.Size = UDim2.new(1, 0, 1, 0);
			Action.Font = Enum.Font.SourceSans;
			Action.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Action.Text = "";
			Action.TextColor3 = Color3.fromRGB(0, 0, 0);
			Action.TextSize = 14;

			local Color = _New_("Frame", Toggle);
			Color.BackgroundColor3 = Color3.fromRGB(52.000000700354576, 52.000000700354576, 52.000000700354576);
			Color.BorderColor3 = Color3.fromRGB(72.00000330805779, 72.00000330805779, 72.00000330805779);
			Color.Name = "Color";
			Color.Position = UDim2.new(0.00800000037997961, 0, -0.21699999272823334, 4);
			Color.Size = UDim2.new(0, 12, 0, 12);

			local UICorner = _New_("UICorner", Color);
			UICorner.CornerRadius = UDim.new(0, 2);

			local UIStroke = _New_("UIStroke", Color);
			UIStroke.Color = Color3.fromRGB(74.0000031888485, 74.0000031888485, 74.0000031888485);

			local UIGradient = _New_("UIGradient", Color);
			UIGradient.Rotation = -83;
			UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0, 0.5187499523162842, 0), NumberSequenceKeypoint.new(1, 0.8187500238418579, 0)};
			
			local TweenService = game:GetService("TweenService")
			local TweenSpeed = 0.2
			local inFunc = TweenInfo.new(TweenSpeed, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0)
			
			local x = false
			Action.MouseButton1Down:Connect(function()
				if x == false then
					x = true
					TweenService:Create(Color, inFunc,{BackgroundColor3 = Color3.fromRGB(110, 118, 250) }):Play()
					pcall(e.func,true)
				else
					x = false
					TweenService:Create(Color, inFunc,{BackgroundColor3 = Color3.fromRGB(52,52,52) }):Play()
					pcall(e.func,false)
				end
			end)
			
			-- CREATING BIND
			local b = {}
			
			function b:Bind(m)
				m = m or {}
				m.def = m.def

				local oldKey = m.def.Name
				
				
				

				local Bind = _New_("TextButton", Toggle);
				Bind.AutoButtonColor = false;
				Bind.BackgroundColor3 = Color3.fromRGB(61.00000016391277, 61.00000016391277, 61.00000016391277);
				Bind.BackgroundTransparency = 1;
				Bind.BorderColor3 = Color3.fromRGB(70.00000342726707, 70.00000342726707, 70.00000342726707);
				Bind.Name = "Bind";
				Bind.Position = UDim2.new(0.8560000061988831, 0, -0.21400000154972076, 2);
				Bind.Size = UDim2.new(0, 19, 0, 15);
				Bind.ZIndex = 2;
				Bind.Font = Enum.Font.Ubuntu;
				Bind.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Bind.Text = "["..oldKey.."]";
				Bind.TextColor3 = Color3.fromRGB(172.00000494718552, 172.00000494718552, 172.00000494718552);
				Bind.TextSize = 12;
				
				
				local blacklist = {
					"W","A","S","D","Slash","Tab","Backspace","Escape","Space","Delete","Unknown","Backquote"
				}

				Bind.MouseButton1Click:connect(function(e) 
					Bind.Text = "..."
					local a, b = game:GetService('UserInputService').InputBegan:wait();


					if not table.find(blacklist, a.KeyCode.Name) then
						Bind.Text = "[".. a.KeyCode.Name.."]"
						oldKey = a.KeyCode.Name;
					else
						Bind.Text =	 "[NONE]"
						oldKey = Enum.KeyCode.World55
					end



				end)

				game:GetService("UserInputService").InputBegan:connect(function(current, ok) 



					if not ok then 
						if current.KeyCode.Name == oldKey then 
							if x == false then
								x = true
								TweenService:Create(Color, inFunc,{BackgroundColor3 = Color3.fromRGB(110, 118, 250) }):Play()
								pcall(e.func,true)
							else
								x = false
								pcall(e.func,false)
								TweenService:Create(Color, inFunc,{BackgroundColor3 = Color3.fromRGB(52,52,52) }):Play()
							end
						end
					end
				end)
				
			end
			return b;
			
		end
		
		function a:Label(e)
			e = e or {}

			local TextLabel = _New_("TextLabel", nil);
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			TextLabel.BackgroundTransparency = 1;
			TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0);
			TextLabel.BorderSizePixel = 0;
			TextLabel.Position = UDim2.new(0.046666666865348816, 0, 0, 0);
			TextLabel.Size = UDim2.new(0, 132, 0, 18);
			TextLabel.Font = Enum.Font.Ubuntu;
			TextLabel.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			TextLabel.Text = e.Text or "label | TEXT NOT FOUND";
			TextLabel.TextColor3 = Color3.fromRGB(172.00000494718552, 172.00000494718552, 172.00000494718552);
			TextLabel.TextSize = 12;
			
			if e.Side == "L" then
				TextLabel.Parent = LeftFrame
			end
			if e.Side == "R" then
				TextLabel.Parent = Right_Frame
			end
			
		end
		
		function a:ColorPicker(e)
			e = e or {}
			

			local ColorPicker = _New_("Frame", nil);
			ColorPicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			ColorPicker.BackgroundTransparency = 1;
			ColorPicker.BorderColor3 = Color3.fromRGB(0, 0, 0);
			ColorPicker.BorderSizePixel = 0;
			ColorPicker.Name = "ColorPicker";
			ColorPicker.Position = UDim2.new(0.05000000074505806, 0, 0.2248803824186325, 0);
			ColorPicker.Size = UDim2.new(0, 135, 0, 16);

			local Text = _New_("TextLabel", ColorPicker);
			Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Text.BackgroundTransparency = 1;
			Text.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Text.BorderSizePixel = 0;
			Text.Name = "Text";
			Text.Position = UDim2.new(0.17777778208255768, 0, -0.047618865966796875, 0);
			Text.Size = UDim2.new(0.6074073910713196, 0, 0.8306198120117188, 0);
			Text.Font = Enum.Font.Ubuntu;
			Text.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Text.Text = e.Text or  "ColorPicker | TEXT NOT FOUND";
			Text.TextColor3 = Color3.fromRGB(172.00000494718552, 172.00000494718552, 172.00000494718552);
			Text.TextSize = 12;
			Text.TextXAlignment = Enum.TextXAlignment.Left;
			
			
			
			
			if e.Side == "L" then
				ColorPicker.Parent = LeftFrame
			end
			if e.Side == "R" then
				ColorPicker.Parent = Right_Frame
			end
			
			local UIPadding = _New_("UIPadding", Text);
			UIPadding.PaddingLeft = UDim.new(0, 6);

			local Action = _New_("TextButton", ColorPicker);
			Action.AutoButtonColor = false;
			Action.BackgroundColor3 = Color3.fromRGB(57.00000420212746, 57.00000420212746, 57.00000420212746);
			Action.BackgroundTransparency = 1;
			Action.BorderColor3 = Color3.fromRGB(93.00000205636024, 93.00000205636024, 93.00000205636024);
			Action.Name = "Action";
			Action.Size = UDim2.new(1, 0, 1, 0);
			Action.Font = Enum.Font.SourceSans;
			Action.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Action.Text = "";
			Action.TextColor3 = Color3.fromRGB(0, 0, 0);
			Action.TextSize = 14;

			local Color = _New_("Frame", ColorPicker);
			Color.BackgroundColor3 = e.def or Color3.fromRGB(255, 0, 0);
			Color.BorderColor3 = Color3.fromRGB(72.00000330805779, 72.00000330805779, 72.00000330805779);
			Color.Name = "Color";
			Color.Position = UDim2.new(0.008001483045518398, 0, -0.21699905395507812, 4);
			Color.Size = UDim2.new(0, 22, 0, 12);

			local UICorner = _New_("UICorner", Color);
			UICorner.CornerRadius = UDim.new(0, 2);

			local UIStroke = _New_("UIStroke", Color);
			UIStroke.Color = Color3.fromRGB(74.0000031888485, 74.0000031888485, 74.0000031888485);

			local UIGradient = _New_("UIGradient", Color);
			UIGradient.Rotation = -83;
			UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0, 0.5187499523162842, 0), NumberSequenceKeypoint.new(1, 0.8187500238418579, 0)};
			

			--objects
			local Pallete = _New_("Frame",Color_Pickers );
			Pallete.BackgroundColor3 = Color3.fromRGB(24.000000469386578, 24.000000469386578, 24.000000469386578);
			Pallete.BorderColor3 = Color3.fromRGB(31.000000052154064, 31.000000052154064, 31.000000052154064);
			Pallete.Name = "Pallete";
			Pallete.Position = UDim2.new(0.056833017617464066, 0, -0.00930066779255867, 0);
			Pallete.Size = UDim2.new(0.7878877520561218, 0, 0.5213065147399902, 0);
			Pallete.Visible = false;
			Pallete.ZIndex = 4;

			local Gradient = _New_("UIGradient", Pallete);
			Gradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(110.00000104308128, 118.00000056624413, 250.00000029802322))};
			Gradient.Rotation = -137;
			Gradient.Name = "Gradient";

			local ColorSlider = _New_("TextButton", Pallete);
			ColorSlider.AnchorPoint = Vector2.new(0.5, 0.5);
			ColorSlider.AutoButtonColor = false;
			ColorSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			ColorSlider.BorderColor3 = Color3.fromRGB(0, 0, 0);
			ColorSlider.BorderSizePixel = 0;
			ColorSlider.Name = "ColorSlider";
			ColorSlider.Position = UDim2.new(0.4908224046230316, 0, 0.4028293490409851, 45);
			ColorSlider.Size = UDim2.new(-0.024000000208616257, 140, 0, 7);
			ColorSlider.ZIndex = 4;
			ColorSlider.Font = Enum.Font.SourceSans;
			ColorSlider.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			ColorSlider.Text = "";
			ColorSlider.TextColor3 = Color3.fromRGB(0, 0, 0);
			ColorSlider.TextSize = 14;

			local Gradient_0 = _New_("UIGradient", ColorSlider);
			Gradient_0.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4.000000236555934)), ColorSequenceKeypoint.new(0.20000000298023224, Color3.fromRGB(255, 0, 251.00000023841858)), ColorSequenceKeypoint.new(0.4000000059604645, Color3.fromRGB(0, 17.00000088661909, 255)), ColorSequenceKeypoint.new(0.6000000238418579, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.800000011920929, Color3.fromRGB(21.000000648200512, 255, 0)), ColorSequenceKeypoint.new(0.8999999761581421, Color3.fromRGB(234.00000125169754, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4.000000236555934))};
			Gradient_0.Name = "Gradient";

			local UICorner = _New_("UICorner", ColorSlider);
			UICorner.CornerRadius = UDim.new(0, 4);

			local GradientPallete = _New_("ImageButton", Pallete);
			GradientPallete.AutoButtonColor = false;
			GradientPallete.BackgroundColor3 = Color3.fromRGB(255, 0, 0);
			GradientPallete.BorderColor3 = Color3.fromRGB(0, 0, 0);
			GradientPallete.BorderSizePixel = 0;
			GradientPallete.Name = "GradientPallete";
			GradientPallete.Position = UDim2.new(0.02682204358279705, 0, 0.04547096788883209, 0);
			GradientPallete.Size = UDim2.new(0, 138, 0, 89);
			GradientPallete.ZIndex = 4;
			GradientPallete.Image = "rbxassetid://4155801252";

			local Dot = _New_("Frame", GradientPallete);
			Dot.AnchorPoint = Vector2.new(0.5, 0.5);
			Dot.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Dot.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Dot.BorderSizePixel = 2;
			Dot.Name = "Dot";
			Dot.Position = UDim2.new(1, 0, 0, 0);
			Dot.Rotation = 45;
			Dot.Size = UDim2.new(0, 3, 0, 3);
			Dot.ZIndex = 5;

			local UICorner_0 = _New_("UICorner", GradientPallete);
			UICorner_0.CornerRadius = UDim.new(0, 4);

			local Input = _New_("Frame", Pallete);
			Input.BackgroundColor3 = Color3.fromRGB(50.000000819563866, 50.000000819563866, 50.000000819563866);
			Input.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Input.BorderSizePixel = 0;
			Input.Name = "Input";
			Input.Position = UDim2.new(0.019999999552965164, 0, 0.7450000047683716, 4);
			Input.Size = UDim2.new(-0.017000000923871994, 140, 0, 12);
			Input.ZIndex = 4;

			local InputBox = _New_("TextBox", Input);
			InputBox.BackgroundColor3 = Color3.fromRGB(25.000000409781933, 25.000000409781933, 25.000000409781933);
			InputBox.BackgroundTransparency = 1;
			InputBox.BorderColor3 = Color3.fromRGB(25.000000409781933, 25.000000409781933, 25.000000409781933);
			InputBox.BorderSizePixel = 0;
			InputBox.Name = "InputBox";
			InputBox.Size = UDim2.new(1, 0, 1, 0);
			InputBox.ZIndex = 5;
			InputBox.Font = Enum.Font.SourceSans;
			InputBox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			InputBox.PlaceholderColor3 = Color3.fromRGB(200.00000327825546, 200.00000327825546, 200.00000327825546);
			InputBox.PlaceholderText = "RGB: 255, 0, 0";
			InputBox.Text = "";
			InputBox.TextColor3 = Color3.fromRGB(200.00000327825546, 200.00000327825546, 200.00000327825546);
			InputBox.TextSize = 15;
			InputBox.TextStrokeTransparency = 0.75;
			InputBox.TextWrapped = true;

			local Gradient_1 = _New_("UIGradient", Input);
			Gradient_1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(180.00000447034836, 180.00000447034836, 180.00000447034836))};
			Gradient_1.Rotation = 90;
			Gradient_1.Name = "Gradient";

			local UICorner_1 = _New_("UICorner", Input);
			UICorner_1.CornerRadius = UDim.new(0, 4);

			local Done = _New_("TextButton", Pallete);
			Done.BackgroundColor3 = Color3.fromRGB(110.00000104308128, 118.00000056624413, 250.00000029802322);
			Done.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Done.BorderSizePixel = 0;
			Done.Name = "Done";
			Done.Position = UDim2.new(0.02682204358279705, 0, 0.8747929930686951, 0);
			Done.Size = UDim2.new(0, 136, 0, 12);
			Done.ZIndex = 4;
			Done.Font = Enum.Font.SourceSans;
			Done.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Done.Text = "Done";
			Done.TextColor3 = Color3.fromRGB(172.00000494718552, 172.00000494718552, 172.00000494718552);
			Done.TextSize = 14;
			
		
			
			local UICorner_2 = _New_("UICorner", Done);
			UICorner_2.CornerRadius = UDim.new(0, 4);

			local UIGradient = _New_("UIGradient", Done);
			UIGradient.Rotation = -83;
			UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0, 0.5187499523162842, 0), NumberSequenceKeypoint.new(1, 0.8187500238418579, 0)};

			local UIStroke = _New_("UIStroke", Done);
			UIStroke.Color = Color3.fromRGB(74.0000031888485, 74.0000031888485, 74.0000031888485);

			local UICorner_3 = _New_("UICorner", Pallete);
			UICorner_3.CornerRadius = UDim.new(0, 4);
			
			local ColorpickerInit = {}
			local o = false
			Done.MouseButton1Down:Connect(function()
				o = false
				Pallete.Visible = false
			end)
			Action.MouseButton1Down:Connect(function()
				if o == false then
					o = true
					Pallete.Visible = o
				else
					o = false
					Pallete.Visible = o
				end
			end)



			local ColorTable = {
				Hue = 1,
				Saturation = 0,
				Value = 0
			}
			local ColorRender = nil
			local HueRender = nil
			local ColorpickerToggle = false

			local function UpdateColor()
				Color.BackgroundColor3 = Color3.fromHSV(ColorTable.Hue,ColorTable.Saturation,ColorTable.Value)
				Pallete.GradientPallete.BackgroundColor3 = Color3.fromHSV(ColorTable.Hue,1,1)
				Pallete.Input.InputBox.PlaceholderText = "RGB: " .. math.round(Color.BackgroundColor3.R* 255) .. "," .. math.round(Color.BackgroundColor3.G * 255) .. "," .. math.round(Color.BackgroundColor3.B * 255)
				e.func(Color.BackgroundColor3)
			end


			Pallete.GradientPallete.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					if ColorRender then
						ColorRender:Disconnect()
					end
					ColorRender = RunService.RenderStepped:Connect(function()
						local Mouse = UserInputService:GetMouseLocation()
						local ColorX = math.clamp(Mouse.X - Pallete.GradientPallete.AbsolutePosition.X, 0, Pallete.GradientPallete.AbsoluteSize.X) / Pallete.GradientPallete.AbsoluteSize.X
						local ColorY = math.clamp((Mouse.Y - 37) - Pallete.GradientPallete.AbsolutePosition.Y, 0, Pallete.GradientPallete.AbsoluteSize.Y) / Pallete.GradientPallete.AbsoluteSize.Y
						Pallete.GradientPallete.Dot.Position = UDim2.new(ColorX,0,ColorY,0)
						ColorTable.Saturation = ColorX
						ColorTable.Value = 1 - ColorY
						UpdateColor()
					end)
				end
			end)

			Pallete.GradientPallete.InputEnded:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					if ColorRender then
						ColorRender:Disconnect()
					end
				end
			end)

			Pallete.ColorSlider.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					if HueRender then
						HueRender:Disconnect()
					end
					HueRender = RunService.RenderStepped:Connect(function()
						local Mouse = UserInputService:GetMouseLocation()
						local HueX = math.clamp(Mouse.X - Pallete.ColorSlider.AbsolutePosition.X, 0, Pallete.ColorSlider.AbsoluteSize.X) / Pallete.ColorSlider.AbsoluteSize.X
						ColorTable.Hue = 1 - HueX
						UpdateColor()
					end)
				end
			end)

			Pallete.ColorSlider.InputEnded:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					if HueRender then
						HueRender:Disconnect()
					end
				end
			end)

			function ColorpickerInit:UpdateColor(Color)
				local Hue, Saturation, Value = Color:ToHSV()
				Color.BackgroundColor3 = Color3.fromHSV(Hue,Saturation,Value)
				Pallete.GradientPallete.BackgroundColor3 = Color3.fromHSV(Hue,1,1)
				Pallete.Input.InputBox.PlaceholderText = "RGB: " .. math.round(Color.BackgroundColor3.R* 255) .. "," .. math.round(Color.BackgroundColor3.G * 255) .. "," .. math.round(Color.BackgroundColor3.B * 255)
				ColorTable = {
					Hue = Hue,
					Saturation = Saturation,
					Value = Value
				}
				e.func(Color)
			end

			Pallete.Input.InputBox.FocusLost:Connect(function(Enter)
				if Enter then
					local ColorString = string.split(string.gsub(Pallete.Input.InputBox.Text," ", ""), ",")
					ColorpickerInit:UpdateColor(Color3.fromRGB(ColorString[1],ColorString[2],ColorString[3]))
					Pallete.Input.InputBox.Text = ""
				end
			end)

			return ColorpickerInit
		end
		
		
		function a:Slider(e)
			e = e or {}

			local Slider = _New_("Frame", nil);
			Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Slider.BackgroundTransparency = 1;
			Slider.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Slider.BorderSizePixel = 0;
			Slider.Name = "Slider";
			Slider.Position = UDim2.new(0.06790123134851456, 0, 0.16778509318828583, 0);
			Slider.Size = UDim2.new(0, 142, 0, 32);

			local SliderBack = _New_("TextButton", Slider);
			SliderBack.AutoButtonColor = false;
			SliderBack.BackgroundColor3 = Color3.fromRGB(30.00000011175871, 30.00000011175871, 30.00000011175871);
			SliderBack.BorderColor3 = Color3.fromRGB(70.00000342726707, 70.00000342726707, 70.00000342726707);
			SliderBack.Name = "SliderBack";
			SliderBack.Position = UDim2.new(0.035211268812417984, 0, -0.125, 15);
			SliderBack.Size = UDim2.new(0, 132, 0, 9);
			SliderBack.Font = Enum.Font.SourceSans;
			SliderBack.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			SliderBack.Text = "";
			SliderBack.TextColor3 = Color3.fromRGB(0, 0, 0);
			SliderBack.TextSize = 14;

			local SliderFill = _New_("Frame", SliderBack);
			SliderFill.BackgroundColor3 = Color3.fromRGB(110.00000104308128, 118.00000056624413, 250.00000029802322);
			SliderFill.BorderColor3 = Color3.fromRGB(70.00000342726707, 70.00000342726707, 70.00000342726707);
			SliderFill.Name = "SliderFill";
			SliderFill.Size = UDim2.new(0, 0, 1, 0);

			local SliderValue = _New_("TextLabel", SliderFill);
			SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			SliderValue.BackgroundTransparency = 1;
			SliderValue.Name = "SliderValue";
			SliderValue.Position = UDim2.new(1, 8, 0, 8);
			SliderValue.Size = UDim2.new(0.07023392617702484, 0, 1, 0);
			SliderValue.Font = Enum.Font.SourceSans;
			SliderValue.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			SliderValue.Text = "0%";
			SliderValue.TextColor3 = Color3.fromRGB(168.0000051856041, 168.0000051856041, 168.0000051856041);
			SliderValue.TextSize = 14;
			SliderValue.TextXAlignment = Enum.TextXAlignment.Right;

			local UIPadding = _New_("UIPadding", SliderValue);
			UIPadding.PaddingLeft = UDim.new(0, 9);

			local UIGradient = _New_("UIGradient", SliderFill);
			UIGradient.Rotation = -83;
			UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0, 0.5187499523162842, 0), NumberSequenceKeypoint.new(1, 0.8187500238418579, 0)};

			local UIGradient_0 = _New_("UIGradient", SliderBack);
			UIGradient_0.Rotation = -83;
			UIGradient_0.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0, 0.5187499523162842, 0), NumberSequenceKeypoint.new(1, 0.8187500238418579, 0)};

			local SliderText = _New_("TextLabel", Slider);
			SliderText.AnchorPoint = Vector2.new(0.5, 0.5);
			SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			SliderText.BackgroundTransparency = 1;
			SliderText.Name = "SliderText";
			SliderText.Position = UDim2.new(0.26989102363586426, 0, -0.125, 5);
			SliderText.Size = UDim2.new(0, 76, 0, 8);
			SliderText.Font = Enum.Font.SourceSans;
			SliderText.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			SliderText.Text = e.Text or "SLIDER | TEXT NOT FOUND";
			SliderText.TextColor3 = Color3.fromRGB(168.0000051856041, 168.0000051856041, 168.0000051856041);
			SliderText.TextSize = 14;
			SliderText.TextXAlignment = Enum.TextXAlignment.Left;
			

			if e.Side == "L" then
				Slider.Parent = LeftFrame
			end
			if e.Side == "R" then
				Slider.Parent = Right_Frame
			end
			
			
			-----Values-----
			e.min = e.min or 0
			e.max = e.max or 100


			-----Callback-----
			e.func = e.func or function() end


			-----Variables-----
			local mouse = game.Players.LocalPlayer:GetMouse()
			local uis = game:GetService("UserInputService")
			local Value;
			local length = SliderBack.Size.X.Offset
			local height = SliderBack.Size.Y.Offset






			SliderBack.MouseButton1Down:Connect(function()
				SliderValue.Text = Value..e.prefix
			end)



			SliderBack.MouseButton1Down:Connect(function()
				Value = math.floor((((tonumber(e.max) - tonumber(e.min)) / length) * SliderFill.AbsoluteSize.X) + tonumber(e.min)) or 0
				-- Value = e.def

				pcall(function()
					e.func(Value)
				end)
				SliderFill.Size = UDim2.new(0, math.clamp(mouse.X - SliderFill.AbsolutePosition.X, 0, length), 0, height)
				moveconnection = mouse.Move:Connect(function()
					SliderValue.Text = Value..e.prefix
					Value = math.floor((((tonumber(e.max) - tonumber(e.min)) / length) * SliderFill.AbsoluteSize.X) + tonumber(e.min))
					pcall(function()
						e.func(Value)
					end)

					SliderFill.Size = UDim2.new(0, math.clamp(mouse.X - SliderFill.AbsolutePosition.X, 0, length), 0, height)
				end)
				releaseconnection = uis.InputEnded:Connect(function(Mouse)
					if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
						Value = math.floor((((tonumber(e.max) - tonumber(e.min)) / length) * SliderFill.AbsoluteSize.X) + tonumber(e.min))
						pcall(function()
							e.func(Value)
						end)
						SliderFill.Size = UDim2.new(0, math.clamp(mouse.X - SliderFill.AbsolutePosition.X, 0, length), 0, height)
						moveconnection:Disconnect()
						releaseconnection:Disconnect()
					end
				end)
			end)
			-- touch fix

			SliderBack.MouseButton1Down:Connect(function()
				SliderValue.Text = Value..e.prefix
				Value = math.floor((((tonumber(e.max) - tonumber(e.min)) / length) * SliderFill.AbsoluteSize.X) + tonumber(e.min))
				pcall(function()
					e.func(Value)
				end)

				SliderFill.Size = UDim2.new(0, math.clamp(mouse.X - SliderFill.AbsolutePosition.X, 0, length), 0, height)
			end)
		end
		
		
		return a;
	end
	
	return t;
end

 return lib;
