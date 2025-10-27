local Library = {}
Library.__index = Library

function Library:Create(config)
    config = config or {}
    
    local self = setmetatable({}, Library)
    
    -- Services
    local TweenService = game:GetService("TweenService")
    local UserInputService = game:GetService("UserInputService")
    
    -- Create ScreenGui
    local ManagerPlus = Instance.new("ScreenGui")
    local Canvas = Instance.new("Frame")
    local main = Instance.new("Frame")
    local UIStroke = Instance.new("UIStroke")
    local Top = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Description = Instance.new("TextLabel")
    local Menu = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local UIGradient = Instance.new("UIGradient")
    local ImageButton = Instance.new("ImageButton")
    local UICorner_3 = Instance.new("UICorner")
    local UICorner_4 = Instance.new("UICorner")
    local Tab = Instance.new("Frame")
    local EntityManager = Instance.new("ScrollingFrame")
    local UIListLayout_3 = Instance.new("UIListLayout")
    local Frame_2 = Instance.new("Frame")
    local UICorner_5 = Instance.new("UICorner")
    local TextButton = Instance.new("TextButton")
    local UIPadding = Instance.new("UIPadding")
    local Frame_3 = Instance.new("Frame")
    local UICorner_6 = Instance.new("UICorner")
    local ImageButton_4 = Instance.new("ImageButton")
    local UIGradient_2 = Instance.new("UIGradient")
    local ImageButton_5 = Instance.new("ImageButton")
    local TextButton_2 = Instance.new("TextButton")
    local UIPadding_2 = Instance.new("UIPadding")
    local UIPadding_3 = Instance.new("UIPadding")
    local PowerManager = Instance.new("ScrollingFrame")
    local UIListLayout_4 = Instance.new("UIListLayout")
    local Frame_4 = Instance.new("Frame")
    local UICorner_7 = Instance.new("UICorner")
    local TextButton_3 = Instance.new("TextButton")
    local UIPadding_4 = Instance.new("UIPadding")
    local Frame_5 = Instance.new("Frame")
    local UICorner_8 = Instance.new("UICorner")
    local ImageButton_6 = Instance.new("ImageButton")
    local UIGradient_3 = Instance.new("UIGradient")
    local ImageButton_7 = Instance.new("ImageButton")
    local TextButton_4 = Instance.new("TextButton")
    local UIPadding_5 = Instance.new("UIPadding")
    local OpenMenu = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local OpenMenuStroke = Instance.new("UIStroke")
    local UIListLayout_2 = Instance.new("UIListLayout")
    local Entity = Instance.new("Frame")
    local ImageButton_2 = Instance.new("ImageButton")
    local Power = Instance.new("Frame")
    local ImageButton_3 = Instance.new("ImageButton")
    
    -- Properties
    ManagerPlus.Name = config.Name or "ManagerPlus+"
    ManagerPlus.Parent = game:GetService("CoreGui")
    ManagerPlus.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ManagerPlus.DisplayOrder = 9999
    
    Canvas.Name = "Canvas"
    Canvas.Parent = ManagerPlus
    Canvas.AnchorPoint = Vector2.new(0.5, 0.5)
    Canvas.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Canvas.BackgroundTransparency = 1.000
    Canvas.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Canvas.BorderSizePixel = 0
    Canvas.Position = UDim2.new(0.5, 0, 0.5, 0)
    Canvas.Size = UDim2.new(1, 0, 1, 0)
    
    main.Name = "main"
    main.Parent = Canvas
    main.AnchorPoint = Vector2.new(0.5, 0.5)
    main.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    main.BorderColor3 = Color3.fromRGB(0, 0, 0)
    main.BorderSizePixel = 0
    main.Position = UDim2.new(0.5, 0, 0.5, 0)
    main.Size = UDim2.new(0, 550, 0, 350)
    main.ClipsDescendants = false
    
    UIStroke.Parent = main
    UIStroke.Color = Color3.fromRGB(45, 45, 45)
    UIStroke.Thickness = 1.5
    UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    
    UICorner_4.CornerRadius = UDim.new(0, 8)
    UICorner_4.Parent = main
    
    Top.Name = "Top"
    Top.Parent = main
    Top.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
    Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Top.BorderSizePixel = 0
    Top.Position = UDim2.new(0, 0, 0, 0)
    Top.Size = UDim2.new(1, 0, 0, 50)
    
    UICorner_3.CornerRadius = UDim.new(0, 8)
    UICorner_3.Parent = Top
    
    Title.Name = "Title"
    Title.Parent = Top
    Title.AnchorPoint = Vector2.new(0, 0.5)
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0, 12, 0, 15)
    Title.Size = UDim2.new(0.65, 0, 0, 18)
    Title.Font = Enum.Font.GothamBold
    Title.Text = config.Title or "Entity Manager [ Premium ]"
    Title.TextColor3 = Color3.fromRGB(230, 230, 230)
    Title.TextSize = 16
    Title.TextWrapped = false
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.TextYAlignment = Enum.TextYAlignment.Center
    
    Description.Name = "Description"
    Description.Parent = Top
    Description.AnchorPoint = Vector2.new(0, 0.5)
    Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Description.BackgroundTransparency = 1.000
    Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Description.BorderSizePixel = 0
    Description.Position = UDim2.new(0, 12, 0, 35)
    Description.Size = UDim2.new(0.65, 0, 0, 14)
    Description.Font = Enum.Font.Gotham
    Description.Text = config.Description or "Made By Shino services."
    Description.TextColor3 = Color3.fromRGB(177, 177, 177)
    Description.TextSize = 12
    Description.TextWrapped = false
    Description.TextXAlignment = Enum.TextXAlignment.Left
    Description.TextYAlignment = Enum.TextYAlignment.Center
    
    Menu.Name = "Menu"
    Menu.Parent = Top
    Menu.AnchorPoint = Vector2.new(1, 0.5)
    Menu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Menu.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Menu.BorderSizePixel = 0
    Menu.Position = UDim2.new(1, -8, 0.5, 0)
    Menu.Size = UDim2.new(0, 35, 0, 35)
    
    UICorner.CornerRadius = UDim.new(0, 6)
    UICorner.Parent = Menu
    
    UIGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(24, 24, 24)), 
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(45, 45, 45))
    }
    UIGradient.Rotation = -33
    UIGradient.Parent = Menu
    
    ImageButton.Parent = Menu
    ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton.BackgroundTransparency = 1.000
    ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderSizePixel = 0
    ImageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
    ImageButton.Size = UDim2.new(0.7, 0, 0.7, 0)
    ImageButton.Image = "rbxassetid://13851089579"
    ImageButton.ImageColor3 = Color3.fromRGB(186, 186, 186)
    
    OpenMenu.Name = "Open-Menu"
    OpenMenu.Parent = Canvas
    OpenMenu.AnchorPoint = Vector2.new(0, 0)
    OpenMenu.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
    OpenMenu.BorderColor3 = Color3.fromRGB(0, 0, 0)
    OpenMenu.BorderSizePixel = 0
    OpenMenu.Position = UDim2.new(0.5, 550/2 + 8, 0.5, -350/2 + 8)
    OpenMenu.Size = UDim2.new(0, 0, 0, 75)
    OpenMenu.Visible = false
    OpenMenu.ClipsDescendants = true
    OpenMenu.ZIndex = 10000
    
    OpenMenuStroke.Parent = OpenMenu
    OpenMenuStroke.Color = Color3.fromRGB(45, 45, 45)
    OpenMenuStroke.Thickness = 1.5
    
    UICorner_2.CornerRadius = UDim.new(0, 6)
    UICorner_2.Parent = OpenMenu
    
    UIListLayout_2.Parent = OpenMenu
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.Padding = UDim.new(0, 2)
    UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    
    Entity.Name = "Entity"
    Entity.Parent = OpenMenu
    Entity.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Entity.BackgroundTransparency = 1.000
    Entity.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Entity.BorderSizePixel = 0
    Entity.Size = UDim2.new(1, 0, 0, 35)
    
    ImageButton_2.Parent = Entity
    ImageButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageButton_2.BackgroundColor3 = Color3.fromRGB(169, 169, 169)
    ImageButton_2.BackgroundTransparency = 1.000
    ImageButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton_2.BorderSizePixel = 0
    ImageButton_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    ImageButton_2.Size = UDim2.new(0.6, 0, 0.6, 0)
    ImageButton_2.Image = "rbxassetid://13846536185"
    ImageButton_2.ImageColor3 = Color3.fromRGB(186, 186, 186)
    
    Power.Name = "Power"
    Power.Parent = OpenMenu
    Power.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Power.BackgroundTransparency = 1.000
    Power.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Power.BorderSizePixel = 0
    Power.Size = UDim2.new(1, 0, 0, 35)
    
    ImageButton_3.Parent = Power
    ImageButton_3.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton_3.BackgroundTransparency = 1.000
    ImageButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton_3.BorderSizePixel = 0
    ImageButton_3.Position = UDim2.new(0.5, 0, 0.5, 0)
    ImageButton_3.Size = UDim2.new(0.6, 0, 0.6, 0)
    ImageButton_3.Image = "rbxassetid://14931189821"
    ImageButton_3.ImageColor3 = Color3.fromRGB(186, 186, 186)
    
    Tab.Name = "Tab"
    Tab.Parent = main
    Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tab.BackgroundTransparency = 1.000
    Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Tab.BorderSizePixel = 0
    Tab.Position = UDim2.new(0, 0, 0, 50)
    Tab.Size = UDim2.new(1, 0, 1, -50)
    Tab.ClipsDescendants = true
    
    EntityManager.Name = "Entity Manager"
    EntityManager.Parent = Tab
    EntityManager.Active = true
    EntityManager.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    EntityManager.BackgroundTransparency = 1.000
    EntityManager.BorderColor3 = Color3.fromRGB(0, 0, 0)
    EntityManager.BorderSizePixel = 0
    EntityManager.Position = UDim2.new(0, 0, 0, 0)
    EntityManager.Size = UDim2.new(1, 0, 1, 0)
    EntityManager.Visible = true
    EntityManager.ScrollBarThickness = 4
    EntityManager.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 60)
    
    UIListLayout_3.Parent = EntityManager
    UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_3.Padding = UDim.new(0, 8)
    
    Frame_2.Parent = EntityManager
    Frame_2.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_2.BorderSizePixel = 0
    Frame_2.Size = UDim2.new(1, -4, 0, 60)
    
    local Frame2Stroke = Instance.new("UIStroke")
    Frame2Stroke.Parent = Frame_2
    Frame2Stroke.Color = Color3.fromRGB(50, 50, 50)
    Frame2Stroke.Thickness = 1
    
    UICorner_5.CornerRadius = UDim.new(0, 6)
    UICorner_5.Parent = Frame_2
    
    TextButton.Parent = Frame_2
    TextButton.AnchorPoint = Vector2.new(0, 0.5)
    TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.BackgroundTransparency = 1.000
    TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.BorderSizePixel = 0
    TextButton.Position = UDim2.new(0, 0, 0.35, 0)
    TextButton.Size = UDim2.new(0.75, 0, 0, 18)
    TextButton.Font = Enum.Font.GothamBold
    TextButton.Text = "Entity name"
    TextButton.TextColor3 = Color3.fromRGB(226, 226, 226)
    TextButton.TextSize = 15
    TextButton.TextWrapped = false
    TextButton.TextXAlignment = Enum.TextXAlignment.Left
    
    UIPadding.Parent = TextButton
    UIPadding.PaddingLeft = UDim.new(0, 12)
    
    Frame_3.Parent = Frame_2
    Frame_3.AnchorPoint = Vector2.new(1, 0.5)
    Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_3.BorderSizePixel = 0
    Frame_3.Position = UDim2.new(0.98, 0, 0.5, 0)
    Frame_3.Size = UDim2.new(0, 50, 0, 50)
    
    UICorner_6.CornerRadius = UDim.new(0, 6)
    UICorner_6.Parent = Frame_3
    
    ImageButton_4.Parent = Frame_3
    ImageButton_4.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton_4.BackgroundTransparency = 1.000
    ImageButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton_4.BorderSizePixel = 0
    ImageButton_4.Position = UDim2.new(0.5, 0, 0.3, 0)
    ImageButton_4.Size = UDim2.new(0.5, 0, 0.5, 0)
    ImageButton_4.Image = "rbxassetid://13858693179"
    ImageButton_4.ImageColor3 = Color3.fromRGB(186, 186, 186)
    
    UIGradient_2.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(24, 24, 24)), 
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(45, 45, 45))
    }
    UIGradient_2.Rotation = -33
    UIGradient_2.Parent = Frame_3
    
    ImageButton_5.Parent = Frame_3
    ImageButton_5.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton_5.BackgroundTransparency = 1.000
    ImageButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton_5.BorderSizePixel = 0
    ImageButton_5.Position = UDim2.new(0.5, 0, 0.7, 0)
    ImageButton_5.Size = UDim2.new(0.5, 0, 0.5, 0)
    ImageButton_5.Image = "rbxassetid://13858682222"
    ImageButton_5.ImageColor3 = Color3.fromRGB(186, 186, 186)
    
    TextButton_2.Parent = Frame_2
    TextButton_2.AnchorPoint = Vector2.new(0, 0.5)
    TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton_2.BackgroundTransparency = 1.000
    TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_2.BorderSizePixel = 0
    TextButton_2.Position = UDim2.new(0, 0, 0.65, 0)
    TextButton_2.Size = UDim2.new(0.75, 0, 0, 14)
    TextButton_2.Font = Enum.Font.Gotham
    TextButton_2.Text = "Found : Null"
    TextButton_2.TextColor3 = Color3.fromRGB(177, 177, 177)
    TextButton_2.TextSize = 12
    TextButton_2.TextWrapped = false
    TextButton_2.TextXAlignment = Enum.TextXAlignment.Left
    
    UIPadding_2.Parent = TextButton_2
    UIPadding_2.PaddingLeft = UDim.new(0, 12)
    
    UIPadding_3.Parent = EntityManager
    UIPadding_3.PaddingLeft = UDim.new(0, 2)
    UIPadding_3.PaddingRight = UDim.new(0, 2)
    UIPadding_3.PaddingTop = UDim.new(0, 10)
    UIPadding_3.PaddingBottom = UDim.new(0, 2)
    
    PowerManager.Name = "Power Manager"
    PowerManager.Parent = Tab
    PowerManager.Active = true
    PowerManager.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    PowerManager.BackgroundTransparency = 1.000
    PowerManager.BorderColor3 = Color3.fromRGB(0, 0, 0)
    PowerManager.BorderSizePixel = 0
    PowerManager.Position = UDim2.new(0, 0, 0, 0)
    PowerManager.Size = UDim2.new(1, 0, 1, 0)
    PowerManager.Visible = false
    PowerManager.ScrollBarThickness = 4
    PowerManager.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 60)
    
    UIListLayout_4.Parent = PowerManager
    UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_4.Padding = UDim.new(0, 8)
    
    Frame_4.Parent = PowerManager
    Frame_4.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    Frame_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_4.BorderSizePixel = 0
    Frame_4.Size = UDim2.new(1, -4, 0, 60)
    
    local Frame4Stroke = Instance.new("UIStroke")
    Frame4Stroke.Parent = Frame_4
    Frame4Stroke.Color = Color3.fromRGB(50, 50, 50)
    Frame4Stroke.Thickness = 1
    
    UICorner_7.CornerRadius = UDim.new(0, 6)
    UICorner_7.Parent = Frame_4
    
    TextButton_3.Parent = Frame_4
    TextButton_3.AnchorPoint = Vector2.new(0, 0.5)
    TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton_3.BackgroundTransparency = 1.000
    TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_3.BorderSizePixel = 0
    TextButton_3.Position = UDim2.new(0, 0, 0.35, 0)
    TextButton_3.Size = UDim2.new(0.75, 0, 0, 18)
    TextButton_3.Font = Enum.Font.GothamBold
    TextButton_3.Text = "Boost Speed [ + ]"
    TextButton_3.TextColor3 = Color3.fromRGB(226, 226, 226)
    TextButton_3.TextSize = 15
    TextButton_3.TextWrapped = false
    TextButton_3.TextXAlignment = Enum.TextXAlignment.Left
    
    UIPadding_4.Parent = TextButton_3
    UIPadding_4.PaddingLeft = UDim.new(0, 12)
    
    Frame_5.Parent = Frame_4
    Frame_5.AnchorPoint = Vector2.new(1, 0.5)
    Frame_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_5.BorderSizePixel = 0
    Frame_5.Position = UDim2.new(0.98, 0, 0.5, 0)
    Frame_5.Size = UDim2.new(0, 50, 0, 50)
    
    UICorner_8.CornerRadius = UDim.new(0, 6)
    UICorner_8.Parent = Frame_5
    
    ImageButton_6.Parent = Frame_5
    ImageButton_6.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageButton_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton_6.BackgroundTransparency = 1.000
    ImageButton_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton_6.BorderSizePixel = 0
    ImageButton_6.Position = UDim2.new(0.5, 0, 0.3, 0)
    ImageButton_6.Size = UDim2.new(0.5, 0, 0.5, 0)
    ImageButton_6.Image = "rbxassetid://13858693179"
    ImageButton_6.ImageColor3 = Color3.fromRGB(186, 186, 186)
    
    UIGradient_3.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(24, 24, 24)), 
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(45, 45, 45))
    }
    UIGradient_3.Rotation = -33
    UIGradient_3.Parent = Frame_5
    
    ImageButton_7.Parent = Frame_5
    ImageButton_7.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageButton_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton_7.BackgroundTransparency = 1.000
    ImageButton_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton_7.BorderSizePixel = 0
    ImageButton_7.Position = UDim2.new(0.5, 0, 0.7, 0)
    ImageButton_7.Size = UDim2.new(0.5, 0, 0.5, 0)
    ImageButton_7.Image = "rbxassetid://13858682222"
    ImageButton_7.ImageColor3 = Color3.fromRGB(186, 186, 186)
    
    TextButton_4.Parent = Frame_4
    TextButton_4.AnchorPoint = Vector2.new(0, 0.5)
    TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton_4.BackgroundTransparency = 1.000
    TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_4.BorderSizePixel = 0
    TextButton_4.Position = UDim2.new(0, 0, 0.65, 0)
    TextButton_4.Size = UDim2.new(0.75, 0, 0, 14)
    TextButton_4.Font = Enum.Font.Gotham
    TextButton_4.Text = "Found : Null"
    TextButton_4.TextColor3 = Color3.fromRGB(177, 177, 177)
    TextButton_4.TextSize = 12
    TextButton_4.TextWrapped = false
    TextButton_4.TextXAlignment = Enum.TextXAlignment.Left
    
    UIPadding_5.Parent = TextButton_4
    UIPadding_5.PaddingLeft = UDim.new(0, 12)
    
    local UIPadding_Power = Instance.new("UIPadding")
    UIPadding_Power.Parent = PowerManager
    UIPadding_Power.PaddingLeft = UDim.new(0, 2)
    UIPadding_Power.PaddingRight = UDim.new(0, 2)
    UIPadding_Power.PaddingTop = UDim.new(0, 10)
    UIPadding_Power.PaddingBottom = UDim.new(0, 2)
    
    -- Variables
    local dragging = false
    local dragInput
    local dragStart
    local startPos
    local currentTab = "Entity"
    local isMenuOpen = false
    
    -- ===== ลบ Toggle Button ออกแล้ว =====
    
    local function updateMenuPosition()
        local mainPos = main.AbsolutePosition
        local mainSize = main.AbsoluteSize
        OpenMenu.Position = UDim2.new(0, mainPos.X + mainSize.X + 8, 0, mainPos.Y + 8)
    end
    
    local function update(input)
        local delta = input.Position - dragStart
        main.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
        if isMenuOpen then
            updateMenuPosition()
        end
    end
    
    Top.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = main.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    Top.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
    
    local function toggleMenu()
        isMenuOpen = not isMenuOpen
        local rotationTween = TweenService:Create(ImageButton, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
            Rotation = isMenuOpen and 90 or 0
        })
        if isMenuOpen then
            updateMenuPosition()
            OpenMenu.Visible = true
            OpenMenu.Size = UDim2.new(0, 0, 0, 75)
            OpenMenuStroke.Transparency = 1
            local menuTween = TweenService:Create(OpenMenu, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                Size = UDim2.new(0, 35, 0, 75)
            })
            local strokeTween = TweenService:Create(OpenMenuStroke, TweenInfo.new(0.3), {
                Transparency = 0
            })
            menuTween:Play()
            strokeTween:Play()
            for i, button in pairs({Entity, Power}) do
                local img = button:FindFirstChildOfClass("ImageButton")
                if img then
                    img.ImageTransparency = 1
                end
                wait(0.05)
                if img then
                    TweenService:Create(img, TweenInfo.new(0.2), {ImageTransparency = 0}):Play()
                end
            end
        else
            local strokeTween = TweenService:Create(OpenMenuStroke, TweenInfo.new(0.2), {
                Transparency = 1
            })
            local menuTween = TweenService:Create(OpenMenu, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
                Size = UDim2.new(0, 0, 0, 75)
            })
            strokeTween:Play()
            menuTween:Play()
            menuTween.Completed:Wait()
            OpenMenu.Visible = false
        end
        rotationTween:Play()
    end
    
    ImageButton.MouseButton1Click:Connect(toggleMenu)
    
    local function switchTab(tabName)
        if currentTab == tabName then return end
        local oldTab = currentTab == "Entity" and EntityManager or PowerManager
        local newTab = tabName == "Entity" and EntityManager or PowerManager
        local slideOutTween = TweenService:Create(oldTab, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
            Position = UDim2.new(-1, 0, 0, 0)
        })
        slideOutTween:Play()
        slideOutTween.Completed:Wait()
        oldTab.Visible = false
        oldTab.Position = UDim2.new(0, 0, 0, 0)
        newTab.Visible = true
        newTab.Position = UDim2.new(1, 0, 0, 0)
        local slideInTween = TweenService:Create(newTab, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Position = UDim2.new(0, 0, 0, 0)
        })
        slideInTween:Play()
        local titleFadeOut = TweenService:Create(Title, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
            TextTransparency = 1
        })
        titleFadeOut:Play()
        titleFadeOut.Completed:Wait()
        Title.Text = tabName == "Entity" and "Entity Manager [ Premium ]" or "Power Manager [ Premium ]"
        local titleFadeIn = TweenService:Create(Title, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            TextTransparency = 0
        })
        titleFadeIn:Play()
        local oldButton = currentTab == "Entity" and ImageButton_2 or ImageButton_3
        local newButton = tabName == "Entity" and ImageButton_2 or ImageButton_3
        TweenService:Create(oldButton, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(186, 186, 186)}):Play()
        TweenService:Create(newButton, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(100, 200, 255)}):Play()
        currentTab = tabName
    end
    
    ImageButton_2.MouseButton1Click:Connect(function()
        switchTab("Entity")
        local scaleTween = TweenService:Create(ImageButton_2, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = UDim2.new(0.7, 0, 0.7, 0)
        })
        scaleTween:Play()
        scaleTween.Completed:Wait()
        TweenService:Create(ImageButton_2, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = UDim2.new(0.6, 0, 0.6, 0)
        }):Play()
    end)
    
    ImageButton_3.MouseButton1Click:Connect(function()
        switchTab("Power")
        local scaleTween = TweenService:Create(ImageButton_3, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = UDim2.new(0.7, 0, 0.7, 0)
        })
        scaleTween:Play()
        scaleTween.Completed:Wait()
        TweenService:Create(ImageButton_3, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = UDim2.new(0.6, 0, 0.6, 0)
        }):Play()
    end)
    
    ImageButton.MouseEnter:Connect(function()
        TweenService:Create(ImageButton, TweenInfo.new(0.2), {
            ImageColor3 = Color3.fromRGB(100, 200, 255),
            Size = UDim2.new(0.8, 0, 0.8, 0)
        }):Play()
    end)
    
    ImageButton.MouseLeave:Connect(function()
        TweenService:Create(ImageButton, TweenInfo.new(0.2), {
            ImageColor3 = Color3.fromRGB(186, 186, 186),
            Size = UDim2.new(0.7, 0, 0.7, 0)
        }):Play()
    end)
    
    ImageButton_2.MouseEnter:Connect(function()
        if currentTab ~= "Entity" then
            TweenService:Create(ImageButton_2, TweenInfo.new(0.2), {
                ImageColor3 = Color3.fromRGB(220, 220, 220),
                Size = UDim2.new(0.7, 0, 0.7, 0)
            }):Play()
        end
    end)
    
    ImageButton_2.MouseLeave:Connect(function()
        if currentTab ~= "Entity" then
            TweenService:Create(ImageButton_2, TweenInfo.new(0.2), {
                ImageColor3 = Color3.fromRGB(186, 186, 186),
                Size = UDim2.new(0.6, 0, 0.6, 0)
            }):Play()
        end
    end)
    
    ImageButton_3.MouseEnter:Connect(function()
        if currentTab ~= "Power" then
            TweenService:Create(ImageButton_3, TweenInfo.new(0.2), {
                ImageColor3 = Color3.fromRGB(220, 220, 220),
                Size = UDim2.new(0.7, 0, 0.7, 0)
            }):Play()
        end
    end)
    
    ImageButton_3.MouseLeave:Connect(function()
        if currentTab ~= "Power" then
            TweenService:Create(ImageButton_3, TweenInfo.new(0.2), {
                ImageColor3 = Color3.fromRGB(186, 186, 186),
                Size = UDim2.new(0.6, 0, 0.6, 0)
            }):Play()
        end
    end)
    
    local function addButtonHover(button, normalColor, hoverColor)
        button.MouseEnter:Connect(function()
            TweenService:Create(button, TweenInfo.new(0.15), {
                ImageColor3 = hoverColor or Color3.fromRGB(255, 255, 255)
            }):Play()
        end)
        button.MouseLeave:Connect(function()
            TweenService:Create(button, TweenInfo.new(0.15), {
                ImageColor3 = normalColor or Color3.fromRGB(186, 186, 186)
            }):Play()
        end)
    end
    
    addButtonHover(ImageButton_4, Color3.fromRGB(186, 186, 186), Color3.fromRGB(100, 255, 100))
    addButtonHover(ImageButton_5, Color3.fromRGB(186, 186, 186), Color3.fromRGB(255, 100, 100))
    addButtonHover(ImageButton_6, Color3.fromRGB(186, 186, 186), Color3.fromRGB(100, 255, 100))
    addButtonHover(ImageButton_7, Color3.fromRGB(186, 186, 186), Color3.fromRGB(255, 100, 100))
    
    TweenService:Create(ImageButton_2, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(100, 200, 255)}):Play()
    
    -- Store references
    self.ManagerPlus = ManagerPlus
    self.main = main
    self.Title = Title
    self.Description = Description
    self.EntityManager = EntityManager
    self.PowerManager = PowerManager
    
    -- Public Methods
    function self:Show()
        main.Visible = true
    end
    
    function self:Hide()
        main.Visible = false
    end
    
    function self:Destroy()
        ManagerPlus:Destroy()
    end
    
    function self:SetTitle(title)
        Title.Text = title
    end
    
    function self:SetDescription(desc)
        Description.Text = desc
    end
    
    function self:GetEntityManager()
        return EntityManager
    end
    
    function self:GetPowerManager()
        return PowerManager
    end
    
    return self
end

return Library
