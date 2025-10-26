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
        Title.Text = tabName == "Entity" and (config.EntityTitle or "Entity Manager [ Premium ]") or (config.PowerTitle or "Power Manager [ Premium ]")
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
    
    TweenService:Create(ImageButton_2, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(100, 200, 255)}):Play()
    
    -- Helper function for button hover
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
    
    -- Store references
    self.ManagerPlus = ManagerPlus
    self.main = main
    self.Title = Title
    self.Description = Description
    self.EntityManager = EntityManager
    self.PowerManager = PowerManager
    self.TweenService = TweenService
    
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
