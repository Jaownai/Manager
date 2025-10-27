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
    local TabContainer = Instance.new("Frame")
    local OpenMenu = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local OpenMenuStroke = Instance.new("UIStroke")
    local UIListLayout_2 = Instance.new("UIListLayout")
    
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
    
    -- Tab Container
    TabContainer.Name = "TabContainer"
    TabContainer.Parent = main
    TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabContainer.BackgroundTransparency = 1.000
    TabContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TabContainer.BorderSizePixel = 0
    TabContainer.Position = UDim2.new(0, 0, 0, 58)
    TabContainer.Size = UDim2.new(1, 0, 1, -58)
    TabContainer.ClipsDescendants = true
    
    OpenMenu.Name = "Open-Menu"
    OpenMenu.Parent = Canvas
    OpenMenu.AnchorPoint = Vector2.new(0, 0)
    OpenMenu.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
    OpenMenu.BorderColor3 = Color3.fromRGB(0, 0, 0)
    OpenMenu.BorderSizePixel = 0
    OpenMenu.Position = UDim2.new(0.5, 550/2 + 8, 0.5, -350/2 + 8)
    OpenMenu.Size = UDim2.new(0, 0, 0, 0)
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
    
    -- ===== Helper Functions =====
    
    local function addButtonHover(button, normalColor, hoverColor)
        button.MouseEnter:Connect(function()
            TweenService:Create(button, TweenInfo.new(0.2), {ImageColor3 = hoverColor}):Play()
        end)
        button.MouseLeave:Connect(function()
            TweenService:Create(button, TweenInfo.new(0.2), {ImageColor3 = normalColor}):Play()
        end)
    end
    
    -- Dragging
    local dragging, dragInput, dragStart, startPos
    
    local function update(input)
        local delta = input.Position - dragStart
        main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
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
    ImageButton.MouseButton1Click:Connect(function()
        menuOpen = not menuOpen
        if menuOpen then
            OpenMenu.Visible = true
            local targetSize = UDim2.new(0, 50, 0, 37 * #OpenMenu:GetChildren() - 2)
            TweenService:Create(OpenMenu, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {Size = targetSize}):Play()
        else
            TweenService:Create(OpenMenu, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {Size = UDim2.new(0, 0, 0, OpenMenu.Size.Y.Offset)}):Play()
            task.wait(0.3)
            OpenMenu.Visible = false
        end
    end)
    
    -- Store references
    self.ManagerPlus = ManagerPlus
    self.main = main
    self.Title = Title
    self.Description = Description
    self.TabContainer = TabContainer
    self.OpenMenu = OpenMenu
    self.TweenService = TweenService
    self.Tabs = {}
    self.CurrentTab = nil
    
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
    
    -- ===== NEW: Add Tab Function =====
    
    function self:AddTab(tabConfig)
        tabConfig = tabConfig or {}
        local tabName = tabConfig.Name or "Tab"
        local tabIcon = tabConfig.Icon or "rbxassetid://13846536185"
        
        -- Create ScrollingFrame for this tab
        local TabScrollFrame = Instance.new("ScrollingFrame")
        TabScrollFrame.Name = tabName
        TabScrollFrame.Parent = TabContainer
        TabScrollFrame.Active = true
        TabScrollFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabScrollFrame.BackgroundTransparency = 1.000
        TabScrollFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TabScrollFrame.BorderSizePixel = 0
        TabScrollFrame.Position = UDim2.new(0, 8, 0, 8)
        TabScrollFrame.Size = UDim2.new(1, -16, 1, -16)
        TabScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
        TabScrollFrame.ScrollBarThickness = 4
        TabScrollFrame.ScrollBarImageColor3 = Color3.fromRGB(85, 85, 85)
        TabScrollFrame.Visible = false
        
        local UIListLayout = Instance.new("UIListLayout")
        UIListLayout.Parent = TabScrollFrame
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 4)
        
        local UIPadding = Instance.new("UIPadding")
        UIPadding.Parent = TabScrollFrame
        UIPadding.PaddingTop = UDim.new(0, 2)
        
        -- Auto-resize canvas
        UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            TabScrollFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 4)
        end)
        
        -- Create button in OpenMenu
        local TabButton = Instance.new("Frame")
        TabButton.Name = tabName
        TabButton.Parent = OpenMenu
        TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabButton.BackgroundTransparency = 1.000
        TabButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TabButton.BorderSizePixel = 0
        TabButton.Size = UDim2.new(1, 0, 0, 35)
        
        local TabImageButton = Instance.new("ImageButton")
        TabImageButton.Parent = TabButton
        TabImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
        TabImageButton.BackgroundColor3 = Color3.fromRGB(169, 169, 169)
        TabImageButton.BackgroundTransparency = 1.000
        TabImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TabImageButton.BorderSizePixel = 0
        TabImageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
        TabImageButton.Size = UDim2.new(0.6, 0, 0.6, 0)
        TabImageButton.Image = tabIcon
        TabImageButton.ImageColor3 = Color3.fromRGB(186, 186, 186)
        
        addButtonHover(TabImageButton, Color3.fromRGB(186, 186, 186), Color3.fromRGB(100, 200, 255))
        
        -- Tab switching
        TabImageButton.MouseButton1Click:Connect(function()
            self:SwitchTab(tabName)
        end)
        
        -- Store tab data
        local tabObject = {
            Name = tabName,
            ScrollFrame = TabScrollFrame,
            Button = TabButton,
            ImageButton = TabImageButton
        }
        
        function tabObject:AddItem(itemConfig)
            return self:CreateItem(tabName, itemConfig)
        end
        
        self.Tabs[tabName] = tabObject
        
        -- If this is the first tab, make it active
        if not self.CurrentTab then
            self:SwitchTab(tabName)
        end
        
        -- Update menu size
        task.spawn(function()
            task.wait()
            if menuOpen then
                local targetSize = UDim2.new(0, 50, 0, 37 * #OpenMenu:GetChildren() - 2)
                TweenService:Create(OpenMenu, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {Size = targetSize}):Play()
            end
        end)
        
        return tabObject
    end
    
    function self:SwitchTab(tabName)
        if not self.Tabs[tabName] then return end
        
        -- Hide all tabs
        for name, tab in pairs(self.Tabs) do
            tab.ScrollFrame.Visible = false
            tab.ImageButton.ImageColor3 = Color3.fromRGB(186, 186, 186)
        end
        
        -- Show selected tab
        self.Tabs[tabName].ScrollFrame.Visible = true
        self.Tabs[tabName].ImageButton.ImageColor3 = Color3.fromRGB(100, 200, 255)
        self.CurrentTab = tabName
    end
    
    function self:GetTab(tabName)
        return self.Tabs[tabName]
    end
    
    -- ===== Create Item Function =====
    
    function self:CreateItem(tabName, itemConfig)
        itemConfig = itemConfig or {}
        
        local tab = self.Tabs[tabName]
        if not tab then
            warn("Tab '" .. tabName .. "' does not exist!")
            return
        end
        
        local parent = tab.ScrollFrame
        
        -- Create Frame
        local Frame = Instance.new("Frame")
        Frame.Name = itemConfig.Text or "Item"
        Frame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
        Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Frame.BorderSizePixel = 0
        Frame.Size = UDim2.new(1, -4, 0, 60)
        Frame.Parent = parent
        
        local FrameStroke = Instance.new("UIStroke")
        FrameStroke.Parent = Frame
        FrameStroke.Color = Color3.fromRGB(50, 50, 50)
        FrameStroke.Thickness = 1
        
        local FrameCorner = Instance.new("UICorner")
        FrameCorner.CornerRadius = UDim.new(0, 6)
        FrameCorner.Parent = Frame
        
        -- Text Label
        local TextLabel = Instance.new("TextButton")
        TextLabel.Parent = Frame
        TextLabel.AnchorPoint = Vector2.new(0, 0.5)
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.BorderSizePixel = 0
        TextLabel.Position = UDim2.new(0, 0, 0.35, 0)
        TextLabel.Size = UDim2.new(0.75, 0, 0, 18)
        TextLabel.Font = Enum.Font.GothamBold
        TextLabel.Text = itemConfig.Text or "Item Name"
        TextLabel.TextColor3 = Color3.fromRGB(226, 226, 226)
        TextLabel.TextSize = 15
        TextLabel.TextWrapped = false
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left
        
        local TextPadding = Instance.new("UIPadding")
        TextPadding.Parent = TextLabel
        TextPadding.PaddingLeft = UDim.new(0, 12)
        
        -- Button Frame
        local ButtonFrame = Instance.new("Frame")
        ButtonFrame.Parent = Frame
        ButtonFrame.AnchorPoint = Vector2.new(1, 0.5)
        ButtonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ButtonFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ButtonFrame.BorderSizePixel = 0
        ButtonFrame.Position = UDim2.new(0.98, 0, 0.5, 0)
        ButtonFrame.Size = UDim2.new(0, 50, 0, 50)
        
        local ButtonCorner = Instance.new("UICorner")
        ButtonCorner.CornerRadius = UDim.new(0, 6)
        ButtonCorner.Parent = ButtonFrame
        
        local ButtonGradient = Instance.new("UIGradient")
        ButtonGradient.Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(24, 24, 24)), 
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(45, 45, 45))
        }
        ButtonGradient.Rotation = -33
        ButtonGradient.Parent = ButtonFrame
        
        -- Activate Button (Green)
        local ActivateButton = Instance.new("ImageButton")
        ActivateButton.Parent = ButtonFrame
        ActivateButton.AnchorPoint = Vector2.new(0.5, 0.5)
        ActivateButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ActivateButton.BackgroundTransparency = 1.000
        ActivateButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ActivateButton.BorderSizePixel = 0
        ActivateButton.Position = UDim2.new(0.5, 0, 0.3, 0)
        ActivateButton.Size = UDim2.new(0.5, 0, 0.5, 0)
        ActivateButton.Image = "rbxassetid://13858693179"
        ActivateButton.ImageColor3 = Color3.fromRGB(186, 186, 186)
        
        -- Delete Button (Red)
        local DeleteButton = Instance.new("ImageButton")
        DeleteButton.Parent = ButtonFrame
        DeleteButton.AnchorPoint = Vector2.new(0.5, 0.5)
        DeleteButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DeleteButton.BackgroundTransparency = 1.000
        DeleteButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        DeleteButton.BorderSizePixel = 0
        DeleteButton.Position = UDim2.new(0.5, 0, 0.7, 0)
        DeleteButton.Size = UDim2.new(0.5, 0, 0.5, 0)
        DeleteButton.Image = "rbxassetid://13858682222"
        DeleteButton.ImageColor3 = Color3.fromRGB(186, 186, 186)
        
        -- Description Label
        local DescLabel = Instance.new("TextButton")
        DescLabel.Parent = Frame
        DescLabel.AnchorPoint = Vector2.new(0, 0.5)
        DescLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DescLabel.BackgroundTransparency = 1.000
        DescLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        DescLabel.BorderSizePixel = 0
        DescLabel.Position = UDim2.new(0, 0, 0.65, 0)
        DescLabel.Size = UDim2.new(0.75, 0, 0, 14)
        DescLabel.Font = Enum.Font.Gotham
        DescLabel.Text = itemConfig.Description or "No Description"
        DescLabel.TextColor3 = Color3.fromRGB(177, 177, 177)
        DescLabel.TextSize = 12
        DescLabel.TextWrapped = false
        DescLabel.TextXAlignment = Enum.TextXAlignment.Left
        
        local DescPadding = Instance.new("UIPadding")
        DescPadding.Parent = DescLabel
        DescPadding.PaddingLeft = UDim.new(0, 12)
        
        -- Button Events
        addButtonHover(ActivateButton, Color3.fromRGB(186, 186, 186), Color3.fromRGB(100, 255, 100))
        addButtonHover(DeleteButton, Color3.fromRGB(186, 186, 186), Color3.fromRGB(255, 100, 100))
        
        ActivateButton.MouseButton1Click:Connect(function()
            if itemConfig.OnActivate then
                itemConfig.OnActivate()
            end
        end)
        
        DeleteButton.MouseButton1Click:Connect(function()
            if itemConfig.OnDelete then
                itemConfig.OnDelete()
            end
            Frame:Destroy()
        end)
        
        -- Return item object
        local itemObject = {
            Frame = Frame,
            TextLabel = TextLabel,
            DescLabel = DescLabel,
            ActivateButton = ActivateButton,
            DeleteButton = DeleteButton
        }
        
        function itemObject:UpdateText(text)
            TextLabel.Text = text
        end
        
        function itemObject:UpdateDescription(desc)
            DescLabel.Text = desc
        end
        
        function itemObject:Remove()
            Frame:Destroy()
        end
        
        return itemObject
    end
    
    return self
end

return Library
