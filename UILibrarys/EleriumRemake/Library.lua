local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")

if game.CoreGui:FindFirstChild("Library") then
	game.CoreGui:FindFirstChild("Library"):Destroy()
end

local Library = {}
function Library:CreateWindow(Text)
	
	local Library = Instance.new("ScreenGui")
	local Main_1 = Instance.new("Frame")
	local TopBar_1 = Instance.new("Frame")
	local UICorner_1 = Instance.new("UICorner")
	local TopBarExt_1 = Instance.new("Frame")
	local FrameToggleBtn_1 = Instance.new("ImageButton")
	local Title_1 = Instance.new("TextLabel")
	local UICorner_2 = Instance.new("UICorner")
	local TabsHolder_1 = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local Tabs_1 = Instance.new("ScrollingFrame")
	local UIListLayout_1 = Instance.new("UIListLayout")
	local UIPadding_2 = Instance.new("UIPadding")
	local TabLine_1 = Instance.new("Frame")
	local UICorner_6 = Instance.new("UICorner")
	local ElementsHolder_1 = Instance.new("Frame")
	
	
	Library.Name = "Library"
	Library.Parent = game.CoreGui

	Main_1.Name = "Main"
	Main_1.Parent = Library
	Main_1.BackgroundColor3 = Color3.fromRGB(21,21,23)
	Main_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Main_1.BorderSizePixel = 0
	Main_1.Position = UDim2.new(0.362050742, 0,0.230452672, 0)
	Main_1.Size = UDim2.new(0, 452,0, 524)

	local frame = Main_1
	local dragToggle = nil
	local dragSpeed = 0.1 -- the amount of speed you want the drag to be
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
	
	TopBar_1.Name = "TopBar"
	TopBar_1.Parent = Main_1
	TopBar_1.BackgroundColor3 = Color3.fromRGB(231,127,127)
	TopBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
	TopBar_1.BorderSizePixel = 0
	TopBar_1.Size = UDim2.new(0, 452,0, 26)

	UICorner_1.Parent = TopBar_1
	UICorner_1.CornerRadius = UDim.new(0,9)

	TopBarExt_1.Name = "TopBarExt"
	TopBarExt_1.Parent = TopBar_1
	TopBarExt_1.BackgroundColor3 = Color3.fromRGB(231,127,127)
	TopBarExt_1.BorderColor3 = Color3.fromRGB(0,0,0)
	TopBarExt_1.BorderSizePixel = 0
	TopBarExt_1.Position = UDim2.new(0, 0,0.625, 0)
	TopBarExt_1.Size = UDim2.new(0, 452,0, 9)

	FrameToggleBtn_1.Name = "FrameToggleBtn"
	FrameToggleBtn_1.Parent = TopBar_1
	FrameToggleBtn_1.Active = true
	FrameToggleBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	FrameToggleBtn_1.BackgroundTransparency = 1
	FrameToggleBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
	FrameToggleBtn_1.BorderSizePixel = 0
	FrameToggleBtn_1.Position = UDim2.new(0.0221238937, 0,0.230769232, 0)
	FrameToggleBtn_1.Rotation = 90
	FrameToggleBtn_1.Size = UDim2.new(0, 14,0, 14)
	FrameToggleBtn_1.Image = "rbxassetid://16877605753"

	Title_1.Name = "Title"
	Title_1.Parent = TopBar_1
	Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Title_1.BackgroundTransparency = 1
	Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Title_1.BorderSizePixel = 0
	Title_1.Position = UDim2.new(0.0730088502, 0,0, 0)
	Title_1.Size = UDim2.new(0, 419,0, 26)
	Title_1.Font = Enum.Font.ArialBold
	Title_1.Text = Text
	Title_1.TextColor3 = Color3.fromRGB(255,255,255)
	Title_1.TextSize = 14
	Title_1.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_2.Parent = Main_1
	UICorner_2.CornerRadius = UDim.new(0,9)

	TabsHolder_1.Name = "TabsHolder"
	TabsHolder_1.Parent = Main_1
	TabsHolder_1.BackgroundColor3 = Color3.fromRGB(37,37,40)
	TabsHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	TabsHolder_1.BorderSizePixel = 0
	TabsHolder_1.Position = UDim2.new(0.0350000001, 0,0.0549999997, 0)
	TabsHolder_1.Size = UDim2.new(0, 419,0, 25)

	UICorner_3.Parent = TabsHolder_1
	UICorner_3.CornerRadius = UDim.new(0,4)

	Tabs_1.Name = "Tabs"
	Tabs_1.Parent = TabsHolder_1
	Tabs_1.Active = true
	Tabs_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Tabs_1.BackgroundTransparency = 1
	Tabs_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Tabs_1.BorderSizePixel = 0
	Tabs_1.Size = UDim2.new(0, 419,0, 25)
	Tabs_1.ClipsDescendants = true
	Tabs_1.AutomaticCanvasSize = Enum.AutomaticSize.X
	Tabs_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
	Tabs_1.CanvasPosition = Vector2.new(0, 0)
	Tabs_1.CanvasSize = UDim2.new(0.5, 0,0, 0)
	Tabs_1.ElasticBehavior = Enum.ElasticBehavior.Never
	Tabs_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
	Tabs_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	Tabs_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
	Tabs_1.ScrollBarImageTransparency = 1
	Tabs_1.ScrollBarThickness = 1
	Tabs_1.ScrollingDirection = Enum.ScrollingDirection.X
	Tabs_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
	Tabs_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
	Tabs_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

	UIListLayout_1.Parent = Tabs_1
	UIListLayout_1.Padding = UDim.new(0,6)
	UIListLayout_1.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
	
	UIPadding_2.Parent = Tabs_1
	UIPadding_2.PaddingTop = UDim.new(0,1)
	
	TabLine_1.Name = "TabLine"
	TabLine_1.Parent = TabsHolder_1
	TabLine_1.BackgroundColor3 = Color3.fromRGB(231,127,127)
	TabLine_1.BorderColor3 = Color3.fromRGB(0,0,0)
	TabLine_1.BorderSizePixel = 0
	TabLine_1.Position = UDim2.new(0, 0,1, 0)
	TabLine_1.Size = UDim2.new(0, 419,0, 1)

	UICorner_6.Parent = TabLine_1
	UICorner_6.CornerRadius = UDim.new(0,4)
	
	ElementsHolder_1.Name = "ElementsHolder"
	ElementsHolder_1.Parent = Main_1
	ElementsHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ElementsHolder_1.BackgroundTransparency = 1
	ElementsHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	ElementsHolder_1.BorderSizePixel = 0
	ElementsHolder_1.Position = UDim2.new(0.0331858397, 0,0.103053436, 0)
	ElementsHolder_1.Size = UDim2.new(0, 419,0.870000005, 0)

	
	
	local Tabs = {}
	local first = true
	local currentTab = nil
	function Tabs:CreateTab(Text)
		
		local targetTabColorOn = Color3.fromRGB(73,75,79)
		local targetTabColorOff = Color3.fromRGB(57,58,60)
		
		local TabBtnHolder_1 = Instance.new("Frame")
		local UICorner_4 = Instance.new("UICorner")
		local TabBtn_1 = Instance.new("TextButton")
		local UIPadding_1 = Instance.new("UIPadding")
		local Elements_1 = Instance.new("Frame")
		local Items_1 = Instance.new("ScrollingFrame")
		local UIListLayout_2 = Instance.new("UIListLayout")
local UIPadding_5 = Instance.new("UIPadding")

		TabBtnHolder_1.Name = "TabBtnHolder"
		TabBtnHolder_1.Parent = Tabs_1
		TabBtnHolder_1.AutomaticSize = Enum.AutomaticSize.X
		TabBtnHolder_1.BackgroundColor3 = Color3.fromRGB(57,58,60)
		TabBtnHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
		TabBtnHolder_1.BorderSizePixel = 0
		TabBtnHolder_1.Size = UDim2.new(0, 35,0, 22)

		UICorner_4.Parent = TabBtnHolder_1
		UICorner_4.CornerRadius = UDim.new(0,4)

		TabBtn_1.Name = "TabBtn"
		TabBtn_1.Parent = TabBtnHolder_1
		TabBtn_1.Active = true
		TabBtn_1.AutomaticSize = Enum.AutomaticSize.X
		TabBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		TabBtn_1.BackgroundTransparency = 1
		TabBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
		TabBtn_1.BorderSizePixel = 0
		TabBtn_1.Size = UDim2.new(0, 35,0, 22)
		TabBtn_1.Font = Enum.Font.ArialBold
		TabBtn_1.Text = Text
		TabBtn_1.TextColor3 = Color3.fromRGB(185,184,184)
		TabBtn_1.TextSize = 13

		UIPadding_1.Parent = TabBtn_1
		UIPadding_1.PaddingLeft = UDim.new(0,5)
		UIPadding_1.PaddingRight = UDim.new(0,5)
		
		Elements_1.Name = "Elements"
	Elements_1.Parent = ElementsHolder_1
	Elements_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Elements_1.BackgroundTransparency = 1
	Elements_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Elements_1.BorderSizePixel = 0
	Elements_1.Size = UDim2.new(1, 0,1, 0)
	
		Items_1.Name = "Items"
	Items_1.Parent = Elements_1
	Items_1.Active = true
	Items_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Items_1.BackgroundTransparency = 1
	Items_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Items_1.BorderSizePixel = 0
	Items_1.Size = UDim2.new(1, 0,1, 0)
	Items_1.ClipsDescendants = true
	Items_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
	Items_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
	Items_1.CanvasPosition = Vector2.new(0, 0)
	Items_1.CanvasSize = UDim2.new(0, 0,0.5, 0)
	Items_1.ElasticBehavior = Enum.ElasticBehavior.Never
	Items_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
	Items_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	Items_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
	Items_1.ScrollBarImageTransparency = 1
	Items_1.ScrollBarThickness = 1
	Items_1.ScrollingDirection = Enum.ScrollingDirection.Y
	Items_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
	Items_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
	Items_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

UIListLayout_2.Parent = Items_1
UIListLayout_2.Padding = UDim.new(0,4)
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

UIPadding_5.Parent = Items_1
UIPadding_5.PaddingBottom = UDim.new(0,3)
UIPadding_5.PaddingTop = UDim.new(0,3)
		local tweenInfo = TweenInfo.new(0.2)

		local tweenton = TweenService:Create(TabBtnHolder_1, tweenInfo, {BackgroundColor3 = targetTabColorOn})
		local tweentoff = TweenService:Create(TabBtnHolder_1, tweenInfo, {BackgroundColor3 = targetTabColorOff})
		
		if first then
			first = false
			Elements_1.Visible = true
			currentTab = TabBtnHolder_1 -- Set the first tab as the current tab
			tweenton:Play()
		else
			Elements_1.Visible = false
		end
		
		TabBtn_1.MouseButton1Click:Connect(function()
			if currentTab then
				tweentoff:Play() -- Turn off color for the previous tab
			end
			tweenton:Play() -- Turn on color for the new tab
			if currentTab and currentTab ~= TabBtnHolder_1 then
				currentTab.BackgroundColor3 = targetTabColorOff -- Set the color of the previously selected tab to off
			end
			currentTab = TabBtnHolder_1 -- Update the current tab
			for i, v in next, ElementsHolder_1:GetChildren() do
				v.Visible = false
			end

			Elements_1.Visible = true
		end)
		
		local Elements = {}
		function Elements:CreateLabel(Text)
			
			local Label_1 = Instance.new("Frame")
local LabelText_1 = Instance.new("TextLabel")
local UIPadding_4 = Instance.new("UIPadding")

			Label_1.Name = "Label"
Label_1.Parent = Items_1
Label_1.AutomaticSize = Enum.AutomaticSize.X
Label_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
Label_1.BackgroundTransparency = 1
Label_1.BorderColor3 = Color3.fromRGB(0,0,0)
Label_1.BorderSizePixel = 0
Label_1.Size = UDim2.new(0, 86,0, 17)

LabelText_1.Name = "LabelText"
LabelText_1.Parent = Label_1
LabelText_1.AutomaticSize = Enum.AutomaticSize.X
LabelText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
LabelText_1.BackgroundTransparency = 1
LabelText_1.BorderColor3 = Color3.fromRGB(0,0,0)
LabelText_1.BorderSizePixel = 0
LabelText_1.Size = UDim2.new(0, 86,0, 17)
LabelText_1.Font = Enum.Font.ArialBold
LabelText_1.Text = Text
LabelText_1.TextColor3 = Color3.fromRGB(255,255,255)
LabelText_1.TextSize = 13
LabelText_1.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_4.Parent = LabelText_1
UIPadding_4.PaddingRight = UDim.new(0,3)
			
		end
		function Elements:CreateButton(Text, Callback)
		
		Callback = Callback or function()
				end

				local targetButtonColorOn = Color3.fromRGB(240, 170, 170)
				local targetButtonColorOff = Color3.fromRGB(231,127,127) 
				
local Button_1 = Instance.new("Frame")
local UICorner_16 = Instance.new("UICorner")
local ButtonBtn_1 = Instance.new("TextButton")
local UIPadding_11 = Instance.new("UIPadding")
Button_1.Name = "Button"
Button_1.Parent = Items_1
Button_1.AutomaticSize = Enum.AutomaticSize.X
Button_1.BackgroundColor3 = Color3.fromRGB(231,127,127)
Button_1.BorderColor3 = Color3.fromRGB(0,0,0)
Button_1.BorderSizePixel = 0
Button_1.Position = UDim2.new(0, 0,0.0511247441, 0)
Button_1.Size = UDim2.new(0, 59,0, 20)

UICorner_16.Parent = Button_1
UICorner_16.CornerRadius = UDim.new(0,4)

ButtonBtn_1.Name = "ButtonBtn"
ButtonBtn_1.Parent = Button_1
ButtonBtn_1.Active = true
ButtonBtn_1.AutomaticSize = Enum.AutomaticSize.X
ButtonBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
ButtonBtn_1.BackgroundTransparency = 1
ButtonBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
ButtonBtn_1.BorderSizePixel = 0
ButtonBtn_1.Size = UDim2.new(0, 59,0, 20)
ButtonBtn_1.Font = Enum.Font.ArialBold
ButtonBtn_1.Text = Text
ButtonBtn_1.TextColor3 = Color3.fromRGB(255,255,255)
ButtonBtn_1.TextSize = 13

UIPadding_11.Parent = ButtonBtn_1
UIPadding_11.PaddingLeft = UDim.new(0,3)
UIPadding_11.PaddingRight = UDim.new(0,3)

local tweenInfo = TweenInfo.new(0.2)

local tweenbon = TweenService:Create(Button_1, tweenInfo, {BackgroundColor3 = targetButtonColorOn})
				local tweenboff = TweenService:Create(Button_1, tweenInfo, {BackgroundColor3 = targetButtonColorOff})

				ButtonBtn_1.MouseButton1Click:Connect(function()
					tweenbon:Play()
					wait(0.1)
					tweenboff:Play()
					Callback()
				end)			
				
		end
		function Elements:CreateSwitch(Text, Callback)
		
		Callback = Callback or function()
				end

				local toggled = false
				local debounce = false
				
				
		local Switch_1 = Instance.new("Frame")
local SwitchHolder_1 = Instance.new("Frame")
local SwitchBtn_1 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local SwitchText_1 = Instance.new("TextLabel")
local UIPadding_6 = Instance.new("UIPadding")

Switch_1.Name = "Switch"
Switch_1.Parent = Items_1
Switch_1.AutomaticSize = Enum.AutomaticSize.X
Switch_1.BackgroundColor3 = Color3.fromRGB(57,58,60)
Switch_1.BackgroundTransparency = 1
Switch_1.BorderColor3 = Color3.fromRGB(0,0,0)
Switch_1.BorderSizePixel = 0
Switch_1.Position = UDim2.new(0, 0,0.153374225, 0)
Switch_1.Size = UDim2.new(0, 41,0, 20)

SwitchHolder_1.Name = "SwitchHolder"
SwitchHolder_1.Parent = Switch_1
SwitchHolder_1.BackgroundColor3 = Color3.fromRGB(177,120,116)
SwitchHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
SwitchHolder_1.BorderSizePixel = 0
SwitchHolder_1.Size = UDim2.new(0, 20,0, 20)

SwitchBtn_1.Name = "SwitchBtn"
SwitchBtn_1.Parent = SwitchHolder_1
SwitchBtn_1.Active = true
SwitchBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
SwitchBtn_1.BackgroundTransparency = 1
SwitchBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
SwitchBtn_1.BorderSizePixel = 0
SwitchBtn_1.Size = UDim2.new(0, 20,0, 20)
SwitchBtn_1.Font = Enum.Font.ArialBold
SwitchBtn_1.Text = ""
SwitchBtn_1.TextColor3 = Color3.fromRGB(255,255,255)
SwitchBtn_1.TextSize = 18
SwitchBtn_1.TextWrapped = true

UICorner_8.Parent = SwitchHolder_1
UICorner_8.CornerRadius = UDim.new(0,4)

SwitchText_1.Name = "SwitchText"
SwitchText_1.Parent = Switch_1
SwitchText_1.AutomaticSize = Enum.AutomaticSize.X
SwitchText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
SwitchText_1.BackgroundTransparency = 1
SwitchText_1.BorderColor3 = Color3.fromRGB(0,0,0)
SwitchText_1.BorderSizePixel = 0
SwitchText_1.Size = UDim2.new(0, 40,0, 20)
SwitchText_1.Font = Enum.Font.ArialBold
SwitchText_1.Text = Text
SwitchText_1.TextColor3 = Color3.fromRGB(255,255,255)
SwitchText_1.TextSize = 13
SwitchText_1.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_6.Parent = SwitchText_1
UIPadding_6.PaddingLeft = UDim.new(0,25)
UIPadding_6.PaddingRight = UDim.new(0,4)

SwitchBtn_1.MouseButton1Click:Connect(
					function()
						if debounce == false then
							if toggled == false then
								debounce = true
								SwitchBtn_1.Text = "✓"
								debounce = false
								toggled = true
								pcall(Callback, toggled)
							elseif toggled == true then
								debounce = true
								SwitchBtn_1.Text = ""
								debounce = false
								toggled = false
								pcall(Callback, toggled)
							end
						end
					end
				)
				
		end
		function Elements:CreateDropdown(Text, options, Callback)
		local Dropdown_1 = Instance.new("Frame")
local DropdownText_1 = Instance.new("TextLabel")
local UIPadding_8 = Instance.new("UIPadding")
local UICorner_13 = Instance.new("UICorner")
local DropdownBtn_1 = Instance.new("ImageButton")
local DropdownItemsHolder_1 = Instance.new("Frame")
local UICorner_14 = Instance.new("UICorner")
local DropdownItems_1 = Instance.new("ScrollingFrame")
local Option_1 = Instance.new("Frame")
local UICorner_15 = Instance.new("UICorner")
local OptionBtn_1 = Instance.new("TextButton")
local UIListLayout_3 = Instance.new("UIListLayout")
local UIPadding_10 = Instance.new("UIPadding")
local UIPadding_9 = Instance.new("UIPadding")

Dropdown_1.Name = "Dropdown"
Dropdown_1.Parent = Items_1
Dropdown_1.BackgroundColor3 = Color3.fromRGB(57,58,60)
Dropdown_1.BorderColor3 = Color3.fromRGB(0,0,0)
Dropdown_1.BorderSizePixel = 0
Dropdown_1.Position = UDim2.new(0, 0,0.313416898, 0)
Dropdown_1.Size = UDim2.new(0, 173,0, 20)

DropdownText_1.Name = "DropdownText"
DropdownText_1.Parent = Dropdown_1
DropdownText_1.AutomaticSize = Enum.AutomaticSize.X
DropdownText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
DropdownText_1.BackgroundTransparency = 1
DropdownText_1.BorderColor3 = Color3.fromRGB(0,0,0)
DropdownText_1.BorderSizePixel = 0
DropdownText_1.Size = UDim2.new(0, 40,0, 20)
DropdownText_1.Font = Enum.Font.ArialBold
DropdownText_1.Text = "Dropdown"
DropdownText_1.TextColor3 = Color3.fromRGB(255,255,255)
DropdownText_1.TextSize = 13
DropdownText_1.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_8.Parent = DropdownText_1
UIPadding_8.PaddingLeft = UDim.new(0,25)
UIPadding_8.PaddingRight = UDim.new(0,4)

UICorner_13.Parent = Dropdown_1
UICorner_13.CornerRadius = UDim.new(0,4)

DropdownBtn_1.Name = "DropdownBtn"
DropdownBtn_1.Parent = Dropdown_1
DropdownBtn_1.Active = true
DropdownBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
DropdownBtn_1.BackgroundTransparency = 1
DropdownBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
DropdownBtn_1.BorderSizePixel = 0
DropdownBtn_1.Position = UDim2.new(0.829999983, 0,-0.150000006, 0)
DropdownBtn_1.Rotation = -90
DropdownBtn_1.Size = UDim2.new(0, 25,0, 25)
DropdownBtn_1.Image = "rbxassetid://16879227429"

DropdownItemsHolder_1.Name = "DropdownItemsHolder"
DropdownItemsHolder_1.Parent = Dropdown_1
DropdownItemsHolder_1.BackgroundColor3 = Color3.fromRGB(57,58,60)
DropdownItemsHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
DropdownItemsHolder_1.BorderSizePixel = 0
DropdownItemsHolder_1.Position = UDim2.new(0, 0,1.10000002, 0)
DropdownItemsHolder_1.Size = UDim2.new(0, 173,0, 90)
DropdownItemsHolder_1.Visible = false

UICorner_14.Parent = DropdownItemsHolder_1
UICorner_14.CornerRadius = UDim.new(0,4)

DropdownItems_1.Name = "DropdownItems"
DropdownItems_1.Parent = DropdownItemsHolder_1
DropdownItems_1.Active = true
DropdownItems_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
DropdownItems_1.BackgroundTransparency = 1
DropdownItems_1.BorderColor3 = Color3.fromRGB(0,0,0)
DropdownItems_1.BorderSizePixel = 0
DropdownItems_1.Size = UDim2.new(0, 173,0, 90)
DropdownItems_1.ClipsDescendants = true
DropdownItems_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
DropdownItems_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
DropdownItems_1.CanvasPosition = Vector2.new(0, 0)
DropdownItems_1.CanvasSize = UDim2.new(0, 0,0.5, 0)
DropdownItems_1.ElasticBehavior = Enum.ElasticBehavior.Never
DropdownItems_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
DropdownItems_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
DropdownItems_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
DropdownItems_1.ScrollBarImageTransparency = 1
DropdownItems_1.ScrollBarThickness = 1
DropdownItems_1.ScrollingDirection = Enum.ScrollingDirection.Y
DropdownItems_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
DropdownItems_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
DropdownItems_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

Option_1.Name = "Option"
Option_1.Parent = DropdownItems_1
Option_1.AutomaticSize = Enum.AutomaticSize.X
Option_1.BackgroundColor3 = Color3.fromRGB(231,127,127)
Option_1.BorderColor3 = Color3.fromRGB(0,0,0)
Option_1.BorderSizePixel = 0
Option_1.Size = UDim2.new(0, 32,0, 20)

UICorner_15.Parent = Option_1
UICorner_15.CornerRadius = UDim.new(0,4)

OptionBtn_1.Name = "OptionBtn"
OptionBtn_1.Parent = Option_1
OptionBtn_1.Active = true
OptionBtn_1.AutomaticSize = Enum.AutomaticSize.X
OptionBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
OptionBtn_1.BackgroundTransparency = 1
OptionBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
OptionBtn_1.BorderSizePixel = 0
OptionBtn_1.Size = UDim2.new(0, 32,0, 20)
OptionBtn_1.Font = Enum.Font.ArialBold
OptionBtn_1.Text = "Select Your Option:"
OptionBtn_1.TextColor3 = Color3.fromRGB(255,255,255)
OptionBtn_1.TextSize = 13

UIPadding_9.Parent = OptionBtn_1
UIPadding_9.PaddingLeft = UDim.new(0,3)
UIPadding_9.PaddingRight = UDim.new(0,3)

UIListLayout_3.Parent = DropdownItems_1
UIListLayout_3.Padding = UDim.new(0,3)
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

UIPadding_10.Parent = DropdownItems_1
UIPadding_10.PaddingBottom = UDim.new(0,3)
UIPadding_10.PaddingLeft = UDim.new(0,3)
UIPadding_10.PaddingTop = UDim.new(0,3)

 local isDropdownOpen = false -- Variable to track dropdown state

    -- Function to toggle dropdown visibility
    local function ToggleDropdown()
        isDropdownOpen = not isDropdownOpen
        DropdownItemsHolder_1.Visible = isDropdownOpen
        -- You can also change the rotation of the button to indicate dropdown state
        DropdownBtn_1.Rotation = isDropdownOpen and 90 or -90
    end

    -- Event handler for dropdown button click
    DropdownBtn_1.MouseButton1Click:Connect(ToggleDropdown)


    -- Iterate through options to create dropdown items
    for i, optionText in ipairs(options) do
        local Option = Option_1:Clone()
        Option.Parent = DropdownItems_1
        Option.OptionBtn.Text = optionText
        Option.OptionBtn.MouseButton1Click:Connect(function()
            -- Call the callback function with the selected option
            Callback(optionText)
            -- Hide dropdown after selection if needed
            ToggleDropdown()
        end)
    end
    
		end
		function Elements:CreateBox(Text, Callback)
		local Box_1 = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local TextBox_1 = Instance.new("TextBox")

Box_1.Name = "Box"
Box_1.Parent = Items_1
Box_1.AutomaticSize = Enum.AutomaticSize.X
Box_1.BackgroundColor3 = Color3.fromRGB(57,58,60)
Box_1.BorderColor3 = Color3.fromRGB(0,0,0)
Box_1.BorderSizePixel = 0
Box_1.Position = UDim2.new(0, 0,0.106695116, 0)
Box_1.Size = UDim2.new(1, 0,0, 20)

UICorner_7.Parent = Box_1
UICorner_7.CornerRadius = UDim.new(0,4)

TextBox_1.Parent = Box_1
TextBox_1.Active = true
TextBox_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
TextBox_1.BackgroundTransparency = 1
TextBox_1.BorderColor3 = Color3.fromRGB(0,0,0)
TextBox_1.BorderSizePixel = 0
TextBox_1.CursorPosition = -1
TextBox_1.Size = UDim2.new(1, 0,0, 20)
TextBox_1.Font = Enum.Font.ArialBold
TextBox_1.PlaceholderColor3 = Color3.fromRGB(139,140,141)
TextBox_1.PlaceholderText = Text
TextBox_1.Text = ""
TextBox_1.TextColor3 = Color3.fromRGB(139,140,141)
TextBox_1.TextSize = 14
TextBox_1.FocusLost:Connect(function()
					Callback(TextBox_1.Text)
				end)

		end
		function Elements:CreateSlider(Text, Max, Callback)
		local Slider_1 = Instance.new("Frame")
local SliderHolder_1 = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local SliderBtn_1 = Instance.new("TextButton")
local SliderInner_1 = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local SliderText_1 = Instance.new("TextLabel")
local SliderValue_1 = Instance.new("TextLabel")

		Slider_1.Name = "Slider"
Slider_1.Parent = Items_1
Slider_1.BackgroundColor3 = Color3.fromRGB(57,58,60)
Slider_1.BackgroundTransparency = 1
Slider_1.BorderColor3 = Color3.fromRGB(0,0,0)
Slider_1.BorderSizePixel = 0
Slider_1.Position = UDim2.new(0, 0,0.106695116, 0)
Slider_1.Size = UDim2.new(1, 0,0, 20)

SliderHolder_1.Name = "SliderHolder"
SliderHolder_1.Parent = Slider_1
SliderHolder_1.BackgroundColor3 = Color3.fromRGB(37,37,40)
SliderHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
SliderHolder_1.BorderSizePixel = 0
SliderHolder_1.Size = UDim2.new(1, 0,0, 20)

UICorner_9.Parent = SliderHolder_1
UICorner_9.CornerRadius = UDim.new(0,4)

SliderBtn_1.Name = "SliderBtn"
SliderBtn_1.Parent = SliderHolder_1
SliderBtn_1.Active = true
SliderBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
SliderBtn_1.BackgroundTransparency = 1
SliderBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
SliderBtn_1.BorderSizePixel = 0
SliderBtn_1.Size = UDim2.new(1, 0,0, 20)
SliderBtn_1.Font = Enum.Font.SourceSans
SliderBtn_1.Text = ""
SliderBtn_1.TextSize = 14

SliderInner_1.Name = "SliderInner"
SliderInner_1.Parent = SliderBtn_1
SliderInner_1.BackgroundColor3 = Color3.fromRGB(57,58,60)
SliderInner_1.BorderColor3 = Color3.fromRGB(0,0,0)
SliderInner_1.BorderSizePixel = 0
SliderInner_1.Size = UDim2.new(0, 0, 0, 20)

UICorner_10.Parent = SliderInner_1
UICorner_10.CornerRadius = UDim.new(0,4)

SliderText_1.Name = "SliderText"
SliderText_1.Parent = Slider_1
SliderText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
SliderText_1.BackgroundTransparency = 1
SliderText_1.BorderColor3 = Color3.fromRGB(0,0,0)
SliderText_1.BorderSizePixel = 0
SliderText_1.Size = UDim2.new(1, 0,0, 20)
SliderText_1.Font = Enum.Font.ArialBold
SliderText_1.Text = Text
SliderText_1.TextColor3 = Color3.fromRGB(255,255,255)
SliderText_1.TextSize = 13

SliderValue_1.Name = "SliderValue"
SliderValue_1.Parent = SliderText_1
SliderValue_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
SliderValue_1.BackgroundTransparency = 1
SliderValue_1.BorderColor3 = Color3.fromRGB(0,0,0)
SliderValue_1.BorderSizePixel = 0
SliderValue_1.Position = UDim2.new(1, 0,0, 0)
SliderValue_1.Size = UDim2.new(0, 43,0, 20)
SliderValue_1.Font = Enum.Font.ArialBold
SliderValue_1.Text = "0"
SliderValue_1.TextColor3 = Color3.fromRGB(255,255,255)
SliderValue_1.TextSize = 13
SliderValue_1.TextXAlignment = Enum.TextXAlignment.Right

local isDragging = false

				SliderBtn_1.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
						isDragging = true
					end
				end)

				game:GetService("UserInputService").InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
						isDragging = false
					end
				end)

				game:GetService("RunService").RenderStepped:Connect(function()
					if isDragging then
						local mousePosition = game:GetService("UserInputService"):GetMouseLocation()
						local sliderPosition = SliderBtn_1.AbsolutePosition
						local sliderWidth = SliderBtn_1.AbsoluteSize.X
						local fillWidth = math.clamp(mousePosition.X - sliderPosition.X, 0, sliderWidth)
						SliderInner_1.Size = UDim2.new(0, fillWidth, 1, 0)

						-- Calculate and display value label
						local value = fillWidth / sliderWidth
						local minValue = 0
						local maxValue = Max
						local displayValue = math.floor(minValue + (maxValue - minValue) * value, 2)
						SliderValue_1.Text = tostring(displayValue)
						Callback(displayValue)
					end
				end)
		end
		return Elements
	end
	return Tabs
end
return Library
 