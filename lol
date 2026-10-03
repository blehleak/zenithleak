local players, tweenService, userInputService, runService, v1, v2, localPlayer, v3, v4, color, color2, color3, color4, color5, color6, zenithKeySystem, miniLoading, textLabel2, frame2, keyWindow, dragHeader, frame4, currentCamera4, v5, v6, triggerbotFOV, uiStroke6, playerVisualizationTool, fovCircle, aimToggle, v7, v8, v9, mainWindow, frame6, frame8, scrollingFrame, v10, v11, v12, v13, v14, v15, v16
do
    players = game:GetService("Players")
    tweenService = game:GetService("TweenService")
    userInputService = game:GetService("UserInputService")
    runService = game:GetService("RunService")
    v1 = game:GetService("Workspace")
    local httpService = game:GetService("HttpService")
end
local v17 = 2
local floor = math.floor
local v18 = 0
local v19 = {
}
do
    local char = string.char
    local remove = table.remove
    local random = math.random
    local v20 = 256
    local v21 = {
    }
    local v22 =  false
    local count = 0
    while true do
        count = 1 + count
        if not(v22 and v20 <= count or not v22 and v20 >= count) then
            break
        end
        local v23 = count
        v21[v23] = v23
    end
    while true do
        local v24 = remove(v21,(random(1,  # v21)))
        v19[v24] = char(v24 - 1)
        if # v21 == 0 then
            break
        end
    end
end
local v25 = {
}
local function f1()
    if # v25 == 0 then
        v18 =(v18 * 213 + 27552854471197) % 35184372088832
        while true do
            v17 = v17 * 201 % 257
            if v17 ~= 1 then
                break
            end
        end
        local v26 = v17 % 32
        local v27 = floor(v18 / 2 ^(13 -(v17 - v26) / 32)) % 4294967296 / 2 ^ v26
        local v28 = floor(v27 % 1 * 4294967296) + floor(v27)
        local v29 = v28 % 65536
        local v30 =(v28 - v29) / 65536
        v25 = {
            v29 % 256,
            (v29 - v29 % 256) / 256,
            v30 % 256,
            (v30 - v30 % 256) / 256
        }
    end
    local v31 =  # v25
    local v32 = v25[v31]
    v25[v31] =  nil
    return v32
end
local v33 = {
}
v2 = setmetatable({
}, {
    __index = v33,
    __metatable =  nil
}
)
local function f2(p1, p2)
    if v33[p2] then
        return p2
    else
        local text = ""
        v25 = {
        }
        v18 = p2 % 35184372088832
        v17 = p2 % 255 + 2
        v33[p2] = ""
        local v34 = 204
        local v35 =  # p1
        local v36 =  false
        local count2 = 0
        while true do
            count2 = 1 + count2
            if not(v36 and v35 <= count2 or not v36 and count2 <= v35) then
                break
            end
            v34 =(string.byte(p1, count2) + f1() + v34) % 256
            text = text..v19[v34 + 1]
        end
        v33[p2] = text
        return p2
    end
end
do
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
    localPlayer = players.LocalPlayer
    local playerGui = localPlayer:WaitForChild("PlayerGui")
    local function f3(p3, p4)
        local v37, v38 = pcall(function()
            local v39 = loadstring((game:HttpGet(p3)))
            if type(v39) == "function" then
                v39()
            else
                error(p4.. " source did not return executable code")
            end
        end
)
        if not v37 then
            warn("[Zenith] "..p4.. " failed to initialize: "..tostring(v38))
        end
    end
    f3("https://raw.githubusercontent.com/SUUUUUS00000/MEGGD-Anti-kick/refs/heads/main/MEGGD%20Best%20Anti-kick.lua", "Anti-kick")
    f3("https://raw.githubusercontent.com/yBloodz/Free-scripts/refs/heads/main/MVSD-DEVICE-SPOOFER", "Device Spoofer")
    v3 = "ZSSL"
    v4 =  false
    color = Color3.fromRGB(255, 255, 255)
    color2 = Color3.fromRGB(150, 150, 170)
    Color3.fromRGB(10, 10, 15)
    color3 = Color3.fromRGB(15, 15, 22)
    color4 = Color3.fromRGB(22, 22, 32)
    color5 = Color3.fromRGB(155, 90, 255)
    color6 = Color3.fromRGB(160, 90, 255)
    zenithKeySystem = Instance.new("ScreenGui")
    zenithKeySystem.Name = "ZenithKeySystem"
    zenithKeySystem.ResetOnSpawn =  false
    zenithKeySystem.IgnoreGuiInset =  true
    zenithKeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    zenithKeySystem.Parent = playerGui
end
do
    local uiScale = Instance.new("UIScale")
    uiScale.Parent = zenithKeySystem
    local function f4()
        local currentCamera = workspace.CurrentCamera
        if not currentCamera then
            return
        else
            local viewportSize = currentCamera.ViewportSize
            if viewportSize.X < 600 then
                uiScale.Scale = math.clamp(viewportSize.X / 560, 0.75, 0.9)
            else
                uiScale.Scale = math.clamp(viewportSize.X / 1000, 0.8, 1)
            end
            return
        end
    end
    f4()
    local currentCamera2 = workspace.CurrentCamera
    if currentCamera2 then
        currentCamera2:GetPropertyChangedSignal("ViewportSize"):Connect(f4)
    end
    workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
        local currentCamera3 = workspace.CurrentCamera
        if currentCamera3 then
            currentCamera3:GetPropertyChangedSignal("ViewportSize"):Connect(f4)
            f4()
        end
    end
)
    miniLoading = Instance.new("Frame")
    miniLoading.Name = "MiniLoading"
    miniLoading.AnchorPoint = Vector2.new(0.5, 0.5)
    miniLoading.Position = UDim2.fromScale(0.5, 0.5)
    miniLoading.Size = UDim2.fromOffset(260, 120)
end
do
    miniLoading.BackgroundColor3 = color3
    miniLoading.BorderSizePixel = 0
    miniLoading.ClipsDescendants =  true
    miniLoading.Parent = zenithKeySystem
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 14)
    uiCorner.Parent = miniLoading
    local uiStroke = Instance.new("UIStroke")
    uiStroke.Color = Color3.fromRGB(60, 60, 85)
    uiStroke.Thickness = 1.5
    uiStroke.Transparency = 0.3
    uiStroke.Parent = miniLoading
end
do
    local textLabel = Instance.new("TextLabel")
    textLabel.Position = UDim2.fromOffset(25, 24)
    textLabel.Size = UDim2.new(1,  - 50, 0, 22)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = "Z E N I T H"
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextSize = 16
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.TextColor3 = color
    textLabel.Parent = miniLoading
    textLabel2 = Instance.new("TextLabel")
    textLabel2.Position = UDim2.fromOffset(25, 46)
end
do
    textLabel2.Size = UDim2.new(1,  - 50, 0, 18)
    textLabel2.BackgroundTransparency = 1
    textLabel2.Text = "INITIALIZING..."
    textLabel2.Font = Enum.Font.GothamMedium
    textLabel2.TextSize = 10
    textLabel2.TextXAlignment = Enum.TextXAlignment.Left
    textLabel2.TextColor3 = color2
    textLabel2.Parent = miniLoading
    local frame = Instance.new("Frame")
    frame.Position = UDim2.fromOffset(25, 88)
    frame.Size = UDim2.new(1,  - 50, 0, 6)
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
    frame.BorderSizePixel = 0
    frame.Parent = miniLoading
    local uiCorner2 = Instance.new("UICorner")
    uiCorner2.CornerRadius = UDim.new(1, 0)
    uiCorner2.Parent = frame
    frame2 = Instance.new("Frame")
    frame2.Size = UDim2.new(0, 0, 1, 0)
    frame2.BackgroundColor3 = color
    frame2.BorderSizePixel = 0
    frame2.Parent = frame
end
do
    Instance.new("UICorner", frame2).CornerRadius = UDim.new(1, 0)
    local uiGradient = Instance.new("UIGradient")
    uiGradient.Color = ColorSequence.new(color5, color6)
    uiGradient.Parent = frame2
    keyWindow = Instance.new("Frame")
    keyWindow.Name = "KeyWindow"
    keyWindow.AnchorPoint = Vector2.new(0.5, 0.5)
    keyWindow.Position = UDim2.fromScale(0.5, 0.5)
    keyWindow.Size = UDim2.fromOffset(350, 280)
    keyWindow.BackgroundColor3 = color3
    keyWindow.BorderSizePixel = 0
    keyWindow.Visible =  false
end
do
    keyWindow.Parent = zenithKeySystem
    Instance.new("UICorner", keyWindow).CornerRadius = UDim.new(0, 14)
    local uiStroke2 = Instance.new("UIStroke")
    uiStroke2.Color = Color3.fromRGB(60, 60, 85)
    uiStroke2.Thickness = 1.5
    uiStroke2.Transparency = 0.3
    uiStroke2.Parent = keyWindow
    dragHeader = Instance.new("Frame")
    dragHeader.Name = "DragHeader"
    dragHeader.Size = UDim2.new(1, 0, 0, 70)
    dragHeader.BackgroundTransparency = 1
    dragHeader.Parent = keyWindow
end
do
    local textLabel3 = Instance.new("TextLabel")
    textLabel3.Position = UDim2.fromOffset(25, 18)
    textLabel3.Size = UDim2.new(1,  - 80, 0, 24)
    textLabel3.BackgroundTransparency = 1
    textLabel3.Text = "Z E N I T H"
    textLabel3.Font = Enum.Font.GothamBold
    textLabel3.TextSize = 18
    textLabel3.TextXAlignment = Enum.TextXAlignment.Left
    textLabel3.TextColor3 = color
    textLabel3.Parent = dragHeader
    local textLabel4 = Instance.new("TextLabel")
    textLabel4.Position = UDim2.fromOffset(25, 42)
    textLabel4.Size = UDim2.new(1,  - 80, 0, 16)
    textLabel4.BackgroundTransparency = 1
    textLabel4.Text = "KEY SYSTEM"
    textLabel4.Font = Enum.Font.GothamMedium
    textLabel4.TextSize = 9
    textLabel4.TextXAlignment = Enum.TextXAlignment.Left
    textLabel4.TextColor3 = color5
    textLabel4.Parent = dragHeader
end
do
    local frame3 = Instance.new("Frame")
    frame3.Position = UDim2.fromOffset(25, 72)
    frame3.Size = UDim2.new(1,  - 50, 0, 1)
    frame3.BackgroundColor3 = Color3.fromRGB(50, 50, 65)
    frame3.BackgroundTransparency = 0.6
    frame3.BorderSizePixel = 0
    frame3.Parent = keyWindow
    frame4 = Instance.new("Frame")
    frame4.Position = UDim2.fromOffset(25, 90)
    frame4.Size = UDim2.new(1,  - 50, 1,  - 110)
    frame4.BackgroundTransparency = 1
    frame4.Parent = keyWindow
end
do
    local frame5 = Instance.new("Frame")
    frame5.Size = UDim2.new(1, 0, 0, 48)
    frame5.BackgroundColor3 = color4
    frame5.BorderSizePixel = 0
    frame5.Parent = frame4
    Instance.new("UICorner", frame5).CornerRadius = UDim.new(0, 10)
    local uiStroke3 = Instance.new("UIStroke")
    uiStroke3.Color = Color3.fromRGB(60, 60, 80)
    uiStroke3.Transparency = 0.2
    uiStroke3.Parent = frame5
    local textBox = Instance.new("TextBox")
    textBox.Position = UDim2.fromOffset(15, 0)
    textBox.Size = UDim2.new(1,  - 30, 1, 0)
    textBox.BackgroundTransparency = 1
    textBox.Font = Enum.Font.GothamMedium
    textBox.TextSize = 12
    textBox.TextColor3 = color
    textBox.PlaceholderText = "Enter Key"
    textBox.PlaceholderColor3 = Color3.fromRGB(100, 100, 120)
    textBox.ClearTextOnFocus =  false
    textBox.Text = ""
    textBox.Parent = frame5
    textBox.Focused:Connect(function()
        tweenService:Create(uiStroke3, TweenInfo.new(0.2), {
            Color = color5,
            Transparency = 0
        }
):Play()
    end
)
    textBox.FocusLost:Connect(function()
        tweenService:Create(uiStroke3, TweenInfo.new(0.2), {
            Color = Color3.fromRGB(60,
            60,
            80),
            Transparency = 0.2,
        }
):Play()
    end
)
    local function f5(name, text2, p5, p6)
        local textButton = Instance.new("TextButton")
        textButton.Name = name
        textButton.Position = UDim2.fromOffset(0, p5)
        textButton.Size = UDim2.new(1, 0, 0, 44)
        textButton.BackgroundColor3 = p6 and color or color4
        textButton.BorderSizePixel = 0
        textButton.Text = ""
        textButton.AutoButtonColor =  false
        textButton.Parent = frame4
        Instance.new("UICorner", textButton).CornerRadius = UDim.new(0, 10)
        if p6 then
            local uiGradient2 = Instance.new("UIGradient")
            uiGradient2.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0,
                color5),
                ColorSequenceKeypoint.new(1,
                color6),
            }
)
            uiGradient2.Parent = textButton
        else
            local uiStroke4 = Instance.new("UIStroke")
            uiStroke4.Color = Color3.fromRGB(65, 65, 85)
            uiStroke4.Transparency = 0.2
            uiStroke4.Parent = textButton
        end
        local textLabel5 = Instance.new("TextLabel")
        textLabel5.Size = UDim2.new(1, 0, 1, 0)
        textLabel5.BackgroundTransparency = 1
        textLabel5.Text = text2
        textLabel5.Font = Enum.Font.GothamBold
        textLabel5.TextSize = 11
        textLabel5.TextColor3 = color
        textLabel5.Parent = textButton
        textButton.MouseEnter:Connect(function()
            tweenService:Create(textButton, TweenInfo.new(0.2), {
                Size = UDim2.new(1,
                2,
                0,
                46),
                Position = UDim2.fromOffset( - 1,
                p5 - 1),
            }
):Play()
        end
)
        textButton.MouseLeave:Connect(function()
            tweenService:Create(textButton, TweenInfo.new(0.2), {
                Size = UDim2.new(1,
                0,
                0,
                44),
                Position = UDim2.fromOffset(0,
                p5),
            }
):Play()
        end
)
        return textButton, textLabel5
    end
    local v40, v41 = f5("VerifyButton", "âœ“ VERIFY KEY", 62,  true)
    local v42, v43 = f5("GetKeyButton", "â†— GET KEY", 118,  false)
    local function f6(p7, p8)
        local inputBegan = p8.InputBegan
        local v44, position, position2
        inputBegan:Connect(function(p9)
            if p9.UserInputType == Enum.UserInputType.MouseButton1 or p9.UserInputType == Enum.UserInputType.Touch then
                v44 =  true
                position = p9.Position
                position2 = p7.Position
            end
        end
)
        p8.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                v44 =  false
            end
        end
)
        userInputService.InputChanged:Connect(function(input2)
            if v44 and(input2.UserInputType == Enum.UserInputType.MouseMovement or input2.UserInputType == Enum.UserInputType.Touch) then
                local v45 = input2.Position - position
                p7.Position = UDim2.new(position2.X.Scale, position2.X.Offset + v45.X, position2.Y.Scale, position2.Y.Offset + v45.Y)
            end
        end
)
    end
    f6(keyWindow, dragHeader)
    v42.MouseButton1Click:Connect(function()
        pcall(function()
            if setclipboard then
                setclipboard("https://discord.gg/XrTdN9umb")
                v43.Text = "Copied Link!"
                v43.TextColor3 = Color3.fromRGB(150, 255, 150)
                task.wait(1.5)
                v43.Text = "GET KEY"
                v43.TextColor3 = color
            else
                v43.Text = "GET KEY"
                task.wait(1.5)
                v43.Text = "GET KEY"
            end
        end
)
    end
)
    v40.MouseButton1Click:Connect(function()
        if textBox.Text == "" then
            v41.Text = "âš  Enter Key"
            task.wait(1)
            v41.Text = "âœ“ Verify Key"
            return
        end
        v41.Text = "â—Œ Checking..."
        task.wait(0.8)
        if textBox.Text == v3 then
            v4 =  true
            v41.Text = "âœ“ Access Granted"
            task.wait(0.7)
            zenithKeySystem:Destroy()
        else
            v41.Text = "X Invalid Key"
            task.wait(1)
            v41.Text = "âœ“ Verify Key"
        end
    end
)
end
task.spawn(function()
    local v46 = {
        "Initializing Secure System...",
        "Loading Components...",
        "Establishing Connection...",
        "Verifying System Integrity...",
        "Key System Ready.",
    }
    local v47 =  # v46
    local v48 =  false
    local count3 = 0
    while true do
        count3 = 1 + count3
        if not(v48 and v47 <= count3 or not v48 and v47 >= count3) then
            break
        end
        local v49 = count3
        textLabel2.Text = v46[v49]
        tweenService:Create(frame2, TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
            Size = UDim2.new(v49 /  # v46,
            0,
            1,
            0)
        }
):Play()
        task.wait(0.8)
    end
    task.wait(0.3)
    tweenService:Create(miniLoading, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
        Size = UDim2.fromOffset(200,
        80)
    }
):Play()
    for index, value in ipairs(miniLoading:GetDescendants()) do
        if value:IsA("TextLabel") then
            tweenService:Create(value, TweenInfo.new(0.3), {
                TextTransparency = 1
            }
):Play()
        elseif value:IsA("Frame") then
            tweenService:Create(value, TweenInfo.new(0.3), {
                BackgroundTransparency = 1
            }
):Play()
        elseif value:IsA("UIStroke") then
            tweenService:Create(value, TweenInfo.new(0.3), {
                Transparency = 1
            }
):Play()
        end
    end
    tweenService:Create(miniLoading, TweenInfo.new(0.3), {
        BackgroundTransparency = 1
    }
):Play()
    task.wait(0.4)
    miniLoading:Destroy()
    keyWindow.Visible =  true
    keyWindow.BackgroundTransparency = 1
    keyWindow.Size = UDim2.fromOffset(320, 250)
    tweenService:Create(keyWindow, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.fromOffset(350,
        280),
        BackgroundTransparency = 0
    }
):Play()
end
)
currentCamera4 = v1.CurrentCamera
v5 = {
    TrackingEnabled =  false,
    Smoothness = 0.25,
    AimPart = "Head",
    FOVEnabled =  true,
    FOVSize = 20,
    ShowAimButton =  false,
    ESPEnabled =  true,
    BoxESP =  true,
    NameTags =  false,
    HealthBar =  false,
    Distance =  false,
    BoxColor = Color3.fromRGB(255,
    80,
    80),
    WallCheck =  true,
    BigHead =  false,
    BigHeadSize = 5,
    Fly =  false,
    FlySpeed = 10,
    SpeedHack =  false,
    WalkSpeedValue = 16,
    NoClip =  false,
    InfiniteJump =  false,
    HitboxExpander =  false,
    HitboxSize = 10,
    TeleportEnabled =  false,
    TrackingKey = Enum.KeyCode.Z,
    ViewCameraTP =  false,
    CameraTPActive =  false,
    CameraTPOriginalType =  nil,
    CameraTPOriginalSubject =  nil,
    CameraTPOriginalCFrame =  nil,
    CameraTPSpeed = 140,
    CameraTPSensitivity = 0.4,
    CameraTPButtonLocked =  false,
    SpectateEnabled =  false,
    SpectateActive =  false,
    SpectateTarget =  nil,
    DiscordLink = "https://discord.gg/XrTdN9umb",
    TikTokLink = "https://www.tiktok.com/@nstrscript2",
    YouTubeLink = "https://www.youtube.com/@s1rcxlotus",
    UsageWebhook = "https://discord.com/api/webhooks/1545688427112964108/O0gPas2VOGtbf-RukQzsK_GHlW9bpANb6DbO3MHzYgclU8PM4Ve4MhMFvObEeOdPHwkM",
    SilentAimHK =  false,
    SA2_TargetPart = "Head",
    SA2_TeamTarget = "Enemies",
    SA2_Wallcheck =  false,
    SA2_Wallbang =  false,
    SA2_BulletTeleport =  false,
    SA2_HitChance = 100,
    SA2_HeadshotChance = 100,
    SA2_FovRadius = 100,
    SA2_FovVisible =  true,
    SA2_FovTransparency = 0.9,
    SA2_FovColor = Color3.fromRGB(160,
    90,
    255),
    SA2_FovTargetColor = Color3.fromRGB(255,
    255,
    255),
    SA2_ThreeSixtyMode =  false,
    SA2_TargetRange = 500,
    SA2_Prediction = 0,
    SA2_GetTarget = "Closest",
    SA2_AimMethods = {
        "Raycast"
    },
    SA2_RemoteNames = {
        "hit",
        "bullet",
        "projectile",
        "hitscan"
    },
    SA2_Key = Enum.KeyCode.R,
    Triggerbot =  false,
    TriggerbotRate = 100,
    TriggerbotInterval = 0.01,
    TriggerbotFOV = 10,
    TriggerbotFOVVisible =  false,
    TriggerbotFOVColor = Color3.fromRGB(160,
    90,
    255),
    TriggerbotFOVTargetColor = Color3.fromRGB(255,
    255,
    255),
    TriggerbotFOVTransparency = 0.9,
}
local function f7(p10)
    if v5.AimPart == "Head" then
        return p10:FindFirstChild("Head")
    end
    if v5.AimPart == "Torso" then
        return p10:FindFirstChild("UpperTorso") or p10:FindFirstChild("Torso") or p10:FindFirstChild("HumanoidRootPart")
    end
    return p10:FindFirstChild("HumanoidRootPart")
end
local v50 = {
}
local function f8(p11, p12)
    if not v5.WallCheck then
        return true
    else
        local position3 = currentCamera4.CFrame.Position
        local position4 = p12.Position
        local raycastParams = RaycastParams.new()
        raycastParams.FilterType = Enum.RaycastFilterType.Exclude
        raycastParams.FilterDescendantsInstances = {
            localPlayer.Character,
            p11
        }
        raycastParams.IgnoreWater =  true
        return v1:Raycast(position3, position4 - position3, raycastParams) ==  nil
    end
end
local function f9(p13)
    if not p13 or p13 == localPlayer then
        return false
    end
    return true
end
v6 = {
}
local function f10(p14, p15)
    local connect = p14:Connect(p15)
    table.insert(v50, connect)
    return connect
end
local function f11(p16)
    if not p16 then
        return nil
    else
        local character = p16.Character
        if not character or not character.Parent then
            return nil
        else
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            local v51 =  not humanoid
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            if v51 or humanoid.Health <= 0 or not humanoidRootPart then
                return nil
            end
            return character, humanoid, humanoidRootPart
        end
    end
end
local function f12(text3)
    local playerGui2 = localPlayer:FindFirstChildOfClass("PlayerGui")
    local textLabel6
    if not playerGui2 then
        return
    else
        local playerToolNotifications = playerGui2:FindFirstChild("PlayerToolNotifications")
        if not playerToolNotifications then
            return
        else
            textLabel6 = Instance.new("TextLabel")
            textLabel6.Size = UDim2.new(0, 260, 0, 40)
            textLabel6.BackgroundColor3 = Color3.fromRGB(18, 20, 26)
            textLabel6.BackgroundTransparency = 0.05
            textLabel6.BorderSizePixel = 0
            textLabel6.TextColor3 = Color3.fromRGB(240, 243, 250)
            textLabel6.TextSize = 13
            textLabel6.Font = Enum.Font.GothamMedium
            textLabel6.Text = text3
            textLabel6.Parent = playerToolNotifications
            Instance.new("UICorner", textLabel6).CornerRadius = UDim.new(0, 10)
            local uiStroke5 = Instance.new("UIStroke")
            uiStroke5.Color = Color3.fromRGB(155, 90, 255)
            uiStroke5.Transparency = 0.3
            uiStroke5.Parent = textLabel6
            if playerToolNotifications:FindFirstChildOfClass("UIListLayout") then
                textLabel6.LayoutOrder = math.floor(os.clock() * 1000)
            end
            task.delay(2.5, function()
                if textLabel6.Parent then
                    tweenService:Create(textLabel6, TweenInfo.new(0.25), {
                        BackgroundTransparency = 1,
                        TextTransparency = 1,
                    }
):Play()
                    task.wait(0.3)
                    textLabel6:Destroy()
                end
            end
)
            return
        end
    end
end
local v52 = 0
local function f13()
    local v53 = os.clock()
    if v53 - v52 < v5.TriggerbotInterval then
        return
    end
    local character2 = localPlayer.Character
    if not character2 then
        return
    end
    local tool = character2:FindFirstChildOfClass("Tool")
    if not tool then
        return
    end
    v52 = v53
    task.delay(0.03, function()
        if tool and tool.Parent == character2 then
            pcall(function()
                tool:Deactivate()
            end
)
        end
    end
)
end
local function f14(p17)
    local v54 = currentCamera4.ViewportSize / 2
    local huge = math.huge
    local fovSize = p17 or v5.FOVSize
    local v55
    for index2, value2 in ipairs(players:GetPlayers()) do
        local v56 = f11(value2)
        if v56 and f9(value2) then
            local v57 = f7(v56)
            if v57 then
                local v58, v59 = currentCamera4:WorldToViewportPoint(v57.Position)
                if v59 and v58.Z > 0 then
                    local v60 = v58.X - v54.X
                    local v61 = v58.Y - v54.Y
                    local v62 = math.sqrt(v60 * v60 + v61 * v61)
                    if v62 <= fovSize and v62 < huge then
                        if f8(v56, v57) then
                            huge = v62
                            v55 = value2
                        end
                    end
                end
            end
        end
    end
    return v55
end
do
    f10(runService.Heartbeat, function()
        if not v4 or not v5.Triggerbot then
            if triggerbotFOV then
                triggerbotFOV.Visible =  false
            end
            return
        else
            local v63 = f14(v5.TriggerbotFOV)
            if triggerbotFOV and uiStroke6 then
                local currentCamera5 = v1.CurrentCamera
                if currentCamera5 and v5.TriggerbotFOVVisible then
                    local viewportSize2 = currentCamera5.ViewportSize
                    triggerbotFOV.Position = UDim2.fromOffset(viewportSize2.X / 2, viewportSize2.Y / 2)
                    triggerbotFOV.Size = UDim2.fromOffset(v5.TriggerbotFOV * 2, v5.TriggerbotFOV * 2)
                    triggerbotFOV.Visible =  true
                    local v64 = uiStroke6
                    v64.Color = v63 and v5.TriggerbotFOVTargetColor or v5.TriggerbotFOVColor
                    uiStroke6.Transparency = 1 - math.clamp(v5.TriggerbotFOVTransparency, 0, 1)
                else
                    triggerbotFOV.Visible =  false
                end
            end
            if v63 then
                f13()
            end
            return
        end
    end
)
    local playerGui3 = localPlayer:WaitForChild("PlayerGui")
    playerGui3:FindFirstChild("PlayerVisualizationTool")
    playerVisualizationTool = Instance.new("ScreenGui")
    playerVisualizationTool.Name = "PlayerVisualizationTool"
    playerVisualizationTool.ResetOnSpawn =  false
    playerVisualizationTool.IgnoreGuiInset =  true
    playerVisualizationTool.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    playerVisualizationTool.Enabled =  false
    playerVisualizationTool.Parent = playerGui3
    triggerbotFOV = Instance.new("Frame")
end
triggerbotFOV.Name = "TriggerbotFOV"
triggerbotFOV.AnchorPoint = Vector2.new(0.5, 0.5)
triggerbotFOV.BackgroundTransparency = 1
triggerbotFOV.BorderSizePixel = 0
triggerbotFOV.Size = UDim2.fromOffset(v5.TriggerbotFOV * 2, v5.TriggerbotFOV * 2)
triggerbotFOV.Visible =  false
triggerbotFOV.Parent = playerVisualizationTool
Instance.new("UICorner", triggerbotFOV).CornerRadius = UDim.new(1, 0)
uiStroke6 = Instance.new("UIStroke")
uiStroke6.Thickness = 1
uiStroke6.Color = v5.TriggerbotFOVColor
uiStroke6.Transparency = 1 - v5.TriggerbotFOVTransparency
do
    uiStroke6.Parent = triggerbotFOV
    function f49()
        playerVisualizationTool.Enabled =  true
    end
    local playerToolNotifications2 = Instance.new("Frame")
    playerToolNotifications2.Name = "PlayerToolNotifications"
    playerToolNotifications2.AnchorPoint = Vector2.new(1, 1)
    playerToolNotifications2.Position = UDim2.new(1,  - 16, 1,  - 16)
    playerToolNotifications2.Size = UDim2.new(0, 260, 0, 200)
    playerToolNotifications2.BackgroundTransparency = 1
    playerToolNotifications2.Parent = playerVisualizationTool
    local uiListLayout = Instance.new("UIListLayout")
    uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
    uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
    uiListLayout.Padding = UDim.new(0, 8)
    uiListLayout.Parent = playerToolNotifications2
end
do
    fovCircle = Instance.new("Frame")
    fovCircle.Name = "FOVCircle"
    fovCircle.AnchorPoint = Vector2.new(0.5, 0.5)
    fovCircle.BackgroundTransparency = 1
    fovCircle.Size = UDim2.fromOffset(v5.FOVSize * 2, v5.FOVSize * 2)
    fovCircle.Parent = playerVisualizationTool
    local uiCorner3 = Instance.new("UICorner")
    uiCorner3.CornerRadius = UDim.new(1, 0)
    uiCorner3.Parent = fovCircle
    local uiStroke7 = Instance.new("UIStroke")
    uiStroke7.Thickness = 1.5
    uiStroke7.Color = Color3.fromRGB(155, 90, 255)
    uiStroke7.Transparency = 0.2
    uiStroke7.Parent = fovCircle
end
aimToggle = Instance.new("TextButton")
aimToggle.Name = "AimToggle"
aimToggle.AnchorPoint = Vector2.new(0, 1)
aimToggle.Position = UDim2.new(0, 75, 1,  - 15)
aimToggle.Size = UDim2.fromOffset(48, 48)
aimToggle.BackgroundColor3 = v5.TrackingEnabled and Color3.fromRGB(145, 75, 235) or Color3.fromRGB(235, 65, 65)
aimToggle.Text = "AIM"
aimToggle.TextColor3 = Color3.new(1, 1, 1)
aimToggle.TextSize = 11
aimToggle.Font = Enum.Font.GothamBold
aimToggle.AutoButtonColor =  false
aimToggle.Visible = v5.ShowAimButton
do
    aimToggle.Parent = playerVisualizationTool
    Instance.new("UICorner", aimToggle).CornerRadius = UDim.new(0, 12)
    v7 =  false
    v8 =  false
    local v65 =  false
    v9 =  false
    local position5, position6
    f10(aimToggle.InputBegan, function(p18)
        if v7 then
            return
        end
        local connect2
        if p18.UserInputType == Enum.UserInputType.MouseButton1 or p18.UserInputType == Enum.UserInputType.Touch then
            v65 =  true
            v9 =  false
            position5 = p18.Position
            position6 = aimToggle.Position
            connect2 =  nil
            connect2 = p18.Changed:Connect(function()
                if p18.UserInputState == Enum.UserInputState.End then
                    v65 =  false
                    connect2:Disconnect()
                end
            end
)
        end
    end
)
    f10(userInputService.InputChanged, function(p19)
        if not v7 and v65 and(p19.UserInputType == Enum.UserInputType.MouseMovement or p19.UserInputType == Enum.UserInputType.Touch) then
            local v66 = p19.Position - position5
            if math.abs(v66.X) > 4 or math.abs(v66.Y) > 4 then
                v9 =  true
            end
            local udim = UDim2.new(position6.X.Scale, position6.X.Offset + v66.X, position6.Y.Scale, position6.Y.Offset + v66.Y)
            aimToggle.Position = aimToggle.Position:Lerp(udim, 0.32)
        end
    end
)
    mainWindow = Instance.new("Frame")
    mainWindow.Name = "MainWindow"
    mainWindow.AnchorPoint = Vector2.new(0.5, 0.5)
end
do
    mainWindow.Position = UDim2.fromScale(0.5, 0.5)
    mainWindow.Size = UDim2.fromOffset(410, 305)
    mainWindow.BackgroundColor3 = Color3.fromRGB(14, 16, 22)
    mainWindow.BorderSizePixel = 0
    mainWindow.Parent = playerVisualizationTool
    Instance.new("UICorner", mainWindow).CornerRadius = UDim.new(0, 14)
    local uiStroke8 = Instance.new("UIStroke")
    uiStroke8.Color = Color3.fromRGB(50, 60, 85)
    uiStroke8.Thickness = 1.2
    uiStroke8.Parent = mainWindow
    local uiScale2 = Instance.new("UIScale")
    uiScale2.Scale = 1
    uiScale2.Parent = mainWindow
end
do
    frame6 = Instance.new("Frame")
    frame6.Size = UDim2.new(1, 0, 0, 58)
    frame6.BackgroundColor3 = Color3.fromRGB(19, 22, 31)
    frame6.BorderSizePixel = 0
    frame6.Parent = mainWindow
    local uiCorner4 = Instance.new("UICorner")
    uiCorner4.CornerRadius = UDim.new(0, 14)
    uiCorner4.Parent = frame6
    local frame7 = Instance.new("Frame")
    frame7.Position = UDim2.new(0, 0, 1,  - 10)
    frame7.Size = UDim2.new(1, 0, 0, 10)
    frame7.BackgroundColor3 = Color3.fromRGB(19, 22, 31)
    frame7.BorderSizePixel = 0
    frame7.Parent = frame6
end
do
    local textLabel7 = Instance.new("TextLabel")
    textLabel7.BackgroundTransparency = 1
    textLabel7.Position = UDim2.fromOffset(18, 9)
    textLabel7.Size = UDim2.new(1,  - 80, 0, 24)
    textLabel7.Font = Enum.Font.GothamBold
    textLabel7.Text = "Zenith Hub"
    textLabel7.TextColor3 = Color3.fromRGB(250, 252, 255)
    textLabel7.TextSize = 18
    textLabel7.TextXAlignment = Enum.TextXAlignment.Left
    textLabel7.Parent = frame6
    local textLabel8 = Instance.new("TextLabel")
    textLabel8.BackgroundTransparency = 1
    textLabel8.Position = UDim2.fromOffset(19, 32)
    textLabel8.Size = UDim2.new(1,  - 80, 0, 16)
    textLabel8.Font = Enum.Font.Gotham
    textLabel8.Text = "developed by s1rcxlotus"
    textLabel8.TextColor3 = Color3.fromRGB(120, 130, 155)
    textLabel8.TextSize = 10
    textLabel8.TextXAlignment = Enum.TextXAlignment.Left
    textLabel8.Parent = frame6
end
do
    local hideButton = Instance.new("TextButton")
    hideButton.Name = "HideButton"
    hideButton.AnchorPoint = Vector2.new(1, 0.5)
    hideButton.Position = UDim2.new(1,  - 14, 0.5, 0)
    hideButton.Size = UDim2.fromOffset(34, 34)
    hideButton.BackgroundColor3 = Color3.fromRGB(26, 30, 42)
    hideButton.Text = "â€”"
    hideButton.TextColor3 = Color3.fromRGB(220, 225, 240)
    hideButton.TextSize = 16
    hideButton.Font = Enum.Font.GothamBold
    hideButton.AutoButtonColor =  false
    hideButton.Active =  true
    hideButton.ZIndex = 20
    hideButton.Parent = frame6
    Instance.new("UICorner", hideButton).CornerRadius = UDim.new(0, 10)
end
do
    local v67 =  false
    local position7, position8
    f10(frame6.InputBegan, function(p20)
        local v68 = p20.UserInputType == Enum.UserInputType.MouseButton1 or p20.UserInputType == Enum.UserInputType.Touch
        local connect3
        if v68 then
            v67 =  true
            position7 = p20.Position
            position8 = mainWindow.Position
            connect3 =  nil
            connect3 = p20.Changed:Connect(function()
                if p20.UserInputState == Enum.UserInputState.End then
                    v67 =  false
                    connect3:Disconnect()
                end
            end
)
        end
    end
)
    f10(userInputService.InputChanged, function(p21)
        if v67 and(p21.UserInputType == Enum.UserInputType.MouseMovement or p21.UserInputType == Enum.UserInputType.Touch) then
            local v69 = p21.Position - position7
            local udim2 = UDim2.new(position8.X.Scale, position8.X.Offset + v69.X, position8.Y.Scale, position8.Y.Offset + v69.Y)
            mainWindow.Position = mainWindow.Position:Lerp(udim2, 0.28)
        end
    end
)
    frame8 = Instance.new("Frame")
    frame8.Position = UDim2.fromOffset(12, 68)
    frame8.Size = UDim2.fromOffset(102, 225)
    frame8.BackgroundTransparency = 1
    frame8.Parent = mainWindow
    local uiListLayout2 = Instance.new("UIListLayout")
    uiListLayout2.Padding = UDim.new(0, 8)
    uiListLayout2.Parent = frame8
end
scrollingFrame = Instance.new("ScrollingFrame")
local function f15(text4, p22, v70)
    local textButton2 = Instance.new("TextButton")
    textButton2.Size = UDim2.new(1, 0, 0, 34)
    textButton2.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
    textButton2.BorderSizePixel = 0
    textButton2.AutoButtonColor =  false
    textButton2.Text = ""
    textButton2.Parent = scrollingFrame
    Instance.new("UICorner", textButton2).CornerRadius = UDim.new(0, 8)
    local frame9 = Instance.new("Frame")
    frame9.Position = UDim2.fromOffset(10, 8)
    frame9.Size = UDim2.fromOffset(18, 18)
    frame9.BackgroundColor3 = p22 and Color3.fromRGB(145, 75, 235) or Color3.fromRGB(38, 43, 56)
    frame9.BorderSizePixel = 0
    frame9.Parent = textButton2
    Instance.new("UICorner", frame9).CornerRadius = UDim.new(0, 5)
    local textLabel9 = Instance.new("TextLabel")
    textLabel9.Size = UDim2.fromScale(1, 1)
    textLabel9.BackgroundTransparency = 1
    textLabel9.Text = p22 and "âœ“" or ""
    textLabel9.TextColor3 = Color3.new(1, 1, 1)
    textLabel9.Font = Enum.Font.GothamBold
    textLabel9.TextSize = 12
    textLabel9.Parent = frame9
    local textLabel10 = Instance.new("TextLabel")
    textLabel10.Position = UDim2.fromOffset(38, 0)
    textLabel10.Size = UDim2.new(1,  - 46, 1, 0)
    textLabel10.BackgroundTransparency = 1
    textLabel10.Text = text4
    textLabel10.TextColor3 = Color3.fromRGB(220, 225, 235)
    textLabel10.TextSize = 12
    textLabel10.Font = Enum.Font.GothamMedium
    textLabel10.TextXAlignment = Enum.TextXAlignment.Left
    textLabel10.Parent = textButton2
    local v71 = p22
    f10(textButton2.MouseButton1Click, function()
        v71 =  not v71
        tweenService:Create(frame9, TweenInfo.new(0.15), {
            BackgroundColor3 = v71 and Color3.fromRGB(145,
            75,
            235) or Color3.fromRGB(38,
            43,
            56),
        }
):Play()
        textLabel9.Text = v71 and "âœ“" or ""
        v70(v71)
    end
)
    return textButton2
end
scrollingFrame.Position = UDim2.fromOffset(124, 68)
local function f16(text5, p23, fn2)
    local frame10 = Instance.new("Frame")
    frame10.Size = UDim2.new(1, 0, 0, 42)
    frame10.BackgroundTransparency = 1
    frame10.Parent = scrollingFrame
    local textButton3 = Instance.new("TextButton")
    textButton3.Size = UDim2.new(1, 0, 0, 42)
    textButton3.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
    textButton3.BorderSizePixel = 0
    textButton3.AutoButtonColor =  false
    textButton3.Text = ""
    textButton3.Parent = frame10
    Instance.new("UICorner", textButton3).CornerRadius = UDim.new(0, 8)
    local frame11 = Instance.new("Frame")
    frame11.Position = UDim2.fromOffset(10, 12)
    frame11.Size = UDim2.fromOffset(18, 18)
    frame11.BackgroundColor3 = p23 and Color3.fromRGB(145, 75, 235) or Color3.fromRGB(38, 43, 56)
    frame11.BorderSizePixel = 0
    frame11.Parent = textButton3
    Instance.new("UICorner", frame11).CornerRadius = UDim.new(0, 5)
    local textLabel11 = Instance.new("TextLabel")
    textLabel11.Size = UDim2.fromScale(1, 1)
    textLabel11.BackgroundTransparency = 1
    textLabel11.Text = p23 and "âœ“" or ""
    textLabel11.TextColor3 = Color3.new(1, 1, 1)
    textLabel11.Font = Enum.Font.GothamBold
    textLabel11.TextSize = 12
    textLabel11.Parent = frame11
    local textLabel12 = Instance.new("TextLabel")
    textLabel12.Position = UDim2.fromOffset(38, 0)
    textLabel12.Size = UDim2.new(1,  - 46, 1, 0)
    textLabel12.BackgroundTransparency = 1
    textLabel12.Text = text5
    textLabel12.TextColor3 = Color3.fromRGB(220, 225, 235)
    textLabel12.TextSize = 12
    textLabel12.Font = Enum.Font.GothamMedium
    textLabel12.TextXAlignment = Enum.TextXAlignment.Left
    textLabel12.Parent = textButton3
    local v72 = p23
    f10(textButton3.MouseButton1Click, function()
        v72 =  not v72
        frame11.BackgroundColor3 = v72 and Color3.fromRGB(145, 75, 235) or Color3.fromRGB(38, 43, 56)
        textLabel11.Text = v72 and "âœ“" or ""
        fn2(v72)
    end
)
    return frame10
end
scrollingFrame.Size = UDim2.new(1,  - 136, 1,  - 78)
scrollingFrame.BackgroundColor3 = Color3.fromRGB(17, 20, 28)
scrollingFrame.BorderSizePixel = 0
scrollingFrame.ClipsDescendants =  true
scrollingFrame.CanvasSize = UDim2.fromOffset(0, 0)
scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
scrollingFrame.ScrollBarThickness = 4
scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(155, 90, 255)
scrollingFrame.Active =  true
scrollingFrame.ScrollBarImageTransparency = 0.3
scrollingFrame.ScrollingEnabled =  true
scrollingFrame.Parent = mainWindow
local function f17(text6, p24, p25, fn3)
    local text7 = p25
    local textButton4 = Instance.new("TextButton")
    textButton4.Size = UDim2.new(1, 0, 0, 42)
    textButton4.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
    textButton4.BorderSizePixel = 0
    textButton4.AutoButtonColor =  false
    textButton4.Text = ""
    textButton4.Parent = scrollingFrame
    Instance.new("UICorner", textButton4).CornerRadius = UDim.new(0, 8)
    local textLabel13 = Instance.new("TextLabel")
    textLabel13.Position = UDim2.fromOffset(12, 0)
    textLabel13.Size = UDim2.new(0.5, 0, 1, 0)
    textLabel13.BackgroundTransparency = 1
    textLabel13.Text = text6
    textLabel13.TextColor3 = Color3.fromRGB(210, 215, 225)
    textLabel13.TextSize = 11
    textLabel13.Font = Enum.Font.GothamMedium
    textLabel13.TextXAlignment = Enum.TextXAlignment.Left
    textLabel13.Parent = textButton4
    local textLabel14 = Instance.new("TextLabel")
    textLabel14.Position = UDim2.new(0.4, 0, 0, 0)
    textLabel14.Size = UDim2.new(0.6,  - 12, 1, 0)
    textLabel14.BackgroundTransparency = 1
    textLabel14.Text = text7
    textLabel14.TextColor3 = Color3.fromRGB(155, 90, 255)
    textLabel14.TextSize = 11
    textLabel14.Font = Enum.Font.GothamBold
    textLabel14.TextXAlignment = Enum.TextXAlignment.Right
    textLabel14.Parent = textButton4
    local v73 =  false
    local frame12
    local function f18()
        if frame12 then
            frame12:Destroy()
            frame12 =  nil
        end
        v73 =  false
    end
    f10(textButton4.MouseButton1Click, function()
        if v73 then
            f18()
            return
        else
            v73 =  true
            frame12 = Instance.new("Frame")
            frame12.ZIndex = 50
            frame12.ClipsDescendants =  true
            frame12.BackgroundColor3 = Color3.fromRGB(20, 24, 34)
            frame12.BorderSizePixel = 0
            frame12.Parent = playerVisualizationTool
            Instance.new("UICorner", frame12).CornerRadius = UDim.new(0, 8)
            local absolutePosition = textButton4.AbsolutePosition
            local absoluteSize = textButton4.AbsoluteSize
            frame12.Position = UDim2.fromOffset(absolutePosition.X, absolutePosition.Y + absoluteSize.Y + 4)
            frame12.Size = UDim2.fromOffset(absoluteSize.X, math.min( # p24 * 32, 160))
            Instance.new("UIListLayout").Parent = frame12
            for index3, value3 in ipairs(p24) do
                local v74 = value3
                local textButton5 = Instance.new("TextButton")
                textButton5.Size = UDim2.new(1, 0, 0, 32)
                textButton5.BackgroundTransparency = 1
                textButton5.Text = v74
                textButton5.TextColor3 = Color3.fromRGB(220, 225, 235)
                textButton5.TextSize = 11
                textButton5.Font = Enum.Font.GothamMedium
                textButton5.ZIndex = 51
                textButton5.Parent = frame12
                f10(textButton5.MouseButton1Click, function()
                    text7 = v74
                    textLabel14.Text = v74
                    fn3(v74)
                    f18()
                end
)
            end
            return
        end
    end
)
    return textButton4
end
Instance.new("UICorner", scrollingFrame).CornerRadius = UDim.new(0, 10)
local function f19(text8, p26, p27, p28, p29, fn4, p30)
    local frame13 = Instance.new("Frame")
    frame13.Size = UDim2.new(1, 0, 0, 64)
    frame13.BackgroundTransparency = 1
    frame13.Parent = scrollingFrame
    local textLabel15 = Instance.new("TextLabel")
    textLabel15.Position = UDim2.fromOffset(2, 0)
    textLabel15.Size = UDim2.new(1,  - 4, 0, 22)
    textLabel15.BackgroundTransparency = 1
    textLabel15.TextColor3 = Color3.fromRGB(225, 220, 240)
    textLabel15.TextSize = 12
    textLabel15.Font = Enum.Font.GothamMedium
    textLabel15.TextXAlignment = Enum.TextXAlignment.Left
    textLabel15.Parent = frame13
    local textLabel16 = Instance.new("TextLabel")
    textLabel16.AnchorPoint = Vector2.new(1, 0)
    textLabel16.Position = UDim2.new(1,  - 2, 0, 0)
    textLabel16.Size = UDim2.fromOffset(70, 22)
    textLabel16.BackgroundTransparency = 1
    textLabel16.TextColor3 = Color3.fromRGB(180, 125, 255)
    textLabel16.TextSize = 11
    textLabel16.Font = Enum.Font.GothamBold
    textLabel16.TextXAlignment = Enum.TextXAlignment.Right
    textLabel16.Parent = frame13
    local frame14 = Instance.new("Frame")
    frame14.Position = UDim2.fromOffset(2, 31)
    frame14.Size = UDim2.new(1,  - 4, 0, 7)
    frame14.BackgroundColor3 = Color3.fromRGB(43, 35, 58)
    frame14.BorderSizePixel = 0
    frame14.Active =  true
    frame14.Parent = frame13
    Instance.new("UICorner", frame14).CornerRadius = UDim.new(1, 0)
    local frame15 = Instance.new("Frame")
    frame15.Size = UDim2.new(0, 0, 1, 0)
    frame15.BackgroundColor3 = Color3.fromRGB(155, 75, 245)
    frame15.BorderSizePixel = 0
    frame15.Parent = frame14
    Instance.new("UICorner", frame15).CornerRadius = UDim.new(1, 0)
    local frame16 = Instance.new("Frame")
    frame16.AnchorPoint = Vector2.new(0.5, 0.5)
    frame16.Size = UDim2.fromOffset(16, 16)
    frame16.BackgroundColor3 = Color3.fromRGB(215, 180, 255)
    frame16.BorderSizePixel = 0
    frame16.Parent = frame14
    Instance.new("UICorner", frame16).CornerRadius = UDim.new(1, 0)
    local v75 =  false
    local function f20(p31)
        if p30 then
            return p30(p31)
        end
        if p28 < 1 then
            return string.format("%.2f", p31)
        end
        return tostring(math.floor(p31 + 0.5))
    end
    local function f21(p32)
        local v76 = math.clamp(p32, p26, p27)
        if p28 > 0 then
            local v77 = v76 - p26
            local v78 = math.floor(v77 / p28 + 0.5)
            v76 = math.clamp(p26 + v78 * p28, p26, p27)
        end
        local v79 = p27 - p26
        local v80 = v79 == 0 and 0 or(v76 - p26) / v79
        frame15.Size = UDim2.new(v80, 0, 1, 0)
        frame16.Position = UDim2.new(v80, 0, 0.5, 0)
        textLabel15.Text = text8
        textLabel16.Text = f20(v76)
        fn4(v76)
    end
    local function f22(p33)
        local v81 = math.max(frame14.AbsoluteSize.X, 1)
        f21(p26 +(p27 - p26) *(math.clamp(p33.Position.X - frame14.AbsolutePosition.X, 0, v81) / v81))
    end
    f10(frame14.InputBegan, function(p34)
        if p34.UserInputType == Enum.UserInputType.MouseButton1 or p34.UserInputType == Enum.UserInputType.Touch then
            v75 =  true
            f22(p34)
        end
    end
)
    f10(userInputService.InputChanged, function(p35)
        if v75 and(p35.UserInputType == Enum.UserInputType.MouseMovement or p35.UserInputType == Enum.UserInputType.Touch) then
            f22(p35)
        end
    end
)
    f10(userInputService.InputEnded, function(p36)
        if p36.UserInputType == Enum.UserInputType.MouseButton1 or p36.UserInputType == Enum.UserInputType.Touch then
            v75 =  false
        end
    end
)
    f21(p29)
    return frame13
end
local function f23()
    for index4, value4 in ipairs(scrollingFrame:GetChildren()) do
        if not value4:IsA("UICorner") then
            value4:Destroy()
        end
    end
end
local v82 = {
}
local v83
local function f24(p37)
    if not v83 or type(v83.GetAsset) ~= "function" then
        return nil
    else
        local v84, v85 = pcall(v83.GetAsset, p37)
        if not v84 or type(v85) ~= "table" then
            return nil
        end
        return v85
    end
end
local function f25(p38, fn5)
    v10 = p38
    for key, value5 in pairs(v82) do
        local v86 = key == p38
        local color7 = v86 and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(140, 150, 175)
        value5.BackgroundColor3 = v86 and Color3.fromRGB(125, 65, 205) or Color3.fromRGB(21, 25, 35)
        local label = value5:FindFirstChild("Label")
        if label then
            label.TextColor3 = color7
        end
    end
    f23()
    scrollingFrame.CanvasPosition = Vector2.new(0, 0)
    fn5()
end
local f26
local function f27(p39, p40)
    local icon = Instance.new("ImageLabel")
    icon.Name = "Icon"
    icon.Position = UDim2.fromOffset(10, 8)
    icon.Size = UDim2.fromOffset(20, 20)
    icon.BackgroundTransparency = 1
    icon.ScaleType = Enum.ScaleType.Fit
    icon.ImageColor3 = Color3.fromRGB(185, 190, 215)
    icon.Parent = p39
    if p40 == "globe" then
        icon.Image = "rbxassetid://10723404337"
        return icon
    else
        local v87 = f24(p40)
        if v87 then
            local url = v87.Url
            local v88 = v87.Id or v87.id
            if not url and v88 then
                url = "rbxassetid://"..tostring(v88)
            end
            if url then
                icon.Image = url
                local imageRectOffset = v87.ImageRectOffset or v87.imageRectOffset
                local imageRectSize = v87.ImageRectSize or v87.imageRectSize
                if imageRectOffset and imageRectSize then
                    icon.ImageRectOffset = imageRectOffset
                    icon.ImageRectSize = imageRectSize
                end
                return icon
            end
            icon:Destroy()
            return f26(p39, p40)
        end
        icon:Destroy()
        return f26(p39, p40)
    end
end
local function f28(p41)
    local textLabel17 = Instance.new("TextLabel")
    textLabel17.Size = UDim2.new(1, 0, 0, 24)
    textLabel17.BackgroundTransparency = 1
    textLabel17.Text = string.upper(p41)
    textLabel17.TextColor3 = Color3.fromRGB(165, 90, 255)
    textLabel17.TextSize = 10
    textLabel17.Font = Enum.Font.GothamBold
    textLabel17.TextXAlignment = Enum.TextXAlignment.Left
    textLabel17.Parent = scrollingFrame
    return textLabel17
end
function f26(parent, p42)
    local icon2 = Instance.new("Frame")
    icon2.Name = "Icon"
    icon2.Position = UDim2.fromOffset(10, 8)
    icon2.Size = UDim2.fromOffset(20, 20)
    icon2.BackgroundTransparency = 1
    icon2.Parent = parent
    local color8 = Color3.fromRGB(185, 190, 215)
    local function f29(p43, p44)
        local frame17 = Instance.new("Frame")
        frame17.BorderSizePixel = 0
        frame17.BackgroundColor3 = color8
        frame17.AnchorPoint = Vector2.new(0, 0.5)
        frame17.Position = UDim2.fromScale(p43[1], p43[2])
        local v89 = p44[1] - p43[1]
        local v90 = p44[2] - p43[2]
        local v91 = math.sqrt(v89 * v89 + v90 * v90)
        frame17.Size = UDim2.new(0, v91 * 20, 0, 1.7)
        frame17.Rotation = math.deg(math.atan2(v90, v89))
        frame17.Parent = icon2
    end
    local function f30(p45, p46, p47)
        local frame18 = Instance.new("Frame")
        frame18.BorderSizePixel = 0
        frame18.BackgroundTransparency = p47 and 0 or 1
        frame18.BackgroundColor3 = color8
        frame18.Position = UDim2.fromScale(p45[1], p45[2])
        frame18.Size = UDim2.fromScale(p46, p46)
        frame18.Parent = icon2
        local uiCorner5 = Instance.new("UICorner")
        uiCorner5.CornerRadius = UDim.new(1, 0)
        uiCorner5.Parent = frame18
        if not p47 then
            local uiStroke9 = Instance.new("UIStroke")
            uiStroke9.Color = color8
            uiStroke9.Thickness = 1.7
            uiStroke9.Parent = frame18
        end
    end
    if p42 == "crosshair" then
        f30({
            0.25,
            0.25
        }, 0.5,  false)
        f30({
            0.44,
            0.44
        }, 0.12,  true)
        f29({
            0.5,
            0.02
        }, {
            0.5,
            0.23
        }
)
        f29({
            0.5,
            0.77
        }, {
            0.5,
            0.98
        }
)
        f29({
            0.02,
            0.5
        }, {
            0.23,
            0.5
        }
)
        f29({
            0.77,
            0.5
        }, {
            0.98,
            0.5
        }
)
    elseif p42 == "eye" then
        f29({
            0.08,
            0.5
        }, {
            0.28,
            0.28
        }
)
        f29({
            0.28,
            0.28
        }, {
            0.5,
            0.2
        }
)
        f29({
            0.5,
            0.2
        }, {
            0.72,
            0.28
        }
)
        f29({
            0.72,
            0.28
        }, {
            0.92,
            0.5
        }
)
        f29({
            0.92,
            0.5
        }, {
            0.72,
            0.72
        }
)
        f29({
            0.72,
            0.72
        }, {
            0.5,
            0.8
        }
)
        f29({
            0.5,
            0.8
        }, {
            0.28,
            0.72
        }
)
        f29({
            0.28,
            0.72
        }, {
            0.08,
            0.5
        }
)
        f30({
            0.41,
            0.41
        }, 0.18,  false)
    elseif p42 == "globe-2" or p42 == "globe" then
    elseif p42 == "user-round" or p42 == "user" then
        f30({
            0.36,
            0.08
        }, 0.28,  false)
        local frame19 = Instance.new("Frame")
        frame19.BorderSizePixel = 0
        frame19.BackgroundTransparency = 1
        frame19.Position = UDim2.fromScale(0.17, 0.46)
        frame19.Size = UDim2.fromScale(0.66, 0.44)
        frame19.Parent = icon2
        local uiStroke10 = Instance.new("UIStroke")
        uiStroke10.Color = color8
        uiStroke10.Thickness = 1.7
        uiStroke10.Parent = frame19
        local uiCorner6 = Instance.new("UICorner")
        uiCorner6.CornerRadius = UDim.new(1, 0)
        uiCorner6.Parent = frame19
    elseif p42 == "info" or p42 == "badge-info" then
        f30({
            0.12,
            0.12
        }, 0.76,  false)
        f30({
            0.465,
            0.25
        }, 0.07,  true)
        f29({
            0.5,
            0.4
        }, {
            0.5,
            0.73
        }
)
    end
    return icon2
end
local f31
local function f32()
    local uiListLayout3 = Instance.new("UIListLayout")
    uiListLayout3.Padding = UDim.new(0, 8)
    uiListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
    uiListLayout3.Parent = scrollingFrame
    f31(scrollingFrame)
    return uiListLayout3
end
do
    local function f33(p48, p49)
        local textButton6 = Instance.new("TextButton")
        textButton6.Size = UDim2.new(1, 0, 0, 36)
        textButton6.BackgroundColor3 = Color3.fromRGB(21, 25, 35)
        textButton6.BorderSizePixel = 0
        textButton6.AutoButtonColor =  false
        textButton6.Text = ""
        textButton6.Parent = frame8
        Instance.new("UICorner", textButton6).CornerRadius = UDim.new(0, 9)
        f27(textButton6, p49)
        local label2 = Instance.new("TextLabel")
        label2.Name = "Label"
        label2.Position = UDim2.fromOffset(35, 0)
        label2.Size = UDim2.new(1,  - 41, 1, 0)
        label2.BackgroundTransparency = 1
        label2.Text = p48
        label2.TextColor3 = Color3.fromRGB(140, 150, 175)
        label2.TextSize = 11
        label2.Font = Enum.Font.GothamMedium
        label2.TextXAlignment = Enum.TextXAlignment.Left
        label2.Parent = textButton6
        v82[p48] = textButton6
        return textButton6
    end
    function f31(parent2)
        local uiPadding = Instance.new("UIPadding")
        uiPadding.PaddingTop = UDim.new(0, 12)
        uiPadding.PaddingBottom = UDim.new(0, 12)
        uiPadding.PaddingLeft = UDim.new(0, 12)
        uiPadding.PaddingRight = UDim.new(0, 12)
        uiPadding.Parent = parent2
    end
    v11 = f33("Main", "crosshair")
    v12 = f33("ESP", "eye")
    v13 = f33("Mics", "globe")
    v14 = f33("Teleport", "user-round")
    v15 = f33("About", "info")
end
local function f34(p50)
    v5.TrackingEnabled = p50
    if p50 then
        aimToggle.Text = "AIM"
        aimToggle.BackgroundColor3 = Color3.fromRGB(145, 75, 235)
        f12("Aimbot ON")
    else
        aimToggle.Text = "OFF"
        aimToggle.BackgroundColor3 = Color3.fromRGB(235, 65, 65)
        task.delay(0.3, function()
            if not v5.TrackingEnabled then
                aimToggle.Text = "AIM"
            end
        end
)
        f12("Aimbot OFF")
    end
    fovCircle.Visible = p50 and v5.FOVEnabled
end
local function f35(p51)
    local v92 = tonumber(p51) or 100
    if v92 >= 100 then
        return true
    end
    if v92 <= 0 then
        return false
    end
    return math.random(1, 100) <= v92
end
v16 = {
    targetPart =  nil,
    targetPlayer =  nil,
    namecallOld =  nil,
    indexOld =  nil,
    mouseHookActive =  false,
    hookActive =  false,
    fovCircle =  nil,
    fovStroke =  nil,
}
local function f36(p52)
    local v93 =  not p52 or not p52.Parent
    local zero
    if v93 then
        return nil
    else
        local v94 = tonumber(v5.SA2_Prediction)
        local v95 = math.clamp(v94 or 0, 0, 0.5)
        if v95 <= 0 then
            return p52.Position
        end
        zero = Vector3.zero
        pcall(function()
            zero = p52.AssemblyLinearVelocity
        end
)
        return p52.Position + zero * v95
    end
end
local function f37(p53)
    if not p53 or p53 == localPlayer then
        return false
    elseif v5.SA2_TeamTarget == "All" then
        return true
    elseif v5.SA2_TeamTarget == "Teams" then
        if localPlayer.Team and p53.Team then
            return localPlayer.Team == p53.Team
        end
        return false
    else
        if localPlayer.Team and p53.Team then
            return localPlayer.Team ~= p53.Team
        end
        return true
    end
end
local f38
local function f39(p54)
    local v96 = f38(p54)
    if not v96 then
        return false
    else
        local humanoid2 = v96:FindFirstChildOfClass("Humanoid")
        local v97 = humanoid2 ~=  nil
        local humanoidRootPart2 = v96:FindFirstChild("HumanoidRootPart")
        return v97 and humanoid2.Health > 0 and humanoidRootPart2 ~=  nil
    end
end
function f38(p55)
    if not p55 then
        return nil
    elseif typeof(p55) == "Instance" then
        if p55:IsA("Player") then
            return p55.Character
        end
        if p55:IsA("Model") then
            return p55
        end
        return nil
    else
        return nil
    end
end
local function f40(p56)
    if typeof(p56) ~= "Instance" then
        return false
    end
    if not(p56:IsA("RemoteEvent") or p56:IsA("RemoteFunction") or p56:IsA("UnreliableRemoteEvent")) then
        return false
    else
        local v98 = string.lower(p56.Name)
        for index5, value6 in ipairs(v5.SA2_RemoteNames or {
        }
) do
            if string.find(v98, string.lower(tostring(value6)), 1,  true) then
                return true
            end
        end
        return false
    end
end
local function f41(p57)
    local v99 = f38(p57)
    if not v99 then
        return nil
    elseif v5.SA2_TargetPart == "Random" then
        if f35(v5.SA2_HeadshotChance) then
            return v99:FindFirstChild("Head") or v99:FindFirstChild("HumanoidRootPart")
        end
        return v99:FindFirstChild("HumanoidRootPart") or v99:FindFirstChild("Head")
    else
        return v99:FindFirstChild(v5.SA2_TargetPart) or v99:FindFirstChild("Head") or v99:FindFirstChild("HumanoidRootPart")
    end
end
local function f42()
    if v16.namecallOld and hookmetamethod then
        pcall(function()
            hookmetamethod(game, "__namecall", v16.namecallOld)
        end
)
        v16.namecallOld =  nil
    end
    if v16.indexOld and hookmetamethod then
        pcall(function()
            hookmetamethod(game, "__index", v16.indexOld)
        end
)
        v16.indexOld =  nil
    end
    v16.hookActive =  false
    v16.mouseHookActive =  false
end
local function f43(p58, p59)
    if not v5.SA2_Wallcheck then
        return true
    end
    if not p58 or not p59 then
        return false
    else
        local currentCamera6 = v1.CurrentCamera
        if not currentCamera6 then
            return false
        else
            local position9 = currentCamera6.CFrame.Position
            local position10 = p59.Position
            local raycastParams2 = RaycastParams.new()
            raycastParams2.FilterType = Enum.RaycastFilterType.Exclude
            raycastParams2.FilterDescendantsInstances = {
                localPlayer.Character,
                p58
            }
            raycastParams2.IgnoreWater =  true
            return v1:Raycast(position9, position10 - position9, raycastParams2) ==  nil
        end
    end
end
local f44
local function f45()
    if not v5.SilentAimHK then
        v16.targetPlayer =  nil
        v16.targetPart =  nil
        return
    else
        local targetPlayer, targetPart = f44()
        v16.targetPlayer = targetPlayer
        v16.targetPart = targetPart
        return
    end
end
function f44()
    local health
    if not v5.SilentAimHK then
        return nil,  nil
    else
        local currentCamera7 = v1.CurrentCamera
        if not currentCamera7 then
            return nil,  nil
        else
            local vector = Vector2.new(currentCamera7.ViewportSize.X / 2, currentCamera7.ViewportSize.Y / 2)
            local v100 =  nil
            local v101 =  nil
            local huge2 = math.huge
            local v102 =(tonumber(v5.SA2_FovRadius) or 100) ^ 2
            local v103 = tonumber(v5.SA2_TargetRange) or 500
            local character3 = localPlayer.Character
            local humanoidRootPart3 = character3 and character3:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart3 then
                return nil,  nil
            end
            for index6, value7 in ipairs(players:GetPlayers()) do
                if f37(value7) and f39(value7) then
                    local character4 = value7.Character
                    local v104 = f41(value7)
                    if character4 and v104 then
                        local magnitude =(v104.Position - humanoidRootPart3.Position).Magnitude
                        if magnitude <= v103 and f43(character4, v104) then
                            local v105, v106 = currentCamera7:WorldToViewportPoint(v104.Position)
                            local v107 =  false
                            local huge3 = math.huge
                            if v5.SA2_ThreeSixtyMode then
                                v107 =  true
                            elseif v106 and v105.Z > 0 then
                                local v108 = v105.X - vector.X
                                local v109 = v105.Y - vector.Y
                                huge3 = v108 * v108 + v109 * v109
                                v107 = huge3 <= v102
                            end
                            if v107 then
                                if v5.SA2_GetTarget == "Lowest Health" then
                                    local humanoid3 = character4:FindFirstChildOfClass("Humanoid")
                                    health = humanoid3 and humanoid3.Health or math.huge
                                else
                                    health = v5.SA2_ThreeSixtyMode and magnitude or huge3
                                end
                                if health < huge2 then
                                    v100 = value7
                                    huge2 = health
                                    v101 = v104
                                end
                            end
                        end
                    end
                end
            end
            return v100, v101
        end
    end
end
local f46
local function f47(p60, p61, p62)
    local v110 = table.clone(p60)
    for index7, value8 in ipairs(v110) do
        local v111 = typeof(value8)
        if v111 == "table" then
            v110[index7] = f46(value8,  nil, p61, p62)
        elseif v111 == "CFrame" then
            v110[index7] = CFrame.lookAt(value8.Position, p61)
        elseif v111 == "Ray" then
            v110[index7] = f46(value8,  nil, p61, p62)
        end
    end
    return v110
end
function f46(p63, p64, p65, p66)
    local v112 = typeof(p63)
    local v113 =  type(p64) == "string" and string.lower(p64) or ""
    if v112 == "Vector3" then
        if v113 == "direction" or v113 == "lookvector" or v113 == "dir" or v113 == "aimdirection" then
            local v114 = p65 - p63
            return v114.Magnitude > 0 and v114.Unit or p63
        end
        if v113 == "hitposition" or v113 == "hitpos" or v113 == "endposition" or v113 == "endpos" or v113 == "targetposition" then
            return p65
        end
        if v5.SA2_BulletTeleport and(v113 == "origin" or v113 == "start" or v113 == "startpos" or v113 == "startposition" or v113 == "muzzleposition") then
            local v115 = p65 - p63
            return v115.Magnitude > 0 and p65 - v115.Unit * 2 or p63
        end
        return p63
    elseif v112 == "CFrame" then
        if v113 == "direction" or v113 == "lookvector" or v113 == "dir" then
            return CFrame.lookAt(p63.Position, p65)
        end
        if v113 == "origin" or v113 == "start" or v113 == "startpos" or v113 == "startposition" then
            if v5.SA2_BulletTeleport then
                local v116 = p65 - p63.Position
                if v116.Magnitude > 0 then
                    return CFrame.new(p65 - v116.Unit * 2)
                end
                return p63
            end
            return p63
        end
        return p63
    elseif v112 == "Ray" then
        local origin = p63.Origin
        if v5.SA2_BulletTeleport then
            local v117 = p65 - origin
            if v117.Magnitude > 0 then
                origin = p65 - v117.Unit * 2
            end
        end
        local v118 = p65 - origin
        return v118.Magnitude > 0 and Ray.new(origin, v118.Unit * 1000) or p63
    else
        if v112 == "table" then
            local v119 =  false
            local v120 =  false
            local v121 = {
            }
            local v122 =  false
            for key2, value9 in pairs(p63) do
                local v123 =  type(key2) == "string" and string.lower(key2) or ""
                v121[key2] = f46(value9, v123, p65, p66)
                if v123 == "direction" or v123 == "lookvector" or v123 == "dir" then
                    v119 =  true
                elseif v123 == "hitposition" or v123 == "hitpos" or v123 == "endposition" or v123 == "endpos" then
                    v120 =  true
                elseif v123 == "hitpart" or v123 == "target" then
                    v122 =  true
                end
            end
            if v119 and not v120 then
                v121.hitPosition = p65
            end
            if v119 and not v122 then
                v121.hitPart = p66
            end
            if v5.SA2_Wallbang then
                for key3 in pairs(v121) do
                    local v124 =  type(key3) == "string" and string.lower(key3) or ""
                    if v124 == "hitthroughwall" or v124 == "ignorewalls" or v124 == "wallbang" or v124 == "penetrate" then
                        v121[key3] =  true
                    end
                end
            end
            return v121
        end
        return p63
    end
end
local f48
local function f50(p67)
    v5.SilentAimHK = p67
    if p67 then
        f48()
        f12("Silent Aim ON")
    else
        v16.targetPlayer =  nil
        v16.targetPart =  nil
        f12("Silent Aim OFF")
    end
end
do
    function f48()
        if v16.hookActive then
            return
        end
        if type(hookmetamethod) ~= "function" or type(newcclosure) ~= "function" or type(getnamecallmethod) ~= "function" or type(checkcaller) ~= "function" then
            warn("[Zenith] SilentAim HK needs metamethod hook support.")
            return
        end
        v16.namecallOld = hookmetamethod(game, "__namecall", newcclosure(function(...)
            local v125 = {
...
            }
            if not v5.SilentAimHK then
                return v16.namecallOld(...)
            elseif v5._SA2HookBusy then
                return v16.namecallOld(...)
            elseif checkcaller() then
                return v16.namecallOld(...)
            else
                local v126 = getnamecallmethod()
                local v127 = v126 == "Raycast"
                local v128 = v126 == "FireServer"
                local v129 =  not v127
                local v130 = v126 == "InvokeServer"
                if v129 and not v128 and not v130 then
                    return v16.namecallOld(...)
                else
                    local v131 = {
                    }
                    for index8, value10 in ipairs(v5.SA2_AimMethods or {
                    }
) do
                        v131[value10] =  true
                    end
                    if v127 and not v131.Raycast then
                        return v16.namecallOld(...)
                    end
                    if v128 and not v131.FireServer then
                        return v16.namecallOld(...)
                    end
                    if v130 and not v131.InvokeServer then
                        return v16.namecallOld(...)
                    end
                    if(v128 or v130) and not f40(v125[1]) then
                        return v16.namecallOld(...)
                    end
                    if not v5.SA2_ThreeSixtyMode and not f35(v5.SA2_HitChance) then
                        return v16.namecallOld(...)
                    else
                        local targetPart2 = v16.targetPart
                        if not targetPart2 or not targetPart2.Parent then
                            return v16.namecallOld(...)
                        else
                            local v132 = f36(targetPart2)
                            if not v132 then
                                return v16.namecallOld(...)
                            elseif v127 then
                                local v133 = v125[2]
                                local v134 = v125[3]
                                if typeof(v133) ~= "Vector3" or typeof(v134) ~= "Vector3" then
                                    return v16.namecallOld(...)
                                elseif v5.SA2_BulletTeleport then
                                    local v135 = v132 - v133
                                    if v135.Magnitude > 0 then
                                        local unit = v135.Unit
                                        v125[2] = v132 - unit * 2
                                        v125[3] = unit *(v135.Magnitude + 2)
                                    end
                                    return v16.namecallOld(unpack(v125))
                                elseif v5.SA2_Wallbang then
                                    return {
                                        Instance = targetPart2,
                                        Position = v132,
                                        Normal =(v132 - v133).Magnitude > 0 and(v132 - v133).Unit or Vector3.new(0,
                                        1,
                                        0),
                                        Material = targetPart2.Material,
                                        Distance =(v132 - v133).Magnitude,
                                    }
                                else
                                    local v136 = v132 - v133
                                    if v136.Magnitude > 0 then
                                        v125[3] = v136.Unit * v134.Magnitude
                                    end
                                    return v16.namecallOld(unpack(v125))
                                end
                            else
                                local v137 = f47(v125, v132, targetPart2)
                                return v16.namecallOld(unpack(v137))
                            end
                        end
                    end
                end
            end
        end
))
        v16.hookActive =  true
        if not v16.indexOld then
            v16.indexOld = hookmetamethod(game, "__index", newcclosure(function(p68, p69)
                if not v5.SilentAimHK or v5._SA2HookBusy or checkcaller() then
                    return v16.indexOld(p68, p69)
                else
                    local v138 =  false
                    for index9, value11 in ipairs(v5.SA2_AimMethods or {
                    }
) do
                        if value11 == "Mouse.Hit" then
                            v138 =  true
                            break
                        end
                    end
                    if not v138 then
                        return v16.indexOld(p68, p69)
                    elseif p68 ~= localPlayer:GetMouse() then
                        return v16.indexOld(p68, p69)
                    else
                        local targetPart3 = v16.targetPart
                        if not targetPart3 or not targetPart3.Parent then
                            return v16.indexOld(p68, p69)
                        else
                            local currentCamera8 = v1.CurrentCamera
                            local v139 =  not currentCamera8
                            local v140 = f36(targetPart3)
                            if v139 or not v140 then
                                return v16.indexOld(p68, p69)
                            elseif p69 == "Hit" then
                                local v141 = v140 - currentCamera8.CFrame.Position
                                if v141.Magnitude > 0 then
                                    return CFrame.lookAt(v140, v140 + v141.Unit)
                                end
                                return v16.indexOld(p68, p69)
                            elseif p69 == "Target" then
                                return targetPart3
                            elseif p69 == "TargetFilter" then
                                return nil
                            elseif p69 == "UnitRay" then
                                local v142 = v140 - currentCamera8.CFrame.Position
                                if v142.Magnitude > 0 then
                                    return Ray.new(currentCamera8.CFrame.Position, v142.Unit *(v142.Magnitude + 5))
                                end
                                return v16.indexOld(p68, p69)
                            elseif p69 == "X" then
                                return currentCamera8:WorldToViewportPoint(v140).X
                            else
                                if p69 == "Y" then
                                    return currentCamera8:WorldToViewportPoint(v140).Y
                                end
                                return v16.indexOld(p68, p69)
                            end
                        end
                    end
                end
            end
))
            v16.mouseHookActive =  true
        end
    end
    f10(runService.Heartbeat, function()
        if not v5.SilentAimHK then
            return
        end
        f45()
    end
)
    local zenithSilentAimFOV = Instance.new("ScreenGui")
    zenithSilentAimFOV.Name = "ZenithSilentAimFOV"
    zenithSilentAimFOV.ResetOnSpawn =  false
    zenithSilentAimFOV.IgnoreGuiInset =  true
    zenithSilentAimFOV.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    zenithSilentAimFOV.Parent = localPlayer:WaitForChild("PlayerGui")
    local fov = Instance.new("Frame")
    fov.Name = "FOV"
    fov.AnchorPoint = Vector2.new(0.5, 0.5)
    fov.BackgroundTransparency = 1
    fov.BorderSizePixel = 0
    fov.Visible =  false
    fov.Parent = zenithSilentAimFOV
    Instance.new("UICorner", fov).CornerRadius = UDim.new(1, 0)
    local uiStroke11 = Instance.new("UIStroke")
    uiStroke11.Thickness = 1
    uiStroke11.Parent = fov
    v16.fovCircle = fov
    v16.fovStroke = uiStroke11
    f10(runService.Heartbeat, function()
        local currentCamera9 = v1.CurrentCamera
        if not currentCamera9 then
            return
        else
            local sa2FovVisible = v5.SilentAimHK and v5.SA2_FovVisible and not v5.SA2_ThreeSixtyMode
            fov.Visible = sa2FovVisible
            if sa2FovVisible then
                local viewportSize3 = currentCamera9.ViewportSize
                fov.Position = UDim2.fromOffset(viewportSize3.X / 2, viewportSize3.Y / 2)
                fov.Size = UDim2.fromOffset(math.max(2, v5.SA2_FovRadius * 2), math.max(2, v5.SA2_FovRadius * 2))
                uiStroke11.Color = v16.targetPart and v5.SA2_FovTargetColor or v5.SA2_FovColor
                uiStroke11.Transparency = 1 - math.clamp(v5.SA2_FovTransparency, 0, 1)
            end
            return
        end
    end
)
end
f10(userInputService.InputBegan, function(p70, p71)
    if p71 then
        return
    end
    if p70.KeyCode == v5.SA2_Key then
        f50( not v5.SilentAimHK)
    end
end
)
if Window and type(Window.OnDestroy) == "function" then
    pcall(function()
        Window:OnDestroy(function()
            pcall(function()
                f42()
            end
)
        end
)
    end
)
end
local function f51()
    f32()
    f28("Visual Overlay")
    f15("Enable ESP", v5.ESPEnabled, function(espEnabled)
        v5.ESPEnabled = espEnabled
    end
)
    f15("Box ESP", v5.BoxESP, function(boxESP)
        v5.BoxESP = boxESP
    end
)
    f15("Name Tags", v5.NameTags, function(nameTags)
        v5.NameTags = nameTags
    end
)
    f15("Distance", v5.Distance, function(distance)
        v5.Distance = distance
    end
)
end
local function f52()
    local frame20 = Instance.new("Frame")
    frame20.Size = UDim2.new(1, 0, 0, 58)
    frame20.BackgroundColor3 = Color3.fromRGB(58, 35, 82)
    frame20.BorderSizePixel = 0
    frame20.Parent = scrollingFrame
    Instance.new("UICorner", frame20).CornerRadius = UDim.new(0, 8)
    local textLabel18 = Instance.new("TextLabel")
    textLabel18.Position = UDim2.fromOffset(12, 7)
    textLabel18.Size = UDim2.new(1,  - 24, 0, 17)
    textLabel18.BackgroundTransparency = 1
    textLabel18.Text = "Warning"
    textLabel18.TextColor3 = Color3.fromRGB(225, 200, 255)
    textLabel18.TextSize = 11
    textLabel18.Font = Enum.Font.GothamBold
    textLabel18.TextXAlignment = Enum.TextXAlignment.Left
    textLabel18.Parent = frame20
    local textLabel19 = Instance.new("TextLabel")
    textLabel19.Position = UDim2.fromOffset(12, 24)
    textLabel19.Size = UDim2.new(1,  - 24, 0, 28)
    textLabel19.BackgroundTransparency = 1
    textLabel19.Text = "Use at your own risk â€¢ Don't use your main account if you plan to use this cheat."
    textLabel19.TextColor3 = Color3.fromRGB(235, 230, 245)
    textLabel19.TextSize = 9
    textLabel19.Font = Enum.Font.Gotham
    textLabel19.TextWrapped =  true
    textLabel19.TextXAlignment = Enum.TextXAlignment.Left
    textLabel19.TextYAlignment = Enum.TextYAlignment.Top
    textLabel19.Parent = frame20
    return frame20
end
local function f53()
    f32()
    f28("Silent Aim & Aimbot & Triggerbot")
    f16("Silent aim", v5.SilentAimHK, function(p72)
        f50(p72)
        task.defer(function()
            f25("Main", f53)
        end
)
    end
)
    if v5.SilentAimHK then
        f16("Wall Check", v5.SA2_Wallcheck, function(sa2Wallcheck)
            v5.SA2_Wallcheck = sa2Wallcheck
        end
)
        f16("Show FOV", v5.SA2_FovVisible, function(sa2FovVisible2)
            v5.SA2_FovVisible = sa2FovVisible2
        end
)
        f19("FOV", 10, 500, 5, v5.SA2_FovRadius, function(sa2FovRadius)
            v5.SA2_FovRadius = sa2FovRadius
        end
)
    end
    f16("Aimbot", v5.TrackingEnabled, function(p73)
        f34(p73)
        task.defer(function()
            f25("Main", f53)
        end
)
    end
)
    local frame21, frame22, textLabel20, textButton7, textButton8, frame23, textLabel21, f54
    if v5.TrackingEnabled then
        frame21 = Instance.new("Frame")
        frame21.Size = UDim2.new(1, 0, 0, 42)
        frame21.BackgroundTransparency = 1
        frame21.Parent = scrollingFrame
        local textButton9 = Instance.new("TextButton")
        textButton9.Size = UDim2.new(1, 0, 0, 42)
        textButton9.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
        textButton9.BorderSizePixel = 0
        textButton9.AutoButtonColor =  false
        textButton9.Text = ""
        textButton9.Parent = frame21
        Instance.new("UICorner", textButton9).CornerRadius = UDim.new(0, 8)
        frame22 = Instance.new("Frame")
        frame22.Position = UDim2.fromOffset(10, 12)
        frame22.Size = UDim2.fromOffset(18, 18)
        frame22.BackgroundColor3 = v5.ShowAimButton and Color3.fromRGB(145, 75, 235) or Color3.fromRGB(38, 43, 56)
        frame22.BorderSizePixel = 0
        frame22.Parent = textButton9
        Instance.new("UICorner", frame22).CornerRadius = UDim.new(0, 5)
        textLabel20 = Instance.new("TextLabel")
        textLabel20.Size = UDim2.fromScale(1, 1)
        textLabel20.BackgroundTransparency = 1
        textLabel20.Text = v5.ShowAimButton and "âœ“" or ""
        textLabel20.TextColor3 = Color3.new(1, 1, 1)
        textLabel20.Font = Enum.Font.GothamBold
        textLabel20.TextSize = 12
        textLabel20.Parent = frame22
        local textLabel22 = Instance.new("TextLabel")
        textLabel22.Position = UDim2.fromOffset(38, 0)
        textLabel22.Size = UDim2.new(1,  - 82, 1, 0)
        textLabel22.BackgroundTransparency = 1
        textLabel22.Text = "Show Aim Button"
        textLabel22.TextColor3 = Color3.fromRGB(220, 225, 235)
        textLabel22.TextSize = 12
        textLabel22.Font = Enum.Font.GothamMedium
        textLabel22.TextXAlignment = Enum.TextXAlignment.Left
        textLabel22.Parent = textButton9
        textButton7 = Instance.new("TextButton")
        textButton7.AnchorPoint = Vector2.new(1, 0.5)
        textButton7.Position = UDim2.new(1,  - 8, 0.5, 0)
        textButton7.Size = UDim2.fromOffset(34, 32)
        textButton7.BackgroundColor3 = Color3.fromRGB(35, 27, 48)
        textButton7.BorderSizePixel = 0
        textButton7.AutoButtonColor =  false
        textButton7.Text = "â€º"
        textButton7.TextColor3 = Color3.fromRGB(205, 175, 245)
        textButton7.TextSize = 21
        textButton7.Font = Enum.Font.GothamBold
        textButton7.Parent = textButton9
        Instance.new("UICorner", textButton7).CornerRadius = UDim.new(0, 8)
        textButton8 = Instance.new("TextButton")
        textButton8.Position = UDim2.fromOffset(0, 47)
        textButton8.Size = UDim2.new(1, 0, 0, 38)
        textButton8.BackgroundColor3 = Color3.fromRGB(27, 23, 38)
        textButton8.BorderSizePixel = 0
        textButton8.AutoButtonColor =  false
        textButton8.Text = ""
        textButton8.Visible =  false
        textButton8.Parent = frame21
        Instance.new("UICorner", textButton8).CornerRadius = UDim.new(0, 8)
        local textLabel23 = Instance.new("TextLabel")
        textLabel23.Position = UDim2.fromOffset(38, 0)
        textLabel23.Size = UDim2.new(1,  - 84, 1, 0)
        textLabel23.BackgroundTransparency = 1
        textLabel23.Text = "AIM button lock"
        textLabel23.TextColor3 = Color3.fromRGB(205, 210, 225)
        textLabel23.TextSize = 11
        textLabel23.Font = Enum.Font.GothamMedium
        textLabel23.TextXAlignment = Enum.TextXAlignment.Left
        textLabel23.Parent = textButton8
        frame23 = Instance.new("Frame")
        frame23.Position = UDim2.fromOffset(10, 10)
        frame23.Size = UDim2.fromOffset(18, 18)
        frame23.BackgroundColor3 = v7 and Color3.fromRGB(145, 75, 235) or Color3.fromRGB(38, 43, 56)
        frame23.BorderSizePixel = 0
        frame23.Parent = textButton8
        Instance.new("UICorner", frame23).CornerRadius = UDim.new(0, 5)
        textLabel21 = Instance.new("TextLabel")
        textLabel21.Size = UDim2.fromScale(1, 1)
        textLabel21.BackgroundTransparency = 1
        textLabel21.Text = v7 and "âœ“" or ""
        textLabel21.TextColor3 = Color3.new(1, 1, 1)
        textLabel21.Font = Enum.Font.GothamBold
        textLabel21.TextSize = 12
        textLabel21.Parent = frame23
        function f54()
            frame22.BackgroundColor3 = v5.ShowAimButton and Color3.fromRGB(145, 75, 235) or Color3.fromRGB(38, 43, 56)
            textLabel20.Text = v5.ShowAimButton and "âœ“" or ""
            aimToggle.Visible = v5.ShowAimButton
            textButton8.Visible = v5.ShowAimButton and v8
            frame21.Size = UDim2.new(1, 0, 0, textButton8.Visible and 89 or 42)
            textButton7.Text = v8 and "âŒ„" or "â€º"
            frame23.BackgroundColor3 = v7 and Color3.fromRGB(145, 75, 235) or Color3.fromRGB(38, 43, 56)
            textLabel21.Text = v7 and "âœ“" or ""
        end
        f10(textButton9.MouseButton1Click, function()
            v5.ShowAimButton =  not v5.ShowAimButton
            if not v5.ShowAimButton then
                v8 =  false
            end
            f54()
        end
)
        f10(textButton7.MouseButton1Click, function()
            if not v5.ShowAimButton then
                return
            end
            v8 =  not v8
            f54()
        end
)
        f10(textButton8.MouseButton1Click, function()
            v7 =  not v7
            f54()
            f12(v7 and "AIM button locked" or "AIM button unlocked")
        end
)
        f54()
        f28("Aim Settings")
        f19("Smoothness", 0.1, 0.9, 0.05, v5.Smoothness, function(smoothness)
            v5.Smoothness = smoothness
        end
, function(p74)
            return string.format("%.2f", p74)
        end
)
        f19("FOV Size", 10, 500, 5, v5.FOVSize, function(p75)
            v5.FOVSize = p75
            fovCircle.Size = UDim2.fromOffset(p75 * 2, p75 * 2)
        end
)
        f16("Wall Check", v5.WallCheck, function(wallCheck)
            v5.WallCheck = wallCheck
        end
)
        f17("Aim Part", {
            "Head",
            "Torso",
            "(Soon)"
        }, v5.AimPart, function(aimPart)
            v5.AimPart = aimPart
        end
)
        f16("Hide FOV Circle",  not v5.FOVEnabled, function(p76)
            v5.FOVEnabled =  not p76
            fovCircle.Visible = v5.FOVEnabled and v5.TrackingEnabled
        end
)
    end
    f16("Triggerbot", v5.Triggerbot, function(p77)
        v5.Triggerbot = p77
        if triggerbotFOV then
            triggerbotFOV.Visible = p77 and v5.TriggerbotFOVVisible
        end
        f12(p77 and "Triggerbot ON" or "Triggerbot OFF")
        task.defer(function()
            if v10 == "Main" then
                f25("Main", f53)
            end
        end
)
    end
)
    if v5.Triggerbot then
        v5.TriggerbotRate = 100
        v5.TriggerbotInterval = 0.01
        f16("Show FOV", v5.TriggerbotFOVVisible, function(p78)
            v5.TriggerbotFOVVisible = p78
            if triggerbotFOV then
                triggerbotFOV.Visible = v5.Triggerbot and p78
            end
        end
)
        f19("FOV", 10, 500, 5, v5.TriggerbotFOV, function(p79)
            v5.TriggerbotFOV = p79
            if triggerbotFOV then
                triggerbotFOV.Size = UDim2.fromOffset(p79 * 2, p79 * 2)
            end
        end
)
    end
    if not v5.TrackingEnabled then
        f52()
    end
end
local f55
local function f56()
    f32()
    f28("Movement")
    f16("Speed Hack", v5.SpeedHack, function(p80)
        v5.SpeedHack = p80
        local character5 = localPlayer.Character
        local humanoid4 = character5 and character5:FindFirstChildOfClass("Humanoid")
        if humanoid4 then
            if p80 then
                humanoid4:SetAttribute("ZenithOriginalWalkSpeed", humanoid4.WalkSpeed)
                humanoid4.WalkSpeed = v5.WalkSpeedValue
            else
                local zenithOriginalWalkSpeed = humanoid4:GetAttribute("ZenithOriginalWalkSpeed")
                if typeof(zenithOriginalWalkSpeed) == "number" then
                    humanoid4.WalkSpeed = zenithOriginalWalkSpeed
                    humanoid4:SetAttribute("ZenithOriginalWalkSpeed",  nil)
                end
            end
        end
        f12(p80 and "Speed Hack enabled" or "Speed Hack disabled")
        task.defer(function()
            if v10 == "Mics" then
                f25("Mics", f56)
            end
        end
)
    end
)
    if v5.SpeedHack then
        f19("WalkSpeed", 16, 250, 5, v5.WalkSpeedValue, function(p81)
            v5.WalkSpeedValue = p81
            if v5.SpeedHack then
                local character6 = localPlayer.Character
                local humanoid5 = character6 and character6:FindFirstChildOfClass("Humanoid")
                if humanoid5 then
                    humanoid5.WalkSpeed = p81
                end
            end
        end
)
    end
    f16("Fly hack", v5.Fly, function(p82)
        v5.Fly = p82
        f12(p82 and "Fly hack enabled" or "Fly hack disabled")
        task.defer(function()
            if v10 == "Mics" then
                f25("Mics", f56)
            end
        end
)
    end
)
    if v5.Fly then
        f19("Fly hack Speed", 10, 200, 5, v5.FlySpeed, function(flySpeed)
            v5.FlySpeed = flySpeed
        end
)
    end
    f15("No Clip", v5.NoClip, function(p83)
        v5.NoClip = p83
        f12(p83 and "No Clip enabled" or "No Clip disabled")
    end
)
    f15("Infinite Jump", v5.InfiniteJump, function(p84)
        v5.InfiniteJump = p84
        f12(p84 and "Infinite Jump enabled" or "Infinite Jump disabled")
    end
)
    f28("Character Modifiers")
    f16("Big Head", v5.BigHead, function(p85)
        v5.BigHead = p85
        f55()
        f12(p85 and "Big Head enabled" or "Big Head disabled")
    end
)
    f16("Hitbox Expander", v5.HitboxExpander, function(p86)
        v5.HitboxExpander = p86
        f55()
        f12(p86 and "Hitbox Expander enabled" or "Hitbox Expander disabled")
        task.defer(function()
            if v10 == "Mics" then
                f25("Mics", f56)
            end
        end
)
    end
)
    if v5.HitboxExpander then
        f19("Hitbox Size", 2, 20, 1, math.clamp(v5.HitboxSize, 2, 20), function(p87)
            v5.HitboxSize = math.clamp(p87, 2, 20)
            f55()
        end
)
    end
end
do
    f10(localPlayer.CharacterAdded, function(p88)
        local waitForChild = p88:WaitForChild("Humanoid", 5)
        if not waitForChild or not v4 then
            return
        end
        if v5.SpeedHack then
            waitForChild:SetAttribute("ZenithOriginalWalkSpeed", waitForChild.WalkSpeed)
            waitForChild.WalkSpeed = v5.WalkSpeedValue
        end
    end
)
    f10(runService.Heartbeat, function()
        if not v4 or not v5.SpeedHack then
            return
        else
            local character7 = localPlayer.Character
            local humanoid6 = character7 and character7:FindFirstChildOfClass("Humanoid")
            if humanoid6 then
                humanoid6.WalkSpeed = v5.WalkSpeedValue
            end
            return
        end
    end
)
    runService.Stepped:Connect(function()
        if not v4 then
            return
        end
        if v5.NoClip then
            local character8 = localPlayer.Character
            if character8 then
                for index10, value12 in ipairs(character8:GetDescendants()) do
                    if value12:IsA("BasePart") then
                        value12.CanCollide =  false
                    end
                end
            end
        end
    end
)
    userInputService.JumpRequest:Connect(function()
        if not v4 then
            return
        end
        if v5.InfiniteJump then
            local character9 = localPlayer.Character
            if character9 then
                local humanoid7 = character9:FindFirstChildOfClass("Humanoid")
                if humanoid7 then
                    humanoid7:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end
        end
    end
)
    local v143 = {
    }
    local function f57(p89)
        local v144 = p89 and v143[p89]
        if p89 and p89.Parent and v144 then
            p89.Size = v144
        end
        if p89 then
            v143[p89] =  nil
        end
    end
    local function f58(p90)
        if p90 and v143[p90] ==  nil then
            v143[p90] = p90.Size
        end
    end
    function f55()
        if not v4 then
            return
        end
        for index11, value13 in ipairs(players:GetPlayers()) do
            if value13 ~= localPlayer and value13.Character then
                local character10 = value13.Character
                local head = character10:FindFirstChild("Head")
                local humanoidRootPart4 = character10:FindFirstChild("HumanoidRootPart")
                if head then
                    f58(head)
                    if v5.BigHead then
                        head.Size = Vector3.new(v5.BigHeadSize, v5.BigHeadSize, v5.BigHeadSize)
                        head.CanCollide =  false
                        local specialMesh = head:FindFirstChildOfClass("SpecialMesh")
                        if specialMesh then
                            specialMesh.Scale = Vector3.new(v5.BigHeadSize, v5.BigHeadSize, v5.BigHeadSize)
                        end
                    else
                        f57(head)
                        local specialMesh2 = head:FindFirstChildOfClass("SpecialMesh")
                        if specialMesh2 then
                            specialMesh2.Scale = Vector3.new(1, 1, 1)
                        end
                    end
                end
                if humanoidRootPart4 then
                    f58(humanoidRootPart4)
                    if v5.HitboxExpander then
                        humanoidRootPart4.Size = Vector3.new(v5.HitboxSize, v5.HitboxSize, v5.HitboxSize)
                        humanoidRootPart4.Transparency = 0.7
                        humanoidRootPart4.CanCollide =  false
                    else
                        f57(humanoidRootPart4)
                        humanoidRootPart4.Transparency = 1
                    end
                end
            end
        end
    end
    f10(localPlayer.CharacterAdded, function()
        task.wait(0.5)
        f55()
    end
)
    f10(players.PlayerAdded, function(p91)
        f10(p91.CharacterAdded, function()
            task.wait(0.5)
            f55()
        end
)
    end
)
    f10(runService.RenderStepped, function()
        if not v4 then
            return
        end
        f55()
    end
)
    f10(userInputService.InputBegan, function(p92, p93)
        if p93 then
            return
        end
        if p92.UserInputType ~= Enum.UserInputType.Keyboard then
            return
        end
    end
)
end
local function f59()
    local character11 = localPlayer.Character
    if not character11 then
        return nil,  nil,  nil
    end
    return character11, character11:FindFirstChildOfClass("Humanoid"),(character11:FindFirstChild("HumanoidRootPart"))
end
f10(userInputService.InputEnded, function(p94)
    if p94.UserInputType ~= Enum.UserInputType.Keyboard then
        return
    end
end
)
f10(runService.RenderStepped, function(p95)
    local unit2, unit3
    if not v4 then
        return
    else
        local character12 = localPlayer.Character
        if not character12 then
            return
        else
            local humanoidRootPart5 = character12:FindFirstChild("HumanoidRootPart")
            local humanoid8 = character12:FindFirstChildOfClass("Humanoid")
            local v145 =  not humanoidRootPart5
            local currentCamera10 = v1.CurrentCamera
            if v145 or not humanoid8 or not currentCamera10 then
                return
            end
            if v5.Fly then
                local moveDirection = humanoid8.MoveDirection
                local lookVector = currentCamera10.CFrame.LookVector
                local rightVector = currentCamera10.CFrame.RightVector
                local vector2 = Vector3.new(lookVector.X, 0, lookVector.Z)
                local vector3 = Vector3.new(rightVector.X, 0, rightVector.Z)
                if vector2.Magnitude > 0.001 then
                    unit2 = vector2.Unit
                else
                    unit2 = Vector3.zero
                end
                if vector3.Magnitude > 0.001 then
                    unit3 = vector3.Unit
                else
                    unit3 = Vector3.zero
                end
                local dot = moveDirection:Dot(unit2)
                local dot2 = moveDirection:Dot(unit3)
                if userInputService.KeyboardEnabled then
                    dot = 0
                    dot2 = 0
                end
                local v146 = 0
                if false then
                    v146 = v146 + 1
                end
                if false then
                    v146 = v146 - 1
                end
                local v147 = unit3 * dot2 + unit2 * dot + Vector3.new(0, v146, 0)
                humanoid8.PlatformStand =  true
                humanoidRootPart5.AssemblyLinearVelocity = Vector3.zero
                humanoidRootPart5.AssemblyAngularVelocity = Vector3.zero
                if v147.Magnitude > 0.001 then
                    local unit4 = v147.Unit
                    local v148 = humanoidRootPart5.Position + unit4 * v5.FlySpeed * p95
                    humanoidRootPart5.CFrame = CFrame.new(v148, v148 + currentCamera10.CFrame.LookVector)
                end
            elseif humanoid8.PlatformStand then
                humanoid8.PlatformStand =  false
            end
            return
        end
    end
end
)
local function f60()
    local v149 = {
    }
    for index12, value14 in ipairs(players:GetPlayers()) do
        if value14 ~= localPlayer then
            local v150, v151, v152 = f11(value14)
            if v150 and v151 and v152 then
                table.insert(v149, value14)
            end
        end
    end
    table.sort(v149, function(p96, p97)
        return string.lower(p96.DisplayName) < string.lower(p97.DisplayName)
    end
)
    return v149
end
local function f61(p98)
    if not v5.TeleportEnabled then
        f12("Enable teleport first")
        return
    end
    if not p98 or p98 == localPlayer then
        f12("Invalid player")
        return
    else
        local v153, v154, v155 = f11(p98)
        local character13 = localPlayer.Character
        local humanoidRootPart6 = character13 and character13:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart6 or not v155 then
            f12("Player is no longer available")
            return
        end
        humanoidRootPart6.CFrame = v155.CFrame + Vector3.new(0, 3, 0)
        f12("Teleported to "..p98.DisplayName)
        return
    end
end
local function f62(p99)
    local textButton10 = Instance.new("TextButton")
    textButton10.Size = UDim2.new(1, 0, 0, 42)
    textButton10.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
    textButton10.BorderSizePixel = 0
    textButton10.AutoButtonColor =  false
    textButton10.Text = ""
    textButton10.Parent = scrollingFrame
    Instance.new("UICorner", textButton10).CornerRadius = UDim.new(0, 8)
    local textLabel24 = Instance.new("TextLabel")
    textLabel24.Position = UDim2.fromOffset(12, 3)
    textLabel24.Size = UDim2.new(1,  - 70, 0, 20)
    textLabel24.BackgroundTransparency = 1
    textLabel24.Text = p99.DisplayName
    textLabel24.TextColor3 = Color3.fromRGB(230, 235, 245)
    textLabel24.TextSize = 11
    textLabel24.Font = Enum.Font.GothamBold
    textLabel24.TextXAlignment = Enum.TextXAlignment.Left
    textLabel24.Parent = textButton10
    local textLabel25 = Instance.new("TextLabel")
    textLabel25.Position = UDim2.fromOffset(12, 21)
    textLabel25.Size = UDim2.new(1,  - 70, 0, 15)
    textLabel25.BackgroundTransparency = 1
    textLabel25.Text = "@"..p99.Name
    textLabel25.TextColor3 = Color3.fromRGB(130, 140, 165)
    textLabel25.TextSize = 9
    textLabel25.Font = Enum.Font.Gotham
    textLabel25.TextXAlignment = Enum.TextXAlignment.Left
    textLabel25.Parent = textButton10
    local textLabel26 = Instance.new("TextLabel")
    textLabel26.AnchorPoint = Vector2.new(1, 0.5)
    textLabel26.Position = UDim2.new(1,  - 10, 0.5, 0)
    textLabel26.Size = UDim2.fromOffset(48, 24)
    textLabel26.BackgroundColor3 = Color3.fromRGB(125, 65, 205)
    textLabel26.BackgroundTransparency = 0
    textLabel26.Text = "TP"
    textLabel26.TextColor3 = Color3.new(1, 1, 1)
    textLabel26.TextSize = 10
    textLabel26.Font = Enum.Font.GothamBold
    textLabel26.Parent = textButton10
    Instance.new("UICorner", textLabel26).CornerRadius = UDim.new(0, 6)
    f10(textButton10.MouseButton1Click, function()
        f61(p99)
    end
)
    return textButton10
end
do
    local cameraTPButton =  nil
    local v156 = 0
    local v157 = 0
    local function f63(p100)
        local v158, v159 = p100.CFrame:ToOrientation()
        v157 = math.clamp(v158, math.rad( - 88), math.rad(88))
        v156 = v159
    end
    local v160 =  false
    local v161, v162, position11, f64
    local function f65(p101)
        local v163, v164, v165 = f59()
        local currentCamera11 = v1.CurrentCamera
        v5.CameraTPActive =  false
        v161 =  nil
        v162 =  nil
        v160 =  false
        position11 =  nil
        if v165 then
            v165.Anchored =  false
            v165.AssemblyLinearVelocity = Vector3.zero
            v165.AssemblyAngularVelocity = Vector3.zero
        end
        if v164 then
            v164.PlatformStand =  false
            v164.AutoRotate =  true
        end
        if p101 and currentCamera11 then
            currentCamera11.CameraType = v5.CameraTPOriginalType or Enum.CameraType.Custom
            if v5.CameraTPOriginalSubject and v5.CameraTPOriginalSubject.Parent then
                currentCamera11.CameraSubject = v5.CameraTPOriginalSubject
            elseif v164 then
                currentCamera11.CameraSubject = v164
            end
        end
        v5.CameraTPOriginalType =  nil
        v5.CameraTPOriginalSubject =  nil
        v5.CameraTPOriginalCFrame =  nil
        f64()
    end
    function f64()
        if not cameraTPButton then
            return
        end
        cameraTPButton.Visible = v5.ViewCameraTP
        if v5.CameraTPActive then
            cameraTPButton.Text = "TP CAM"
            cameraTPButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            cameraTPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            if TPHereButton then
                TPHereButton.Visible = v5.ViewCameraTP
                TPHereButton.BackgroundColor3 = Color3.fromRGB(125, 65, 205)
                TPHereButton.Text = "TP HERE"
            end
        else
            cameraTPButton.Text = "TP CAM"
            cameraTPButton.BackgroundColor3 = Color3.fromRGB(125, 65, 205)
            cameraTPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            if TPHereButton then
                TPHereButton.Visible =  false
            end
        end
    end
    local function f66()
        if not v5.ViewCameraTP then
            f12("Enable View Camera TP first")
            return
        else
            local v166, v167, v168 = f59()
            local v169 =  not v167
            local currentCamera12 = v1.CurrentCamera
            if v169 or not v168 or not currentCamera12 then
                f12("Character or camera unavailable")
                return
            end
            if v5.CameraTPActive then
                local position12 = currentCamera12.CFrame.Position
                local lookVector2 = currentCamera12.CFrame.LookVector
                local vector4 = Vector3.new(lookVector2.X, 0, lookVector2.Z)
                if vector4.Magnitude < 0.001 then
                    vector4 = Vector3.new(v168.CFrame.LookVector.X, 0, v168.CFrame.LookVector.Z)
                end
                if vector4.Magnitude < 0.001 then
                    vector4 = Vector3.new(0, 0,  - 1)
                end
                v168.Anchored =  false
                v168.CFrame = CFrame.lookAt(position12, position12 + vector4.Unit)
                v168.AssemblyLinearVelocity = Vector3.zero
                v168.AssemblyAngularVelocity = Vector3.zero
                v5.CameraTPActive =  false
                v167.PlatformStand =  false
                v167.AutoRotate =  true
                currentCamera12.CameraType = v5.CameraTPOriginalType or Enum.CameraType.Custom
                if v5.CameraTPOriginalSubject and v5.CameraTPOriginalSubject.Parent then
                    currentCamera12.CameraSubject = v5.CameraTPOriginalSubject
                else
                    currentCamera12.CameraSubject = v167
                end
                v5.CameraTPOriginalType =  nil
                v5.CameraTPOriginalSubject =  nil
                v5.CameraTPOriginalCFrame =  nil
                v161 =  nil
                v162 =  nil
                v160 =  false
                position11 =  nil
                f64()
                f12("Teleported to camera position")
                return
            end
            v5.CameraTPOriginalType = currentCamera12.CameraType
            v5.CameraTPOriginalSubject = currentCamera12.CameraSubject
            v5.CameraTPOriginalCFrame = currentCamera12.CFrame
            v5.CameraTPActive =  true
            f63(currentCamera12)
            v168.Anchored =  true
            v168.AssemblyLinearVelocity = Vector3.zero
            v168.AssemblyAngularVelocity = Vector3.zero
            v167.PlatformStand =  false
            v167.AutoRotate =  false
            currentCamera12.CameraType = Enum.CameraType.Scriptable
            currentCamera12.CFrame = v5.CameraTPOriginalCFrame
            f12("Camera TP active - joystick moves camera, swipe screen to look")
            f64()
            return
        end
    end
    f10(userInputService.InputBegan, function(p102)
        if not v5.CameraTPActive then
            return
        end
        if p102.UserInputType == Enum.UserInputType.Touch then
            local currentCamera13 = v1.CurrentCamera
            local viewportSize4 = currentCamera13 and currentCamera13.ViewportSize or Vector2.new(800, 600)
            local position13 = p102.Position
            if position13.X >= viewportSize4.X * 0.552 then
                v161 = p102
                v162 = position13
            end
        elseif p102.UserInputType == Enum.UserInputType.MouseButton2 then
            v160 =  true
            position11 = p102.Position
        end
    end
)
    f10(userInputService.InputChanged, function(p103)
        if not v5.CameraTPActive then
            return
        end
        if p103.UserInputType == Enum.UserInputType.MouseMovement and v160 then
            local position14 = p103.Position
            if position11 then
                local v170 = position14 - position11
                v156 = v156 - v170.X * v5.CameraTPSensitivity * 0.01
                v157 = math.clamp(v157 - v170.Y * v5.CameraTPSensitivity * 0.01, math.rad( - 88), math.rad(88))
            end
            position11 = position14
        end
    end
)
    f10(userInputService.TouchMoved, function(p104, p105)
        if not v5.CameraTPActive or p104 ~= v161 then
            return
        else
            local position15 = p104.Position
            if v162 then
                local v171 = position15 - v162
                v156 = v156 - v171.X * v5.CameraTPSensitivity * 0.01
                v157 = math.clamp(v157 - v171.Y * v5.CameraTPSensitivity * 0.01, math.rad( - 88), math.rad(88))
            end
            v162 = position15
            return
        end
    end
)
    f10(userInputService.InputEnded, function(p106)
        if p106 == v161 then
            v161 =  nil
            v162 =  nil
        elseif p106.UserInputType == Enum.UserInputType.MouseButton2 then
            v160 =  false
            position11 =  nil
        end
    end
)
    f10(runService.RenderStepped, function(p107)
        local v172 =  not v4 or not v5.CameraTPActive
        local unit5, unit6
        if v172 then
            return
        else
            local v173, v174, v175 = f59()
            local v176 =  not v174
            local currentCamera14 = v1.CurrentCamera
            if v176 or not v175 or not currentCamera14 then
                f65( true)
                return
            else
                v175.Anchored =  true
                v175.AssemblyLinearVelocity = Vector3.zero
                v175.AssemblyAngularVelocity = Vector3.zero
                v174.AutoRotate =  false
                local cframe = CFrame.Angles(0, v156, 0)
                local cframe2 = CFrame.Angles(v157, 0, 0)
                currentCamera14.CFrame = CFrame.new(currentCamera14.CFrame.Position) *(cframe * cframe2)
                local moveDirection2 = v174.MoveDirection
                if moveDirection2.Magnitude > 0.001 then
                    local lookVector3 = currentCamera14.CFrame.LookVector
                    local rightVector2 = currentCamera14.CFrame.RightVector
                    local vector5 = Vector3.new(rightVector2.X, 0, rightVector2.Z)
                    if vector5.Magnitude > 0.001 then
                        unit5 = vector5.Unit
                    else
                        unit5 = Vector3.new(1, 0, 0)
                    end
                    local vector6 = Vector3.new(lookVector3.X, 0, lookVector3.Z)
                    if vector6.Magnitude > 0.001 then
                        unit6 = vector6.Unit
                    else
                        unit6 = Vector3.new(0, 0,  - 1)
                    end
                    local dot3 = moveDirection2:Dot(unit6)
                    local v177 = unit5 * moveDirection2:Dot(unit5) + lookVector3 * dot3
                    if v177.Magnitude > 0.001 then
                        local unit7 = v177.Unit
                        currentCamera14.CFrame = currentCamera14.CFrame + unit7 * math.max(v5.CameraTPSpeed, 1) * p107
                    end
                end
                return
            end
        end
    end
)
    f10(localPlayer.CharacterAdded, function()
        if v5.CameraTPActive then
            task.defer(function()
                f65( true)
            end
)
        end
    end
)
    local function f67()
        if cameraTPButton and cameraTPButton.Parent then
            return
        end
        cameraTPButton = Instance.new("TextButton")
        cameraTPButton.Name = "CameraTPButton"
        cameraTPButton.AnchorPoint = Vector2.new(0, 1)
        cameraTPButton.Position = UDim2.new(0, 135, 1,  - 15)
        cameraTPButton.Size = UDim2.fromOffset(105, 48)
        cameraTPButton.BackgroundColor3 = Color3.fromRGB(125, 65, 205)
        cameraTPButton.BorderSizePixel = 0
        cameraTPButton.AutoButtonColor =  false
        cameraTPButton.Text = "TP CAM"
        cameraTPButton.TextColor3 = Color3.new(1, 1, 1)
        cameraTPButton.TextSize = 10
        cameraTPButton.Font = Enum.Font.GothamBold
        cameraTPButton.Visible = v5.ViewCameraTP
        cameraTPButton.ZIndex = 100
        cameraTPButton.Parent = playerVisualizationTool
        Instance.new("UICorner", cameraTPButton).CornerRadius = UDim.new(0, 12)
        local v178 =  false
        local position16 =  nil
        local position17 =  nil
        local v179 =  false
        f10(cameraTPButton.InputBegan, function(p108)
            if v5.CameraTPButtonLocked then
                return
            end
            local connect4
            if p108.UserInputType == Enum.UserInputType.MouseButton1 or p108.UserInputType == Enum.UserInputType.Touch then
                v178 =  true
                v179 =  false
                position16 = p108.Position
                position17 = cameraTPButton.Position
                connect4 =  nil
                connect4 = p108.Changed:Connect(function()
                    if p108.UserInputState == Enum.UserInputState.End then
                        v178 =  false
                        connect4:Disconnect()
                    end
                end
)
            end
        end
)
        f10(userInputService.InputChanged, function(p109)
            local v180 = v178
            local v181
            if v180 then
                local userInputType = p109.UserInputType
                local userInputType2 = Enum.UserInputType
                local v182 = v2
                local v183 = v182[24225929636881]
                local v184 = userInputType2[v183]
                local v185 = userInputType == v184
                local v186 = v185
                if not v185 then
                    userInputType = p109.UserInputType
                    userInputType2 = Enum.UserInputType
                    v182 = v2
                    v183 = v182[25753445560024]
                    v184 = userInputType2[v183]
                    v185 = userInputType == v184
                    v186 = v185
                end
                local v187 = v186 - v182
                if v187[v178[v2("\236V|̓f\231\188L", 24302927440948)]] > 0 then
                    v185[v183] = v187[v178[v2("~\195\29\24", 6638828538899)]] * math[v178[v2("\22\129\190", 9075406688386)]](v187[v178[v2("JO0b\227Ni^\133", 15798497254588)]], 1)
                end
                while true do
                    local v188
                    v184, v188 = userInputType2(userInputType, v184)
                    if v184 then
                        local v189 = v184
                        local v190 = typeof(v188)
                        if v190 == v178[v2("\3Ńs\252", 19408857113421)] then
                            v185[v189] = f2(v188,  nil, v186, v181)
                        elseif v190 == v178[v2("\169?\180Ks\204", 28707117823031)] then
                            v185[v189] = CFrame[v178[v2("\1356)\134\203\\", 19368781751099)]](v188[v178[v2("U\197\254\228\234P\177\206", 32043326011977)]], v186)
                        elseif v190 == v178[v2("8\232\251", 4251465533371)] then
                            v185[v189] = f2(v188,  nil, v186, v181)
                        end
                    else
                        break
                    end
                end
                return v185
            end
            if v180 then
                local v191 = p109.Position - position16
                if math.abs(v191.X) > 4 or math.abs(v191.Y) > 4 then
                    v179 =  true
                end
                local udim3 = UDim2.new(position17.X.Scale, position17.X.Offset + v191.X, position17.Y.Scale, position17.Y.Offset + v191.Y)
                cameraTPButton.Position = cameraTPButton.Position:Lerp(udim3, 0.32)
            end
        end
)
        f10(cameraTPButton.MouseButton1Click, function()
            if v179 then
                v179 =  false
                return
            end
            f66()
        end
)
    end
    f67()
    local f68
    local function f69(p110)
        local currentCamera15 = v1.CurrentCamera
        if currentCamera15 then
            local character14 = localPlayer.Character
            local humanoid9 = character14 and character14:FindFirstChildOfClass("Humanoid")
            currentCamera15.CameraType = Enum.CameraType.Custom
            if humanoid9 then
                currentCamera15.CameraSubject = humanoid9
            end
        end
        v5.SpectateActive =  false
        v5.SpectateTarget =  nil
        if p110 then
            v5.SpectateEnabled =  false
        end
        if f68 then
            f68()
        end
    end
    local function f70(p111)
        if not v5.SpectateEnabled then
            f12("Enable spectate first")
            return
        end
        if not p111 or p111 == localPlayer then
            f12("Invalid spectate target")
            return
        else
            local v192, v193 = f11(p111)
            if not v192 or not v193 then
                f12("Player is not available")
                return
            else
                local currentCamera16 = v1.CurrentCamera
                if not currentCamera16 then
                    f12("Camera is not available")
                    return
                end
                v5.SpectateTarget = p111
                v5.SpectateActive =  true
                currentCamera16.CameraType = Enum.CameraType.Custom
                currentCamera16.CameraSubject = v193
                if f68 then
                    f68()
                end
                f12("Spectating "..p111.DisplayName)
                return
            end
        end
    end
    local function f71(p112, p113)
        local parent3 = p113 or scrollingFrame
        local frame24 = Instance.new("Frame")
        frame24.Size = UDim2.new(1, 0, 0, 42)
        frame24.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
        frame24.BorderSizePixel = 0
        frame24.Parent = parent3
        Instance.new("UICorner", frame24).CornerRadius = UDim.new(0, 8)
        local textLabel27 = Instance.new("TextLabel")
        textLabel27.Position = UDim2.fromOffset(12, 3)
        textLabel27.Size = UDim2.new(1,  - 112, 0, 20)
        textLabel27.BackgroundTransparency = 1
        textLabel27.Text = p112.DisplayName
        textLabel27.TextColor3 = Color3.fromRGB(230, 235, 245)
        textLabel27.TextSize = 11
        textLabel27.Font = Enum.Font.GothamBold
        textLabel27.TextXAlignment = Enum.TextXAlignment.Left
        textLabel27.Parent = frame24
        local textLabel28 = Instance.new("TextLabel")
        textLabel28.Position = UDim2.fromOffset(12, 21)
        textLabel28.Size = UDim2.new(1,  - 112, 0, 15)
        textLabel28.BackgroundTransparency = 1
        textLabel28.Text = "@"..p112.Name
        textLabel28.TextColor3 = Color3.fromRGB(130, 140, 165)
        textLabel28.TextSize = 9
        textLabel28.Font = Enum.Font.Gotham
        textLabel28.TextXAlignment = Enum.TextXAlignment.Left
        textLabel28.Parent = frame24
        local textButton11 = Instance.new("TextButton")
        textButton11.AnchorPoint = Vector2.new(1, 0.5)
        textButton11.Position = UDim2.new(1,  - 10, 0.5, 0)
        textButton11.Size = UDim2.fromOffset(76, 26)
        textButton11.BackgroundColor3 = Color3.fromRGB(125, 65, 205)
        textButton11.BorderSizePixel = 0
        textButton11.AutoButtonColor =  false
        textButton11.Text = "SPECTATE"
        textButton11.TextColor3 = Color3.new(1, 1, 1)
        textButton11.TextSize = 8
        textButton11.Font = Enum.Font.GothamBold
        textButton11.Parent = frame24
        Instance.new("UICorner", textButton11).CornerRadius = UDim.new(0, 7)
        f10(textButton11.MouseButton1Click, function()
            f70(p112)
        end
)
        return frame24
    end
    f10(runService.RenderStepped, function()
        if not v4 or not v5.SpectateActive then
            return
        else
            local spectateTarget = v5.SpectateTarget
            local v194 =  not spectateTarget
            local currentCamera17 = v1.CurrentCamera
            if v194 or spectateTarget.Parent ~= players or not currentCamera17 then
                f69()
                return
            else
                local v195, v196 = f11(spectateTarget)
                if v196 and v196.Parent then
                    currentCamera17.CameraType = Enum.CameraType.Custom
                    currentCamera17.CameraSubject = v196
                end
                return
            end
        end
    end
)
    f10(players.PlayerRemoving, function(p114)
        if v5.SpectateTarget == p114 then
            f69()
            f12("Spectate target left the server")
        end
    end
)
    f10(localPlayer.CharacterAdded, function()
        if not v5.SpectateActive then
            task.wait(0.1)
            local currentCamera18 = v1.CurrentCamera
            local character15 = localPlayer.Character
            local humanoid10 = character15 and character15:FindFirstChildOfClass("Humanoid")
            if currentCamera18 and humanoid10 then
                currentCamera18.CameraType = Enum.CameraType.Custom
                currentCamera18.CameraSubject = humanoid10
            end
        end
    end
)
    local function f72(p115, p116)
        if not p115 or p115 == "" or p115:find("PASTE_") then
            f12("Set your "..p116.. " link first")
            return
        end
        if typeof(setclipboard) == "function" then
            setclipboard(p115)
            f12(p116.. " link copied")
        else
            f12("Select the link and copy it")
        end
    end
    local function f73()
        f32()
        f28("Camera TP")
        local frame25 = Instance.new("Frame")
        frame25.Size = UDim2.new(1, 0, 0, 42)
        frame25.BackgroundTransparency = 1
        frame25.Parent = scrollingFrame
        local textButton12 = Instance.new("TextButton")
        textButton12.Size = UDim2.new(1, 0, 0, 42)
        textButton12.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
        textButton12.BorderSizePixel = 0
        textButton12.AutoButtonColor =  false
        textButton12.Text = ""
        textButton12.Parent = frame25
        Instance.new("UICorner", textButton12).CornerRadius = UDim.new(0, 8)
        local frame26 = Instance.new("Frame")
        frame26.Position = UDim2.fromOffset(10, 12)
        frame26.Size = UDim2.fromOffset(18, 18)
        frame26.BackgroundColor3 = v5.ViewCameraTP and Color3.fromRGB(145, 75, 235) or Color3.fromRGB(38, 43, 56)
        frame26.BorderSizePixel = 0
        frame26.Parent = textButton12
        Instance.new("UICorner", frame26).CornerRadius = UDim.new(0, 5)
        local textLabel29 = Instance.new("TextLabel")
        textLabel29.Size = UDim2.fromScale(1, 1)
        textLabel29.BackgroundTransparency = 1
        textLabel29.Text = v5.ViewCameraTP and "âœ“" or ""
        textLabel29.TextColor3 = Color3.new(1, 1, 1)
        textLabel29.Font = Enum.Font.GothamBold
        textLabel29.TextSize = 12
        textLabel29.Parent = frame26
        local textLabel30 = Instance.new("TextLabel")
        textLabel30.Position = UDim2.fromOffset(38, 0)
        textLabel30.Size = UDim2.new(1,  - 82, 1, 0)
        textLabel30.BackgroundTransparency = 1
        textLabel30.Text = "View Camera TP"
        textLabel30.TextColor3 = Color3.fromRGB(220, 225, 235)
        textLabel30.TextSize = 12
        textLabel30.Font = Enum.Font.GothamMedium
        textLabel30.TextXAlignment = Enum.TextXAlignment.Left
        textLabel30.Parent = textButton12
        local textButton13 = Instance.new("TextButton")
        textButton13.AnchorPoint = Vector2.new(1, 0.5)
        textButton13.Position = UDim2.new(1,  - 8, 0.5, 0)
        textButton13.Size = UDim2.fromOffset(34, 32)
        textButton13.BackgroundColor3 = Color3.fromRGB(35, 27, 48)
        textButton13.BorderSizePixel = 0
        textButton13.AutoButtonColor =  false
        textButton13.Text = "â€º"
        textButton13.TextColor3 = Color3.fromRGB(205, 175, 245)
        textButton13.TextSize = 21
        textButton13.Font = Enum.Font.GothamBold
        textButton13.Parent = textButton12
        Instance.new("UICorner", textButton13).CornerRadius = UDim.new(0, 8)
        local textButton14 = Instance.new("TextButton")
        textButton14.Position = UDim2.fromOffset(0, 47)
        textButton14.Size = UDim2.new(1, 0, 0, 38)
        textButton14.BackgroundColor3 = Color3.fromRGB(27, 23, 38)
        textButton14.BorderSizePixel = 0
        textButton14.AutoButtonColor =  false
        textButton14.Text = ""
        textButton14.Visible =  false
        textButton14.Parent = frame25
        Instance.new("UICorner", textButton14).CornerRadius = UDim.new(0, 8)
        local frame27 = Instance.new("Frame")
        frame27.Position = UDim2.fromOffset(10, 10)
        frame27.Size = UDim2.fromOffset(18, 18)
        frame27.BackgroundColor3 = v5.CameraTPButtonLocked and Color3.fromRGB(145, 75, 235) or Color3.fromRGB(38, 43, 56)
        frame27.BorderSizePixel = 0
        frame27.Parent = textButton14
        Instance.new("UICorner", frame27).CornerRadius = UDim.new(0, 5)
        local textLabel31 = Instance.new("TextLabel")
        textLabel31.Size = UDim2.fromScale(1, 1)
        textLabel31.BackgroundTransparency = 1
        textLabel31.Text = v5.CameraTPButtonLocked and "âœ“" or ""
        textLabel31.TextColor3 = Color3.new(1, 1, 1)
        textLabel31.Font = Enum.Font.GothamBold
        textLabel31.TextSize = 12
        textLabel31.Parent = frame27
        local textLabel32 = Instance.new("TextLabel")
        textLabel32.Position = UDim2.fromOffset(38, 0)
        textLabel32.Size = UDim2.new(1,  - 50, 1, 0)
        textLabel32.BackgroundTransparency = 1
        textLabel32.Text = "Lock Camera TP button"
        textLabel32.TextColor3 = Color3.fromRGB(205, 210, 225)
        textLabel32.TextSize = 11
        textLabel32.Font = Enum.Font.GothamMedium
        textLabel32.TextXAlignment = Enum.TextXAlignment.Left
        textLabel32.Parent = textButton14
        local v197 =  false
        local function f74()
            frame26.BackgroundColor3 = v5.ViewCameraTP and Color3.fromRGB(145, 75, 235) or Color3.fromRGB(38, 43, 56)
            textLabel29.Text = v5.ViewCameraTP and "âœ“" or ""
            textButton14.Visible = v5.ViewCameraTP and v197
            frame25.Size = UDim2.new(1, 0, 0, textButton14.Visible and 89 or 42)
            textButton13.Text = v197 and "âŒ„" or "â€º"
            frame27.BackgroundColor3 = v5.CameraTPButtonLocked and Color3.fromRGB(145, 75, 235) or Color3.fromRGB(38, 43, 56)
            textLabel31.Text = v5.CameraTPButtonLocked and "âœ“" or ""
        end
        f10(textButton12.MouseButton1Click, function()
            v5.ViewCameraTP =  not v5.ViewCameraTP
            if not v5.ViewCameraTP then
                v197 =  false
                if v5.CameraTPActive then
                    f65( true)
                end
            end
            f74()
            f64()
            f12(v5.ViewCameraTP and "View Camera TP enabled" or "View Camera TP disabled")
        end
)
        f10(textButton13.MouseButton1Click, function()
            if not v5.ViewCameraTP then
                return
            end
            v197 =  not v197
            f74()
        end
)
        f10(textButton14.MouseButton1Click, function()
            v5.CameraTPButtonLocked =  not v5.CameraTPButtonLocked
            f74()
            f12(v5.CameraTPButtonLocked and "Camera TP button locked" or "Camera TP button unlocked")
        end
)
        f74()
        f19("Camera TP Speed", 1, 200, 1, 140, function(cameraTPSpeed)
            v5.CameraTPSpeed = cameraTPSpeed
        end
)
        v5.CameraTPSpeed = 140
        f28("Teleport to Player & Spectate Player")
        local frame28, frame29
        f15("Teleport to player", v5.TeleportEnabled, function(p117)
            v5.TeleportEnabled = p117
            if p117 then
                f12("Teleport to player enabled")
            else
                if frame28 then
                    frame28.Visible =  false
                end
                if frame29 then
                    frame29.Visible =  false
                end
                f12("Teleport to player disabled")
            end
            task.defer(function()
                if v10 == "Teleport" then
                    f25("Teleport", f73)
                end
            end
)
        end
)
        local f75, textButton15
        if v5.TeleportEnabled then
            f28("Teleport Players")
            frame29 = Instance.new("Frame")
            frame29.Size = UDim2.new(1, 0, 0, 34)
            frame29.BackgroundTransparency = 1
            frame29.Parent = scrollingFrame
            textButton15 = Instance.new("TextButton")
            textButton15.Size = UDim2.new(1, 0, 1, 0)
            textButton15.BackgroundColor3 = Color3.fromRGB(35, 29, 48)
            textButton15.BorderSizePixel = 0
            textButton15.AutoButtonColor =  false
            textButton15.Text = "â†»  Refresh Players"
            textButton15.TextColor3 = Color3.fromRGB(220, 205, 245)
            textButton15.TextSize = 11
            textButton15.Font = Enum.Font.GothamBold
            textButton15.Parent = frame29
            Instance.new("UICorner", textButton15).CornerRadius = UDim.new(0, 8)
            frame28 = Instance.new("Frame")
            frame28.Size = UDim2.new(1, 0, 0, 0)
            frame28.AutomaticSize = Enum.AutomaticSize.Y
            frame28.BackgroundTransparency = 1
            frame28.Parent = scrollingFrame
            local uiListLayout4 = Instance.new("UIListLayout")
            uiListLayout4.Padding = UDim.new(0, 8)
            uiListLayout4.SortOrder = Enum.SortOrder.LayoutOrder
            uiListLayout4.Parent = frame28
            function f75(p118)
                for index13, value15 in ipairs(frame28:GetChildren()) do
                    if not value15:IsA("UIListLayout") then
                        value15:Destroy()
                    end
                end
                if not v5.TeleportEnabled then
                    frame28.Visible =  false
                    return
                else
                    frame28.Visible =  true
                    local v198 = f60()
                    if # v198 == 0 then
                        local textLabel33 = Instance.new("TextLabel")
                        textLabel33.Size = UDim2.new(1, 0, 0, 42)
                        textLabel33.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
                        textLabel33.BorderSizePixel = 0
                        textLabel33.Text = "No players available to teleport"
                        textLabel33.TextColor3 = Color3.fromRGB(140, 150, 175)
                        textLabel33.TextSize = 11
                        textLabel33.Font = Enum.Font.GothamMedium
                        textLabel33.Parent = frame28
                        Instance.new("UICorner", textLabel33).CornerRadius = UDim.new(0, 8)
                    else
                        for index14, value16 in ipairs(v198) do
                            local getChildren = scrollingFrame:GetChildren()
                            f62(value16)
                            local v199 =  nil
                            for index15, value17 in ipairs(scrollingFrame:GetChildren()) do
                                if value17:IsA("TextButton") and value17 ~= textButton15 and not table.find(getChildren, value17) then
                                    v199 = value17
                                    break
                                end
                            end
                            if v199 then
                                v199.Parent = frame28
                            end
                        end
                    end
                    if p118 then
                        f12("Teleport player list refreshed")
                    end
                    return
                end
            end
            f10(textButton15.MouseButton1Click, function()
                f75( true)
            end
)
            f75( false)
        end
        f15("Spectate to player", v5.SpectateEnabled, function(p119)
            v5.SpectateEnabled = p119
            if not p119 then
                f69( false)
                f12("Spectate to player disabled")
            else
                f12("Spectate to player enabled")
            end
            task.defer(function()
                if v10 == "Teleport" then
                    f25("Teleport", f73)
                end
            end
)
        end
)
        local frame30, f76, textButton16
        if v5.SpectateEnabled then
            f28("Spectate Players")
            textButton16 = Instance.new("TextButton")
            textButton16.Size = UDim2.new(1, 0, 0, 40)
            textButton16.BackgroundColor3 = Color3.fromRGB(125, 65, 205)
            textButton16.BorderSizePixel = 0
            textButton16.AutoButtonColor =  false
            textButton16.Text = "STOP SPECTATING"
            textButton16.TextColor3 = Color3.new(1, 1, 1)
            textButton16.TextSize = 10
            textButton16.Font = Enum.Font.GothamBold
            textButton16.Visible = v5.SpectateActive
            textButton16.Parent = scrollingFrame
            Instance.new("UICorner", textButton16).CornerRadius = UDim.new(0, 8)
            function f68()
                if textButton16 and textButton16.Parent then
                    textButton16.Visible = v5.SpectateActive
                end
            end
            f10(textButton16.MouseButton1Click, function()
                if v5.SpectateActive then
                    f69( false)
                    f12("Stopped spectating")
                end
            end
)
            local frame31 = Instance.new("Frame")
            frame31.Size = UDim2.new(1, 0, 0, 34)
            frame31.BackgroundTransparency = 1
            frame31.Parent = scrollingFrame
            local textButton17 = Instance.new("TextButton")
            textButton17.Size = UDim2.new(1, 0, 1, 0)
            textButton17.BackgroundColor3 = Color3.fromRGB(35, 29, 48)
            textButton17.BorderSizePixel = 0
            textButton17.AutoButtonColor =  false
            textButton17.Text = "â†»  Refresh Players"
            textButton17.TextColor3 = Color3.fromRGB(220, 205, 245)
            textButton17.TextSize = 11
            textButton17.Font = Enum.Font.GothamBold
            textButton17.Parent = frame31
            Instance.new("UICorner", textButton17).CornerRadius = UDim.new(0, 8)
            frame30 = Instance.new("Frame")
            frame30.Size = UDim2.new(1, 0, 0, 0)
            frame30.AutomaticSize = Enum.AutomaticSize.Y
            frame30.BackgroundTransparency = 1
            frame30.Parent = scrollingFrame
            local uiListLayout5 = Instance.new("UIListLayout")
            uiListLayout5.Padding = UDim.new(0, 8)
            uiListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
            uiListLayout5.Parent = frame30
            function f76(p120)
                for index16, value18 in ipairs(frame30:GetChildren()) do
                    if not value18:IsA("UIListLayout") then
                        value18:Destroy()
                    end
                end
                if not v5.SpectateEnabled then
                    frame30.Visible =  false
                    return
                else
                    frame30.Visible =  true
                    local v200 = f60()
                    if # v200 == 0 then
                        local textLabel34 = Instance.new("TextLabel")
                        textLabel34.Size = UDim2.new(1, 0, 0, 42)
                        textLabel34.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
                        textLabel34.BorderSizePixel = 0
                        textLabel34.Text = "No players available to spectate"
                        textLabel34.TextColor3 = Color3.fromRGB(140, 150, 175)
                        textLabel34.TextSize = 11
                        textLabel34.Font = Enum.Font.GothamMedium
                        textLabel34.Parent = frame30
                        Instance.new("UICorner", textLabel34).CornerRadius = UDim.new(0, 8)
                    else
                        for index17, value19 in ipairs(v200) do
                            f71(value19, frame30)
                        end
                    end
                    if p120 then
                        f12("Spectate player list refreshed")
                    end
                    return
                end
            end
            f10(textButton17.MouseButton1Click, function()
                f76( true)
            end
)
            f76( false)
        end
        task.spawn(function()
            local v201 = ""
            while scrollingFrame.Parent do
                if v10 ~= "Teleport" then
                    break
                else
                    local v202 = {
                    }
                    for index18, value20 in ipairs(f60()) do
                        table.insert(v202, value20.UserId.. ":"..value20.Name)
                    end
                    table.sort(v202)
                    local v203 = table.concat(v202, "|")
                    if v203 ~= v201 then
                        v201 = v203
                        if v5.TeleportEnabled and f75 then
                            f75( false)
                        end
                        if v5.SpectateEnabled and f76 then
                            f76( false)
                        end
                    end
                    task.wait(1)
                end
            end
        end
)
    end
    local function f77(text9, text10, p121)
        local frame32 = Instance.new("Frame")
        frame32.Size = UDim2.new(1, 0, 0, 58)
        frame32.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
        frame32.BorderSizePixel = 0
        frame32.Parent = scrollingFrame
        Instance.new("UICorner", frame32).CornerRadius = UDim.new(0, 8)
        local textLabel35 = Instance.new("TextLabel")
        textLabel35.Position = UDim2.fromOffset(12, 6)
        textLabel35.Size = UDim2.new(1,  - 84, 0, 20)
        textLabel35.BackgroundTransparency = 1
        textLabel35.Text = text9
        textLabel35.TextColor3 = Color3.fromRGB(230, 235, 245)
        textLabel35.TextSize = 11
        textLabel35.Font = Enum.Font.GothamBold
        textLabel35.TextXAlignment = Enum.TextXAlignment.Left
        textLabel35.Parent = frame32
        local textBox2 = Instance.new("TextBox")
        textBox2.Position = UDim2.fromOffset(12, 28)
        textBox2.Size = UDim2.new(1,  - 84, 0, 22)
        textBox2.BackgroundTransparency = 1
        textBox2.ClearTextOnFocus =  false
        textBox2.Text = text10
        textBox2.TextColor3 = Color3.fromRGB(140, 150, 175)
        textBox2.TextSize = 9
        textBox2.Font = Enum.Font.Gotham
        textBox2.TextXAlignment = Enum.TextXAlignment.Left
        textBox2.TextTruncate = Enum.TextTruncate.AtEnd
        textBox2.Parent = frame32
        local textButton18 = Instance.new("TextButton")
        textButton18.AnchorPoint = Vector2.new(1, 0.5)
        textButton18.Position = UDim2.new(1,  - 10, 0.5, 0)
        textButton18.Size = UDim2.fromOffset(58, 28)
        textButton18.BackgroundColor3 = Color3.fromRGB(125, 65, 205)
        textButton18.BorderSizePixel = 0
        textButton18.AutoButtonColor =  false
        textButton18.Text = "COPY"
        textButton18.TextColor3 = Color3.new(1, 1, 1)
        textButton18.TextSize = 9
        textButton18.Font = Enum.Font.GothamBold
        textButton18.Parent = frame32
        Instance.new("UICorner", textButton18).CornerRadius = UDim.new(0, 6)
        f10(textButton18.MouseButton1Click, function()
            f72(textBox2.Text, p121)
        end
)
        return frame32
    end
    f10(localPlayer.CharacterAdded, function(p122)
        task.defer(function()
            local waitForChild2 = p122:WaitForChild("Humanoid", 5)
            if not waitForChild2 or not v4 then
                return
            end
            if v5.SpeedHack then
                waitForChild2:SetAttribute("ZenithOriginalWalkSpeed", waitForChild2.WalkSpeed)
                waitForChild2.WalkSpeed = v5.WalkSpeedValue
            end
            if v5.Fly then
                waitForChild2.PlatformStand =  true
            end
        end
)
    end
)
    local function f78()
        f32()
        f77("Discord Zenith", v5.DiscordLink, "Discord")
        f77("TIKTOK", v5.TikTokLink, "TikTok")
        f77("YOUTUBE", v5.YouTubeLink, "YouTube")
        f28("UPCOMING FEATURES")
        for index19, value21 in ipairs({
            "Team Check",
            "Rapid Fire",
            "Fast Reload"
        }
) do
            local textLabel36 = Instance.new("TextLabel")
            textLabel36.Size = UDim2.new(1, 0, 0, 28)
            textLabel36.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
            textLabel36.BorderSizePixel = 0
            textLabel36.Text = "â€¢ "..value21
            textLabel36.TextColor3 = Color3.fromRGB(190, 195, 210)
            textLabel36.TextSize = 10
            textLabel36.Font = Enum.Font.Gotham
            textLabel36.TextXAlignment = Enum.TextXAlignment.Left
            textLabel36.Parent = scrollingFrame
            Instance.new("UICorner", textLabel36).CornerRadius = UDim.new(0, 7)
            local uiPadding2 = Instance.new("UIPadding")
            uiPadding2.PaddingLeft = UDim.new(0, 12)
            uiPadding2.Parent = textLabel36
        end
    end
    f10(v11.MouseButton1Click, function()
        f25("Main", f53)
    end
)
    f10(v12.MouseButton1Click, function()
        f25("ESP", f51)
    end
)
    f10(v13.MouseButton1Click, function()
        f25("Mics", f56)
    end
)
    f10(v14.MouseButton1Click, function()
        f25("Teleport", f73)
    end
)
    f10(v15.MouseButton1Click, function()
        f25("About", f78)
    end
)
end
do
    f25("Main", f53)
    local function f79(p123)
        local v204 = v6[p123]
        if not v204 then
            return
        end
        for key4, value22 in pairs(v204) do
            if typeof(value22) == "Instance" and value22.Parent then
                value22:Destroy()
            end
        end
        v6[p123] =  nil
    end
    local function f80(p124)
        if p124 == localPlayer then
            return
        else
            f79(p124)
            local playerToolBox = Instance.new("Highlight")
            playerToolBox.Name = "PlayerToolBox"
            playerToolBox.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            playerToolBox.FillTransparency = 1
            playerToolBox.OutlineTransparency = 0
            playerToolBox.Enabled =  false
            playerToolBox.Parent = playerVisualizationTool
            local playerToolTag = Instance.new("BillboardGui")
            playerToolTag.Name = "PlayerToolTag"
            playerToolTag.Size = UDim2.fromOffset(170, 70)
            playerToolTag.StudsOffset = Vector3.new(0, 3, 0)
            playerToolTag.AlwaysOnTop =  true
            playerToolTag.Enabled =  false
            playerToolTag.Parent = playerVisualizationTool
            local frame33 = Instance.new("Frame")
            frame33.Size = UDim2.fromScale(1, 1)
            frame33.BackgroundTransparency = 1
            frame33.Parent = playerToolTag
            local name2 = Instance.new("TextLabel")
            name2.Name = "Name"
            name2.Size = UDim2.new(1, 0, 0, 22)
            name2.BackgroundTransparency = 1
            name2.TextColor3 = Color3.new(1, 1, 1)
            name2.TextStrokeTransparency = 0.4
            name2.Font = Enum.Font.GothamBold
            name2.TextSize = 12
            name2.Parent = frame33
            local distance2 = Instance.new("TextLabel")
            distance2.Name = "Distance"
            distance2.Position = UDim2.fromOffset(0, 20)
            distance2.Size = UDim2.new(1, 0, 0, 18)
            distance2.BackgroundTransparency = 1
            distance2.TextColor3 = Color3.fromRGB(205, 210, 220)
            distance2.TextStrokeTransparency = 0.5
            distance2.Font = Enum.Font.Gotham
            distance2.TextSize = 10
            distance2.Parent = frame33
            local frame34 = Instance.new("Frame")
            frame34.Position = UDim2.fromOffset( - 8, 0)
            frame34.Size = UDim2.fromOffset(4, 35)
            frame34.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
            frame34.BorderSizePixel = 0
            frame34.Parent = frame33
            local frame35 = Instance.new("Frame")
            frame35.AnchorPoint = Vector2.new(0, 1)
            frame35.Position = UDim2.fromScale(0, 1)
            frame35.Size = UDim2.fromScale(1, 1)
            frame35.BackgroundColor3 = Color3.fromRGB(70, 220, 110)
            frame35.BorderSizePixel = 0
            frame35.Parent = frame34
            v6[p124] = {
                Highlight = playerToolBox,
                Billboard = playerToolTag,
                Name = name2,
                Distance = distance2,
                HealthBackground = frame34,
                HealthFill = frame35,
            }
            return
        end
    end
    for index20, value23 in ipairs(players:GetPlayers()) do
        f80(value23)
    end
    f10(players.PlayerAdded, f80)
    f10(players.PlayerRemoving, f79)
    f10(runService.RenderStepped, function()
        if not v4 then
            return
        end
        currentCamera4 = v1.CurrentCamera
        if not currentCamera4 then
            return
        else
            local viewportSize5 = currentCamera4.ViewportSize
            fovCircle.Position = UDim2.fromOffset(viewportSize5.X / 2, viewportSize5.Y / 2)
            fovCircle.Size = UDim2.fromOffset(v5.FOVSize * 2, v5.FOVSize * 2)
            fovCircle.Visible = v5.FOVEnabled and v5.TrackingEnabled
            if v5.TrackingEnabled then
                local v205 = f14()
                if v205 then
                    local v206 = f11(v205)
                    if v206 then
                        local v207 = f7(v206)
                        if v207 then
                            local cframe3 = CFrame.lookAt(currentCamera4.CFrame.Position, v207.Position)
                            local v208 = math.clamp(v5.Smoothness, 0.1, 0.9)
                            currentCamera4.CFrame = currentCamera4.CFrame:Lerp(cframe3, v208)
                        end
                    end
                end
            end
            for key5, value24 in pairs(v6) do
                local v209, v210, v211 = f11(key5)
                if v5.ESPEnabled and v209 then
                    local boxColor = v5.BoxColor
                    if value24.Highlight then
                        value24.Highlight.Adornee = v209
                        value24.Highlight.OutlineColor = boxColor
                        value24.Highlight.Enabled = v5.BoxESP
                    end
                    if value24.Billboard then
                        local billboard = value24.Billboard
                        billboard.Adornee = v209:FindFirstChild("Head") or v211
                        local billboard2 = value24.Billboard
                        billboard2.Enabled = v5.NameTags or v5.Distance or v5.HealthBar
                    end
                    if value24.Name then
                        value24.Name.Visible = v5.NameTags
                        value24.Name.Text = key5.DisplayName
                        value24.Name.TextColor3 = boxColor
                    end
                    if value24.Distance then
                        value24.Distance.Visible = v5.Distance
                        local character16 = localPlayer.Character
                        local humanoidRootPart7 = character16 and character16:FindFirstChild("HumanoidRootPart")
                        if humanoidRootPart7 then
                            value24.Distance.Text = string.format("%d m", math.floor((humanoidRootPart7.Position - v211.Position).Magnitude + 0.5))
                        else
                            value24.Distance.Text = ""
                        end
                    end
                    if value24.HealthBackground and value24.HealthFill then
                        value24.HealthBackground.Visible = v5.HealthBar
                        value24.HealthFill.Visible = v5.HealthBar
                        local v212 = math.clamp(v210.Health / math.max(v210.MaxHealth, 1), 0, 1)
                        value24.HealthFill.Size = UDim2.new(1, 0, v212, 0)
                        value24.HealthFill.BackgroundColor3 = Color3.fromRGB(70 +(1 - v212) * 185, 220 * v212, 80)
                    end
                else
                    if value24.Highlight then
                        value24.Highlight.Enabled =  false
                    end
                    if value24.Billboard then
                        value24.Billboard.Enabled =  false
                    end
                end
            end
            return
        end
    end
)
    f10(aimToggle.MouseButton1Click, function()
        if v9 then
            v9 =  false
            return
        end
        f34( not v5.TrackingEnabled)
    end
)
    local menuReopenButton = Instance.new("ImageButton")
    menuReopenButton.Name = "MenuReopenButton"
    menuReopenButton.AnchorPoint = Vector2.new(1, 1)
    menuReopenButton.Position = UDim2.new(1,  - 18, 1,  - 18)
    menuReopenButton.Size = UDim2.fromOffset(52, 52)
    menuReopenButton.BackgroundTransparency = 1
    menuReopenButton.Image = "rbxassetid://110688253549566"
    menuReopenButton.ScaleType = Enum.ScaleType.Fit
    menuReopenButton.Visible =  false
    menuReopenButton.ZIndex = 1000
    menuReopenButton.Parent = playerVisualizationTool
    Instance.new("UICorner", menuReopenButton).CornerRadius = UDim.new(0, 12)
    local v213 =  false
    local v214 =  false
    local position18, position19
    f10(menuReopenButton.InputBegan, function(p125)
        local v215 = p125.UserInputType == Enum.UserInputType.MouseButton1 or p125.UserInputType == Enum.UserInputType.Touch
        local connect5
        if v215 then
            v213 =  true
            v214 =  false
            position18 = p125.Position
            position19 = menuReopenButton.Position
            connect5 =  nil
            connect5 = p125.Changed:Connect(function()
                if p125.UserInputState == Enum.UserInputState.End then
                    v213 =  false
                    connect5:Disconnect()
                end
            end
)
        end
    end
)
    f10(userInputService.InputChanged, function(p126)
        if v213 and(p126.UserInputType == Enum.UserInputType.MouseMovement or p126.UserInputType == Enum.UserInputType.Touch) then
            local v216 = p126.Position - position18
            if math.abs(v216.X) > 4 or math.abs(v216.Y) > 4 then
                v214 =  true
            end
            local udim4 = UDim2.new(position19.X.Scale, position19.X.Offset + v216.X, position19.Y.Scale, position19.Y.Offset + v216.Y)
            menuReopenButton.Position = menuReopenButton.Position:Lerp(udim4, 0.32)
        end
    end
)
    local function f81()
        mainWindow.Visible =  false
        menuReopenButton.Visible =  true
    end
    local function f82()
        mainWindow.Visible =  true
        menuReopenButton.Visible =  false
    end
    f10(menuReopenButton.Activated, function()
        if v214 then
            v214 =  false
            return
        end
        f82()
    end
)
    f10(menuReopenButton.MouseButton1Click, function()
        if v214 then
            v214 =  false
            return
        end
        f82()
    end
)
    local findFirstChild = mainWindow:FindFirstChild("HideButton",  true) or mainWindow:FindFirstChild("MinimizeButton",  true) or mainWindow:FindFirstChild("MinusButton",  true)
    if findFirstChild and findFirstChild:IsA("GuiButton") then
        f10(findFirstChild.Activated, function()
            f81()
        end
)
    end
end
