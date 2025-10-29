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
    local MenuButton = Instance.new("TextButton")
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
    
    MenuButton.Parent = Menu
    MenuButton.AnchorPoint = Vector2.new(0.5, 0.5)
    MenuButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MenuButton.BackgroundTransparency = 1.000
    MenuButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    MenuButton.BorderSizePixel = 0
    MenuButton.Position = UDim2.new(0.5, 0, 0.5, 0)
    MenuButton.Size = UDim2.new(1, 0, 1, 0)
    MenuButton.Font = Enum.Font.GothamBold
    MenuButton.Text = "☰"
    MenuButton.TextColor3 = Color3.fromRGB(186, 186, 186)
    MenuButton.TextSize = 20
    
    OpenMenu.Name = "Open-Menu"
    OpenMenu.Parent = Canvas
    OpenMenu.AnchorPoint = Vector2.new(0, 0)
    OpenMenu.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
    OpenMenu.BorderColor3 = Color3.fromRGB(0, 0, 0)
    OpenMenu.BorderSizePixel = 0
    OpenMenu.Position = UDim2.new(0.5, 550/2 + 8, 0.5, -350/2 + 8)
    OpenMenu.Size = UDim2.new(0, 0, 0, 70)
    OpenMenu.Visible = false
    OpenMenu.ClipsDescendants = true
    OpenMenu.ZIndex = 10000
    
    OpenMenuStroke.Parent = OpenMenu
    OpenMenuStroke.Color = Color3.fromRGB(45, 45, 45)
    OpenMenuStroke.Thickness = 1.5
    
    UICorner_2.CornerRadius = UDim.new(0, 8)
    UICorner_2.Parent = OpenMenu
    
    UIListLayout_2.Parent = OpenMenu
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.Padding = UDim.new(0, 3)
    UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    
    Entity.Name = "Entity"
    Entity.Parent = OpenMenu
    Entity.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Entity.BackgroundTransparency = 1.000
    Entity.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Entity.BorderSizePixel = 0
    Entity.Size = UDim2.new(1, 0, 0, 33)
    
    ImageButton_2.Parent = Entity
    ImageButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageButton_2.BackgroundColor3 = Color3.fromRGB(169, 169, 169)
    ImageButton_2.BackgroundTransparency = 1.000
    ImageButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton_2.BorderSizePixel = 0
    ImageButton_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    ImageButton_2.Size = UDim2.new(0.55, 0, 0.55, 0)
    ImageButton_2.Image = "rbxassetid://13846536185"
    ImageButton_2.ImageColor3 = Color3.fromRGB(186, 186, 186)
    
    Power.Name = "Power"
    Power.Parent = OpenMenu
    Power.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Power.BackgroundTransparency = 1.000
    Power.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Power.BorderSizePixel = 0
    Power.Size = UDim2.new(1, 0, 0, 33)
    
    ImageButton_3.Parent = Power
    ImageButton_3.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton_3.BackgroundTransparency = 1.000
    ImageButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton_3.BorderSizePixel = 0
    ImageButton_3.Position = UDim2.new(0.5, 0, 0.5, 0)
    ImageButton_3.Size = UDim2.new(0.55, 0, 0.55, 0)
    ImageButton_3.Image = "rbxassetid://13858683772"
    ImageButton_3.ImageColor3 = Color3.fromRGB(186, 186, 186)
    
    Tab.Name = "Tab"
    Tab.Parent = main
    Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tab.BackgroundTransparency = 1.000
    Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Tab.BorderSizePixel = 0
    Tab.Position = UDim2.new(0, 0, 0, 58)
    Tab.Size = UDim2.new(1, 0, 1, -58)
    
    EntityManager.Name = "EntityManager"
    EntityManager.Parent = Tab
    EntityManager.Active = true
    EntityManager.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    EntityManager.BackgroundTransparency = 1.000
    EntityManager.BorderColor3 = Color3.fromRGB(0, 0, 0)
    EntityManager.BorderSizePixel = 0
    EntityManager.Size = UDim2.new(1, 0, 1, 0)
    EntityManager.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    EntityManager.CanvasSize = UDim2.new(0, 0, 0, 0)
    EntityManager.ScrollBarThickness = 4
    EntityManager.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    EntityManager.AutomaticCanvasSize = Enum.AutomaticSize.Y
    EntityManager.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 100)
    
    UIListLayout_3.Parent = EntityManager
    UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_3.Padding = UDim.new(0, 6)
    
    UIPadding_3.Parent = EntityManager
    UIPadding_3.PaddingLeft = UDim.new(0, 8)
    UIPadding_3.PaddingRight = UDim.new(0, 8)
    UIPadding_3.PaddingTop = UDim.new(0, 8)
    
    PowerManager.Name = "PowerManager"
    PowerManager.Parent = Tab
    PowerManager.Active = true
    PowerManager.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    PowerManager.BackgroundTransparency = 1.000
    PowerManager.BorderColor3 = Color3.fromRGB(0, 0, 0)
    PowerManager.BorderSizePixel = 0
    PowerManager.Size = UDim2.new(1, 0, 1, 0)
    PowerManager.Visible = false
    PowerManager.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    PowerManager.CanvasSize = UDim2.new(0, 0, 0, 0)
    PowerManager.ScrollBarThickness = 4
    PowerManager.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    PowerManager.AutomaticCanvasSize = Enum.AutomaticSize.Y
    PowerManager.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 100)
    
    UIListLayout_4.Parent = PowerManager
    UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_4.Padding = UDim.new(0, 6)
    
    UIPadding_Power.Parent = PowerManager
    UIPadding_Power.PaddingLeft = UDim.new(0, 8)
    UIPadding_Power.PaddingRight = UDim.new(0, 8)
    UIPadding_Power.PaddingTop = UDim.new(0, 8)
    
    -- Helper Functions
    local function addButtonHover(button, normalColor, hoverColor)
        button.MouseEnter:Connect(function()
            if button:IsA("TextButton") then
                TweenService:Create(button, TweenInfo.new(0.2), {TextColor3 = hoverColor}):Play()
            elseif button:IsA("ImageButton") then
                TweenService:Create(button, TweenInfo.new(0.2), {ImageColor3 = hoverColor}):Play()
            end
        end)
        
        button.MouseLeave:Connect(function()
            if button:IsA("TextButton") then
                TweenService:Create(button, TweenInfo.new(0.2), {TextColor3 = normalColor}):Play()
            elseif button:IsA("ImageButton") then
                TweenService:Create(button, TweenInfo.new(0.2), {ImageColor3 = normalColor}):Play()
            end
        end)
    end
    
    -- Draggable functionality
    local dragging, dragInput, dragStart, startPos
    
    local function update(input)
        local delta = input.Position - dragStart
        main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        
        -- Update OpenMenu position to follow main
        local mainPos = main.AbsolutePosition
        local mainSize = main.AbsoluteSize
        OpenMenu.Position = UDim2.new(0, mainPos.X + mainSize.X + 8, 0, mainPos.Y + 8)
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
    
    -- Menu Toggle
    local menuOpen = false
    MenuButton.MouseButton1Click:Connect(function()
        menuOpen = not menuOpen
        
        if menuOpen then
            OpenMenu.Visible = true
            TweenService:Create(OpenMenu, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Size = UDim2.new(0, 38, 0, 70)
            }):Play()
        else
            TweenService:Create(OpenMenu, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Size = UDim2.new(0, 0, 0, 70)
            }):Play()
            
            task.wait(0.25)
            OpenMenu.Visible = false
        end
    end)
    
    -- Tab Switching
    local currentTab = "Entity"
    
    local function switchTab(tabName)
        if currentTab == tabName then return end
        currentTab = tabName
        
        if tabName == "Entity" then
            -- Switch to EntityManager
            PowerManager.Visible = false
            EntityManager.Visible = true
            
            -- Update Title and Description
            Title.Text = "Entity Manager [ Premium ]"
            Description.Text = "Manage your entities here"
            
            ImageButton_2.ImageColor3 = Color3.fromRGB(100, 150, 255)
            ImageButton_3.ImageColor3 = Color3.fromRGB(186, 186, 186)
            
        elseif tabName == "Power" then
            -- Switch to PowerManager
            EntityManager.Visible = false
            PowerManager.Visible = true
            
            -- Update Title and Description
            Title.Text = "Power Manager [ Premium ]"
            Description.Text = "Manage your powers here"
            
            ImageButton_2.ImageColor3 = Color3.fromRGB(186, 186, 186)
            ImageButton_3.ImageColor3 = Color3.fromRGB(100, 150, 255)
        end
    end
    
    ImageButton_2.MouseButton1Click:Connect(function()
        switchTab("Entity")
    end)
    
    ImageButton_3.MouseButton1Click:Connect(function()
        switchTab("Power")
    end)
    
    -- Button Hover Effects
    addButtonHover(MenuButton, Color3.fromRGB(186, 186, 186), Color3.fromRGB(255, 255, 255))
    addButtonHover(ImageButton_2, Color3.fromRGB(186, 186, 186), Color3.fromRGB(100, 150, 255))
    addButtonHover(ImageButton_3, Color3.fromRGB(186, 186, 186), Color3.fromRGB(100, 150, 255))
    
    -- Initial tab
    switchTab("Entity")
    
    -- Store references
    self.ManagerPlus = ManagerPlus
    self.main = main
    self.Title = Title
    self.Description = Description
    self.EntityManager = EntityManager
    self.PowerManager = PowerManager
    self.TweenService = TweenService
    self.CurrentTab = currentTab
    
    -- Track selected items
    self.SelectedItems = {}
    
    -- ===== Public Methods =====
    
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
    
    function self:GetSelectedItems()
        return self.SelectedItems
    end
    
    -- ===== Helper: Move Item Priority =====
    local function moveItemPriority(frame, direction)
        local parent = frame.Parent
        local children = parent:GetChildren()
        
        -- Filter only Frame items with LayoutOrder
        local items = {}
        for _, child in ipairs(children) do
            if child:IsA("Frame") and child.LayoutOrder then
                table.insert(items, child)
            end
        end
        
        -- Sort by current LayoutOrder
        table.sort(items, function(a, b)
            return a.LayoutOrder < b.LayoutOrder
        end)
        
        -- Find current item index
        local currentIndex = nil
        for i, item in ipairs(items) do
            if item == frame then
                currentIndex = i
                break
            end
        end
        
        if not currentIndex then return end
        
        -- Calculate target index
        local targetIndex = currentIndex
        if direction == "up" then
            targetIndex = math.max(1, currentIndex - 1)
        elseif direction == "down" then
            targetIndex = math.min(#items, currentIndex + 1)
        end
        
        -- If no movement needed
        if targetIndex == currentIndex then return end
        
        -- Swap LayoutOrder
        local temp = items[currentIndex].LayoutOrder
        items[currentIndex].LayoutOrder = items[targetIndex].LayoutOrder
        items[targetIndex].LayoutOrder = temp
    end
    
    -- ===== NEW: Add Item Functions =====
    
    function self:AddEntity(itemConfig)
        return self:CreateItem("Entity", itemConfig)
    end
    
    function self:AddPower(itemConfig)
        return self:CreateItem("Power", itemConfig)
    end
    
    function self:CreateItem(tab, itemConfig)
        itemConfig = itemConfig or {}
        
        local parent = tab == "Entity" and EntityManager or PowerManager
        
        -- Calculate LayoutOrder (add to end)
        local maxLayoutOrder = 0
        for _, child in ipairs(parent:GetChildren()) do
            if child:IsA("Frame") and child.LayoutOrder then
                maxLayoutOrder = math.max(maxLayoutOrder, child.LayoutOrder)
            end
        end
        
        -- Create Frame
        local Frame = Instance.new("Frame")
        Frame.Name = itemConfig.Text or "Item"
        Frame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
        Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Frame.BorderSizePixel = 0
        Frame.Size = UDim2.new(1, -4, 0, 60)
        Frame.LayoutOrder = maxLayoutOrder + 1
        Frame.Parent = parent
        
        local FrameStroke = Instance.new("UIStroke")
        FrameStroke.Parent = Frame
        FrameStroke.Color = Color3.fromRGB(50, 50, 50)
        FrameStroke.Thickness = 1
        
        local FrameCorner = Instance.new("UICorner")
        FrameCorner.CornerRadius = UDim.new(0, 6)
        FrameCorner.Parent = Frame
        
        -- ===== Priority Buttons (Right Side) =====
        local PriorityFrame = Instance.new("Frame")
        PriorityFrame.Name = "PriorityFrame"
        PriorityFrame.Parent = Frame
        PriorityFrame.AnchorPoint = Vector2.new(1, 0.5)
        PriorityFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        PriorityFrame.BackgroundTransparency = 1.000
        PriorityFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        PriorityFrame.BorderSizePixel = 0
        PriorityFrame.Position = UDim2.new(1, -8, 0.5, 0)
        PriorityFrame.Size = UDim2.new(0, 35, 1, 0)
        
        -- Up Button
        local UpButton = Instance.new("TextButton")
        UpButton.Name = "UpButton"
        UpButton.Parent = PriorityFrame
        UpButton.AnchorPoint = Vector2.new(0.5, 0)
        UpButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        UpButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        UpButton.BorderSizePixel = 0
        UpButton.Position = UDim2.new(0.5, 0, 0.1, 0)
        UpButton.Size = UDim2.new(1, 0, 0, 20)
        UpButton.Font = Enum.Font.GothamBold
        UpButton.Text = "▲"
        UpButton.TextColor3 = Color3.fromRGB(186, 186, 186)
        UpButton.TextSize = 10
        
        local UpCorner = Instance.new("UICorner")
        UpCorner.CornerRadius = UDim.new(0, 4)
        UpCorner.Parent = UpButton
        
        -- Down Button
        local DownButton = Instance.new("TextButton")
        DownButton.Name = "DownButton"
        DownButton.Parent = PriorityFrame
        DownButton.AnchorPoint = Vector2.new(0.5, 1)
        DownButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        DownButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        DownButton.BorderSizePixel = 0
        DownButton.Position = UDim2.new(0.5, 0, 0.9, 0)
        DownButton.Size = UDim2.new(1, 0, 0, 20)
        DownButton.Font = Enum.Font.GothamBold
        DownButton.Text = "▼"
        DownButton.TextColor3 = Color3.fromRGB(186, 186, 186)
        DownButton.TextSize = 10
        
        local DownCorner = Instance.new("UICorner")
        DownCorner.CornerRadius = UDim.new(0, 4)
        DownCorner.Parent = DownButton
        
        -- ===== Selection Indicator =====
        local SelectionIndicator = Instance.new("Frame")
        SelectionIndicator.Name = "SelectionIndicator"
        SelectionIndicator.Parent = Frame
        SelectionIndicator.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
        SelectionIndicator.BorderColor3 = Color3.fromRGB(0, 0, 0)
        SelectionIndicator.BorderSizePixel = 0
        SelectionIndicator.Position = UDim2.new(0, 0, 0, 0)
        SelectionIndicator.Size = UDim2.new(0, 3, 1, 0)
        SelectionIndicator.Visible = false
        
        local IndicatorCorner = Instance.new("UICorner")
        IndicatorCorner.CornerRadius = UDim.new(0, 6)
        IndicatorCorner.Parent = SelectionIndicator
        
        -- Text Label (Clickable for Selection)
        local TextLabel = Instance.new("TextButton")
        TextLabel.Name = "TextLabel"
        TextLabel.Parent = Frame
        TextLabel.AnchorPoint = Vector2.new(0, 0.5)
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.BorderSizePixel = 0
        TextLabel.Position = UDim2.new(0, 12, 0.35, 0)
        TextLabel.Size = UDim2.new(0.55, 0, 0, 18)
        TextLabel.Font = Enum.Font.GothamBold
        TextLabel.Text = itemConfig.Text or "Item Name"
        TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
        TextLabel.TextSize = 15
        TextLabel.TextWrapped = false
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left
        
        local TextPadding = Instance.new("UIPadding")
        TextPadding.Parent = TextLabel
        TextPadding.PaddingLeft = UDim.new(0, 4)
        
        -- Description Label
        local DescLabel = Instance.new("TextButton")
        DescLabel.Name = "DescLabel"
        DescLabel.Parent = Frame
        DescLabel.AnchorPoint = Vector2.new(0, 0.5)
        DescLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DescLabel.BackgroundTransparency = 1.000
        DescLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        DescLabel.BorderSizePixel = 0
        DescLabel.Position = UDim2.new(0, 12, 0.65, 0)
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
        
        -- ===== Icon Frame (for Power items) =====
        local IconFrame = nil
        local IconImage = nil
        
        if itemConfig.Icon then
            IconFrame = Instance.new("Frame")
            IconFrame.Name = "IconFrame"
            IconFrame.Parent = Frame
            IconFrame.AnchorPoint = Vector2.new(1, 0.5)
            IconFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            IconFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            IconFrame.BorderSizePixel = 0
            IconFrame.Position = UDim2.new(1, -50, 0.5, 0)
            IconFrame.Size = UDim2.new(0, 35, 0, 45)
            
            local IconCorner = Instance.new("UICorner")
            IconCorner.CornerRadius = UDim.new(0, 6)
            IconCorner.Parent = IconFrame
            
            local IconGradient = Instance.new("UIGradient")
            IconGradient.Color = ColorSequence.new{
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB(24, 24, 24)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(45, 45, 45))
            }
            IconGradient.Rotation = -33
            IconGradient.Parent = IconFrame
            
            IconImage = Instance.new("ImageLabel")
            IconImage.Name = "IconImage"
            IconImage.Parent = IconFrame
            IconImage.AnchorPoint = Vector2.new(0.5, 0.5)
            IconImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            IconImage.BackgroundTransparency = 1.000
            IconImage.BorderSizePixel = 0
            IconImage.Position = UDim2.new(0.5, 0, 0.5, 0)
            IconImage.Size = UDim2.new(0.85, 0, 0.85, 0)
            IconImage.Image = itemConfig.Icon
            IconImage.ScaleType = Enum.ScaleType.Fit
        end
        
        -- ===== Item Object =====
        local itemObject = {
            Frame = Frame,
            TextLabel = TextLabel,
            DescLabel = DescLabel,
            UpButton = UpButton,
            DownButton = DownButton,
            SelectionIndicator = SelectionIndicator,
            IconFrame = IconFrame,
            IconImage = IconImage,
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
        
        function itemObject:UpdateIcon(iconId)
            if IconImage then
                IconImage.Image = iconId
            end
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
    
    return self
end

return Library
