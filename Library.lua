for _,v in pairs(game.CoreGui:GetChildren()) do
if v.Name == 'Whisper' then
v:Remove()
end
end
local Library = {}

function Library.Window(name)
local boom = game:GetService('TweenService')
local Whisper = Instance.new("ScreenGui")
local Holder = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local Tabs = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local Titlestuff = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("ImageButton")
local thing = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local Pages = Instance.new("Frame")
local UIStroke = Instance.new("UIStroke")
local UIStroke_2 = Instance.new("UIStroke")
local uis = game:GetService('UserInputService')

Whisper.Name = "Whisper"
Whisper.Parent = game.CoreGui

Holder.Name = "Holder"
Holder.Parent = Whisper
Holder.AnchorPoint = Vector2.new(0.5, 0.5)
Holder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Holder.BorderSizePixel = 0
Holder.Position = UDim2.new(0.5, 0, 0.5, 0)
Holder.Size = UDim2.new(0, 500, 0, 300)
Holder.Image = "http://www.roblox.com/asset/?id=8506437817"
Holder.ImageColor3 = Color3.fromRGB(0, 101, 152)
Holder.BackgroundTransparency = 0.03
Holder.ClipsDescendants = true

local gui = Holder

local dragging = false
local dragInput, mousePos, framePos

gui.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
dragging = true
mousePos = input.Position
framePos = gui.Position

input.Changed:Connect(function()
if input.UserInputState == Enum.UserInputState.End then
dragging = false
end
end)
end
end)

gui.InputChanged:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseMovement then
dragInput = input
end
end)

uis.InputChanged:Connect(function(input)
if input == dragInput and dragging then
local delta = input.Position - mousePos
gui.Position  = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
end
end)

UIStroke.Parent = Holder
UIStroke.Color = Color3.fromRGB(255,255,255)
UIStroke.LineJoinMode = Enum.LineJoinMode.Round
UIStroke.Thickness = 0.77
UIStroke.Transparency = 0.8

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Holder

Tabs.Name = "Tabs"
Tabs.Parent = Holder
Tabs.AnchorPoint = Vector2.new(0.5, 0.5)
Tabs.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Tabs.BorderColor3 = Color3.fromRGB(27, 42, 53)
Tabs.Position = UDim2.new(1.5, -500, 1.00999999, -32)
Tabs.Size = UDim2.new(0, 486, 0, 42)
Tabs.Image = "http://www.roblox.com/asset/?id=8506959725"
Tabs.ImageColor3 = Color3.fromRGB(0, 82, 124)

UIStroke_2.Parent = Tabs
UIStroke_2.Color = Color3.fromRGB(255,255,255)
UIStroke_2.LineJoinMode = Enum.LineJoinMode.Round
UIStroke_2.Thickness = 0.77
UIStroke_2.Transparency = 0.8

UICorner_2.CornerRadius = UDim.new(0, 6)
UICorner_2.Parent = Tabs

UIListLayout.Parent = Tabs
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0, 9)
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

UIPadding.Parent = Tabs
UIPadding.PaddingLeft = UDim.new(0, 8)
UIPadding.PaddingRight = UDim.new(0, 10)

Titlestuff.Name = "Title stuff"
Titlestuff.Parent = Holder
Titlestuff.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Titlestuff.BackgroundTransparency = 1.000
Titlestuff.ClipsDescendants = true
Titlestuff.Position = UDim2.new(0.0240000002, 0, 0.0329999812, 0)
Titlestuff.Size = UDim2.new(0, 150, 0, 28)
Titlestuff.AutomaticSize = Enum.AutomaticSize.X
Titlestuff.MouseEnter:Connect(function()
Title:TweenPosition(UDim2.new(Title.Position.X.Scale, Title.Position.X.Offset, Title.Position.Y.Scale, 25), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.34, true)
wait(0.2)
Title.Text = name
wait()
Title:TweenPosition(UDim2.new(Title.Position.X.Scale, Title.Position.X.Offset, Title.Position.Y.Scale, -25), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0, true)
wait(0.22)
Title:TweenPosition(UDim2.new(Title.Position.X.Scale, Title.Position.X.Offset, Title.Position.Y.Scale, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.34)
end)

Titlestuff.MouseLeave:Connect(function()
Title:TweenPosition(UDim2.new(Title.Position.X.Scale, Title.Position.X.Offset, Title.Position.Y.Scale, 25), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.34, true)
wait(0.2)
Title.Text = 'Whisper'
wait()
Title:TweenPosition(UDim2.new(Title.Position.X.Scale, Title.Position.X.Offset, Title.Position.Y.Scale, -25), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0, true)
wait(0.22)
Title:TweenPosition(UDim2.new(Title.Position.X.Scale, Title.Position.X.Offset, Title.Position.Y.Scale, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.34)
end)

Title.Name = "Title"
Title.Parent = Titlestuff
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.0327650718, 0, 0.0466668271, 0)
Title.Size = UDim2.new(0, 150, 0, 28)
Title.Font = Enum.Font.GothamBold
Title.Text = "Whisper"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16.000
Title.TextXAlignment = Enum.TextXAlignment.Left
Titlestuff.AutomaticSize = Enum.AutomaticSize.X

Close.Name = "Close"
Close.Parent = Holder
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(0.927999973, 0, 0.0466666669, 0)
Close.Size = UDim2.new(0, 22, 0, 22)
Close.ZIndex = 2
Close.AutoButtonColor = false
Close.Image = "rbxassetid://7072725342"
Close.ImageColor3 = Color3.fromRGB(166, 166, 166)
Close.MouseEnter:Connect(function()
boom:Create(Close, TweenInfo.new(0.34), {ImageColor3 = Color3.fromRGB(255,255,255)}):Play()
thing:TweenSize(UDim2.new(0, 24, 0, 24), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.34, true)
end)

Close.MouseLeave:Connect(function()
boom:Create(Close, TweenInfo.new(0.34), {ImageColor3 = Color3.fromRGB(166, 166, 166)}):Play()
thing:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.34, true)
end)

Close.MouseButton1Click:Connect(function()
Holder:TweenPosition(UDim2.new(Holder.Position.X.Scale, Holder.Position.X.Offset , 1.5, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 1)
task.wait(1)
Whisper:Remove()
end)

thing.Name = "thing"
thing.Parent = Close
thing.AnchorPoint = Vector2.new(0.5, 0.5)
thing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
thing.BorderSizePixel = 0
thing.Position = UDim2.new(0.5, 0, 0.5, 0)

UICorner_3.CornerRadius = UDim.new(0, 100)
UICorner_3.Parent = thing

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(40, 40, 40)), ColorSequenceKeypoint.new(0.42, Color3.fromRGB(35, 41, 45)), ColorSequenceKeypoint.new(0.91, Color3.fromRGB(15, 51, 70)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 59, 89))}
UIGradient.Rotation = 60
UIGradient.Parent = thing

Pages.Name = "Pages"
Pages.Parent = Holder
Pages.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pages.BackgroundTransparency = 1.000
Pages.Position = UDim2.new(0.0140000004, 0, 0.129999995, 0)
Pages.Size = UDim2.new(0, 486, 0, 204)

local MainLibrary = {}

function MainLibrary.Page(name, image)
local Button = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local UIStroke_3 = Instance.new("UIStroke")
local Page = Instance.new("ScrollingFrame")
local PageLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")

Page.Name = name
Page.Parent = Pages
Page.Active = true
Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Page.BackgroundTransparency = 1.000
Page.Size = UDim2.new(0, 488, 0, 204)
Page.Visible = false
Page.BorderSizePixel = 0
Page.CanvasSize = UDim2.new(0,0,0,0)
Page.ScrollBarThickness = 2
Page.ScrollBarImageColor3 = Color3.fromRGB(82, 173, 226)

Button.Name = name
Button.Parent = Tabs
Button.AnchorPoint = Vector2.new(0.5, 0.5)
Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Button.BackgroundTransparency = 1
Button.BorderColor3 = Color3.fromRGB(40, 40, 40)
Button.Position = UDim2.new(0, 0, 0, 0)
Button.Size = UDim2.new(0, 30, 0, 30)
Button.AutoButtonColor = false
Button.Font = Enum.Font.SourceSans
Button.Text = ""
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.TextSize = 14.000

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Button

UIStroke_3.Parent = Button
UIStroke_3.Color = Color3.fromRGB(255,255,255)
UIStroke_3.LineJoinMode = Enum.LineJoinMode.Round
UIStroke_3.Thickness = 0.77
UIStroke_3.Transparency = 0.8
UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border 

ImageLabel.Parent = Button
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.BackgroundColor3 = Color3.fromRGB(150,150,150)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(0, 22, 0, 22)
ImageLabel.ImageColor3 = Color3.fromRGB(150,150,150)
ImageLabel.Image = image

PageLayout.Parent = Page
PageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
PageLayout.Padding = UDim.new(0, 8)
Page.CanvasSize = UDim2.new(0, 0, 0.1, PageLayout.AbsoluteContentSize.Y)

UIPadding.Parent = Page
UIPadding.PaddingBottom = UDim.new(0, 8)
UIPadding.PaddingTop = UDim.new(0, 8)

Button.MouseButton1Click:Connect(function()
for _,v in next, Pages:GetChildren() do
if v:IsA('ScrollingFrame') then
v.Visible = false
end
end
for _,g in next, Tabs:GetChildren() do
if g:IsA('TextButton') then
boom:Create(g.ImageLabel, TweenInfo.new(0.34), {ImageColor3 = Color3.fromRGB(150, 150, 150)}):Play()
boom:Create(g.UIStroke, TweenInfo.new(0.34), {Transparency = 0.8}):Play()
end
end
boom:Create(ImageLabel, TweenInfo.new(0.34), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
boom:Create(UIStroke_3, TweenInfo.new(0.34), {Transparency = 0.4}):Play()
Page.Visible = true
end)

function MainLibrary.Button(text, callback)

local callback = callback or function() end

local Button = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UIStroke_4 = Instance.new("UIStroke")

Button.Name = "Button"
Button.Parent = Page
Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Button.Size = UDim2.new(0, 480, 0, 40)
Button.AutoButtonColor = false
Button.Text = ''

UIStroke_4.Parent = Button
UIStroke_4.Color = Color3.fromRGB(255,255,255)
UIStroke_4.LineJoinMode = Enum.LineJoinMode.Round
UIStroke_4.Thickness = 0.77
UIStroke_4.Transparency = 0.8
UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border 

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Button

TextLabel.Parent = Button
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.322916657, 0, 0.275000006, 0)
TextLabel.Size = UDim2.new(0, 169, 0, 17)
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.Text = text
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 15.000
Page.CanvasSize = UDim2.new(0, 0, 0.1, PageLayout.AbsoluteContentSize.Y)
Button.MouseButton1Click:Connect(function()
pcall(callback)
end)

Button.MouseEnter:Connect(function()
boom:Create(Button, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(50,50,50)}, true):Play()
end)

Button.MouseLeave:Connect(function()
boom:Create(Button, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(40,40,40)}, true):Play()
end)

Button.MouseButton1Down:Connect(function()
boom:Create(Button, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(12, 120, 159)}, false):Play()
end)

Button.MouseButton1Up:Connect(function()
boom:Create(Button, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(50,50,50)}, false):Play()
end)

end

function MainLibrary.Toggle(text, callback)
local Toggle = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local ToggleContainer = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UIStroke_5 = Instance.new("UIStroke")
local UIStroke_6 = Instance.new("UIStroke")

Toggle.Name = "Toggle"
Toggle.Parent = Page
Toggle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Toggle.Size = UDim2.new(0, 480, 0, 40)
Toggle.AutoButtonColor = false
Toggle.Font = Enum.Font.GothamSemibold
Toggle.Text = ""
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle.TextSize = 14.000

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Toggle

ToggleContainer.Name = "ToggleContainer"
ToggleContainer.Parent = Toggle
ToggleContainer.BackgroundColor3 = Color3.fromRGB(12, 120, 159)
ToggleContainer.BackgroundTransparency = 1.000
ToggleContainer.Position = UDim2.new(0.876999974, 0, 0.200000003, 0)
ToggleContainer.Size = UDim2.new(0, 50, 0, 24)

UIStroke_6.Parent = ToggleContainer
UIStroke_6.Color = Color3.fromRGB(255,255,255)
UIStroke_6.LineJoinMode = Enum.LineJoinMode.Round
UIStroke_6.Thickness = 0.77
UIStroke_6.Transparency = 0.8
UIStroke_6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border 

UIStroke_5.Parent = Toggle
UIStroke_5.Color = Color3.fromRGB(255,255,255)
UIStroke_5.LineJoinMode = Enum.LineJoinMode.Round
UIStroke_5.Thickness = 0.77
UIStroke_5.Transparency = 0.8
UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border 

UICorner_2.CornerRadius = UDim.new(0, 100)
UICorner_2.Parent = ToggleContainer

TextButton.Parent = ToggleContainer
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0.11, 0, 0.210, 0)
TextButton.Size = UDim2.new(0, 13, 0, 13)
TextButton.AutoButtonColor = false
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

UICorner_3.CornerRadius = UDim.new(0, 100)
UICorner_3.Parent = TextButton

TextLabel.Parent = Toggle
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0270833336, 0, 0.275000006, 0)
TextLabel.Size = UDim2.new(0, 142, 0, 17)
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.Text = "Toggle"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

local toggled = false

local callback = callback or function() end

Toggle.MouseButton1Click:Connect(function()

if toggled == false then
boom:Create(TextButton, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0.62, 0, TextButton.Position.Y.Scale, 0)}):Play()
boom:Create(ToggleContainer, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundTransparency = 0.5}):Play()
else
boom:Create(TextButton, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0.11, 0, TextButton.Position.Y.Scale, 0)}):Play()
boom:Create(ToggleContainer, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
end
toggled = not toggled
pcall(callback, toggled)
end)

Toggle.MouseEnter:Connect(function()
boom:Create(Toggle, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(50,50,50)}, true):Play()
end)

Toggle.MouseLeave:Connect(function()
boom:Create(Toggle, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(40,40,40)}, true):Play()
end)

Page.CanvasSize = UDim2.new(0, 0, 0.1, PageLayout.AbsoluteContentSize.Y)
end

function MainLibrary.Slider(text, min, max, callback)
callback = callback or function() end

local SliderFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Slider = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local SliderInner = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Text = Instance.new("TextLabel")
local Amount = Instance.new("TextLabel")
local UIStroke_7 = Instance.new("UIStroke")
local UIStroke_8 = Instance.new("UIStroke")

SliderFrame.Name = "SliderFrame"
SliderFrame.Parent = Page
SliderFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SliderFrame.Position = UDim2.new(0.00617283955, 0, 0.510638297, 0)
SliderFrame.Size = UDim2.new(0, 480, 0, 40)

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = SliderFrame

Slider.Name = "Slider"
Slider.Parent = SliderFrame
Slider.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Slider.Position = UDim2.new(0.00799992867, 0, 0.617777526, 0)
Slider.Size = UDim2.new(0, 472, 0, 10)
Slider.BorderSizePixel = 0
Slider.AutoButtonColor = false
Slider.Text = ''
Slider.ZIndex = 2

UIStroke_7.Parent = SliderFrame
UIStroke_7.Color = Color3.fromRGB(255,255,255)
UIStroke_7.LineJoinMode = Enum.LineJoinMode.Round
UIStroke_7.Thickness = 0.77
UIStroke_7.Transparency = 0.8
UIStroke_7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border 

UIStroke_8.Parent = Slider
UIStroke_8.Color = Color3.fromRGB(255,255,255)
UIStroke_8.LineJoinMode = Enum.LineJoinMode.Round
UIStroke_8.Thickness = 0.77
UIStroke_8.Transparency = 0.8
UIStroke_8.ApplyStrokeMode = Enum.ApplyStrokeMode.Border 

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = Slider

SliderInner.Name = "SliderInner"
SliderInner.AutoButtonColor = false
SliderInner.Parent = Slider
SliderInner.BackgroundColor3 = Color3.fromRGB(1, 136, 166)
SliderInner.BackgroundTransparency = 0.200
SliderInner.BorderSizePixel = 0
SliderInner.Size = UDim2.new(0, 0, 0, 10)
SliderInner.Text = ''
SliderInner.ZIndex = 3

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = SliderInner

Text.Name = "Text"
Text.Parent = SliderFrame
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.Position = UDim2.new(0.0120000001, 0, 0.218999997, 0)
Text.Size = UDim2.new(0, 159, 0, 8)
Text.Font = Enum.Font.GothamSemibold
Text.Text = text
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 14.000
Text.TextXAlignment = Enum.TextXAlignment.Left

Amount.Name = "Amount"
Amount.Parent = SliderFrame
Amount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Amount.BackgroundTransparency = 1.000
Amount.Position = UDim2.new(0.93, 0, 0.115999997, 0)
Amount.Size = UDim2.new(0, 26, 0, 16)
Amount.Font = Enum.Font.GothamSemibold
Amount.Text = tostring(min)
Amount.TextColor3 = Color3.fromRGB(255, 255, 255)
Amount.TextSize = 12.000
Amount.TextXAlignment = Enum.TextXAlignment.Right
local uis = game:GetService("UserInputService")
local dragging1 = false

SliderFrame.MouseEnter:Connect(function()
boom:Create(SliderFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(50,50,50)}, true):Play()
end)

SliderFrame.MouseLeave:Connect(function()
boom:Create(SliderFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(40,40,40)}, true):Play()
end)

local function slide(input)
local pos =
UDim2.new(
math.clamp((input.Position.X - Slider.AbsolutePosition.X) / Slider.AbsoluteSize.X, 0, 1),0,0,10)
SliderInner:TweenSize(pos, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
local s = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
Amount.Text = tostring(s)
callback(s)
end

Slider.InputBegan:Connect(function(input) 
if input.UserInputType == Enum.UserInputType.MouseButton1 then
slide(input)
dragging1 = true
end
end) 

SliderInner.InputBegan:Connect(function(input) 
if input.UserInputType == Enum.UserInputType.MouseButton1 then
slide(input)
dragging1 = true
end
end) 

Slider.InputEnded:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
dragging1 = false
end
end)

SliderInner.InputEnded:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
dragging1 = false
end
end)

uis.InputChanged:Connect(function(input)
if dragging1 and input.UserInputType == Enum.UserInputType.MouseMovement then
slide(input)
end
end)
Page.CanvasSize = UDim2.new(0, 0, 0.1, PageLayout.AbsoluteContentSize.Y)
end
end
return MainLibrary
end
return Library
