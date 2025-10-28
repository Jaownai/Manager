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
    local UIPadding_3 = Instance.new("UIPadding")
    local PowerManager = Instance.new("ScrollingFrame")
    local UIListLayout_4 = Instance.new("UIListLayout")
    local UIPadding_Power = Instance.new("UIPadding")
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
    ImageButton_3.Image = "rbxassetid://13858682222"
    ImageButton_3.ImageColor3 = Color3.fromRGB(186, 186, 186)
    
    Tab.Name = "Tab"
    Tab.Parent = main
    Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tab.BackgroundTransparency = 1.000
    Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Tab.BorderSizePixel = 0
    Tab.Position = UDim2.new(0, 0, 0, 50)
    Tab.Size = UDim2.new(1, 0, 1, -50)
    Tab.Visible = true
    
    EntityManager.Name = "EntityManager"
    EntityManager.Parent = Tab
    EntityManager.Active = true
    EntityManager.AnchorPoint = Vector2.new(0, 0)
    EntityManager.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    EntityManager.BackgroundTransparency = 1.000
    EntityManager.BorderColor3 = Color3.fromRGB(0, 0, 0)
    EntityManager.BorderSizePixel = 0
    EntityManager.Position = UDim2.new(0, 0, 0, 0)
    EntityManager.Size = UDim2.new(1, 0, 1, 0)
    EntityManager.CanvasSize = UDim2.new(0, 0, 0, 0)
    EntityManager.ScrollBarThickness = 4
    EntityManager.ScrollBarImageColor3 = Color3.fromRGB(186, 186, 186)
    EntityManager.Visible = true
    
    UIListLayout_3.Parent = EntityManager
    UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_3.Padding = UDim.new(0, 6)
    
    UIPadding_3.Parent = EntityManager
    UIPadding_3.PaddingBottom = UDim.new(0, 8)
    UIPadding_3.PaddingLeft = UDim.new(0, 8)
    UIPadding_3.PaddingRight = UDim.new(0, 8)
    UIPadding_3.PaddingTop = UDim.new(0, 8)
    
    PowerManager.Name = "PowerManager"
    PowerManager.Parent = Tab
    PowerManager.Active = true
    PowerManager.AnchorPoint = Vector2.new(0, 0)
    PowerManager.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    PowerManager.BackgroundTransparency = 1.000
    PowerManager.BorderColor3 = Color3.fromRGB(0, 0, 0)
    PowerManager.BorderSizePixel = 0
    PowerManager.Position = UDim2.new(0, 0, 0, 0)
    PowerManager.Size = UDim2.new(1, 0, 1, 0)
    PowerManager.CanvasSize = UDim2.new(0, 0, 0, 0)
    PowerManager.ScrollBarThickness = 4
    PowerManager.ScrollBarImageColor3 = Color3.fromRGB(186, 186, 186)
    PowerManager.Visible = false
    
    UIListLayout_4.Parent = PowerManager
    UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_4.Padding = UDim.new(0, 6)
    
    UIPadding_Power.Parent = PowerManager
    UIPadding_Power.PaddingBottom = UDim.new(0, 8)
    UIPadding_Power.PaddingLeft = UDim.new(0, 8)
    UIPadding_Power.PaddingRight = UDim.new(0, 8)
    UIPadding_Power.PaddingTop = UDim.new(0, 8)
    
    -- Variables
    self.Gui = ManagerPlus
    self.Main = main
    self.EntityManager = EntityManager
    self.PowerManager = PowerManager
    self.OpenMenu = OpenMenu
    self.IsMinimized = false
    self.CurrentTab = "Entity"
    self.SelectedItems = {}
    
    -- Dragging
    local dragging, dragInput, dragStart, startPos
    
    local function update(input)
        local delta = input.Position - dragStart
        main.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X, 
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
        
        -- Update OpenMenu position
        local mainPos = main.AbsolutePosition
        local mainSize = main.AbsoluteSize
        OpenMenu.Position = UDim2.new(
            0, mainPos.X + mainSize.X + 8,
            0, mainPos.Y + 8
        )
    end
    
    Top.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
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
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
    
    -- Menu Button
    local menuOpen = false
    ImageButton.MouseButton1Click:Connect(function()
        menuOpen = not menuOpen
        
        if menuOpen then
            OpenMenu.Visible = true
            TweenService:Create(OpenMenu, TweenInfo.new(0.3), {
                Size = UDim2.new(0, 50, 0, 75)
            }):Play()
        else
            TweenService:Create(OpenMenu, TweenInfo.new(0.3), {
                Size = UDim2.new(0, 0, 0, 75)
            }):Play()
            task.wait(0.3)
            OpenMenu.Visible = false
        end
    end)
    
    -- Tab Switching
    ImageButton_2.MouseButton1Click:Connect(function()
        EntityManager.Visible = true
        PowerManager.Visible = false
        self.CurrentTab = "Entity"
        menuOpen = false
        TweenService:Create(OpenMenu, TweenInfo.new(0.3), {
            Size = UDim2.new(0, 0, 0, 75)
        }):Play()
        task.wait(0.3)
        OpenMenu.Visible = false
    end)
    
    ImageButton_3.MouseButton1Click:Connect(function()
        EntityManager.Visible = false
        PowerManager.Visible = true
        self.CurrentTab = "Power"
        menuOpen = false
        TweenService:Create(OpenMenu, TweenInfo.new(0.3), {
            Size = UDim2.new(0, 0, 0, 75)
        }):Play()
        task.wait(0.3)
        OpenMenu.Visible = false
    end)
    
    -- Methods
    function self:Show()
        main.Visible = true
    end
    
    function self:Hide()
        main.Visible = false
    end
    
    function self:Toggle()
        main.Visible = not main.Visible
    end
    
    function self:GetSelectedItems()
        return self.SelectedItems
    end
    
    function self:ClearSelection()
        for _, item in ipairs(self.SelectedItems) do
            if item.Deselect then
                item:Deselect()
            end
        end
        self.SelectedItems = {}
    end
    
    -- Helper function for button hover
    local function addButtonHover(button, normalColor, hoverColor)
        button.MouseEnter:Connect(function()
            TweenService:Create(button, TweenInfo.new(0.2), {
                ImageColor3 = hoverColor
            }):Play()
        end)
        
        button.MouseLeave:Connect(function()
            TweenService:Create(button, TweenInfo.new(0.2), {
                ImageColor3 = normalColor
            }):Play()
        end)
    end
    
    -- Priority Movement Function
    local function moveItemPriority(frame, direction)
        local parent = frame.Parent
        local children = parent:GetChildren()
        
        -- Filter for frames with LayoutOrder
        local frames = {}
        for _, child in ipairs(children) do
            if child:IsA("Frame") and child:FindFirstChild("TextLabel") then
                table.insert(frames, child)
            end
        end
        
        -- Sort by LayoutOrder
        table.sort(frames, function(a, b)
            return a.LayoutOrder < b.LayoutOrder
        end)
        
        -- Find current index
        local currentIndex = nil
        for i, f in ipairs(frames) do
            if f == frame then
                currentIndex = i
                break
            end
        end
        
        if not currentIndex then return end
        
        -- Move up (decrease priority)
        if direction == "up" and currentIndex > 1 then
            local temp = frames[currentIndex].LayoutOrder
            frames[currentIndex].LayoutOrder = frames[currentIndex - 1].LayoutOrder
            frames[currentIndex - 1].LayoutOrder = temp
        -- Move down (increase priority)
        elseif direction == "down" and currentIndex < #frames then
            local temp = frames[currentIndex].LayoutOrder
            frames[currentIndex].LayoutOrder = frames[currentIndex + 1].LayoutOrder
            frames[currentIndex + 1].LayoutOrder = temp
        end
    end
    
    -- Add Item (Entity or Power)
    local function createItem(parent, itemConfig)
        -- Main Frame
        local Frame = Instance.new("Frame")
        Frame.Name = "Item_" .. (itemConfig.Text or "Unknown")
        Frame.Parent = parent
        Frame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
        Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Frame.BorderSizePixel = 0
        Frame.Size = UDim2.new(1, 0, 0, 55)
        Frame.LayoutOrder = itemConfig.Priority or 999
        
        local FrameCorner = Instance.new("UICorner")
        FrameCorner.CornerRadius = UDim.new(0, 6)
        FrameCorner.Parent = Frame
        
        local FrameStroke = Instance.new("UIStroke")
        FrameStroke.Parent = Frame
        FrameStroke.Color = Color3.fromRGB(50, 50, 50)
        FrameStroke.Thickness = 1.2
        
        -- Selection Indicator (Checkbox)
        local SelectionIndicator = Instance.new("Frame")
        SelectionIndicator.Name = "SelectionIndicator"
        SelectionIndicator.Parent = Frame
        SelectionIndicator.AnchorPoint = Vector2.new(0, 0.5)
        SelectionIndicator.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
        SelectionIndicator.BorderSizePixel = 0
        SelectionIndicator.Position = UDim2.new(0, 10, 0.5, 0)
        SelectionIndicator.Size = UDim2.new(0, 20, 0, 20)
        SelectionIndicator.Visible = false
        
        local SelectionCorner = Instance.new("UICorner")
        SelectionCorner.CornerRadius = UDim.new(0, 4)
        SelectionCorner.Parent = SelectionIndicator
        
        local SelectionStroke = Instance.new("UIStroke")
        SelectionStroke.Parent = SelectionIndicator
        SelectionStroke.Color = Color3.fromRGB(150, 200, 255)
        SelectionStroke.Thickness = 2
        
        -- Checkmark Icon
        local Checkmark = Instance.new("ImageLabel")
        Checkmark.Name = "Checkmark"
        Checkmark.Parent = SelectionIndicator
        Checkmark.AnchorPoint = Vector2.new(0.5, 0.5)
        Checkmark.BackgroundTransparency = 1
        Checkmark.Position = UDim2.new(0.5, 0, 0.5, 0)
        Checkmark.Size = UDim2.new(0.7, 0, 0.7, 0)
        Checkmark.Image = "rbxassetid://13840669701"
        Checkmark.ImageColor3 = Color3.fromRGB(255, 255, 255)
        
        -- Text Label
        local TextLabel = Instance.new("TextButton")
        TextLabel.Name = "TextLabel"
        TextLabel.Parent = Frame
        TextLabel.AnchorPoint = Vector2.new(0, 0.5)
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.BorderSizePixel = 0
        TextLabel.Position = UDim2.new(0, 40, 0.35, 0)
        TextLabel.Size = UDim2.new(0.55, 0, 0, 18)
        TextLabel.Font = Enum.Font.GothamBold
        TextLabel.Text = itemConfig.Text or "Item"
        TextLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
        TextLabel.TextSize = 15
        TextLabel.TextWrapped = false
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left
        
        local TextPadding = Instance.new("UIPadding")
        TextPadding.Parent = TextLabel
        TextPadding.PaddingLeft = UDim.new(0, 4)
        
        -- Priority Buttons Frame (ขวา)
        local ButtonFrame = Instance.new("Frame")
        ButtonFrame.Name = "ButtonFrame"
        ButtonFrame.Parent = Frame
        ButtonFrame.AnchorPoint = Vector2.new(1, 0.5)
        ButtonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ButtonFrame.BackgroundTransparency = 1.000
        ButtonFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ButtonFrame.BorderSizePixel = 0
        ButtonFrame.Position = UDim2.new(1, -8, 0.5, 0)
        ButtonFrame.Size = UDim2.new(0, 35, 1, 0)
        
        -- Up Button
        local UpButton = Instance.new("TextButton")
        UpButton.Name = "UpButton"
        UpButton.Parent = ButtonFrame
        UpButton.AnchorPoint = Vector2.new(0.5, 0.5)
        UpButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        UpButton.BorderSizePixel = 0
        UpButton.Position = UDim2.new(0.5, 0, 0.3, 0)
        UpButton.Size = UDim2.new(0.8, 0, 0.35, 0)
        UpButton.Font = Enum.Font.GothamBold
        UpButton.Text = "▲"
        UpButton.TextColor3 = Color3.fromRGB(186, 186, 186)
        UpButton.TextSize = 12
        
        local UpCorner = Instance.new("UICorner")
        UpCorner.CornerRadius = UDim.new(0, 4)
        UpCorner.Parent = UpButton
        
        -- Down Button
        local DownButton = Instance.new("TextButton")
        DownButton.Name = "DownButton"
        DownButton.Parent = ButtonFrame
        DownButton.AnchorPoint = Vector2.new(0.5, 0.5)
        DownButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        DownButton.BorderSizePixel = 0
        DownButton.Position = UDim2.new(0.5, 0, 0.7, 0)
        DownButton.Size = UDim2.new(0.8, 0, 0.35, 0)
        DownButton.Font = Enum.Font.GothamBold
        DownButton.Text = "▼"
        DownButton.TextColor3 = Color3.fromRGB(186, 186, 186)
        DownButton.TextSize = 12
        
        local DownCorner = Instance.new("UICorner")
        DownCorner.CornerRadius = UDim.new(0, 4)
        DownCorner.Parent = DownButton
        
        -- Description Label
        local DescLabel = Instance.new("TextButton")
        DescLabel.Name = "DescLabel"
        DescLabel.Parent = Frame
        DescLabel.AnchorPoint = Vector2.new(0, 0.5)
        DescLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DescLabel.BackgroundTransparency = 1.000
        DescLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        DescLabel.BorderSizePixel = 0
        DescLabel.Position = UDim2.new(0, 40, 0.65, 0)
        DescLabel.Size = UDim2.new(0.55, 0, 0, 14)
        DescLabel.Font = Enum.Font.Gotham
        DescLabel.Text = itemConfig.Description or "No Description"
        DescLabel.TextColor3 = Color3.fromRGB(177, 177, 177)
        DescLabel.TextSize = 12
        DescLabel.TextWrapped = false
        DescLabel.TextXAlignment = Enum.TextXAlignment.Left
        
        local DescPadding = Instance.new("UIPadding")
        DescPadding.Parent = DescLabel
        DescPadding.PaddingLeft = UDim.new(0, 4)
        
        -- ===== Item Object =====
        local itemObject = {
            Frame = Frame,
            TextLabel = TextLabel,
            DescLabel = DescLabel,
            UpButton = UpButton,
            DownButton = DownButton,
            SelectionIndicator = SelectionIndicator,
            IsSelected = false
        }
        
        -- ===== Selection Logic =====
        local function toggleSelection()
            itemObject.IsSelected = not itemObject.IsSelected
            
            if itemObject.IsSelected then
                -- Select
                SelectionIndicator.Visible = true
                Frame.BackgroundColor3 = Color3.fromRGB(40, 45, 55)
                FrameStroke.Color = Color3.fromRGB(100, 150, 255)
                table.insert(self.SelectedItems, itemObject)
                
                -- Callback
                if itemConfig.OnSelect then
                    itemConfig.OnSelect()
                end
            else
                -- Deselect
                SelectionIndicator.Visible = false
                Frame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
                FrameStroke.Color = Color3.fromRGB(50, 50, 50)
                
                -- Remove from selected items
                for i, item in ipairs(self.SelectedItems) do
                    if item == itemObject then
                        table.remove(self.SelectedItems, i)
                        break
                    end
                end
                
                -- Callback
                if itemConfig.OnDeselect then
                    itemConfig.OnDeselect()
                end
            end
        end
        
        -- Click on TextLabel or DescLabel to select
        TextLabel.MouseButton1Click:Connect(toggleSelection)
        DescLabel.MouseButton1Click:Connect(toggleSelection)
        
        -- ===== Priority Button Logic =====
        UpButton.MouseButton1Click:Connect(function()
            moveItemPriority(Frame, "up")
            if itemConfig.OnPriorityChange then
                itemConfig.OnPriorityChange("up")
            end
        end)
        
        DownButton.MouseButton1Click:Connect(function()
            moveItemPriority(Frame, "down")
            if itemConfig.OnPriorityChange then
                itemConfig.OnPriorityChange("down")
            end
        end)
        
        -- Hover for Priority Buttons
        UpButton.MouseEnter:Connect(function()
            TweenService:Create(UpButton, TweenInfo.new(0.2), {
                BackgroundColor3 = Color3.fromRGB(70, 70, 70),
                TextColor3 = Color3.fromRGB(100, 150, 255)
            }):Play()
        end)
        
        UpButton.MouseLeave:Connect(function()
            TweenService:Create(UpButton, TweenInfo.new(0.2), {
                BackgroundColor3 = Color3.fromRGB(45, 45, 45),
                TextColor3 = Color3.fromRGB(186, 186, 186)
            }):Play()
        end)
        
        DownButton.MouseEnter:Connect(function()
            TweenService:Create(DownButton, TweenInfo.new(0.2), {
                BackgroundColor3 = Color3.fromRGB(70, 70, 70),
                TextColor3 = Color3.fromRGB(100, 150, 255)
            }):Play()
        end)
        
        DownButton.MouseLeave:Connect(function()
            TweenService:Create(DownButton, TweenInfo.new(0.2), {
                BackgroundColor3 = Color3.fromRGB(45, 45, 45),
                TextColor3 = Color3.fromRGB(186, 186, 186)
            }):Play()
        end)
        
        -- ===== Item Methods =====
        function itemObject:UpdateText(text)
            TextLabel.Text = text
        end
        
        function itemObject:UpdateDescription(desc)
            DescLabel.Text = desc
        end
        
        function itemObject:Remove()
            if self.IsSelected then
                for i, item in ipairs(self.SelectedItems) do
                    if item == self then
                        table.remove(self.SelectedItems, i)
                        break
                    end
                end
            end
            Frame:Destroy()
        end
        
        function itemObject:Select()
            if not self.IsSelected then
                toggleSelection()
            end
        end
        
        function itemObject:Deselect()
            if self.IsSelected then
                toggleSelection()
            end
        end
        
        function itemObject:GetPriority()
            return Frame.LayoutOrder
        end
        
        function itemObject:SetPriority(priority)
            Frame.LayoutOrder = priority
        end
        
        return itemObject
    end
    
    -- Add Entity
    function self:AddEntity(config)
        local item = createItem(EntityManager, config)
        
        -- Auto-resize canvas
        EntityManager.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_3.AbsoluteContentSize.Y + 16)
        UIListLayout_3:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            EntityManager.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_3.AbsoluteContentSize.Y + 16)
        end)
        
        return item
    end
    
    -- Add Power
    function self:AddPower(config)
        local item = createItem(PowerManager, config)
        
        -- Auto-resize canvas
        PowerManager.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y + 16)
        UIListLayout_4:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            PowerManager.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y + 16)
        end)
        
        return item
    end
    
    return self
end

return Library
