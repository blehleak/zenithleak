local players, tweenService, userInputService, localPlayer, color, color3, color4, zenithPCClientPrompt, frame2, textButton, runService, workspace, currentCamera, val, val2, zenithESP, triggerbotFOV, uiStroke3, playerVisualizationTool, fovCircle, aimToggle, val3, val4, val5, mainWindow, frame3, helper, frame5, scrollingFrame, val6, val7, val8, val9, val10, val11, helper2, val12, helper3, val13, val14, val15, val16

do

  if not (game:IsLoaded()) then

    game.Loaded:Wait()
  end

  players = game:GetService("Players")

  tweenService = game:GetService("TweenService")

  userInputService = game:GetService("UserInputService")
  localPlayer = players.LocalPlayer

end

local parent = localPlayer.WaitForChild(localPlayer, "PlayerGui")

local function fetchData(val17, val18)
  local val19, success = pcall(function()

    local loader = loadstring((game:HttpGet(val17)))
    assert((type(loader)) == "function", val18 .. " source did not return executable code")
    return loader()
  end)

  if not val19 then
    warn("[Zenith] " .. val18 .. " failed to initialize: " .. (tostring(success)))
  end

  return val19
end

do
  fetchData(
    "https://raw.githubusercontent.com/SUUUUUS00000/MEGGD-Anti-kick/refs/heads/main/MEGGD%20Best%20Anti-kick.lua", "Anti-kick"
  )

  color = Color3.fromRGB(255, 255, 255)

  Color3.fromRGB(150, 150, 170)
  Color3.fromRGB(10, 10, 15)

  local color2 = Color3.fromRGB(15, 15, 22)

  color3 = Color3.fromRGB(22, 22, 32)
  Color3.fromRGB(155, 90, 255)

  color4 = Color3.fromRGB(160, 90, 255)

  zenithPCClientPrompt = Instance.new("ScreenGui")
  zenithPCClientPrompt.Name = "ZenithPCClientPrompt"
  zenithPCClientPrompt.ResetOnSpawn = false
  zenithPCClientPrompt.IgnoreGuiInset = true
  zenithPCClientPrompt.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  zenithPCClientPrompt.Parent = parent

  local frame = Instance.new("Frame")
  frame.Size = UDim2.fromScale(1, 1)
  frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  frame.BackgroundTransparency = 0.35
  frame.BorderSizePixel = 0
  frame.Parent = zenithPCClientPrompt

  frame2 = Instance.new("Frame")
  frame2.AnchorPoint = Vector2.new(0.5, 0.5)
  frame2.Position = UDim2.fromScale(0.5, 0.5)
  frame2.Size = UDim2.fromOffset(330, 190)
  frame2.BackgroundColor3 = color2
  frame2.BorderSizePixel = 0
  frame2.Parent = frame
end

do
  Instance.new("UICorner", frame2).CornerRadius = UDim.new(0, 14)

  local uiStroke = Instance.new("UIStroke")
  uiStroke.Color = Color3.fromRGB(65, 65, 90)
  uiStroke.Thickness = 1.5
  uiStroke.Transparency = 0.25
  uiStroke.Parent = frame2

  local textLabel = Instance.new("TextLabel")
  textLabel.Position = UDim2.fromOffset(20, 18)
  textLabel.Size = UDim2.new(1, -40, 0, 25)
  textLabel.BackgroundTransparency = 1
  textLabel.Text = "Fake PC Client"
  textLabel.TextColor3 = color
  textLabel.Font = Enum.Font.GothamBold
  textLabel.TextSize = 17
  textLabel.TextXAlignment = Enum.TextXAlignment.Left
  textLabel.Parent = frame2
end

do
  local textLabel2 = Instance.new("TextLabel")
  textLabel2.Position = UDim2.fromOffset(20, 52)
  textLabel2.Size = UDim2.new(1, -40, 0, 48)
  textLabel2.BackgroundTransparency = 1
  textLabel2.Text = "Do you want to use the Fake PC Client?"
  textLabel2.TextColor3 = Color3.fromRGB(190, 195, 210)
  textLabel2.Font = Enum.Font.Gotham
  textLabel2.TextSize = 11
  textLabel2.TextWrapped = true
  textLabel2.TextXAlignment = Enum.TextXAlignment.Left
  textLabel2.Parent = frame2

  textButton = Instance.new("TextButton")
end

do
  textButton.Position = UDim2.fromOffset(20, 122)
  textButton.Size = UDim2.new(0.5, -25, 0, 42)
  textButton.BackgroundColor3 = color4
  textButton.BorderSizePixel = 0
  textButton.AutoButtonColor = false
  textButton.Text = "YES"
  textButton.TextColor3 = color
  textButton.Font = Enum.Font.GothamBold
  textButton.TextSize = 12
  textButton.Parent = frame2

  Instance.new("UICorner", textButton).CornerRadius = UDim.new(0, 9)

  local textButton2 = Instance.new("TextButton")
  textButton2.Position = UDim2.new(0.5, 5, 0, 122)
  textButton2.Size = UDim2.new(0.5, -25, 0, 42)
  textButton2.BackgroundColor3 = color3
  textButton2.BorderSizePixel = 0
  textButton2.AutoButtonColor = false
  textButton2.Text = "NO"
  textButton2.TextColor3 = color
  textButton2.Font = Enum.Font.GothamBold
  textButton2.TextSize = 12
  textButton2.Parent = frame2

  Instance.new("UICorner", textButton2).CornerRadius = UDim.new(0, 9)

  local val20

  textButton.MouseButton1Click:Connect(function()
    val20 = true
    return
  end)

  textButton2.MouseButton1Click:Connect(function()
    val20 = false
    return
  end)

  while true do
    task.wait()

    if val20 ~= nil then
      break
    end
  end
end

do
  zenithPCClientPrompt:Destroy()

  fetchData(
    "https://raw.githubusercontent.com/yBloodz/Free-scripts/refs/heads/main/MVSD-DEVICE-SPOOFER", "Device Spoofer"
  )

  runService = game:GetService("RunService")

  workspace = game:GetService("Workspace")

  game:GetService("HttpService")
  currentCamera = workspace.CurrentCamera

  val = {
    TrackingEnabled = false, Smoothness = 0.25, AimPart = "Head", FOVEnabled = true, FOVSize = 20, ShowAimButton = false, ShowSilentAimButton = false, ShowTriggerbotButton = false, SilentAimButtonLocked = false, TriggerbotButtonLocked = false, ESPEnabled = true, BoxESP = true, NameTags = false, HealthBar = false, Distance = false, BoxColor = (Color3.fromRGB(255, 80, 80)), WallCheck = true, BigHead = false, BigHeadSize = 5, Fly = false, FlySpeed = 10, SpeedHack = false, WalkSpeedValue = 16, NoClip = false, InfiniteJump = false, HitboxExpander = false, HitboxSize = 10, TeleportEnabled = false, TrackingKey = Enum.KeyCode.Z, ViewCameraTP = false, CameraTPActive = false, CameraTPOriginalType = nil, CameraTPOriginalSubject = nil, CameraTPOriginalCFrame = nil, CameraTPSpeed = 140, CameraTPSensitivity = 0.4, CameraTPButtonLocked = false, SpectateEnabled = false, SpectateActive = false, SpectateTarget = nil, DiscordLink = "https://discord.gg/XrTdN9umb", TikTokLink = "https://www.tiktok.com/@nstrscript2", YouTubeLink = "https://www.youtube.com/@s1rcxlotus", SilentAimHK = false, SA2_TargetPart = "Head", SA2_TeamTarget = "Enemies", SA2_Wallcheck = false, SA2_Wallbang = false, SA2_BulletTeleport = false, SA2_HitChance = 100, SA2_HeadshotChance = 100, SA2_FovRadius = 100, SA2_FovVisible = true, SA2_FovTransparency = 0.9, SA2_FovColor = (Color3.fromRGB(160, 90, 255)), SA2_FovTargetColor = (Color3.fromRGB(160, 90, 255)), SA2_ThreeSixtyMode = false, SA2_TargetRange = 500, SA2_Prediction = 0, SA2_GetTarget = "Closest", SA2_AimMethods = { "Raycast" }, SA2_RemoteNames = { "hit", "bullet", "projectile", "hitscan" }, SA2_Key = Enum.KeyCode.R, Triggerbot = false, TriggerbotRate = 100, TriggerbotInterval = 0.01, TriggerbotFOV = 10, TriggerbotFOVVisible = false, TriggerbotFOVColor = (Color3.fromRGB(160, 90, 255)), TriggerbotFOVTargetColor = (Color3.fromRGB(160, 90, 255)), TriggerbotFOVTransparency = 0.9, }
end

local val21 = {}

do
  val2 = {}
  zenithESP = workspace:FindFirstChild("ZenithESP")

  if not zenithESP then
    zenithESP = Instance.new("Folder")
    zenithESP.Name = "ZenithESP"
    zenithESP.Parent = workspace
  end
end

local function helper4(val22, val23)
  if not val.WallCheck then
    return true
  else
    local position = currentCamera.CFrame.Position

    local raycastParams = RaycastParams.new()
    raycastParams.FilterType = Enum.RaycastFilterType.Exclude
    raycastParams.FilterDescendantsInstances = { localPlayer.Character, val22 }
    raycastParams.IgnoreWater = true

    return (workspace:Raycast(position, val23.Position - position, raycastParams)) == nil
  end
end

local function helper5(val24, val25)
  local connect = val24:Connect(val25)
  table.insert(val21, connect)
  return connect
end

local function createTextLabel(val26)
  local playerGui = localPlayer:FindFirstChildOfClass("PlayerGui")
  local textLabel3

  if not playerGui then
    return
  else
    local playerToolNotifications = playerGui:FindFirstChild("PlayerToolNotifications")

    if not playerToolNotifications then
      return
    else
      textLabel3 = Instance.new("TextLabel")
      textLabel3.Size = UDim2.new(0, 260, 0, 40)
      textLabel3.BackgroundColor3 = Color3.fromRGB(18, 20, 26)
      textLabel3.BackgroundTransparency = 0.05
      textLabel3.BorderSizePixel = 0
      textLabel3.TextColor3 = Color3.fromRGB(240, 243, 250)
      textLabel3.TextSize = 13
      textLabel3.Font = Enum.Font.GothamMedium
      textLabel3.Text = val26
      textLabel3.Parent = playerToolNotifications

      Instance.new("UICorner", textLabel3).CornerRadius = UDim.new(0, 10)

      local uiStroke2 = Instance.new("UIStroke")
      uiStroke2.Color = Color3.fromRGB(155, 90, 255)
      uiStroke2.Transparency = 0.3
      uiStroke2.Parent = textLabel3

      if (playerToolNotifications:FindFirstChildOfClass("UIListLayout")) then
        textLabel3.LayoutOrder = math.floor((os.clock()) * 1000)
      end

      task.delay(2.5, function()

        if textLabel3.Parent then

          tweenService:Create(textLabel3, TweenInfo.new(0.25), {
            BackgroundTransparency = 1, TextTransparency = 1, }):Play()

          task.wait(0.3)
          textLabel3:Destroy()
        end

        return
      end)

      return
    end
  end
end

local function helper6(val27)
  if val.AimPart == "Head" then
    return val27:FindFirstChild("Head")
  else
    if val.AimPart == "Torso" then
      local upperTorso = val27:FindFirstChild("UpperTorso")
      local humanoidRootPart = upperTorso

      if not upperTorso then
        local torso = val27:FindFirstChild("Torso")

        humanoidRootPart = torso or val27:FindFirstChild("HumanoidRootPart")
      end

      return humanoidRootPart
    else
      return val27:FindFirstChild("HumanoidRootPart")
    end
  end
end

local function helper7(val28)

  if not val28 then
    return nil
  else
    local character = val28.Character

    if not character or not character.Parent then
      return nil
    else
      local humanoid = character:FindFirstChildOfClass("Humanoid")
      local val29 = not humanoid
      local humanoidRootPart2 = character:FindFirstChild("HumanoidRootPart")
      local val30 = val29

      if not val29 then

        val30 = humanoid.Health <= 0 or not humanoidRootPart2
      end

      if val30 then
        return nil
      else
        return character, humanoid, humanoidRootPart2
      end
    end
  end
end

local function helper8(val31)

  if not val31 or val31 == localPlayer then
    return false
  else
    return true
  end
end

local function iterate(val32)
  local val33 = currentCamera.ViewportSize / 2
  local huge = math.huge
  local fovSize = val32 or val.FOVSize
local val34

  for index, value in ipairs(players:GetPlayers()) do
    local val35 = helper7(value)

    if val35 and helper8(value) then
      local element = helper6(val35)

      if element then

        local val36, element2
        element2, val36 = currentCamera:WorldToViewportPoint(element.Position)

        if val36 and element2.Z > 0 then
          local val37 = element2.X - val33.X
          local val38 = element2.Y - val33.Y
          local val39 = math.sqrt(val37 * val37 + val38 * val38)

          if val39 <= fovSize and val39 < huge then
            if (helper4(val35, element)) then
              val34 = value
              huge = val39
            end
          end
        end
      end
    end
  end

  return val34
end

do
  local val40

  local function safeCall()
    local val41 = os.clock()
    local character2, tool

    if val41 - val40 < val.TriggerbotInterval then
      return
    else
      character2 = localPlayer.Character

      if not character2 then
        return
      else
        tool = character2:FindFirstChildOfClass("Tool")

        if not tool then
          return
        else
          val40 = val41

          task.delay(0.03, function()

            if tool and tool.Parent == character2 then
              pcall(function()
                tool:Deactivate()
                return
              end)
            end

            return
          end)

          return
        end
      end
    end
  end

  val40 = 0

  helper5(runService.Heartbeat, function()
    local val42 = not val.Triggerbot

    if val42 then
      if triggerbotFOV then
        triggerbotFOV.Visible = false
      end

      return
    else
      local val43 = iterate(val.TriggerbotFOV)

      if triggerbotFOV and uiStroke3 then
        local currentCamera2 = workspace.CurrentCamera

        if currentCamera2 and val.TriggerbotFOVVisible then
          local viewportSize = currentCamera2.ViewportSize

          triggerbotFOV.Position = UDim2.fromOffset(viewportSize.X / 2, viewportSize.Y / 2)
          triggerbotFOV.Size = UDim2.fromOffset(val.TriggerbotFOV * 2, val.TriggerbotFOV * 2)
          triggerbotFOV.Visible = true

          uiStroke3.Color = val.TriggerbotFOVColor
          uiStroke3.Transparency = 1 - (math.clamp(val.TriggerbotFOVTransparency, 0, 1))
        else
          triggerbotFOV.Visible = false
        end
      end

      if val43 then
        safeCall()
      end

      return
    end
  end)

  local playerGui2 = localPlayer:WaitForChild("PlayerGui")
  playerGui2:FindFirstChild("PlayerVisualizationTool")

  playerVisualizationTool = Instance.new("ScreenGui")
  playerVisualizationTool.Name = "PlayerVisualizationTool"
  playerVisualizationTool.ResetOnSpawn = false
  playerVisualizationTool.IgnoreGuiInset = true
  playerVisualizationTool.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  playerVisualizationTool.Enabled = false
  playerVisualizationTool.Parent = playerGui2
end

triggerbotFOV = Instance.new("Frame")
triggerbotFOV.Name = "TriggerbotFOV"
triggerbotFOV.AnchorPoint = Vector2.new(0.5, 0.5)
triggerbotFOV.BackgroundTransparency = 1
triggerbotFOV.BorderSizePixel = 0
triggerbotFOV.Size = UDim2.fromOffset(val.TriggerbotFOV * 2, val.TriggerbotFOV * 2)
triggerbotFOV.Visible = false
triggerbotFOV.Parent = playerVisualizationTool

Instance.new("UICorner", triggerbotFOV).CornerRadius = UDim.new(1, 0)

uiStroke3 = Instance.new("UIStroke")
uiStroke3.Thickness = 1
uiStroke3.Color = val.TriggerbotFOVColor
uiStroke3.Transparency = 1 - val.TriggerbotFOVTransparency
uiStroke3.Parent = triggerbotFOV

local function helper9()
  playerVisualizationTool.Enabled = true
  return
end

do
  local playerToolNotifications2 = Instance.new("Frame")
  playerToolNotifications2.Name = "PlayerToolNotifications"
  playerToolNotifications2.AnchorPoint = Vector2.new(1, 1)
  playerToolNotifications2.Position = UDim2.new(1, -16, 1, -16)
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
  fovCircle.Size = UDim2.fromOffset(val.FOVSize * 2, val.FOVSize * 2)
  fovCircle.Parent = playerVisualizationTool

  local uiCorner = Instance.new("UICorner")
  uiCorner.CornerRadius = UDim.new(1, 0)
  uiCorner.Parent = fovCircle

  local uiStroke4 = Instance.new("UIStroke")
  uiStroke4.Thickness = 1.5
  uiStroke4.Color = Color3.fromRGB(155, 90, 255)
  uiStroke4.Transparency = 0.2
  uiStroke4.Parent = fovCircle
end

do
  aimToggle = Instance.new("TextButton")
  aimToggle.Name = "AimToggle"
  aimToggle.AnchorPoint = Vector2.new(0, 1)
  aimToggle.Position = UDim2.new(0, 75, 1, -15)
  aimToggle.Size = UDim2.fromOffset(48, 48)

  local trackingEnabled = val.TrackingEnabled

  local color5 = trackingEnabled
  color5 = trackingEnabled and Color3.fromRGB(145, 75, 235)

  aimToggle.BackgroundColor3 = color5 or Color3.fromRGB(235, 65, 65)
end

do
  aimToggle.Text = "AIM"
  aimToggle.TextColor3 = Color3.new(1, 1, 1)
  aimToggle.TextSize = 11
  aimToggle.Font = Enum.Font.GothamBold
  aimToggle.AutoButtonColor = false
  aimToggle.Visible = val.ShowAimButton
  aimToggle.Parent = playerVisualizationTool

  Instance.new("UICorner", aimToggle).CornerRadius = UDim.new(0, 12)
  val3 = false
  val4 = false
  local val44 = false
  val5 = false
  local position3, position4

  helper5(aimToggle.InputBegan, function(p12)

    if val3 then
      return
    else

      if p12.UserInputType == Enum.UserInputType.MouseButton1
        or p12.UserInputType == Enum.UserInputType.Touch then
        val44 = true
        val5 = false
        position3 = p12.Position
        position4 = aimToggle.Position
        connect2 = nil

        connect2 = p12.Changed:Connect(function()

          if p12.UserInputState == Enum.UserInputState.End then
            val44 = false

            connect2:Disconnect()
          end

          return
        end)
      end

      return
    end
  end)

  helper5(userInputService.InputChanged, function(p13)
    local val45 = not val3
    local val46 = val45

    if val45 then
      local val47 = val44
      local val48 = val47

      if val47 then

        val48 = p13.UserInputType == Enum.UserInputType.MouseMovement
          or p13.UserInputType == Enum.UserInputType.Touch
      end

      val46 = val48
    end

    if val46 then
      local element3 = p13.Position - position3
      local val49 = (math.abs(element3.X)) > 4

      if val49 or (math.abs(element3.Y)) > 4 then
        val5 = true
      end

      local udim = UDim2.new(
        position4.X.Scale, position4.X.Offset + element3.X, position4.Y.Scale, position4.Y.Offset + element3.Y
      )

      aimToggle.Position = aimToggle.Position:Lerp(udim, 0.32)
    end

    return
  end)
end

do
  mainWindow = Instance.new("Frame")
  mainWindow.Name = "MainWindow"
  mainWindow.AnchorPoint = Vector2.new(0.5, 0.5)
  mainWindow.Position = UDim2.fromScale(0.5, 0.5)
  mainWindow.Size = UDim2.fromOffset(410, 305)
  mainWindow.BackgroundColor3 = Color3.fromRGB(14, 16, 22)
  mainWindow.BorderSizePixel = 0
  mainWindow.Parent = playerVisualizationTool

  Instance.new("UICorner", mainWindow).CornerRadius = UDim.new(0, 14)

  local uiStroke5 = Instance.new("UIStroke")
  uiStroke5.Color = Color3.fromRGB(50, 60, 85)
  uiStroke5.Thickness = 1.2
  uiStroke5.Parent = mainWindow
end

do
  local uiScale = Instance.new("UIScale")
  uiScale.Scale = 1
  uiScale.Parent = mainWindow

  frame3 = Instance.new("Frame")
  frame3.Size = UDim2.new(1, 0, 0, 58)
  frame3.BackgroundColor3 = Color3.fromRGB(19, 22, 31)
  frame3.BorderSizePixel = 0
  frame3.Parent = mainWindow

  local uiCorner2 = Instance.new("UICorner")
  uiCorner2.CornerRadius = UDim.new(0, 14)
  uiCorner2.Parent = frame3

  local frame4 = Instance.new("Frame")
  frame4.Position = UDim2.new(0, 0, 1, -10)
  frame4.Size = UDim2.new(1, 0, 0, 10)
  frame4.BackgroundColor3 = Color3.fromRGB(19, 22, 31)
  frame4.BorderSizePixel = 0
  frame4.Parent = frame3
end

do
  local textLabel4 = Instance.new("TextLabel")
  textLabel4.BackgroundTransparency = 1
  textLabel4.Position = UDim2.fromOffset(18, 9)
  textLabel4.Size = UDim2.new(1, -80, 0, 24)
  textLabel4.Font = Enum.Font.GothamBold
  textLabel4.Text = "Zenith Hub"
  textLabel4.TextColor3 = Color3.fromRGB(250, 252, 255)
  textLabel4.TextSize = 18
  textLabel4.TextXAlignment = Enum.TextXAlignment.Left
  textLabel4.Parent = frame3

  local textLabel5 = Instance.new("TextLabel")
  textLabel5.BackgroundTransparency = 1
  textLabel5.Position = UDim2.fromOffset(19, 32)
  textLabel5.Size = UDim2.new(1, -80, 0, 16)
  textLabel5.Font = Enum.Font.Gotham
  textLabel5.Text = "developed by s1rcxlotus"

  textLabel5.TextColor3 = Color3.fromRGB(120, 130, 155)
  textLabel5.TextSize = 10
  textLabel5.TextXAlignment = Enum.TextXAlignment.Left
  textLabel5.Parent = frame3
end

do
  local hideButton = Instance.new("TextButton")
  hideButton.Name = "HideButton"
  hideButton.AnchorPoint = Vector2.new(1, 0.5)
  hideButton.Position = UDim2.new(1, -14, 0.5, 0)
  hideButton.Size = UDim2.fromOffset(34, 34)
  hideButton.BackgroundColor3 = Color3.fromRGB(26, 30, 42)
  hideButton.Text = "â"
  hideButton.TextColor3 = Color3.fromRGB(220, 225, 240)
  hideButton.TextSize = 16
  hideButton.Font = Enum.Font.GothamBold
  hideButton.AutoButtonColor = false
  hideButton.Active = true
  hideButton.ZIndex = 20
  hideButton.Parent = frame3

  Instance.new("UICorner", hideButton).CornerRadius = UDim.new(0, 10)

  helper5(hideButton.Activated, function()
    helper()
    return
  end)
end

do
  local val50 = false
  local position5, position6

  helper5(frame3.InputBegan, function(p14)

    local val51 = p14.UserInputType == Enum.UserInputType.MouseButton1
      or p14.UserInputType == Enum.UserInputType.Touch

    if val51 then
      val50 = true
      position5 = p14.Position
      position6 = mainWindow.Position
      connect3 = nil

      connect3 = p14.Changed:Connect(function()

        if p14.UserInputState == Enum.UserInputState.End then
          val50 = false

          connect3:Disconnect()
        end

        return
      end)
    end

    return
  end)

  helper5(userInputService.InputChanged, function(p15)
    local val52 = val50
    local val53 = val52

    if val52 then

      val53 = p15.UserInputType == Enum.UserInputType.MouseMovement
        or p15.UserInputType == Enum.UserInputType.Touch
    end

    if val53 then
      local element4 = p15.Position - position5

      local udim2 = UDim2.new(
        position6.X.Scale, position6.X.Offset + element4.X, position6.Y.Scale, position6.Y.Offset + element4.Y
      )

      mainWindow.Position = mainWindow.Position:Lerp(udim2, 0.28)
    end

    return
  end)

  frame5 = Instance.new("Frame")
  frame5.Position = UDim2.fromOffset(12, 68)
  frame5.Size = UDim2.fromOffset(102, 225)
  frame5.BackgroundTransparency = 1
  frame5.Parent = mainWindow

  local uiListLayout2 = Instance.new("UIListLayout")
  uiListLayout2.Padding = UDim.new(0, 8)
  uiListLayout2.Parent = frame5
end

scrollingFrame = Instance.new("ScrollingFrame")

local function createTextLabel2(val54)
  local textLabel6 = Instance.new("TextLabel")
  textLabel6.Size = UDim2.new(1, 0, 0, 24)
  textLabel6.BackgroundTransparency = 1
  textLabel6.Text = string.upper(val54)
  textLabel6.TextColor3 = Color3.fromRGB(165, 90, 255)
  textLabel6.TextSize = 10
  textLabel6.Font = Enum.Font.GothamBold
  textLabel6.TextXAlignment = Enum.TextXAlignment.Left
  textLabel6.Parent = scrollingFrame

  return textLabel6
end

scrollingFrame.Position = UDim2.fromOffset(124, 68)

local function createFrame(val60, val55, val56, val57, val58, val59, val61)
  local frame6 = Instance.new("Frame")
  frame6.Size = UDim2.new(1, 0, 0, 64)
  frame6.BackgroundTransparency = 1
  frame6.Parent = scrollingFrame

  local textLabel7 = Instance.new("TextLabel")
  textLabel7.Position = UDim2.fromOffset(2, 0)
  textLabel7.Size = UDim2.new(1, -4, 0, 22)
  textLabel7.BackgroundTransparency = 1
  textLabel7.TextColor3 = Color3.fromRGB(225, 220, 240)
  textLabel7.TextSize = 12
  textLabel7.Font = Enum.Font.GothamMedium
  textLabel7.TextXAlignment = Enum.TextXAlignment.Left
  textLabel7.Parent = frame6

  local textLabel8 = Instance.new("TextLabel")
  textLabel8.AnchorPoint = Vector2.new(1, 0)
  textLabel8.Position = UDim2.new(1, -2, 0, 0)
  textLabel8.Size = UDim2.fromOffset(70, 22)
  textLabel8.BackgroundTransparency = 1
  textLabel8.TextColor3 = Color3.fromRGB(180, 125, 255)
  textLabel8.TextSize = 11
  textLabel8.Font = Enum.Font.GothamBold
  textLabel8.TextXAlignment = Enum.TextXAlignment.Right
  textLabel8.Parent = frame6

  local frame7 = Instance.new("Frame")
  frame7.Position = UDim2.fromOffset(2, 31)
  frame7.Size = UDim2.new(1, -4, 0, 7)
  frame7.BackgroundColor3 = Color3.fromRGB(43, 35, 58)
  frame7.BorderSizePixel = 0
  frame7.Active = true
  frame7.Parent = frame6

  Instance.new("UICorner", frame7).CornerRadius = UDim.new(1, 0)

  local frame8 = Instance.new("Frame")
  frame8.Size = UDim2.new(0, 0, 1, 0)
  frame8.BackgroundColor3 = Color3.fromRGB(155, 75, 245)
  frame8.BorderSizePixel = 0
  frame8.Parent = frame7

  Instance.new("UICorner", frame8).CornerRadius = UDim.new(1, 0)

  local frame9 = Instance.new("Frame")
  frame9.AnchorPoint = Vector2.new(0.5, 0.5)
  frame9.Size = UDim2.fromOffset(16, 16)
  frame9.BackgroundColor3 = Color3.fromRGB(215, 180, 255)
  frame9.BorderSizePixel = 0
  frame9.Parent = frame7

  Instance.new("UICorner", frame9).CornerRadius = UDim.new(1, 0)
  local val62 = false

  local function helper10(val63)
    if val61 then
      return val61(val63)
    else
      if val57 < 1 then
        return string.format("%.2f", val63)
      else
        return tostring(math.floor(val63 + 0.5))
      end
    end
  end

  local function helper11(val64)
    local val65 = math.clamp(val64, val55, val56)

    if val57 > 0 then
      local val66 = val65 - val55
      local floorVal = math.floor(val66 / val57 + 0.5)
      val65 = math.clamp(val55 + floorVal * val57, val55, val56)
    end

    local val67 = val56 - val55

    local val68 = val67 == 0 and 0 or (val65 - val55) / val67
    frame8.Size = UDim2.new(val68, 0, 1, 0)
    frame9.Position = UDim2.new(val68, 0, 0.5, 0)
    textLabel7.Text = val60
    textLabel8.Text = helper10(val65)
    val59(val65)
    return
  end

  local function helper12(val69)
    local val70 = math.max(frame7.AbsoluteSize.X, 1)

    helper11(val55
      + (val56 - val55) * ((math.clamp(val69.Position.X - frame7.AbsolutePosition.X, 0, val70)) / val70))

    return
  end

  helper5(frame7.InputBegan, function(p27)

    if p27.UserInputType == Enum.UserInputType.MouseButton1
      or p27.UserInputType == Enum.UserInputType.Touch then
      val62 = true
      helper12(p27)
    end

    return
  end)

  helper5(userInputService.InputChanged, function(p28)
    local val71 = val62
    local val72 = val71

    if val71 then

      val72 = p28.UserInputType == Enum.UserInputType.MouseMovement
        or p28.UserInputType == Enum.UserInputType.Touch
    end

    if val72 then
      helper12(p28)
    end

    return
  end)

  helper5(userInputService.InputEnded, function(p29)

    if p29.UserInputType == Enum.UserInputType.MouseButton1
      or p29.UserInputType == Enum.UserInputType.Touch then
      val62 = false
    end

    return
  end)

  helper11(val58)
  return frame6
end

scrollingFrame.Size = UDim2.new(1, -136, 1, -78)
scrollingFrame.BackgroundColor3 = Color3.fromRGB(17, 20, 28)
scrollingFrame.BorderSizePixel = 0
scrollingFrame.ClipsDescendants = true
scrollingFrame.CanvasSize = UDim2.fromOffset(0, 0)
scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y

local function createTextButton(val75, val73, val74, val76)
  local text = val74

  local textButton3 = Instance.new("TextButton")
  textButton3.Size = UDim2.new(1, 0, 0, 42)
  textButton3.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
  textButton3.BorderSizePixel = 0
  textButton3.AutoButtonColor = false
  textButton3.Text = ""
  textButton3.Parent = scrollingFrame

  Instance.new("UICorner", textButton3).CornerRadius = UDim.new(0, 8)

  local textLabel9 = Instance.new("TextLabel")
  textLabel9.Position = UDim2.fromOffset(12, 0)
  textLabel9.Size = UDim2.new(0.5, 0, 1, 0)
  textLabel9.BackgroundTransparency = 1
  textLabel9.Text = val75
  textLabel9.TextColor3 = Color3.fromRGB(210, 215, 225)
  textLabel9.TextSize = 11
  textLabel9.Font = Enum.Font.GothamMedium
  textLabel9.TextXAlignment = Enum.TextXAlignment.Left
  textLabel9.Parent = textButton3

  local textLabel10 = Instance.new("TextLabel")
  textLabel10.Position = UDim2.new(0.4, 0, 0, 0)
  textLabel10.Size = UDim2.new(0.6, -12, 1, 0)
  textLabel10.BackgroundTransparency = 1
  textLabel10.Text = text
  textLabel10.TextColor3 = Color3.fromRGB(155, 90, 255)
  textLabel10.TextSize = 11
  textLabel10.Font = Enum.Font.GothamBold
  textLabel10.TextXAlignment = Enum.TextXAlignment.Right
  textLabel10.Parent = textButton3

  local val77 = false
  local frame10

  local function helper13()

    if frame10 then

      frame10:Destroy()
      frame10 = nil
    end

    val77 = false
    return
  end

  helper5(textButton3.MouseButton1Click, function()
    if val77 then
      helper13()
      return
    else
      val77 = true

      frame10 = Instance.new("Frame")
      frame10.ZIndex = 50
      frame10.ClipsDescendants = true
      frame10.BackgroundColor3 = Color3.fromRGB(20, 24, 34)
      frame10.BorderSizePixel = 0
      frame10.Parent = playerVisualizationTool

      Instance.new("UICorner", frame10).CornerRadius = UDim.new(0, 8)
      local absolutePosition = textButton3.AbsolutePosition
      local absoluteSize = textButton3.AbsoluteSize

      frame10.Position = UDim2.fromOffset(
        absolutePosition.X, absolutePosition.Y + absoluteSize.Y + 4
      )

      frame10.Size = UDim2.fromOffset(absoluteSize.X, math.min(#val73 * 32, 160))

      Instance.new("UIListLayout").Parent = frame10

      for index2, value2 in ipairs(val73) do
        local val78 = value2

        local textButton4 = Instance.new("TextButton")
        textButton4.Size = UDim2.new(1, 0, 0, 32)
        textButton4.BackgroundTransparency = 1
        textButton4.Text = val78
        textButton4.TextColor3 = Color3.fromRGB(220, 225, 235)
        textButton4.TextSize = 11
        textButton4.Font = Enum.Font.GothamMedium
        textButton4.ZIndex = 51
        textButton4.Parent = frame10

        helper5(textButton4.MouseButton1Click, function()
          text = val78
          textLabel10.Text = val78
          val76(val78)
          helper13()
          return
        end)
      end

      return
    end
  end)

  return textButton3
end

scrollingFrame.ScrollBarThickness = 4
scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(155, 90, 255)

local function createTextButton2(val80, val79, val81)
  local textButton5 = Instance.new("TextButton")

  textButton5.Size = UDim2.new(1, 0, 0, 34)
  textButton5.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
  textButton5.BorderSizePixel = 0
  textButton5.AutoButtonColor = false
  textButton5.Text = ""
  textButton5.Parent = scrollingFrame

  Instance.new("UICorner", textButton5).CornerRadius = UDim.new(0, 8)

  local frame11 = Instance.new("Frame")
  frame11.Position = UDim2.fromOffset(10, 8)
  frame11.Size = UDim2.fromOffset(18, 18)

  local color6 = val79
  color6 = val79 and Color3.fromRGB(145, 75, 235)

  frame11.BackgroundColor3 = color6 or Color3.fromRGB(38, 43, 56)
  frame11.BorderSizePixel = 0
  frame11.Parent = textButton5

  Instance.new("UICorner", frame11).CornerRadius = UDim.new(0, 5)

  local textLabel11 = Instance.new("TextLabel")
  textLabel11.Size = UDim2.fromScale(1, 1)
  textLabel11.BackgroundTransparency = 1

  textLabel11.Text = val79 and "â" or ""
  textLabel11.TextColor3 = Color3.new(1, 1, 1)
  textLabel11.Font = Enum.Font.GothamBold
  textLabel11.TextSize = 12
  textLabel11.Parent = frame11

  local textLabel12 = Instance.new("TextLabel")
  textLabel12.Position = UDim2.fromOffset(38, 0)
  textLabel12.Size = UDim2.new(1, -46, 1, 0)
  textLabel12.BackgroundTransparency = 1
  textLabel12.Text = val80
  textLabel12.TextColor3 = Color3.fromRGB(220, 225, 235)
  textLabel12.TextSize = 12
  textLabel12.Font = Enum.Font.GothamMedium
  textLabel12.TextXAlignment = Enum.TextXAlignment.Left
  textLabel12.Parent = textButton5

  local val82 = val79

  helper5(textButton5.MouseButton1Click, function()
    local val83 = not val82
    val82 = val83
    local tweenInfo = TweenInfo.new(0.15)
    local val84 = val82

    local color7 = val84
    color7 = val84 and Color3.fromRGB(145, 75, 235)

    tweenService:Create(frame11, tweenInfo, {
      BackgroundColor3 = color7 or Color3.fromRGB(38, 43, 56), }):Play()

    textLabel11.Text = val82 and "â" or ""
    val81(val82)
    return
  end)

  return textButton5
end

local function createFrame2(val86, val85, val87)
  local frame12 = Instance.new("Frame")

  frame12.Size = UDim2.new(1, 0, 0, 42)
  frame12.BackgroundTransparency = 1
  frame12.Parent = scrollingFrame

  local textButton6 = Instance.new("TextButton")
  textButton6.Size = UDim2.new(1, 0, 0, 42)
  textButton6.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
  textButton6.BorderSizePixel = 0
  textButton6.AutoButtonColor = false
  textButton6.Text = ""
  textButton6.Parent = frame12

  Instance.new("UICorner", textButton6).CornerRadius = UDim.new(0, 8)

  local frame13 = Instance.new("Frame")
  frame13.Position = UDim2.fromOffset(10, 12)
  frame13.Size = UDim2.fromOffset(18, 18)

  local color8 = val85
  color8 = val85 and Color3.fromRGB(145, 75, 235)

  frame13.BackgroundColor3 = color8 or Color3.fromRGB(38, 43, 56)
  frame13.BorderSizePixel = 0
  frame13.Parent = textButton6

  Instance.new("UICorner", frame13).CornerRadius = UDim.new(0, 5)

  local textLabel13 = Instance.new("TextLabel")
  textLabel13.Size = UDim2.fromScale(1, 1)
  textLabel13.BackgroundTransparency = 1

  textLabel13.Text = val85 and "â" or ""
  textLabel13.TextColor3 = Color3.new(1, 1, 1)
  textLabel13.Font = Enum.Font.GothamBold
  textLabel13.TextSize = 12
  textLabel13.Parent = frame13

  local textLabel14 = Instance.new("TextLabel")
  textLabel14.Position = UDim2.fromOffset(38, 0)
  textLabel14.Size = UDim2.new(1, -46, 1, 0)
  textLabel14.BackgroundTransparency = 1
  textLabel14.Text = val86
  textLabel14.TextColor3 = Color3.fromRGB(220, 225, 235)
  textLabel14.TextSize = 12
  textLabel14.Font = Enum.Font.GothamMedium
  textLabel14.TextXAlignment = Enum.TextXAlignment.Left
  textLabel14.Parent = textButton6

  local val88 = val85

  helper5(textButton6.MouseButton1Click, function()
    local val89 = not val88
    val88 = val89
    local val90 = val88

    local color9 = val90
    color9 = val90 and Color3.fromRGB(145, 75, 235)

    frame13.BackgroundColor3 = color9 or Color3.fromRGB(38, 43, 56)

    textLabel13.Text = val88 and "â" or ""
    val87(val88)
    return
  end)

  return frame12
end

scrollingFrame.Active = true
scrollingFrame.ScrollBarImageTransparency = 0.3
scrollingFrame.ScrollingEnabled = true
scrollingFrame.Parent = mainWindow

local instance = Instance.new("UICorner", scrollingFrame)
local udim3 = UDim.new(0, 10)

local function iterate2()
  for index3, value3 in ipairs(scrollingFrame:GetChildren()) do
    if not (value3:IsA("UICorner")) then
      value3:Destroy()
    end
  end

  return
end

instance.CornerRadius = udim3
local val91 = {}
local element5

local function safeCall2(val92)

  local val93 = not element5 or (type(element5.GetAsset)) ~= "function"

  if val93 then
    return nil
  else
    local success2 = { pcall(element5.GetAsset, val92) }
    local val94 = success2[2]

    if not success2[1] or (type(val94)) ~= "table" then
      return nil
    else
      return val94
    end
  end
end

local function iterate3(val95, val96)
  val6 = val95

  for key, value4 in pairs(val91) do
    local val97 = key == val95

    local color10 = val97
    color10 = val97 and Color3.fromRGB(255, 255, 255)

    local color11 = color10 or Color3.fromRGB(140, 150, 175)

    local color12 = val97
    color12 = val97 and Color3.fromRGB(125, 65, 205)

    value4.BackgroundColor3 = color12 or Color3.fromRGB(21, 25, 35)
    local label = value4:FindFirstChild("Label")

    if label then
      label.TextColor3 = color11
    end
  end

  iterate2()
  scrollingFrame.CanvasPosition = Vector2.new(0, 0)
  val96()
  return
end

local val98

local function createImageLabel(val99, val100)
  local icon = Instance.new("ImageLabel")

  icon.Name = "Icon"
  icon.Position = UDim2.fromOffset(10, 8)
  icon.Size = UDim2.fromOffset(20, 20)
  icon.BackgroundTransparency = 1
  icon.ScaleType = Enum.ScaleType.Fit
  icon.ImageColor3 = Color3.fromRGB(185, 190, 215)
  icon.Parent = val99

  if val100 == "globe" then
    icon.Image = "rbxassetid://10723404337"
    return icon
  else
    local element6 = safeCall2(val100)

    if element6 then
      local url = element6.Url

      local id = element6.Id or element6.id
      local val101 = not url

      if val101 and id then
        url = "rbxassetid://" .. (tostring(id))
      end

      if url then
        icon.Image = url

        local imageRectOffset = element6.ImageRectOffset or element6.imageRectOffset

        local imageRectSize = element6.ImageRectSize or element6.imageRectSize

        if imageRectOffset and imageRectSize then
          icon.ImageRectOffset = imageRectOffset
          icon.ImageRectSize = imageRectSize
        end

        return icon
      else
        ::L1327470::
        icon:Destroy()
        return val98(val99, val100)
      end
    else
      goto L1327470
    end
  end
end

do
  val98 = function(p45, p46)
    local icon2 = Instance.new("Frame")

    icon2.Name = "Icon"
    icon2.Position = UDim2.fromOffset(10, 8)
    icon2.Size = UDim2.fromOffset(20, 20)
    icon2.BackgroundTransparency = 1
    icon2.Parent = p45

    local color13 = Color3.fromRGB(185, 190, 215)

    local function createFrame3(val102, val103)
      local frame14 = Instance.new("Frame")
      frame14.BorderSizePixel = 0
      frame14.BackgroundColor3 = color13
      frame14.AnchorPoint = Vector2.new(0, 0.5)
      frame14.Position = UDim2.fromScale(val102[1], val102[2])

      local val104 = val103[1] - val102[1]
      local val105 = val103[2] - val102[2]
      local val106 = math.sqrt(val104 * val104 + val105 * val105)

      frame14.Size = UDim2.new(0, val106 * 20, 0, 1.7)
      frame14.Rotation = math.deg(math.atan2(val105, val104))
      frame14.Parent = icon2

      return
    end

    local function createFrame4(val108, val107, val109)
      local frame15 = Instance.new("Frame")
      frame15.BorderSizePixel = 0
      frame15.BackgroundTransparency = val109 and 0 or 1
      frame15.BackgroundColor3 = color13
      frame15.Position = UDim2.fromScale(val108[1], val108[2])
      frame15.Size = UDim2.fromScale(val107, val107)
      frame15.Parent = icon2

      local uiCorner3 = Instance.new("UICorner")
      uiCorner3.CornerRadius = UDim.new(1, 0)
      uiCorner3.Parent = frame15

      if not val109 then
        local uiStroke6 = Instance.new("UIStroke")
        uiStroke6.Color = color13
        uiStroke6.Thickness = 1.7
        uiStroke6.Parent = frame15
      end

      return
    end

    if p46 == "crosshair" then
      createFrame4({ 0.25, 0.25 }, 0.5, false)
      createFrame4({ 0.44, 0.44 }, 0.12, true)

      createFrame3({ 0.5, 0.02 }, { 0.5, 0.23 })
      createFrame3({ 0.5, 0.77 }, { 0.5, 0.98 })
      createFrame3({ 0.02, 0.5 }, { 0.23, 0.5 })
      createFrame3({ 0.77, 0.5 }, { 0.98, 0.5 })
    else
      if p46 == "eye" then
        createFrame3({ 0.08, 0.5 }, { 0.28, 0.28 })
        createFrame3({ 0.28, 0.28 }, { 0.5, 0.2 })
        createFrame3({ 0.5, 0.2 }, { 0.72, 0.28 })
        createFrame3({ 0.72, 0.28 }, { 0.92, 0.5 })
        createFrame3({ 0.92, 0.5 }, { 0.72, 0.72 })
        createFrame3({ 0.72, 0.72 }, { 0.5, 0.8 })
        createFrame3({ 0.5, 0.8 }, { 0.28, 0.72 })
        createFrame3({ 0.28, 0.72 }, { 0.08, 0.5 })

        createFrame4({ 0.41, 0.41 }, 0.18, false)
      else

        if p46 == "globe-2" or p46 == "globe" then
        else

          if p46 == "user-round" or p46 == "user" then
            createFrame4({ 0.36, 0.08 }, 0.28, false)

            local frame16 = Instance.new("Frame")
            frame16.BorderSizePixel = 0
            frame16.BackgroundTransparency = 1
            frame16.Position = UDim2.fromScale(0.17, 0.46)
            frame16.Size = UDim2.fromScale(0.66, 0.44)
            frame16.Parent = icon2

            local uiStroke7 = Instance.new("UIStroke")
            uiStroke7.Color = color13
            uiStroke7.Thickness = 1.7
            uiStroke7.Parent = frame16

            local uiCorner4 = Instance.new("UICorner")
            uiCorner4.CornerRadius = UDim.new(1, 0)
            uiCorner4.Parent = frame16
          else

            if p46 == "info" or p46 == "badge-info" then
              createFrame4({ 0.12, 0.12 }, 0.76, false)
              createFrame4({ 0.465, 0.25 }, 0.07, true)
              createFrame3({ 0.5, 0.4 }, { 0.5, 0.73 })
            end
          end
        end
      end
    end

    return icon2
  end
end

local function createTextButton3(val110, val111)
  local textButton7 = Instance.new("TextButton")
  textButton7.Size = UDim2.new(1, 0, 0, 36)
  textButton7.BackgroundColor3 = Color3.fromRGB(21, 25, 35)
  textButton7.BorderSizePixel = 0
  textButton7.AutoButtonColor = false
  textButton7.Text = ""
  textButton7.Parent = frame5

  Instance.new("UICorner", textButton7).CornerRadius = UDim.new(0, 9)
  createImageLabel(textButton7, val111)

  local label2 = Instance.new("TextLabel")
  label2.Name = "Label"
  label2.Position = UDim2.fromOffset(35, 0)
  label2.Size = UDim2.new(1, -41, 1, 0)
  label2.BackgroundTransparency = 1
  label2.Text = val110
  label2.TextColor3 = Color3.fromRGB(140, 150, 175)
  label2.TextSize = 11
  label2.Font = Enum.Font.GothamMedium
  label2.TextXAlignment = Enum.TextXAlignment.Left
  label2.Parent = textButton7

  val91[val110] = textButton7
  return textButton7
end

local val112

local function createUIListLayout()
  local uiListLayout3 = Instance.new("UIListLayout")
  uiListLayout3.Padding = UDim.new(0, 8)
  uiListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
  uiListLayout3.Parent = scrollingFrame

  val112(scrollingFrame)
  return uiListLayout3
end

do
  val112 = function(p54)
    local uiPadding = Instance.new("UIPadding")
    uiPadding.PaddingTop = UDim.new(0, 12)
    uiPadding.PaddingBottom = UDim.new(0, 12)
    uiPadding.PaddingLeft = UDim.new(0, 12)
    uiPadding.PaddingRight = UDim.new(0, 12)
    uiPadding.Parent = p54

    return
  end

  val7 = createTextButton3("Main", "crosshair")
  val8 = createTextButton3("ESP", "eye")
  val9 = createTextButton3("Mics", "globe")
  val10 = createTextButton3("Teleport", "user-round")
  val11 = createTextButton3("About", "info")
end

local function helper14(val113)
  val.TrackingEnabled = val113

  if val113 then
    if val.SilentAimHK then
      sa2SetEnabled(false)
    end

    val.SilentAimHK = false
    val.Triggerbot = false

    if triggerbotFOV then
      triggerbotFOV.Visible = false
    end

    aimToggle.Text = "ON"
    aimToggle.BackgroundColor3 = Color3.fromRGB(145, 75, 235)

    createTextLabel("Aimbot ON")
  else
    aimToggle.Text = "AIM"
    aimToggle.BackgroundColor3 = Color3.fromRGB(235, 65, 65)
    createTextLabel("Aimbot OFF")
  end

  fovCircle.Visible = val113 and val.FOVEnabled

  if refreshSilentAimButton then
    refreshSilentAimButton()
  end

  if refreshTriggerbotButton then
    refreshTriggerbotButton()
  end

  if helper2 then
    helper2()
  end

  return
end

local function helper15(val114)
  local numVal = (tonumber(val114)) or 100

  if numVal >= 100 then
    return true
  else
    if numVal <= 0 then
      return false
    else
      return (math.random(1, 100)) <= numVal
    end
  end
end

val12 = {
  targetPart = nil, targetPlayer = nil, namecallOld = nil, indexOld = nil, mouseHookActive = false, hookActive = false, fovCircle = nil, fovStroke = nil, }

local function helper16(val115)

  local val116 = not val115 or not val115.Parent

  if val116 then
    return nil
  else
    local numVal2 = tonumber(val.SA2_Prediction)
    local val117 = math.clamp(numVal2 or 0, 0, 0.5)

    if val117 <= 0 then
      return val115.Position
    else
      return val115.Position + Vector3.zero * val117
    end
  end
end

local function helper17(val118)
  if not val118 then
    return nil
  else
    if (typeof(val118)) == "Instance" then
      if (val118:IsA("Player")) then
        return val118.Character
      else
        if (val118:IsA("Model")) then
          return val118
        else
          ::L1385767::
          return nil
        end
      end
    else
      goto L1385767
    end
  end
end

local function helper18(val119)

  local val120 = not val119 or val119 == localPlayer

  if val120 then
    return false
  else
    if val.SA2_TeamTarget == "All" then
      return true
    else
      if val.SA2_TeamTarget == "Teams" then

        if localPlayer.Team and val119.Team then
          return localPlayer.Team == val119.Team
        else
          return false
        end
      else

        if localPlayer.Team and val119.Team then
          return localPlayer.Team ~= val119.Team
        else
          return true
        end
      end
    end
  end
end

local function helper19(val121)
  local object = helper17(val121)

  if not object then
    return false
  else
    local humanoid2 = object:FindFirstChildOfClass("Humanoid")
    local humanoidRootPart3 = object:FindFirstChild("HumanoidRootPart")
    local val122 = humanoid2 ~= nil
    local val123 = val122

    if val122 then

      val123 = humanoid2.Health > 0 and humanoidRootPart3 ~= nil
    end

    return val123
  end
end

local function helper20(val124)
  local object2 = helper17(val124)

  if not object2 then
    return nil
  else
    if val.SA2_TargetPart == "Random" then
      if (helper15(val.SA2_HeadshotChance)) then
        local head = object2:FindFirstChild("Head")

        return head or object2:FindFirstChild("HumanoidRootPart")
      else
        local humanoidRootPart4 = object2:FindFirstChild("HumanoidRootPart")

        return humanoidRootPart4 or object2:FindFirstChild("Head")
      end
    else
      local findFirstChild = object2:FindFirstChild(val.SA2_TargetPart)
      local humanoidRootPart5 = findFirstChild

      if not findFirstChild then
        local head2 = object2:FindFirstChild("Head")

        humanoidRootPart5 = head2 or object2:FindFirstChild("HumanoidRootPart")
      end

      return humanoidRootPart5
    end
  end
end

local function helper21(val125)

  if (typeof(val125)) ~= "Instance" then
    return false
  else
    local remoteEvent = val125:IsA("RemoteEvent")
    local unreliableRemoteEvent = remoteEvent

    if not remoteEvent then
      local remoteFunction = val125:IsA("RemoteFunction")

      unreliableRemoteEvent = remoteFunction or val125:IsA("UnreliableRemoteEvent")
    end

    if not unreliableRemoteEvent then
      return false
    else
      local val126 = string.lower(val125.Name)
      local val127 = ipairs

      for v286, v287 in val127(val.SA2_RemoteNames or {}) do
        if (string.find(val126, string.lower(tostring(v287)), 1, true)) then
          return true
        end
      end

      return false
    end
  end
end

local function helper22(val128, val129)

  if not val.SA2_Wallcheck then
    return true
  else

    if not val128 or not val129 then
      return false
    else
      local currentCamera3 = workspace.CurrentCamera

      if not currentCamera3 then
        return false
      else
        local position7 = currentCamera3.CFrame.Position

        local raycastParams2 = RaycastParams.new()
        raycastParams2.FilterType = Enum.RaycastFilterType.Exclude
        raycastParams2.FilterDescendantsInstances = { localPlayer.Character, val128 }
        raycastParams2.IgnoreWater = true

        return (workspace:Raycast(position7, val129.Position - position7, raycastParams2)) == nil
      end
    end
  end
end

local function iterate4()

  if not val.SilentAimHK then
    return nil, nil
  else
    local currentCamera4 = workspace.CurrentCamera

    if not currentCamera4 then
      return nil, nil
    else
      local vector = Vector2.new(
        currentCamera4.ViewportSize.X / 2, currentCamera4.ViewportSize.Y / 2
      )

      local val130 = nil
      local val131 = nil
      local huge2 = math.huge
      local numVal3 = ((tonumber(val.SA2_FovRadius)) or 100) ^ 2
      local numVal4 = (tonumber(val.SA2_TargetRange)) or 500
      local character3 = localPlayer.Character

      local humanoidRootPart6 = character3 and character3:FindFirstChild("HumanoidRootPart")

      if not humanoidRootPart6 then
        return nil, nil
      else

        local players2 = game:GetService("Players")

        for index4, value5 in ipairs(players2:GetPlayers()) do
          local val132 = helper18(value5)

          if val132 and helper19(value5) then
            local character4 = value5.Character
            local element7 = helper20(value5)

            if character4 and element7 then
              local magnitude = (element7.Position - humanoidRootPart6.Position).Magnitude
              local val133 = magnitude <= numVal4

              if val133 and helper22(character4, element7) then
                local element8, val134
                element8, val134 = currentCamera4:WorldToViewportPoint(element7.Position)

                local val135 = false
                local huge3 = math.huge

                if val.SA2_ThreeSixtyMode then
                  val135 = true
                else

                  if val134 and element8.Z > 0 then
                    local val136 = element8.X - vector.X
                    local val137 = element8.Y - vector.Y
                    huge3 = val136 * val136 + val137 * val137
                    val135 = huge3 <= numVal3
                  end
                end

                if val135 then
                  if val.SA2_GetTarget == "Lowest Health" then
                    local humanoid3 = character4:FindFirstChildOfClass("Humanoid")

                    health = humanoid3 and humanoid3.Health or math.huge
                  else

                    health = val.SA2_ThreeSixtyMode and magnitude or huge3
                  end

                  if health < huge2 then
                    val131 = element7
                    val130 = value5
                    huge2 = health
                  end
                end
              end
            end
          end
        end

        return val130, val131
      end
    end
  end
end

local function helper23()
  if not val.SilentAimHK then
    val12.targetPlayer = nil
    val12.targetPart = nil
    return
  else
    local val138 = { iterate4() }

    val12.targetPlayer = val138[1]
    val12.targetPart = val138[2]

    return
  end
end

local function safeCall3()

  local val139 = val12.namecallOld and hookmetamethod

  if val139 then
    pcall(function()
      hookmetamethod(game, "__namecall", val12.namecallOld)
      return
    end)

    val12.namecallOld = nil
  end

  if val12.indexOld and hookmetamethod then
    pcall(function()
      hookmetamethod(game, "__index", val12.indexOld)
      return
    end)

    val12.indexOld = nil
  end

  val12.hookActive = false
  val12.mouseHookActive = false

  return
end

local val140

local function iterate5(val142, val141, val143)
  local val144 = table.clone(val142)

  for index5, value6 in ipairs(val144) do
    local val145 = typeof(value6)

    if val145 == "table" then
      val144[index5] = val140(value6, nil, val141, val143)
    else
      if val145 == "Vector3" then
        local element9 = val141 - value6

        if element9.Magnitude > 0 then
          val144[index5] = element9.Unit * (math.max(element9.Magnitude, 1))
        end
      else
        if val145 == "CFrame" then
          val144[index5] = CFrame.lookAt(value6.Position, val141)
        else
          if val145 == "Ray" then
            val144[index5] = val140(value6, nil, val141, val143)
          end
        end
      end
    end
  end

  return val144
end

do
  val140 = function(p68, p69, p70, p71)

    local val146 = typeof(p68)
    local val147 = (type(p69)) == "string"

    local val148 = val147 and string.lower(p69) or ""

    if val146 == "Vector3" then
      local val149 = val148 == "direction"
      local val150 = val149

      if not val149 then
        local val151 = val148 == "lookvector"
        local val152 = val151

        if not val151 then

          val152 = val148 == "dir" or val148 == "aimdirection"
        end

        val150 = val152
      end

      if val150 then
        local element10 = p70 - p68

        return element10.Magnitude > 0 and element10.Unit or p68
      else
        local val153 = val148 == "hitposition"
        local val154 = val153

        if not val153 then
          local val155 = val148 == "hitpos"
          local val156 = val155

          if not val155 then
            local val157 = val148 == "endposition"
            local val158 = val157

            if not val157 then

              val158 = val148 == "endpos" or val148 == "targetposition"
            end

            val156 = val158
          end

          val154 = val156
        end

        if val154 then
          return p70
        else
          local sa2BulletTeleport = val.SA2_BulletTeleport
          local val159 = sa2BulletTeleport

          if sa2BulletTeleport then
            local val160 = val148 == "origin"
            local val161 = val160

            if not val160 then
              local val162 = val148 == "start"
              local val163 = val162

              if not val162 then
                local val164 = val148 == "startpos"
                local val165 = val164

                if not val164 then

                  val165 = val148 == "startposition" or val148 == "muzzleposition"
                end

                val163 = val165
              end

              val161 = val163
            end

            val159 = val161
          end

          if val159 then
            local element11 = p70 - p68

            return element11.Magnitude > 0 and p70 - element11.Unit * 2 or p68
          else
            return p68
          end
        end
      end
    else
      if val146 == "CFrame" then
        local val166 = val148 == "direction"
        local val167 = val166

        if not val166 then

          val167 = val148 == "lookvector" or val148 == "dir"
        end

        if val167 then
          return CFrame.lookAt(p68.Position, p70)
        else
          local val168 = val148 == "origin"
          local val169 = val168

          if not val168 then
            local val170 = val148 == "start"
            local val171 = val170

            if not val170 then

              val171 = val148 == "startpos" or val148 == "startposition"
            end

            val169 = val171
          end

          if val169 then
            if val.SA2_BulletTeleport then
              local element12 = p70 - p68.Position

              if element12.Magnitude > 0 then
                return CFrame.new(p70 - element12.Unit * 2)
              else
                ::L14369553::
                return p68
              end
            else
              goto L14369553
            end
          else
            return p68
          end
        end
      else
        if val146 == "Ray" then
          local origin = p68.Origin

          if val.SA2_BulletTeleport then
            local element13 = p70 - origin

            if element13.Magnitude > 0 then
              origin = p70 - element13.Unit * 2
            end
          end

          local element14 = p70 - origin
          local val172 = element14.Magnitude > 0

          return val172 and Ray.new(origin, element14.Unit * 1000) or p68
        else
          if val146 == "table" then
            local val173 = {}
            local val174 = false
            local val175 = false
            local val176 = false

            for key2, value7 in pairs(p68) do
              local val177 = (type(key2)) == "string"

              local val178 = val177 and string.lower(key2) or ""
              val173[key2] = val140(value7, val178, p70, p71)
              local val179 = val178 == "direction"
              local val180 = val179

              if not val179 then

                val180 = val178 == "lookvector" or val178 == "dir"
              end

              if val180 then
                val174 = true
              else
                local val181 = val178 == "hitposition"
                local val182 = val181

                if not val181 then
                  local val183 = val178 == "hitpos"
                  local val184 = val183

                  if not val183 then

                    val184 = val178 == "endposition" or val178 == "endpos"
                  end

                  val182 = val184
                end

                if val182 then
                  val175 = true
                else

                  if val178 == "hitpart" or val178 == "target" then
                    val176 = true
                  end
                end
              end
            end

            if val174 and not val175 then
              val173.hitPosition = p70
            end

            if val174 and not val176 then
              val173.hitPart = p71
            end

            if val.SA2_Wallbang then
              for key3 in pairs(val173) do
                local val185 = (type(key3)) == "string"

                local val186 = val185 and string.lower(key3) or ""
                local val187 = val186 == "hitthroughwall"
                local val188 = val187

                if not val187 then
                  local val189 = val186 == "ignorewalls"
                  local val190 = val189

                  if not val189 then

                    val190 = val186 == "wallbang" or val186 == "penetrate"
                  end

                  val188 = val190
                end

                if val188 then
                  val173[key3] = true
                end
              end
            end

            return val173
          else
            return p68
          end
        end
      end
    end
  end

end

local val191

local function helper24(val192)
  val.SilentAimHK = val192

  if val192 then
    val191()
    createTextLabel("Silent Aim ON")
  else
    val12.targetPlayer = nil
    val12.targetPart = nil
    createTextLabel("Silent Aim OFF")
  end

  return
end

do
  val191 = function()

    if val12.hookActive then
      return
    else
      local val193 = (type(hookmetamethod)) ~= "function"
      local val194 = val193

      if not val193 then
        local val195 = (type(newcclosure)) ~= "function"
        local val196 = val195

        if not val195 then

          val196 = (type(getnamecallmethod)) ~= "function" or (type(checkcaller)) ~= "function"
        end

        val194 = val196
      end

      if val194 then
        warn("[Zenith] SilentAim HK needs metamethod hook support.")
        return
      else
        val12.namecallOld = hookmetamethod(game, "__namecall", newcclosure(function(...)
          local val197 = { ... }
local val198

          if not val.SilentAimHK then
            return val12.namecallOld(...)
          else
            if val._SA2HookBusy then
              return val12.namecallOld(...)
            else
              if (checkcaller()) then
                return val12.namecallOld(...)
              else
                local val199 = getnamecallmethod()
                local val200 = val199 == "Raycast"
                local val201 = val199 == "FireServer"
                local val202 = not val200
                local val203 = val202
                local val204 = val199 == "InvokeServer"

                if val202 then

                  val203 = not val201 and not val204
                end

                if val203 then
                  return val12.namecallOld(...)
                else
                  local element15 = {}
                  local val205 = ipairs

                  for v453, v454 in val205(val.SA2_AimMethods or {}) do
                    element15[v454] = true
                  end

                  if val200 and not element15.Raycast then
                    return val12.namecallOld(...)
                  else

                    if val201 and not element15.FireServer then
                      return val12.namecallOld(...)
                    else

                      if val204 and not element15.InvokeServer then
                        return val12.namecallOld(...)
                      else
                        local val206 = val201 or val204

                        if val206 and not (helper21(val197[1])) then
                          return val12.namecallOld(...)
                        else
                          local val207 = not val.SA2_ThreeSixtyMode

                          if val207 and not (helper15(val.SA2_HitChance)) then
                            return val12.namecallOld(...)
                          else
                            local targetPart2 = val12.targetPart

                            if not targetPart2 or not targetPart2.Parent then
                              return val12.namecallOld(...)
                            else
                              local val208 = helper16(targetPart2)

                              if not val208 then
                                return val12.namecallOld(...)
                              else
                                if val200 then
                                  local val209 = val197[2]
                                  local val210 = val197[3]

                                  if (typeof(val209)) ~= "Vector3" or (typeof(val210)) ~= "Vector3" then
                                    return val12.namecallOld(...)
                                  else
                                    if val.SA2_BulletTeleport then
                                      val198 = val208 - val209

                                      if val198.Magnitude > 0 then
                                        local unit = val198.Unit
                                        val197[2] = val208 - unit * 2
                                        val197[3] = unit * (val198.Magnitude + 2)
                                      end

                                      ::L2233521::
                                      return val12.namecallOld(unpack(val197))
                                    else
                                      if val.SA2_Wallbang then

                                        local unit2 = (val208 - val209).Magnitude > 0
                                          and (val208 - val209).Unit

                                        return {
                                          Instance = targetPart2, Position = val208, Normal = unit2 or Vector3.new(0, 1, 0), Material = targetPart2.Material, Distance = (val208 - val209).Magnitude, }
                                      else
                                        local element16 = val208 - val209

                                        if element16.Magnitude > 0 then
                                          val197[3] = element16.Unit * val210.Magnitude
                                        end

                                        goto L2233521
                                      end
                                    end
                                  end
                                else
                                  local val211 = iterate5(val197, val208, targetPart2)
                                  return val12.namecallOld(unpack(val211))
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end))

        val12.hookActive = true

        if not val12.indexOld then
          val12.indexOld = hookmetamethod(game, "__index", newcclosure(function(p73, p74)
            local val212 = not val.SilentAimHK
            local sa2HookBusy = val212

            if not val212 then

              sa2HookBusy = val._SA2HookBusy or checkcaller()
            end

            if sa2HookBusy then
              return val12.indexOld(p73, p74)
            else
              local val213 = false
              local val214 = ipairs

              for v477, v478 in val214(val.SA2_AimMethods or {}) do
                if v478 == "Mouse.Hit" then
                  val213 = true
                  break
                end
              end

              if not val213 then
                return val12.indexOld(p73, p74)
              else
                if p73 ~= (localPlayer:GetMouse()) then
                  return val12.indexOld(p73, p74)
                else
                  local targetPart3 = val12.targetPart

                  if not targetPart3 or not targetPart3.Parent then
                    return val12.indexOld(p73, p74)
                  else
                    local currentCamera5 = workspace.CurrentCamera
                    local val215 = not currentCamera5
                    local val216 = helper16(targetPart3)

                    if val215 or not val216 then
                      return val12.indexOld(p73, p74)
                    else
                      if p74 == "Hit" then
                        local element17 = val216 - currentCamera5.CFrame.Position

                        if element17.Magnitude > 0 then
                          return CFrame.lookAt(val216, val216 + element17.Unit)
                        else
                          ::L11325028::
                          return val12.indexOld(p73, p74)
                        end
                      else
                        if p74 == "Target" then
                          return targetPart3
                        else
                          if p74 == "TargetFilter" then
                            return nil
                          else
                            if p74 == "UnitRay" then
                              local element18 = val216 - currentCamera5.CFrame.Position

                              if element18.Magnitude > 0 then
                                return Ray.new(
                                  currentCamera5.CFrame.Position, element18.Unit * (element18.Magnitude + 5)
                                )
                              else
                                goto L11325028
                              end
                            else
                              if p74 == "X" then
                                return currentCamera5:WorldToViewportPoint(val216).X
                              else
                                if p74 == "Y" then
                                  return currentCamera5:WorldToViewportPoint(val216).Y
                                else
                                  goto L11325028
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end))

          val12.mouseHookActive = true
        end

        return
      end
    end
  end

local val217, val218, val219, val220, val221, val222
    local textButton8 = Instance.new("TextButton")

    textButton8.Name = val223
    textButton8.AnchorPoint = Vector2.new(0, 1)
    textButton8.Position = val218
    textButton8.Size = UDim2.fromOffset(48, 48)

    local val225 = val219()

    local color14 = val225
    color14 = val225 and Color3.fromRGB(145, 75, 235)

    textButton8.BackgroundColor3 = color14 or Color3.fromRGB(235, 65, 65)

    textButton8.Text = val217 .. "\n" .. ((val219()) and "ON" or "OFF")
    textButton8.TextColor3 = Color3.new(1, 1, 1)
    textButton8.TextSize = 9
    textButton8.Font = Enum.Font.GothamBold
    textButton8.AutoButtonColor = false
    textButton8.Visible = val221()
    textButton8.Parent = playerVisualizationTool

    Instance.new("UICorner", textButton8).CornerRadius = UDim.new(0, 12)
    local val226 = false
    local val227 = false
    local position9, position10

    helper5(textButton8.InputBegan, function(p85)

      if (val222()) then
        return
      else

        if p85.UserInputType == Enum.UserInputType.MouseButton1
          or p85.UserInputType == Enum.UserInputType.Touch then
          val226 = true
          val227 = false
          position9 = p85.Position
          position10 = textButton8.Position
          connect4 = nil

          connect4 = p85.Changed:Connect(function()

            if p85.UserInputState == Enum.UserInputState.End then
              val226 = false

              connect4:Disconnect()
            end

            return
          end)
        end

        return
      end
    end)

    helper5(userInputService.InputChanged, function(p86)
      local val228 = not (val222())
      local val229 = val228

      if val228 then
        local val230 = val226
        local val231 = val230

        if val230 then

          val231 = p86.UserInputType == Enum.UserInputType.MouseMovement
            or p86.UserInputType == Enum.UserInputType.Touch
        end

        val229 = val231
      end

      if val229 then
        local element19 = p86.Position - position9
        local val232 = (math.abs(element19.X)) > 4

        if val232 or (math.abs(element19.Y)) > 4 then
          val227 = true
        end

        local udim4 = UDim2.new(
          position10.X.Scale, position10.X.Offset + element19.X, position10.Y.Scale, position10.Y.Offset + element19.Y
        )

        textButton8.Position = textButton8.Position:Lerp(udim4, 0.32)
      end

      return
    end)

    local function helper25(val233)
      local val234 = val233 == true
      textButton8.Visible = (val221()) == true

      textButton8.Text = val217 .. "\n" .. (val234 and "ON" or "OFF")

      local color15 = val234
      color15 = val234 and Color3.fromRGB(145, 75, 235)

      textButton8.BackgroundColor3 = color15 or Color3.fromRGB(235, 65, 65)
      return
    end

    local function helper26()
      helper25((val219()) == true)
      return
    end

    helper5(textButton8.MouseButton1Click, function()
      if val227 then
        val227 = false
        return
      else
        local val235 = not ((val219()) == true)
        val220(val235)
        helper25(val235)

        if val224 then
          val224(val235)
        end

        helper26()

        task.defer(function()
          helper26()
          task.defer(helper26)
          return
        end)

        return
      end
    end)

    return textButton8, helper26
  end

  local udim5 = UDim2.new(0, 135, 1, -15)

  val13, val14 = createTextButton4("SilentAimToggle", "SILENT", udim5, function() return val.SilentAimHK end, function(p88)
    if p88 then
      val.TrackingEnabled = false
      val.Triggerbot = false

      if triggerbotFOV then
        triggerbotFOV.Visible = false
      end

      helper14(false)
    end

    helper24(p88)
    return
  end, function() return val.ShowSilentAimButton end, function(showSilentAimButton)
    val.ShowSilentAimButton = showSilentAimButton
    return
  end, function() return val.SilentAimButtonLocked end, function(silentAimButtonLocked)
    val.SilentAimButtonLocked = silentAimButtonLocked
    return
  end, function(p89)
    refreshSilentAimButton()

    if helper2 then
      helper2()
    end

    task.defer(function()
      if helper3 then
        helper3()
      end

      return
    end)

    return
  end)

  local udim6 = UDim2.new(0, 195, 1, -15)

  val15, val16 = createTextButton4("TriggerbotToggle", "TRIGGER", udim6, function() return val.Triggerbot end, function(p90)

    if p90 then
      val.TrackingEnabled = false
      val.SilentAimHK = false

      helper24(false)
      helper14(false)
    end

    val.Triggerbot = p90

    if triggerbotFOV then

      triggerbotFOV.Visible = p90 and val.TriggerbotFOVVisible
    end

    createTextLabel(p90 and "Triggerbot ON" or "Triggerbot OFF")
    return
  end, function() return val.ShowTriggerbotButton end, function(showTriggerbotButton)
    val.ShowTriggerbotButton = showTriggerbotButton
    return
  end, function() return val.TriggerbotButtonLocked end, function(triggerbotButtonLocked)
    val.TriggerbotButtonLocked = triggerbotButtonLocked
    return
  end, function(p91)
    refreshTriggerbotButton()

    if helper2 then
      helper2()
    end

    task.defer(function()
      if helper3 then
        helper3()
      end

      return
    end)

    return
  end)
end

do
  function helper2()
    aimToggle.Visible = val.ShowAimButton

    if val13 then
      val13.Visible = val.ShowSilentAimButton
    end

    if val15 then
      val15.Visible = val.ShowTriggerbotButton
    end

    aimToggle.Text = val.TrackingEnabled and "ON" or "AIM"

    if val.TrackingEnabled == true then
      aimToggle.BackgroundColor3 = Color3.fromRGB(145, 75, 235)
    else
      aimToggle.BackgroundColor3 = Color3.fromRGB(235, 65, 65)
    end

    if val14 then
      val14()
    end

    if val16 then
      val16()
    end

    return
  end

  helper2()

  helper5(runService.Heartbeat, function()
    if not val.SilentAimHK then
      return
    else
      helper23()
      return
    end
  end)

  local zenithSilentAimFOV = Instance.new("ScreenGui")
  zenithSilentAimFOV.Name = "ZenithSilentAimFOV"
  zenithSilentAimFOV.ResetOnSpawn = false
  zenithSilentAimFOV.IgnoreGuiInset = true
  zenithSilentAimFOV.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  zenithSilentAimFOV.Parent = localPlayer:WaitForChild("PlayerGui")

  local fov = Instance.new("Frame")
  fov.Name = "FOV"
  fov.AnchorPoint = Vector2.new(0.5, 0.5)
  fov.BackgroundTransparency = 1
  fov.BorderSizePixel = 0
  fov.Visible = false
  fov.Parent = zenithSilentAimFOV

  Instance.new("UICorner", fov).CornerRadius = UDim.new(1, 0)

  local uiStroke8 = Instance.new("UIStroke")
  uiStroke8.Thickness = 1
  uiStroke8.Parent = fov

  val12.fovCircle = fov
  val12.fovStroke = uiStroke8

  helper5(runService.Heartbeat, function()
    local currentCamera6 = workspace.CurrentCamera

    if not currentCamera6 then
      return
    else
      local silentAimHK = val.SilentAimHK
      local sa2FovVisible = silentAimHK

      if silentAimHK then

        sa2FovVisible = val.SA2_FovVisible and not val.SA2_ThreeSixtyMode
      end

      local val236 = sa2FovVisible
      fov.Visible = val236

      if val236 then
        local viewportSize2 = currentCamera6.ViewportSize

        fov.Position = UDim2.fromOffset(viewportSize2.X / 2, viewportSize2.Y / 2)

        fov.Size = UDim2.fromOffset(
          math.max(2, val.SA2_FovRadius * 2), math.max(2, val.SA2_FovRadius * 2)
        )

        uiStroke8.Color = val.SA2_FovColor
        uiStroke8.Transparency = 1 - (math.clamp(val.SA2_FovTransparency, 0, 1))
      end

      return
    end
  end)
end

helper5(userInputService.InputBegan, function(p92, p93)
  if p93 then
    return
  else
    if p92.KeyCode == val.SA2_Key then
      helper24(not val.SilentAimHK)
    end

    return
  end
end)

if Window and (type(Window.OnDestroy)) == "function" then
  pcall(function()

    Window:OnDestroy(function()
      pcall(function()
        safeCall3()
        return
      end)

      return
    end)

    return
  end)
end

local function helper27()
  createUIListLayout()
  createTextLabel2("Visual Overlay")

  createTextButton2("Enable ESP", val.ESPEnabled, function(espEnabled)
    val.ESPEnabled = espEnabled
    return
  end)

  createTextButton2("Box ESP", val.BoxESP, function(boxESP)
    val.BoxESP = boxESP
    return
  end)

  createTextButton2("Name Tags", val.NameTags, function(nameTags)
    val.NameTags = nameTags
    return
  end)

  createTextButton2("Distance", val.Distance, function(distance)
    val.Distance = distance
    return
  end)

  return
end

local function createFrame5()
  local frame17 = Instance.new("Frame")
  frame17.Size = UDim2.new(1, 0, 0, 58)
  frame17.BackgroundColor3 = Color3.fromRGB(58, 35, 82)
  frame17.BorderSizePixel = 0
  frame17.Parent = scrollingFrame

  Instance.new("UICorner", frame17).CornerRadius = UDim.new(0, 8)

  local textLabel15 = Instance.new("TextLabel")
  textLabel15.Position = UDim2.fromOffset(12, 7)
  textLabel15.Size = UDim2.new(1, -24, 0, 17)
  textLabel15.BackgroundTransparency = 1
  textLabel15.Text = "Warning"
  textLabel15.TextColor3 = Color3.fromRGB(225, 200, 255)
  textLabel15.TextSize = 11
  textLabel15.Font = Enum.Font.GothamBold
  textLabel15.TextXAlignment = Enum.TextXAlignment.Left
  textLabel15.Parent = frame17

  local textLabel16 = Instance.new("TextLabel")
  textLabel16.Position = UDim2.fromOffset(12, 24)
  textLabel16.Size = UDim2.new(1, -24, 0, 28)
  textLabel16.BackgroundTransparency = 1
  textLabel16.Text = "Use at your own risk â¢ Don't use your main account if you plan to use this cheat."
  textLabel16.TextColor3 = Color3.fromRGB(235, 230, 245)
  textLabel16.TextSize = 9
  textLabel16.Font = Enum.Font.Gotham
  textLabel16.TextWrapped = true
  textLabel16.TextXAlignment = Enum.TextXAlignment.Left
  textLabel16.TextYAlignment = Enum.TextYAlignment.Top
  textLabel16.Parent = frame17

  return frame17
end

local

local function helper28()

  createUIListLayout()
  createTextLabel2("Silent Aim & Aimbot & Triggerbot")

  if not val.TrackingEnabled and not val.Triggerbot then
    createFrame2("Silent aim", val.SilentAimHK, function(p94)
      if p94 then
        val.TrackingEnabled = false
        val.Triggerbot = false

        if triggerbotFOV then
          triggerbotFOV.Visible = false
        end

        helper14(false)
      end

      helper24(p94)
      val14()
      val16()

      if helper2 then
        helper2()
      end

      task.defer(function()
        iterate3("Main", helper28)
        return
      end)

      return
    end)
  end

  local frame18, frame19, textLabel17, textButton9, val237, textButton10, frame20, textLabel18, helper29

  if val.SilentAimHK then
    createFrame2("Wall Check", val.SA2_Wallcheck, function(sa2Wallcheck)
      val.SA2_Wallcheck = sa2Wallcheck
      return
    end)

    createFrame2("Show FOV", val.SA2_FovVisible, function(sa2FovVisible2)
      val.SA2_FovVisible = sa2FovVisible2
      return
    end)

    createFrame("FOV", 10, 500, 5, val.SA2_FovRadius, function(sa2FovRadius)
      val.SA2_FovRadius = sa2FovRadius
      return
    end)

    frame18 = Instance.new("Frame")
    frame18.Size = UDim2.new(1, 0, 0, 42)
    frame18.BackgroundTransparency = 1
    frame18.Parent = scrollingFrame

    local textButton11 = Instance.new("TextButton")
    textButton11.Size = UDim2.new(1, 0, 0, 42)
    textButton11.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
    textButton11.BorderSizePixel = 0
    textButton11.AutoButtonColor = false
    textButton11.Text = ""
    textButton11.Parent = frame18

    Instance.new("UICorner", textButton11).CornerRadius = UDim.new(0, 8)

    frame19 = Instance.new("Frame")
    frame19.Position = UDim2.fromOffset(10, 12)
    frame19.Size = UDim2.fromOffset(18, 18)

    local showSilentAimButton2 = val.ShowSilentAimButton

    local color16 = showSilentAimButton2
    color16 = showSilentAimButton2 and Color3.fromRGB(145, 75, 235)

    frame19.BackgroundColor3 = color16 or Color3.fromRGB(38, 43, 56)
    frame19.BorderSizePixel = 0
    frame19.Parent = textButton11

    Instance.new("UICorner", frame19).CornerRadius = UDim.new(0, 5)

    textLabel17 = Instance.new("TextLabel")
    textLabel17.Size = UDim2.fromScale(1, 1)
    textLabel17.BackgroundTransparency = 1

    textLabel17.Text = val.ShowSilentAimButton and "â" or ""
    textLabel17.TextColor3 = Color3.new(1, 1, 1)
    textLabel17.Font = Enum.Font.GothamBold
    textLabel17.TextSize = 12
    textLabel17.Parent = frame19

    local textLabel19 = Instance.new("TextLabel")
    textLabel19.Position = UDim2.fromOffset(38, 0)
    textLabel19.Size = UDim2.new(1, -48, 1, 0)
    textLabel19.BackgroundTransparency = 1
    textLabel19.Text = "Show Aim Button"
    textLabel19.TextColor3 = Color3.fromRGB(220, 225, 235)
    textLabel19.TextSize = 12
    textLabel19.Font = Enum.Font.GothamMedium
    textLabel19.TextXAlignment = Enum.TextXAlignment.Left
    textLabel19.Parent = textButton11

    textButton9 = Instance.new("TextButton")
    textButton9.AnchorPoint = Vector2.new(1, 0.5)
    textButton9.Position = UDim2.new(1, -8, 0.5, 0)
    textButton9.Size = UDim2.fromOffset(34, 32)
    textButton9.BackgroundColor3 = Color3.fromRGB(35, 27, 48)
    textButton9.BorderSizePixel = 0
    textButton9.AutoButtonColor = false
    textButton9.Text = "âº"
    textButton9.TextColor3 = Color3.fromRGB(205, 175, 245)
    textButton9.TextSize = 21
    textButton9.Font = Enum.Font.GothamBold
    textButton9.ZIndex = 3
    textButton9.Parent = textButton11

    Instance.new("UICorner", textButton9).CornerRadius = UDim.new(0, 8)
    val237 = false

    textButton10 = Instance.new("TextButton")
    textButton10.Position = UDim2.fromOffset(0, 47)
    textButton10.Size = UDim2.new(1, 0, 0, 38)
    textButton10.BackgroundColor3 = Color3.fromRGB(27, 23, 38)
    textButton10.BorderSizePixel = 0
    textButton10.AutoButtonColor = false
    textButton10.Text = ""
    textButton10.Visible = false
    textButton10.Parent = frame18

    Instance.new("UICorner", textButton10).CornerRadius = UDim.new(0, 8)

    local textLabel20 = Instance.new("TextLabel")
    textLabel20.Position = UDim2.fromOffset(38, 0)
    textLabel20.Size = UDim2.new(1, -84, 1, 0)
    textLabel20.BackgroundTransparency = 1
    textLabel20.Text = "SILENT button lock"
    textLabel20.TextColor3 = Color3.fromRGB(205, 210, 225)
    textLabel20.TextSize = 11
    textLabel20.Font = Enum.Font.GothamMedium
    textLabel20.TextXAlignment = Enum.TextXAlignment.Left
    textLabel20.Parent = textButton10

    frame20 = Instance.new("Frame")
    frame20.Position = UDim2.fromOffset(10, 10)
    frame20.Size = UDim2.fromOffset(18, 18)

    local silentAimButtonLocked2 = val.SilentAimButtonLocked

    local color17 = silentAimButtonLocked2
    color17 = silentAimButtonLocked2 and Color3.fromRGB(145, 75, 235)

    frame20.BackgroundColor3 = color17 or Color3.fromRGB(38, 43, 56)
    frame20.BorderSizePixel = 0
    frame20.Parent = textButton10

    Instance.new("UICorner", frame20).CornerRadius = UDim.new(0, 5)

    textLabel18 = Instance.new("TextLabel")
    textLabel18.Size = UDim2.fromScale(1, 1)
    textLabel18.BackgroundTransparency = 1

    textLabel18.Text = val.SilentAimButtonLocked and "â" or ""
    textLabel18.TextColor3 = Color3.new(1, 1, 1)
    textLabel18.Font = Enum.Font.GothamBold
    textLabel18.TextSize = 12
    textLabel18.Parent = frame20

    function helper29()
      local showSilentAimButton3 = val.ShowSilentAimButton
      local color18 = showSilentAimButton3
      color18 = showSilentAimButton3 and Color3.fromRGB(145, 75, 235)

      frame19.BackgroundColor3 = color18 or Color3.fromRGB(38, 43, 56)

      textLabel17.Text = val.ShowSilentAimButton and "â" or ""
      val13.Visible = val.ShowSilentAimButton

      textButton10.Visible = val.ShowSilentAimButton and val237
      frame18.Size = UDim2.new(1, 0, 0, textButton10.Visible and 89 or 42)

      textButton9.Text = val237 and "â" or "âº"
      local silentAimButtonLocked3 = val.SilentAimButtonLocked

      local color19 = silentAimButtonLocked3
      color19 = silentAimButtonLocked3 and Color3.fromRGB(145, 75, 235)

      frame20.BackgroundColor3 = color19 or Color3.fromRGB(38, 43, 56)

      textLabel18.Text = val.SilentAimButtonLocked and "â" or ""
      val14()
      return
    end

    helper5(textButton11.MouseButton1Click, function()
      val.ShowSilentAimButton = not val.ShowSilentAimButton

      if not val.ShowSilentAimButton then
        val237 = false
      end

      helper29()

      if helper2 then
        helper2()
      end

      return
    end)

    helper5(textButton9.MouseButton1Click, function()
      if not val.ShowSilentAimButton then
        return
      else
        val237 = not val237
        helper29()
        return
      end
    end)

    helper5(textButton10.MouseButton1Click, function()
      val.SilentAimButtonLocked = not val.SilentAimButtonLocked
      helper29()

      createTextLabel(val.SilentAimButtonLocked and "SILENT button locked" or "SILENT button unlocked")
      return
    end)

    helper29()
  end

  if not val.SilentAimHK and not val.Triggerbot then
    createFrame2("Aimbot", val.TrackingEnabled, function(p95)
      if p95 then
        if val.SilentAimHK then
          helper24(false)
        end

        val.SilentAimHK = false
        val.Triggerbot = false

        if triggerbotFOV then
          triggerbotFOV.Visible = false
        end

        helper24(false)
      end

      helper14(p95)
      val14()
      val16()

      if helper2 then
        helper2()
      end

      task.defer(function()
        iterate3("Main", helper28)
        return
      end)

      return
    end)
  end

  local frame21, frame22, textLabel21, textButton12, textButton13, frame23, textLabel22, helper30

  if val.TrackingEnabled then
    frame21 = Instance.new("Frame")
    frame21.Size = UDim2.new(1, 0, 0, 42)
    frame21.BackgroundTransparency = 1
    frame21.Parent = scrollingFrame

    local textButton14 = Instance.new("TextButton")
    textButton14.Size = UDim2.new(1, 0, 0, 42)
    textButton14.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
    textButton14.BorderSizePixel = 0
    textButton14.AutoButtonColor = false
    textButton14.Text = ""
    textButton14.Parent = frame21

    Instance.new("UICorner", textButton14).CornerRadius = UDim.new(0, 8)

    frame22 = Instance.new("Frame")
    frame22.Position = UDim2.fromOffset(10, 12)
    frame22.Size = UDim2.fromOffset(18, 18)

    local showAimButton = val.ShowAimButton

    local color20 = showAimButton
    color20 = showAimButton and Color3.fromRGB(145, 75, 235)

    frame22.BackgroundColor3 = color20 or Color3.fromRGB(38, 43, 56)
    frame22.BorderSizePixel = 0
    frame22.Parent = textButton14

    Instance.new("UICorner", frame22).CornerRadius = UDim.new(0, 5)

    textLabel21 = Instance.new("TextLabel")
    textLabel21.Size = UDim2.fromScale(1, 1)
    textLabel21.BackgroundTransparency = 1

    textLabel21.Text = val.ShowAimButton and "â" or ""
    textLabel21.TextColor3 = Color3.new(1, 1, 1)
    textLabel21.Font = Enum.Font.GothamBold
    textLabel21.TextSize = 12
    textLabel21.Parent = frame22

    local textLabel23 = Instance.new("TextLabel")
    textLabel23.Position = UDim2.fromOffset(38, 0)
    textLabel23.Size = UDim2.new(1, -82, 1, 0)
    textLabel23.BackgroundTransparency = 1
    textLabel23.Text = "Show Aim Button"
    textLabel23.TextColor3 = Color3.fromRGB(220, 225, 235)
    textLabel23.TextSize = 12
    textLabel23.Font = Enum.Font.GothamMedium
    textLabel23.TextXAlignment = Enum.TextXAlignment.Left
    textLabel23.Parent = textButton14

    textButton12 = Instance.new("TextButton")
    textButton12.AnchorPoint = Vector2.new(1, 0.5)
    textButton12.Position = UDim2.new(1, -8, 0.5, 0)
    textButton12.Size = UDim2.fromOffset(34, 32)
    textButton12.BackgroundColor3 = Color3.fromRGB(35, 27, 48)
    textButton12.BorderSizePixel = 0
    textButton12.AutoButtonColor = false
    textButton12.Text = "âº"
    textButton12.TextColor3 = Color3.fromRGB(205, 175, 245)
    textButton12.TextSize = 21
    textButton12.Font = Enum.Font.GothamBold
    textButton12.Parent = textButton14

    Instance.new("UICorner", textButton12).CornerRadius = UDim.new(0, 8)

    textButton13 = Instance.new("TextButton")
    textButton13.Position = UDim2.fromOffset(0, 47)
    textButton13.Size = UDim2.new(1, 0, 0, 38)
    textButton13.BackgroundColor3 = Color3.fromRGB(27, 23, 38)
    textButton13.BorderSizePixel = 0
    textButton13.AutoButtonColor = false
    textButton13.Text = ""
    textButton13.Visible = false
    textButton13.Parent = frame21

    Instance.new("UICorner", textButton13).CornerRadius = UDim.new(0, 8)

    local textLabel24 = Instance.new("TextLabel")
    textLabel24.Position = UDim2.fromOffset(38, 0)
    textLabel24.Size = UDim2.new(1, -84, 1, 0)
    textLabel24.BackgroundTransparency = 1
    textLabel24.Text = "AIM button lock"
    textLabel24.TextColor3 = Color3.fromRGB(205, 210, 225)
    textLabel24.TextSize = 11
    textLabel24.Font = Enum.Font.GothamMedium
    textLabel24.TextXAlignment = Enum.TextXAlignment.Left
    textLabel24.Parent = textButton13

    frame23 = Instance.new("Frame")
    frame23.Position = UDim2.fromOffset(10, 10)
    frame23.Size = UDim2.fromOffset(18, 18)

    local val238 = val3

    local color21 = val238
    color21 = val238 and Color3.fromRGB(145, 75, 235)

    frame23.BackgroundColor3 = color21 or Color3.fromRGB(38, 43, 56)
    frame23.BorderSizePixel = 0
    frame23.Parent = textButton13

    Instance.new("UICorner", frame23).CornerRadius = UDim.new(0, 5)

    textLabel22 = Instance.new("TextLabel")
    textLabel22.Size = UDim2.fromScale(1, 1)
    textLabel22.BackgroundTransparency = 1

    textLabel22.Text = val3 and "â" or ""
    textLabel22.TextColor3 = Color3.new(1, 1, 1)
    textLabel22.Font = Enum.Font.GothamBold
    textLabel22.TextSize = 12
    textLabel22.Parent = frame23

    function helper30()
      local showAimButton2 = val.ShowAimButton
      local color22 = showAimButton2
      color22 = showAimButton2 and Color3.fromRGB(145, 75, 235)

      frame22.BackgroundColor3 = color22 or Color3.fromRGB(38, 43, 56)

      textLabel21.Text = val.ShowAimButton and "â" or ""
      aimToggle.Visible = val.ShowAimButton

      textButton13.Visible = val.ShowAimButton and val4
      frame21.Size = UDim2.new(1, 0, 0, textButton13.Visible and 89 or 42)

      textButton12.Text = val4 and "â" or "âº"
      local val239 = val3

      local color23 = val239
      color23 = val239 and Color3.fromRGB(145, 75, 235)

      frame23.BackgroundColor3 = color23 or Color3.fromRGB(38, 43, 56)

      textLabel22.Text = val3 and "â" or ""
      return
    end

    helper5(textButton14.MouseButton1Click, function()
      val.ShowAimButton = not val.ShowAimButton

      if not val.ShowAimButton then
        val4 = false
      end

      helper30()
      return
    end)

    helper5(textButton12.MouseButton1Click, function()
      if not val.ShowAimButton then
        return
      else
        val4 = not val4
        helper30()
        return
      end
    end)

    helper5(textButton13.MouseButton1Click, function()
      local val240 = not val3
      val3 = val240
      helper30()

      createTextLabel(val3 and "AIM button locked" or "AIM button unlocked")
      return
    end)

    helper30()
    createTextLabel2("Aim Settings")
    local

    createFrame("Smoothness", 0.1, 0.9, 0.05, val.Smoothness, function(smoothness)
      val.Smoothness = smoothness
      return
    end, function(p96) return string.format("%.2f", p96) end)

    createFrame("FOV Size", 10, 500, 5, val.FOVSize, function(p97)
      val.FOVSize = p97
      fovCircle.Size = UDim2.fromOffset(p97 * 2, p97 * 2)
      return
    end)

    createFrame2("Wall Check", val.WallCheck, function(wallCheck)
      val.WallCheck = wallCheck
      return
    end)

    createTextButton("Aim Part", { "Head", "Torso", "(Soon)" }, val.AimPart, function(aimPart)
      val.AimPart = aimPart
      return
    end)

    createFrame2("Hide FOV Circle", not val.FOVEnabled, function(p98)
      val.FOVEnabled = not p98

      fovCircle.Visible = val.FOVEnabled and val.TrackingEnabled
      return
    end)
  end

  if not val.SilentAimHK and not val.TrackingEnabled then
    createFrame2("Triggerbot", val.Triggerbot, function(p99)

      if p99 then
        val.TrackingEnabled = false
        val.SilentAimHK = false

        if triggerbotFOV then
          triggerbotFOV.Visible = val.TriggerbotFOVVisible
        end

        helper14(false)
        helper24(false)
      end

      val.Triggerbot = p99
      val16()
      val14()

      if helper2 then
        helper2()
      end

      if triggerbotFOV then

        triggerbotFOV.Visible = p99 and val.TriggerbotFOVVisible
      end

      createTextLabel(p99 and "Triggerbot ON" or "Triggerbot OFF")

      task.defer(function()
        if val6 == "Main" then
          iterate3("Main", helper28)
        end

        return
      end)

      return
    end)
  end

  local frame24, frame25, textLabel25, textButton15, val241, textButton16, frame26, textLabel26, helper31

  if val.Triggerbot then
    val.TriggerbotRate = 100
    val.TriggerbotInterval = 0.01

    createFrame2("Show FOV", val.TriggerbotFOVVisible, function(p100)
      val.TriggerbotFOVVisible = p100

      if triggerbotFOV then

        triggerbotFOV.Visible = val.Triggerbot and p100
      end

      return
    end)

    createFrame("FOV", 10, 500, 5, val.TriggerbotFOV, function(p101)
      val.TriggerbotFOV = p101

      if triggerbotFOV then
        triggerbotFOV.Size = UDim2.fromOffset(p101 * 2, p101 * 2)
      end

      return
    end)

    frame24 = Instance.new("Frame")
    frame24.Size = UDim2.new(1, 0, 0, 42)
    frame24.BackgroundTransparency = 1
    frame24.Parent = scrollingFrame

    local textButton17 = Instance.new("TextButton")
    textButton17.Size = UDim2.new(1, 0, 0, 42)
    textButton17.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
    textButton17.BorderSizePixel = 0
    textButton17.AutoButtonColor = false
    textButton17.Text = ""
    textButton17.Parent = frame24

    Instance.new("UICorner", textButton17).CornerRadius = UDim.new(0, 8)

    frame25 = Instance.new("Frame")
    frame25.Position = UDim2.fromOffset(10, 12)
    frame25.Size = UDim2.fromOffset(18, 18)

    local showTriggerbotButton2 = val.ShowTriggerbotButton

    local color24 = showTriggerbotButton2
    color24 = showTriggerbotButton2 and Color3.fromRGB(145, 75, 235)

    frame25.BackgroundColor3 = color24 or Color3.fromRGB(38, 43, 56)
    frame25.BorderSizePixel = 0
    frame25.Parent = textButton17

    Instance.new("UICorner", frame25).CornerRadius = UDim.new(0, 5)

    textLabel25 = Instance.new("TextLabel")
    textLabel25.Size = UDim2.fromScale(1, 1)
    textLabel25.BackgroundTransparency = 1

    textLabel25.Text = val.ShowTriggerbotButton and "â" or ""
    textLabel25.TextColor3 = Color3.new(1, 1, 1)
    textLabel25.Font = Enum.Font.GothamBold
    textLabel25.TextSize = 12
    textLabel25.Parent = frame25

    local textLabel27 = Instance.new("TextLabel")
    textLabel27.Position = UDim2.fromOffset(38, 0)
    textLabel27.Size = UDim2.new(1, -48, 1, 0)
    textLabel27.BackgroundTransparency = 1
    textLabel27.Text = "Show Aim Button"
    textLabel27.TextColor3 = Color3.fromRGB(220, 225, 235)
    textLabel27.TextSize = 12
    textLabel27.Font = Enum.Font.GothamMedium
    textLabel27.TextXAlignment = Enum.TextXAlignment.Left
    textLabel27.Parent = textButton17

    textButton15 = Instance.new("TextButton")
    textButton15.AnchorPoint = Vector2.new(1, 0.5)
    textButton15.Position = UDim2.new(1, -8, 0.5, 0)
    textButton15.Size = UDim2.fromOffset(34, 32)
    textButton15.BackgroundColor3 = Color3.fromRGB(35, 27, 48)
    textButton15.BorderSizePixel = 0
    textButton15.AutoButtonColor = false
    textButton15.Text = "âº"
    textButton15.TextColor3 = Color3.fromRGB(205, 175, 245)
    textButton15.TextSize = 21
    textButton15.Font = Enum.Font.GothamBold
    textButton15.ZIndex = 3
    textButton15.Parent = textButton17

    Instance.new("UICorner", textButton15).CornerRadius = UDim.new(0, 8)
    val241 = false

    textButton16 = Instance.new("TextButton")
    textButton16.Position = UDim2.fromOffset(0, 47)
    textButton16.Size = UDim2.new(1, 0, 0, 38)
    textButton16.BackgroundColor3 = Color3.fromRGB(27, 23, 38)
    textButton16.BorderSizePixel = 0
    textButton16.AutoButtonColor = false
    textButton16.Text = ""
    textButton16.Visible = false
    textButton16.Parent = frame24

    Instance.new("UICorner", textButton16).CornerRadius = UDim.new(0, 8)

    local textLabel28 = Instance.new("TextLabel")
    textLabel28.Position = UDim2.fromOffset(38, 0)
    textLabel28.Size = UDim2.new(1, -84, 1, 0)
    textLabel28.BackgroundTransparency = 1
    textLabel28.Text = "TRIGGER button lock"
    textLabel28.TextColor3 = Color3.fromRGB(205, 210, 225)
    textLabel28.TextSize = 11
    textLabel28.Font = Enum.Font.GothamMedium
    textLabel28.TextXAlignment = Enum.TextXAlignment.Left
    textLabel28.Parent = textButton16

    frame26 = Instance.new("Frame")
    frame26.Position = UDim2.fromOffset(10, 10)
    frame26.Size = UDim2.fromOffset(18, 18)

    local triggerbotButtonLocked2 = val.TriggerbotButtonLocked

    local color25 = triggerbotButtonLocked2
    color25 = triggerbotButtonLocked2 and Color3.fromRGB(145, 75, 235)

    frame26.BackgroundColor3 = color25 or Color3.fromRGB(38, 43, 56)
    frame26.BorderSizePixel = 0
    frame26.Parent = textButton16

    Instance.new("UICorner", frame26).CornerRadius = UDim.new(0, 5)

    textLabel26 = Instance.new("TextLabel")
    textLabel26.Size = UDim2.fromScale(1, 1)
    textLabel26.BackgroundTransparency = 1

    textLabel26.Text = val.TriggerbotButtonLocked and "â" or ""
    textLabel26.TextColor3 = Color3.new(1, 1, 1)
    textLabel26.Font = Enum.Font.GothamBold
    textLabel26.TextSize = 12
    textLabel26.Parent = frame26

    function helper31()
      local showTriggerbotButton3 = val.ShowTriggerbotButton
      local color26 = showTriggerbotButton3
      color26 = showTriggerbotButton3 and Color3.fromRGB(145, 75, 235)

      frame25.BackgroundColor3 = color26 or Color3.fromRGB(38, 43, 56)

      textLabel25.Text = val.ShowTriggerbotButton and "â" or ""
      val15.Visible = val.ShowTriggerbotButton

      textButton16.Visible = val.ShowTriggerbotButton and val241
      frame24.Size = UDim2.new(1, 0, 0, textButton16.Visible and 89 or 42)

      textButton15.Text = val241 and "â" or "âº"
      local triggerbotButtonLocked3 = val.TriggerbotButtonLocked

      local color27 = triggerbotButtonLocked3
      color27 = triggerbotButtonLocked3 and Color3.fromRGB(145, 75, 235)

      frame26.BackgroundColor3 = color27 or Color3.fromRGB(38, 43, 56)

      textLabel26.Text = val.TriggerbotButtonLocked and "â" or ""
      val16()
      return
    end

    helper5(textButton17.MouseButton1Click, function()
      val.ShowTriggerbotButton = not val.ShowTriggerbotButton

      if not val.ShowTriggerbotButton then
        val241 = false
      end

      helper31()

      if helper2 then
        helper2()
      end

      return
    end)

    helper5(textButton15.MouseButton1Click, function()
      if not val.ShowTriggerbotButton then
        return
      else
        val241 = not val241
        helper31()
        return
      end
    end)

    helper5(textButton16.MouseButton1Click, function()
      val.TriggerbotButtonLocked = not val.TriggerbotButtonLocked
      helper31()

      createTextLabel(val.TriggerbotButtonLocked and "TRIGGER button locked" or "TRIGGER button unlocked")
      return
    end)

    helper31()
  end

  if not val.TrackingEnabled then
    createFrame5()
  end

  return
end

do
  function helper3()
    if val6 == "Main" then
      iterate3("Main", helper28)
    end

    return
  end
end

local iterate6

local function helper32()
  createUIListLayout()
  createTextLabel2("Movement")

  createFrame2("Speed Hack", val.SpeedHack, function(p102)
    val.SpeedHack = p102
    local character5 = localPlayer.Character

    local humanoid4 = character5 and character5:FindFirstChildOfClass("Humanoid")

    if humanoid4 then
      if p102 then
        humanoid4:SetAttribute("ZenithOriginalWalkSpeed", humanoid4.WalkSpeed)
        humanoid4.WalkSpeed = val.WalkSpeedValue
      else
        local zenithOriginalWalkSpeed = humanoid4:GetAttribute("ZenithOriginalWalkSpeed")

        if (typeof(zenithOriginalWalkSpeed)) == "number" then
          humanoid4.WalkSpeed = zenithOriginalWalkSpeed
          humanoid4:SetAttribute("ZenithOriginalWalkSpeed", nil)
        end
      end
    end

    createTextLabel(p102 and "Speed Hack enabled" or "Speed Hack disabled")

    task.defer(function()
      if val6 == "Mics" then
        iterate3("Mics", helper32)
      end

      return
    end)

    return
  end)

  if val.SpeedHack then
    createFrame("WalkSpeed", 16, 250, 5, val.WalkSpeedValue, function(p103)
      val.WalkSpeedValue = p103

      if val.SpeedHack then
        local character6 = localPlayer.Character

        local humanoid5 = character6 and character6:FindFirstChildOfClass("Humanoid")

        if humanoid5 then
          humanoid5.WalkSpeed = p103
        end
      end

      return
    end)
  end

  createFrame2("Fly hack", val.Fly, function(p104)
    val.Fly = p104

    createTextLabel(p104 and "Fly hack enabled" or "Fly hack disabled")

    task.defer(function()
      if val6 == "Mics" then
        iterate3("Mics", helper32)
      end

      return
    end)

    return
  end)

  if val.Fly then
    createFrame("Fly hack Speed", 10, 200, 5, val.FlySpeed, function(flySpeed)
      val.FlySpeed = flySpeed
      return
    end)
  end

  createTextButton2("No Clip", val.NoClip, function(p105)
    val.NoClip = p105

    createTextLabel(p105 and "No Clip enabled" or "No Clip disabled")
    return
  end)

  createTextButton2("Infinite Jump", val.InfiniteJump, function(p106)
    val.InfiniteJump = p106

    createTextLabel(p106 and "Infinite Jump enabled" or "Infinite Jump disabled")
    return
  end)

  createTextLabel2("Character Modifiers")

  createFrame2("Big Head", val.BigHead, function(p107)
    val.BigHead = p107
    iterate6()

    createTextLabel(p107 and "Big Head enabled" or "Big Head disabled")
    return
  end)

  createFrame2("Hitbox Expander", val.HitboxExpander, function(p108)
    val.HitboxExpander = p108
    iterate6()

    createTextLabel(p108 and "Hitbox Expander enabled" or "Hitbox Expander disabled")

    task.defer(function()
      if val6 == "Mics" then
        iterate3("Mics", helper32)
      end

      return
    end)

    return
  end)

  if val.HitboxExpander then
    createFrame("Hitbox Size", 2, 20, 1, math.clamp(val.HitboxSize, 2, 20), function(p109)
      val.HitboxSize = math.clamp(p109, 2, 20)
      iterate6()
      return
    end)
  end

  return
end

do
  helper5(localPlayer.CharacterAdded, function(p110)
    local waitForChild = p110:WaitForChild("Humanoid", 5)

    if not waitForChild or false then
      return
    else
      if val.SpeedHack then
        waitForChild:SetAttribute("ZenithOriginalWalkSpeed", waitForChild.WalkSpeed)
        waitForChild.WalkSpeed = val.WalkSpeedValue
      end

      return
    end
  end)

  helper5(runService.Heartbeat, function()
    local val242 = not val.SpeedHack

    if val242 then
      return
    else
      local character7 = localPlayer.Character

      local humanoid6 = character7 and character7:FindFirstChildOfClass("Humanoid")

      if humanoid6 then
        humanoid6.WalkSpeed = val.WalkSpeedValue
      end

      return
    end
  end)

  runService.Stepped:Connect(function()
    if val.NoClip then
      local character8 = localPlayer.Character

      if character8 then
        for index6, value8 in ipairs(character8:GetDescendants()) do
          if (value8:IsA("BasePart")) then
            value8.CanCollide = false
          end
        end
      end
    end

    return
  end)

  userInputService.JumpRequest:Connect(function()
    if val.InfiniteJump then
      local character9 = localPlayer.Character

      if character9 then
        local humanoid7 = character9:FindFirstChildOfClass("Humanoid")

        if humanoid7 then
          humanoid7:ChangeState(Enum.HumanoidStateType.Jumping)
        end
      end
    end

    return
  end)

  local val243

  local function helper33(val244)
    local val245 = val244 and val243[val244]
    local parent2 = val244

    if val244 then

      parent2 = val244.Parent and val245
    end

    if parent2 then
      val244.Size = val245
    end

    if val244 then
      val243[val244] = nil
    end

    return
  end

  val243 = {}

  local function helper34(val246)

    if val246 and val243[val246] == nil then
      val243[val246] = val246.Size
    end

    return
  end

  function iterate6()

    for index7, value9 in ipairs(players:GetPlayers()) do

      if value9 ~= localPlayer and value9.Character then
        local character10 = value9.Character
        local head3 = character10:FindFirstChild("Head")
        local humanoidRootPart7 = character10:FindFirstChild("HumanoidRootPart")

        if head3 then
          helper34(head3)

          if val.BigHead then
            head3.Size = Vector3.new(val.BigHeadSize, val.BigHeadSize, val.BigHeadSize)
            head3.CanCollide = false

            local specialMesh = head3:FindFirstChildOfClass("SpecialMesh")

            if specialMesh then
              specialMesh.Scale = Vector3.new(val.BigHeadSize, val.BigHeadSize, val.BigHeadSize)
            end
          else
            helper33(head3)
            local specialMesh2 = head3:FindFirstChildOfClass("SpecialMesh")

            if specialMesh2 then
              specialMesh2.Scale = Vector3.new(1, 1, 1)
            end
          end
        end

        if humanoidRootPart7 then
          helper34(humanoidRootPart7)

          if val.HitboxExpander then
            humanoidRootPart7.Size = Vector3.new(val.HitboxSize, val.HitboxSize, val.HitboxSize)
            humanoidRootPart7.Transparency = 0.7
            humanoidRootPart7.CanCollide = false
          else
            helper33(humanoidRootPart7)
            humanoidRootPart7.Transparency = 1
          end
        end
      end
    end

    return
  end
end

helper5(localPlayer.CharacterAdded, function()
  task.wait(0.5)
  iterate6()
  return
end)

helper5(players.PlayerAdded, function(p113)
  helper5(p113.CharacterAdded, function()
    task.wait(0.5)
    iterate6()
    return
  end)

  return
end)

helper5(userInputService.InputBegan, function(p114, p115)
  if p115 then
    return
  else
    if p114.UserInputType ~= Enum.UserInputType.Keyboard then
      return
    else
      return
    end
  end
end)

helper5(userInputService.InputEnded, function(p116)
  if p116.UserInputType ~= Enum.UserInputType.Keyboard then
    return
  else
    return
  end
end)

helper5(runService.RenderStepped, function(p117)
  local character11 = localPlayer.Character

  if not character11 then
    return
  else
    local humanoidRootPart8 = character11:FindFirstChild("HumanoidRootPart")
    local humanoid8 = character11:FindFirstChildOfClass("Humanoid")
    local currentCamera7 = workspace.CurrentCamera
    local val247 = not humanoidRootPart8
    local val248 = val247

    if not val247 then

      val248 = not humanoid8 or not currentCamera7
    end

    if val248 then
      return
    else
      if val.Fly then
        local moveDirection = humanoid8.MoveDirection
        local lookVector = currentCamera7.CFrame.LookVector
        local rightVector = currentCamera7.CFrame.RightVector
        local vector2 = Vector3.new(lookVector.X, 0, lookVector.Z)
        local vector3 = Vector3.new(rightVector.X, 0, rightVector.Z)

        if vector2.Magnitude > 0.001 then
          unit3 = vector2.Unit
        else
          unit3 = Vector3.zero
        end

        if vector3.Magnitude > 0.001 then
          unit4 = vector3.Unit
        else
          unit4 = Vector3.zero
        end

        local dot = moveDirection:Dot(unit3)
        local dot2 = moveDirection:Dot(unit4)

        if userInputService.KeyboardEnabled then
          dot = 0
          dot2 = 0
        end

        local element20 = unit4 * dot2 + unit3 * dot + (Vector3.new(0, 0, 0))
        humanoid8.PlatformStand = true

        humanoidRootPart8.AssemblyLinearVelocity = Vector3.zero
        humanoidRootPart8.AssemblyAngularVelocity = Vector3.zero

        if element20.Magnitude > 0.001 then
          local val249 = humanoidRootPart8.Position + element20.Unit * val.FlySpeed * p117
          humanoidRootPart8.CFrame = CFrame.new(val249, val249 + currentCamera7.CFrame.LookVector)
        end
      else
        if humanoid8.PlatformStand then
          humanoid8.PlatformStand = false
        end
      end

      return
    end
  end
end)

local function helper35(val250)

  if not val.TeleportEnabled then
    createTextLabel("Enable teleport first")
    return
  else

    if not val250 or val250 == localPlayer then
      createTextLabel("Invalid player")
      return
    else
      local element21, val251, val252
      val252, val251, element21 = helper7(val250)
      local character12 = localPlayer.Character

      local humanoidRootPart9 = character12 and character12:FindFirstChild("HumanoidRootPart")

      if not humanoidRootPart9 or not element21 then
        createTextLabel("Player is no longer available")
        return
      else
        humanoidRootPart9.CFrame = element21.CFrame + (Vector3.new(0, 3, 0))
        createTextLabel("Teleported to " .. val250.DisplayName)
        return
      end
    end
  end
end

local function iterate7()
  local val253 = {}

  for index8, value10 in ipairs(players:GetPlayers()) do
    if value10 ~= localPlayer then
      local val254, val255, val256
      val254, val256, val255 = helper7(value10)

      local val257 = val254

      if val254 then

        val257 = val256 and val255
      end

      if val257 then
        table.insert(val253, value10)
      end
    end
  end

  table.sort(val253, function(p119, p120)
    return (string.lower(p119.DisplayName)) < (string.lower(p120.DisplayName))
  end)

  return val253
end

local function helper36()
  local character13 = localPlayer.Character

  if not character13 then
    return nil, nil, nil
  else
    return character13, (character13:FindFirstChildOfClass("Humanoid")), (character13:FindFirstChild("HumanoidRootPart"))
  end
end

local function createTextButton5(val258)
  local textButton18 = Instance.new("TextButton")
  textButton18.Size = UDim2.new(1, 0, 0, 42)
  textButton18.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
  textButton18.BorderSizePixel = 0
  textButton18.AutoButtonColor = false
  textButton18.Text = ""
  textButton18.Parent = scrollingFrame

  Instance.new("UICorner", textButton18).CornerRadius = UDim.new(0, 8)

  local textLabel29 = Instance.new("TextLabel")
  textLabel29.Position = UDim2.fromOffset(12, 3)
  textLabel29.Size = UDim2.new(1, -70, 0, 20)
  textLabel29.BackgroundTransparency = 1
  textLabel29.Text = val258.DisplayName
  textLabel29.TextColor3 = Color3.fromRGB(230, 235, 245)
  textLabel29.TextSize = 11
  textLabel29.Font = Enum.Font.GothamBold
  textLabel29.TextXAlignment = Enum.TextXAlignment.Left
  textLabel29.Parent = textButton18

  local textLabel30 = Instance.new("TextLabel")
  textLabel30.Position = UDim2.fromOffset(12, 21)
  textLabel30.Size = UDim2.new(1, -70, 0, 15)
  textLabel30.BackgroundTransparency = 1
  textLabel30.Text = "@" .. val258.Name
  textLabel30.TextColor3 = Color3.fromRGB(130, 140, 165)
  textLabel30.TextSize = 9
  textLabel30.Font = Enum.Font.Gotham
  textLabel30.TextXAlignment = Enum.TextXAlignment.Left
  textLabel30.Parent = textButton18

  local textLabel31 = Instance.new("TextLabel")
  textLabel31.AnchorPoint = Vector2.new(1, 0.5)
  textLabel31.Position = UDim2.new(1, -10, 0.5, 0)
  textLabel31.Size = UDim2.fromOffset(48, 24)
  textLabel31.BackgroundColor3 = Color3.fromRGB(125, 65, 205)
  textLabel31.BackgroundTransparency = 0
  textLabel31.Text = "TP"
  textLabel31.TextColor3 = Color3.new(1, 1, 1)
  textLabel31.TextSize = 10
  textLabel31.Font = Enum.Font.GothamBold
  textLabel31.Parent = textButton18

  Instance.new("UICorner", textLabel31).CornerRadius = UDim.new(0, 6)

  helper5(textButton18.MouseButton1Click, function()
    helper35(val258)
    return
  end)

  return textButton18
end

local val259, val260

local function helper37(val261)

  local val262, val263 = val261.CFrame:ToOrientation()
  val260 = math.clamp(val262, math.rad(-88), math.rad(88))
  val259 = val263
  return
end

val259 = 0
val260 = 0
local cameraTPButton

local function helper38()
  if not cameraTPButton then
    return
  else
    cameraTPButton.Visible = val.ViewCameraTP

    if val.CameraTPActive then
      cameraTPButton.Text = "TP CAM"
      cameraTPButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
      cameraTPButton.TextColor3 = Color3.fromRGB(255, 255, 255)

      if TPHereButton then
        TPHereButton.Visible = val.ViewCameraTP
        TPHereButton.BackgroundColor3 = Color3.fromRGB(125, 65, 205)
        TPHereButton.Text = "TP HERE"
      end
    else
      cameraTPButton.Text = "TP CAM"
      cameraTPButton.BackgroundColor3 = Color3.fromRGB(125, 65, 205)
      cameraTPButton.TextColor3 = Color3.fromRGB(255, 255, 255)

      if TPHereButton then
        TPHereButton.Visible = false
      end
    end

    return
  end
end

do
  local val264 = false
  local val265, val266, position11

  local function helper39(val267)
    local v804, val268, element22 = helper36()
    local currentCamera8 = workspace.CurrentCamera
    val.CameraTPActive = false
    val265 = nil
    val266 = nil
    val264 = false
    position11 = nil

    if element22 then
      element22.Anchored = false
      element22.AssemblyLinearVelocity = Vector3.zero
      element22.AssemblyAngularVelocity = Vector3.zero
    end

    if val268 then
      val268.PlatformStand = false
      val268.AutoRotate = true
    end

    if val267 and currentCamera8 then

      currentCamera8.CameraType = val.CameraTPOriginalType or Enum.CameraType.Custom

      if val.CameraTPOriginalSubject and val.CameraTPOriginalSubject.Parent then
        currentCamera8.CameraSubject = val.CameraTPOriginalSubject
      else
        if val268 then
          currentCamera8.CameraSubject = val268
        end
      end
    end

    val.CameraTPOriginalType = nil
    val.CameraTPOriginalSubject = nil
    val.CameraTPOriginalCFrame = nil

    helper38()
    return
  end

  local function helper40()

    if not val.ViewCameraTP then
      createTextLabel("Enable View Camera TP first")
      return
    else
      local val269, val270, val271
      val271, val270, val269 = helper36()
      local val272 = not val270
      local currentCamera9 = workspace.CurrentCamera
      local val273 = val272

      if not val272 then

        val273 = not val269 or not currentCamera9
      end

      if val273 then
        createTextLabel("Character or camera unavailable")
        return
      else
        if val.CameraTPActive then
          local position12 = currentCamera9.CFrame.Position
          local lookVector2 = currentCamera9.CFrame.LookVector
          local vector4 = Vector3.new(lookVector2.X, 0, lookVector2.Z)

          if vector4.Magnitude < 0.001 then
            vector4 = Vector3.new(val269.CFrame.LookVector.X, 0, val269.CFrame.LookVector.Z)
          end

          if vector4.Magnitude < 0.001 then
            vector4 = Vector3.new(0, 0, -1)
          end

          val269.Anchored = false
          val269.CFrame = CFrame.lookAt(position12, position12 + vector4.Unit)
          val269.AssemblyLinearVelocity = Vector3.zero
          val269.AssemblyAngularVelocity = Vector3.zero

          val.CameraTPActive = false

          val270.PlatformStand = false
          val270.AutoRotate = true

          currentCamera9.CameraType = val.CameraTPOriginalType or Enum.CameraType.Custom

          if val.CameraTPOriginalSubject and val.CameraTPOriginalSubject.Parent then
            currentCamera9.CameraSubject = val.CameraTPOriginalSubject
          else
            currentCamera9.CameraSubject = val270
          end

          val.CameraTPOriginalType = nil
          val.CameraTPOriginalSubject = nil
          val.CameraTPOriginalCFrame = nil

          val265 = nil
          val266 = nil
          val264 = false
          position11 = nil
          helper38()
          createTextLabel("Teleported to camera position")
          return
        else
          val.CameraTPOriginalType = currentCamera9.CameraType
          val.CameraTPOriginalSubject = currentCamera9.CameraSubject
          val.CameraTPOriginalCFrame = currentCamera9.CFrame
          val.CameraTPActive = true

          helper37(currentCamera9)

          val269.Anchored = true
          val269.AssemblyLinearVelocity = Vector3.zero
          val269.AssemblyAngularVelocity = Vector3.zero

          val270.PlatformStand = false
          val270.AutoRotate = false

          currentCamera9.CameraType = Enum.CameraType.Scriptable
          currentCamera9.CFrame = val.CameraTPOriginalCFrame

          createTextLabel("Camera TP active - joystick moves camera, swipe screen to look")
          helper38()
          return
        end
      end
    end
  end

  helper5(userInputService.InputBegan, function(p124)
    if not val.CameraTPActive then
      return
    else
      if p124.UserInputType == Enum.UserInputType.Touch then
        local currentCamera10 = workspace.CurrentCamera
        local viewportSize3 = currentCamera10 and currentCamera10.ViewportSize

        local vector5 = viewportSize3 or Vector2.new(800, 600)
        local position13 = p124.Position

        if position13.X >= vector5.X * 0.552 then
          val265 = p124
          val266 = position13
        end
      else
        if p124.UserInputType == Enum.UserInputType.MouseButton2 then
          val264 = true
          position11 = p124.Position
        end
      end

      return
    end
  end)

  helper5(userInputService.InputChanged, function(p125)

    if not val.CameraTPActive then
      return
    else

      if p125.UserInputType == Enum.UserInputType.MouseMovement and val264 then
        local position14 = p125.Position

        if position11 then
          local element23 = position14 - position11
          val259 = val259 - element23.X * val.CameraTPSensitivity * 0.01

          val260 = math.clamp(
            val260 - element23.Y * val.CameraTPSensitivity * 0.01, math.rad(-88), math.rad(88)
          )
        end

        position11 = position14
      end

      return
    end
  end)

  helper5(userInputService.TouchMoved, function(p126, p127)

    local val274 = not val.CameraTPActive or p126 ~= val265

    if val274 then
      return
    else
      local position15 = p126.Position

      if val266 then
        local element24 = position15 - val266
        val259 = val259 - element24.X * val.CameraTPSensitivity * 0.01

        val260 = math.clamp(
          val260 - element24.Y * val.CameraTPSensitivity * 0.01, math.rad(-88), math.rad(88)
        )
      end

      val266 = position15
      return
    end
  end)

  helper5(userInputService.InputEnded, function(p128)
    if p128 == val265 then
      val265 = nil
      val266 = nil
    else
      if p128.UserInputType == Enum.UserInputType.MouseButton2 then
        val264 = false
        position11 = nil
      end
    end

    return
  end)

  helper5(runService.RenderStepped, function(p129)
    local val275 = not val.CameraTPActive

    if val275 then
      return
    else
      local val276, val277, val278
      val276, val278, val277 = helper36()

      local val279 = not val278
      local val280 = val279
      local currentCamera11 = workspace.CurrentCamera

      if not val279 then

        val280 = not val277 or not currentCamera11
      end

      if val280 then
        helper39(true)
        return
      else
        val277.Anchored = true
        val277.AssemblyLinearVelocity = Vector3.zero
        val277.AssemblyAngularVelocity = Vector3.zero

        val278.AutoRotate = false
        local cframe = CFrame.Angles(0, val259, 0)
        local cframe2 = CFrame.Angles(val260, 0, 0)

        currentCamera11.CFrame = (CFrame.new(currentCamera11.CFrame.Position))
          * (cframe * cframe2)

        local moveDirection2 = val278.MoveDirection

        if moveDirection2.Magnitude > 0.001 then
          local lookVector3 = currentCamera11.CFrame.LookVector
          local rightVector2 = currentCamera11.CFrame.RightVector
          local vector6 = Vector3.new(rightVector2.X, 0, rightVector2.Z)

          if vector6.Magnitude > 0.001 then
            unit6 = vector6.Unit
          else
            unit6 = Vector3.new(1, 0, 0)
          end

          local vector7 = Vector3.new(lookVector3.X, 0, lookVector3.Z)

          if vector7.Magnitude > 0.001 then
            unit7 = vector7.Unit
          else
            unit7 = Vector3.new(0, 0, -1)
          end

          local dot3 = moveDirection2:Dot(unit7)
          local element25 = unit6 * (moveDirection2:Dot(unit6)) + lookVector3 * dot3

          if element25.Magnitude > 0.001 then
            currentCamera11.CFrame = currentCamera11.CFrame
              + element25.Unit * (math.max(val.CameraTPSpeed, 1)) * p129
          end
        end

        return
      end
    end
  end)

  helper5(localPlayer.CharacterAdded, function()
    if val.CameraTPActive then
      task.defer(function()
        helper39(true)
        return
      end)
    end

    return
  end)

  local function createTextButton6()

    local parent3 = cameraTPButton and cameraTPButton.Parent
    local val281, position16, position17, val282

    if parent3 then
      return
    else
      cameraTPButton = Instance.new("TextButton")
      cameraTPButton.Name = "CameraTPButton"
      cameraTPButton.AnchorPoint = Vector2.new(0, 1)
      cameraTPButton.Position = UDim2.new(0, 135, 1, -15)
      cameraTPButton.Size = UDim2.fromOffset(105, 48)
      cameraTPButton.BackgroundColor3 = Color3.fromRGB(125, 65, 205)
      cameraTPButton.BorderSizePixel = 0
      cameraTPButton.AutoButtonColor = false
      cameraTPButton.Text = "TP CAM"
      cameraTPButton.TextColor3 = Color3.new(1, 1, 1)
      cameraTPButton.TextSize = 10
      cameraTPButton.Font = Enum.Font.GothamBold
      cameraTPButton.Visible = val.ViewCameraTP
      cameraTPButton.ZIndex = 100
      cameraTPButton.Parent = playerVisualizationTool

      Instance.new("UICorner", cameraTPButton).CornerRadius = UDim.new(0, 12)
      val281 = false
      position16 = nil
      position17 = nil
      val282 = false

      helper5(cameraTPButton.InputBegan, function(p130)

        if val.CameraTPButtonLocked then
          return
        else

          if p130.UserInputType == Enum.UserInputType.MouseButton1
            or p130.UserInputType == Enum.UserInputType.Touch then
            val281 = true
            val282 = false
            position16 = p130.Position
            position17 = cameraTPButton.Position
            connect5 = nil

            connect5 = p130.Changed:Connect(function()

              if p130.UserInputState == Enum.UserInputState.End then
                val281 = false

                connect5:Disconnect()
              end

              return
            end)
          end

          return
        end
      end)

      helper5(userInputService.InputChanged, function(p131)
        local val283 = val281
        local val284 = val283

        if val283 then

          val284 = p131.UserInputType == Enum.UserInputType.MouseMovement
            or p131.UserInputType == Enum.UserInputType.Touch
        end

        if val284 then
          local element26 = p131.Position - position16
          local val285 = (math.abs(element26.X)) > 4

          if val285 or (math.abs(element26.Y)) > 4 then
            val282 = true
          end

          local udim7 = UDim2.new(
            position17.X.Scale, position17.X.Offset + element26.X, position17.Y.Scale, position17.Y.Offset + element26.Y
          )

          cameraTPButton.Position = cameraTPButton.Position:Lerp(udim7, 0.32)
        end

        return
      end)

      helper5(cameraTPButton.MouseButton1Click, function()
        if val282 then
          val282 = false
          return
        else
          helper40()
          return
        end
      end)

      return
    end
  end

  createTextButton6()

  local helper41

  local function helper42(val286)
    local currentCamera12 = workspace.CurrentCamera

    if currentCamera12 then
      local character14 = localPlayer.Character

      local humanoid9 = character14 and character14:FindFirstChildOfClass("Humanoid")
      currentCamera12.CameraType = Enum.CameraType.Custom

      if humanoid9 then
        currentCamera12.CameraSubject = humanoid9
      end
    end

    val.SpectateActive = false
    val.SpectateTarget = nil

    if val286 then
      val.SpectateEnabled = false
    end

    if helper41 then
      helper41()
    end

    return
  end

  local val287

  local function createFrame6(val288, val289)
    local parent4 = val289 or scrollingFrame

    local frame27 = Instance.new("Frame")
    frame27.Size = UDim2.new(1, 0, 0, 42)
    frame27.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
    frame27.BorderSizePixel = 0
    frame27.Parent = parent4

    Instance.new("UICorner", frame27).CornerRadius = UDim.new(0, 8)

    local textLabel32 = Instance.new("TextLabel")
    textLabel32.Position = UDim2.fromOffset(12, 3)
    textLabel32.Size = UDim2.new(1, -112, 0, 20)
    textLabel32.BackgroundTransparency = 1
    textLabel32.Text = val288.DisplayName
    textLabel32.TextColor3 = Color3.fromRGB(230, 235, 245)
    textLabel32.TextSize = 11
    textLabel32.Font = Enum.Font.GothamBold
    textLabel32.TextXAlignment = Enum.TextXAlignment.Left
    textLabel32.Parent = frame27

    local textLabel33 = Instance.new("TextLabel")
    textLabel33.Position = UDim2.fromOffset(12, 21)
    textLabel33.Size = UDim2.new(1, -112, 0, 15)
    textLabel33.BackgroundTransparency = 1
    textLabel33.Text = "@" .. val288.Name
    textLabel33.TextColor3 = Color3.fromRGB(130, 140, 165)
    textLabel33.TextSize = 9
    textLabel33.Font = Enum.Font.Gotham
    textLabel33.TextXAlignment = Enum.TextXAlignment.Left
    textLabel33.Parent = frame27

    local textButton19 = Instance.new("TextButton")
    textButton19.AnchorPoint = Vector2.new(1, 0.5)
    textButton19.Position = UDim2.new(1, -10, 0.5, 0)
    textButton19.Size = UDim2.fromOffset(76, 26)
    textButton19.BackgroundColor3 = Color3.fromRGB(125, 65, 205)
    textButton19.BorderSizePixel = 0
    textButton19.AutoButtonColor = false
    textButton19.Text = "SPECTATE"
    textButton19.TextColor3 = Color3.new(1, 1, 1)
    textButton19.TextSize = 8
    textButton19.Font = Enum.Font.GothamBold
    textButton19.Parent = frame27

    Instance.new("UICorner", textButton19).CornerRadius = UDim.new(0, 7)

    helper5(textButton19.MouseButton1Click, function()
      val287(val288)
      return
    end)

    return frame27
  end

  val287 = function(p135)

    if not val.SpectateEnabled then
      createTextLabel("Enable spectate first")
      return
    else

      if not p135 or p135 == localPlayer then
        createTextLabel("Invalid spectate target")
        return
      else
        local val290 = { helper7(p135) }
        local val291 = val290[2]

        if not val290[1] or not val291 then
          createTextLabel("Player is not available")
          return
        else
          local currentCamera13 = workspace.CurrentCamera

          if not currentCamera13 then
            createTextLabel("Camera is not available")
            return
          else
            val.SpectateTarget = p135
            val.SpectateActive = true

            currentCamera13.CameraType = Enum.CameraType.Custom
            currentCamera13.CameraSubject = val291

            if helper41 then
              helper41()
            end

            createTextLabel("Spectating " .. p135.DisplayName)
            return
          end
        end
      end
    end
  end

  helper5(runService.RenderStepped, function()
    local val292 = not val.SpectateActive

    if val292 then
      return
    else
      local spectateTarget = val.SpectateTarget
      local val293 = not spectateTarget
      local val294 = val293
      local currentCamera14 = workspace.CurrentCamera

      if not val293 then

        val294 = spectateTarget.Parent ~= players or not currentCamera14
      end

      if val294 then
        helper42()
        return
      else
        local parent, val295
        val295, parent = helper7(spectateTarget)

        if parent and parent.Parent then
          currentCamera14.CameraType = Enum.CameraType.Custom
          currentCamera14.CameraSubject = parent
        end

        return
      end
    end
  end)

  helper5(players.PlayerRemoving, function(p136)
    if val.SpectateTarget == p136 then
      helper42()
      createTextLabel("Spectate target left the server")
    end

    return
  end)

  helper5(localPlayer.CharacterAdded, function()

    if not val.SpectateActive then
      task.wait(0.1)
      local currentCamera15 = workspace.CurrentCamera
      local character15 = localPlayer.Character

      local humanoid10 = character15 and character15:FindFirstChildOfClass("Humanoid")

      if currentCamera15 and humanoid10 then
        currentCamera15.CameraType = Enum.CameraType.Custom
        currentCamera15.CameraSubject = humanoid10
      end
    end

    return
  end)

  local function helper43(val296, val297)
    local val298 = not val296
    local paste = val298

    if not val298 then
      local val299 = val296 == ""

      paste = val299 or val296:find("PASTE_")
    end

    if paste then
      createTextLabel("Set your " .. val297 .. " link first")
      return
    else
      if (typeof(setclipboard)) == "function" then
        setclipboard(val296)
        createTextLabel(val297 .. " link copied")
      else
        createTextLabel("Select the link and copy it")
      end

      return
    end
  end

  local

  local function createFrame7()
    createUIListLayout()
    createTextLabel2("Camera TP")

    local frame28 = Instance.new("Frame")
    frame28.Size = UDim2.new(1, 0, 0, 42)
    frame28.BackgroundTransparency = 1
    frame28.Parent = scrollingFrame

    local textButton20 = Instance.new("TextButton")
    textButton20.Size = UDim2.new(1, 0, 0, 42)
    textButton20.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
    textButton20.BorderSizePixel = 0
    textButton20.AutoButtonColor = false
    textButton20.Text = ""
    textButton20.Parent = frame28

    Instance.new("UICorner", textButton20).CornerRadius = UDim.new(0, 8)

    local frame29 = Instance.new("Frame")
    frame29.Position = UDim2.fromOffset(10, 12)
    frame29.Size = UDim2.fromOffset(18, 18)

    local viewCameraTP = val.ViewCameraTP

    local color28 = viewCameraTP
    color28 = viewCameraTP and Color3.fromRGB(145, 75, 235)

    frame29.BackgroundColor3 = color28 or Color3.fromRGB(38, 43, 56)
    frame29.BorderSizePixel = 0
    frame29.Parent = textButton20

    Instance.new("UICorner", frame29).CornerRadius = UDim.new(0, 5)

    local textLabel34 = Instance.new("TextLabel")
    textLabel34.Size = UDim2.fromScale(1, 1)
    textLabel34.BackgroundTransparency = 1

    textLabel34.Text = val.ViewCameraTP and "â" or ""
    textLabel34.TextColor3 = Color3.new(1, 1, 1)
    textLabel34.Font = Enum.Font.GothamBold
    textLabel34.TextSize = 12
    textLabel34.Parent = frame29

    local textLabel35 = Instance.new("TextLabel")
    textLabel35.Position = UDim2.fromOffset(38, 0)
    textLabel35.Size = UDim2.new(1, -82, 1, 0)
    textLabel35.BackgroundTransparency = 1
    textLabel35.Text = "View Camera TP"
    textLabel35.TextColor3 = Color3.fromRGB(220, 225, 235)
    textLabel35.TextSize = 12
    textLabel35.Font = Enum.Font.GothamMedium
    textLabel35.TextXAlignment = Enum.TextXAlignment.Left
    textLabel35.Parent = textButton20

    local textButton21 = Instance.new("TextButton")
    textButton21.AnchorPoint = Vector2.new(1, 0.5)
    textButton21.Position = UDim2.new(1, -8, 0.5, 0)
    textButton21.Size = UDim2.fromOffset(34, 32)
    textButton21.BackgroundColor3 = Color3.fromRGB(35, 27, 48)
    textButton21.BorderSizePixel = 0
    textButton21.AutoButtonColor = false
    textButton21.Text = "âº"
    textButton21.TextColor3 = Color3.fromRGB(205, 175, 245)
    textButton21.TextSize = 21
    textButton21.Font = Enum.Font.GothamBold
    textButton21.Parent = textButton20

    Instance.new("UICorner", textButton21).CornerRadius = UDim.new(0, 8)

    local textButton22 = Instance.new("TextButton")
    textButton22.Position = UDim2.fromOffset(0, 47)
    textButton22.Size = UDim2.new(1, 0, 0, 38)
    textButton22.BackgroundColor3 = Color3.fromRGB(27, 23, 38)
    textButton22.BorderSizePixel = 0
    textButton22.AutoButtonColor = false
    textButton22.Text = ""
    textButton22.Visible = false
    textButton22.Parent = frame28

    Instance.new("UICorner", textButton22).CornerRadius = UDim.new(0, 8)

    local frame30 = Instance.new("Frame")
    frame30.Position = UDim2.fromOffset(10, 10)
    frame30.Size = UDim2.fromOffset(18, 18)

    local cameraTPButtonLocked = val.CameraTPButtonLocked

    local color29 = cameraTPButtonLocked
    color29 = cameraTPButtonLocked and Color3.fromRGB(145, 75, 235)

    frame30.BackgroundColor3 = color29 or Color3.fromRGB(38, 43, 56)
    frame30.BorderSizePixel = 0
    frame30.Parent = textButton22

    Instance.new("UICorner", frame30).CornerRadius = UDim.new(0, 5)

    local textLabel36 = Instance.new("TextLabel")
    textLabel36.Size = UDim2.fromScale(1, 1)
    textLabel36.BackgroundTransparency = 1

    textLabel36.Text = val.CameraTPButtonLocked and "â" or ""
    textLabel36.TextColor3 = Color3.new(1, 1, 1)
    textLabel36.Font = Enum.Font.GothamBold
    textLabel36.TextSize = 12
    textLabel36.Parent = frame30

    local textLabel37 = Instance.new("TextLabel")
    textLabel37.Position = UDim2.fromOffset(38, 0)
    textLabel37.Size = UDim2.new(1, -50, 1, 0)
    textLabel37.BackgroundTransparency = 1
    textLabel37.Text = "Lock Camera TP button"
    textLabel37.TextColor3 = Color3.fromRGB(205, 210, 225)
    textLabel37.TextSize = 11
    textLabel37.Font = Enum.Font.GothamMedium
    textLabel37.TextXAlignment = Enum.TextXAlignment.Left
    textLabel37.Parent = textButton22

    local val300 = false

    local function helper44()
      local viewCameraTP2 = val.ViewCameraTP
      local color30 = viewCameraTP2
      color30 = viewCameraTP2 and Color3.fromRGB(145, 75, 235)

      frame29.BackgroundColor3 = color30 or Color3.fromRGB(38, 43, 56)

      textLabel34.Text = val.ViewCameraTP and "â" or ""

      textButton22.Visible = val.ViewCameraTP and val300
      frame28.Size = UDim2.new(1, 0, 0, textButton22.Visible and 89 or 42)

      textButton21.Text = val300 and "â" or "âº"
      local cameraTPButtonLocked2 = val.CameraTPButtonLocked

      local color31 = cameraTPButtonLocked2
      color31 = cameraTPButtonLocked2 and Color3.fromRGB(145, 75, 235)

      frame30.BackgroundColor3 = color31 or Color3.fromRGB(38, 43, 56)

      textLabel36.Text = val.CameraTPButtonLocked and "â" or ""
      return
    end

    helper5(textButton20.MouseButton1Click, function()
      val.ViewCameraTP = not val.ViewCameraTP

      if not val.ViewCameraTP then
        val300 = false

        if val.CameraTPActive then
          helper39(true)
        end
      end

      helper44()
      helper38()

      createTextLabel(val.ViewCameraTP and "View Camera TP enabled" or "View Camera TP disabled")
      return
    end)

    helper5(textButton21.MouseButton1Click, function()
      if not val.ViewCameraTP then
        return
      else
        val300 = not val300
        helper44()
        return
      end
    end)

    helper5(textButton22.MouseButton1Click, function()
      val.CameraTPButtonLocked = not val.CameraTPButtonLocked
      helper44()

      createTextLabel(val.CameraTPButtonLocked and "Camera TP button locked" or "Camera TP button unlocked")
      return
    end)

    helper44()

    createFrame("Camera TP Speed", 1, 200, 1, 140, function(cameraTPSpeed)
      val.CameraTPSpeed = cameraTPSpeed
      return
    end)

    val.CameraTPSpeed = 140
    createTextLabel2("Teleport to Player & Spectate Player")
    local frame31, frame32

    createTextButton2("Teleport to player", val.TeleportEnabled, function(p139)
      val.TeleportEnabled = p139

      if p139 then
        createTextLabel("Teleport to player enabled")
      else
        if frame31 then
          frame31.Visible = false
        end

        if frame32 then
          frame32.Visible = false
        end

        createTextLabel("Teleport to player disabled")
      end

      task.defer(function()
        if val6 == "Teleport" then
          iterate3("Teleport", createFrame7)
        end

        return
      end)

      return
    end)

    local iterate8, textButton23

    if val.TeleportEnabled then
      createTextLabel2("Teleport Players")

      frame32 = Instance.new("Frame")
      frame32.Size = UDim2.new(1, 0, 0, 34)
      frame32.BackgroundTransparency = 1
      frame32.Parent = scrollingFrame

      textButton23 = Instance.new("TextButton")
      textButton23.Size = UDim2.new(1, 0, 1, 0)
      textButton23.BackgroundColor3 = Color3.fromRGB(35, 29, 48)
      textButton23.BorderSizePixel = 0
      textButton23.AutoButtonColor = false
      textButton23.Text = "â»  Refresh Players"
      textButton23.TextColor3 = Color3.fromRGB(220, 205, 245)
      textButton23.TextSize = 11
      textButton23.Font = Enum.Font.GothamBold
      textButton23.Parent = frame32

      Instance.new("UICorner", textButton23).CornerRadius = UDim.new(0, 8)

      frame31 = Instance.new("Frame")
      frame31.Size = UDim2.new(1, 0, 0, 0)
      frame31.AutomaticSize = Enum.AutomaticSize.Y
      frame31.BackgroundTransparency = 1
      frame31.Parent = scrollingFrame

      local uiListLayout4 = Instance.new("UIListLayout")
      uiListLayout4.Padding = UDim.new(0, 8)
      uiListLayout4.SortOrder = Enum.SortOrder.LayoutOrder
      uiListLayout4.Parent = frame31

      function iterate8(val301)
        for index9, value11 in ipairs(frame31:GetChildren()) do
          if not (value11:IsA("UIListLayout")) then
            value11:Destroy()
          end
        end

        if not val.TeleportEnabled then
          frame31.Visible = false
          return
        else
          frame31.Visible = true
          local val302 = iterate7()

          if #val302 == 0 then
            local textLabel38 = Instance.new("TextLabel")
            textLabel38.Size = UDim2.new(1, 0, 0, 42)
            textLabel38.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
            textLabel38.BorderSizePixel = 0
            textLabel38.Text = "No players available to teleport"
            textLabel38.TextColor3 = Color3.fromRGB(140, 150, 175)
            textLabel38.TextSize = 11
            textLabel38.Font = Enum.Font.GothamMedium
            textLabel38.Parent = frame31

            Instance.new("UICorner", textLabel38).CornerRadius = UDim.new(0, 8)
          else
            for index10, value12 in ipairs(val302) do
              local getChildren = scrollingFrame:GetChildren()
              createTextButton5(value12)
              local val303 = nil

              for index11, value13 in ipairs(scrollingFrame:GetChildren()) do
                local textButton24 = value13:IsA("TextButton")
                local val304 = textButton24

                if textButton24 then
                  local val305 = value13 ~= textButton23

                  val304 = val305 and not (table.find(getChildren, value13))
                end

                if val304 then
                  val303 = value13
                  break
                end
              end

              if val303 then
                val303.Parent = frame31
              end
            end
          end

          if val301 then
            createTextLabel("Teleport player list refreshed")
          end

          return
        end
      end

      helper5(textButton23.MouseButton1Click, function()
        iterate8(true)
        return
      end)

      iterate8(false)
    end

    createTextButton2("Spectate to player", val.SpectateEnabled, function(p141)
      val.SpectateEnabled = p141

      if not p141 then
        helper42(false)
        createTextLabel("Spectate to player disabled")
      else
        createTextLabel("Spectate to player enabled")
      end

      task.defer(function()
        if val6 == "Teleport" then
          iterate3("Teleport", createFrame7)
        end

        return
      end)

      return
    end)

    local frame33, iterate9, textButton25

    if val.SpectateEnabled then
      createTextLabel2("Spectate Players")

      textButton25 = Instance.new("TextButton")
      textButton25.Size = UDim2.new(1, 0, 0, 40)
      textButton25.BackgroundColor3 = Color3.fromRGB(125, 65, 205)
      textButton25.BorderSizePixel = 0
      textButton25.AutoButtonColor = false
      textButton25.Text = "STOP SPECTATING"
      textButton25.TextColor3 = Color3.new(1, 1, 1)
      textButton25.TextSize = 10
      textButton25.Font = Enum.Font.GothamBold
      textButton25.Visible = val.SpectateActive
      textButton25.Parent = scrollingFrame

      Instance.new("UICorner", textButton25).CornerRadius = UDim.new(0, 8)

      function helper41()

        if textButton25 and textButton25.Parent then
          textButton25.Visible = val.SpectateActive
        end

        return
      end

      helper5(textButton25.MouseButton1Click, function()
        if val.SpectateActive then
          helper42(false)
          createTextLabel("Stopped spectating")
        end

        return
      end)

      local frame34 = Instance.new("Frame")
      frame34.Size = UDim2.new(1, 0, 0, 34)
      frame34.BackgroundTransparency = 1
      frame34.Parent = scrollingFrame

      local textButton26 = Instance.new("TextButton")
      textButton26.Size = UDim2.new(1, 0, 1, 0)
      textButton26.BackgroundColor3 = Color3.fromRGB(35, 29, 48)
      textButton26.BorderSizePixel = 0
      textButton26.AutoButtonColor = false
      textButton26.Text = "â»  Refresh Players"
      textButton26.TextColor3 = Color3.fromRGB(220, 205, 245)
      textButton26.TextSize = 11
      textButton26.Font = Enum.Font.GothamBold
      textButton26.Parent = frame34

      Instance.new("UICorner", textButton26).CornerRadius = UDim.new(0, 8)

      frame33 = Instance.new("Frame")
      frame33.Size = UDim2.new(1, 0, 0, 0)
      frame33.AutomaticSize = Enum.AutomaticSize.Y
      frame33.BackgroundTransparency = 1
      frame33.Parent = scrollingFrame

      local uiListLayout5 = Instance.new("UIListLayout")
      uiListLayout5.Padding = UDim.new(0, 8)
      uiListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
      uiListLayout5.Parent = frame33

      function iterate9(val306)
        for index12, value14 in ipairs(frame33:GetChildren()) do
          if not (value14:IsA("UIListLayout")) then
            value14:Destroy()
          end
        end

        if not val.SpectateEnabled then
          frame33.Visible = false
          return
        else
          frame33.Visible = true
          local val307 = iterate7()

          if #val307 == 0 then
            local textLabel39 = Instance.new("TextLabel")
            textLabel39.Size = UDim2.new(1, 0, 0, 42)
            textLabel39.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
            textLabel39.BorderSizePixel = 0
            textLabel39.Text = "No players available to spectate"
            textLabel39.TextColor3 = Color3.fromRGB(140, 150, 175)
            textLabel39.TextSize = 11
            textLabel39.Font = Enum.Font.GothamMedium
            textLabel39.Parent = frame33

            Instance.new("UICorner", textLabel39).CornerRadius = UDim.new(0, 8)
          else
            for index13, value15 in ipairs(val307) do
              createFrame6(value15, frame33)
            end
          end

          if val306 then
            createTextLabel("Spectate player list refreshed")
          end

          return
        end
      end

      helper5(textButton26.MouseButton1Click, function()
        iterate9(true)
        return
      end)

      iterate9(false)
    end

    task.spawn(function()
      local val308 = ""

      while scrollingFrame.Parent do
        if val6 ~= "Teleport" then
          break
        else
          local val309 = {}

          for index14, value16 in ipairs(iterate7()) do
            table.insert(val309, value16.UserId .. ":" .. value16.Name)
          end

          table.sort(val309)
          local val310 = table.concat(val309, "|")

          if val310 ~= val308 then
            val308 = val310

            if val.TeleportEnabled and iterate8 then
              iterate8(false)
            end

            if val.SpectateEnabled and iterate9 then
              iterate9(false)
            end
          end

          task.wait(1)
        end
      end

      return
    end)

    return
  end

  local function createFrame8(val312, val311, val313)
    local frame35 = Instance.new("Frame")
    frame35.Size = UDim2.new(1, 0, 0, 58)
    frame35.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
    frame35.BorderSizePixel = 0
    frame35.Parent = scrollingFrame

    Instance.new("UICorner", frame35).CornerRadius = UDim.new(0, 8)

    local textLabel40 = Instance.new("TextLabel")
    textLabel40.Position = UDim2.fromOffset(12, 6)
    textLabel40.Size = UDim2.new(1, -84, 0, 20)
    textLabel40.BackgroundTransparency = 1
    textLabel40.Text = val312
    textLabel40.TextColor3 = Color3.fromRGB(230, 235, 245)
    textLabel40.TextSize = 11
    textLabel40.Font = Enum.Font.GothamBold
    textLabel40.TextXAlignment = Enum.TextXAlignment.Left
    textLabel40.Parent = frame35

    local textBox = Instance.new("TextBox")
    textBox.Position = UDim2.fromOffset(12, 28)
    textBox.Size = UDim2.new(1, -84, 0, 22)
    textBox.BackgroundTransparency = 1
    textBox.ClearTextOnFocus = false
    textBox.Text = val311
    textBox.TextColor3 = Color3.fromRGB(140, 150, 175)
    textBox.TextSize = 9
    textBox.Font = Enum.Font.Gotham
    textBox.TextXAlignment = Enum.TextXAlignment.Left
    textBox.TextTruncate = Enum.TextTruncate.AtEnd
    textBox.Parent = frame35

    local textButton27 = Instance.new("TextButton")
    textButton27.AnchorPoint = Vector2.new(1, 0.5)
    textButton27.Position = UDim2.new(1, -10, 0.5, 0)
    textButton27.Size = UDim2.fromOffset(58, 28)
    textButton27.BackgroundColor3 = Color3.fromRGB(125, 65, 205)
    textButton27.BorderSizePixel = 0
    textButton27.AutoButtonColor = false
    textButton27.Text = "COPY"
    textButton27.TextColor3 = Color3.new(1, 1, 1)
    textButton27.TextSize = 9
    textButton27.Font = Enum.Font.GothamBold
    textButton27.Parent = frame35

    Instance.new("UICorner", textButton27).CornerRadius = UDim.new(0, 6)

    helper5(textButton27.MouseButton1Click, function()
      helper43(textBox.Text, val313)
      return
    end)

    return frame35
  end

  helper5(localPlayer.CharacterAdded, function(p146)
    task.defer(function()
      local waitForChild2 = p146:WaitForChild("Humanoid", 5)

      if not waitForChild2 or false then
        return
      else
        if val.SpeedHack then
          waitForChild2:SetAttribute("ZenithOriginalWalkSpeed", waitForChild2.WalkSpeed)
          waitForChild2.WalkSpeed = val.WalkSpeedValue
        end

        if val.Fly then
          waitForChild2.PlatformStand = true
        end

        return
      end
    end)

    return
  end)

  local function createTextLabel3()
    createUIListLayout()

    createFrame8("Discord Zenith", val.DiscordLink, "Discord")
    createFrame8("TIKTOK", val.TikTokLink, "TikTok")
    createFrame8("YOUTUBE", val.YouTubeLink, "YouTube")

    createTextLabel2("UPCOMING FEATURES")

    for index15, value17 in ipairs({ "Team Check", "Rapid Fire", "Fast Reload" }) do
      local textLabel41 = Instance.new("TextLabel")
      textLabel41.Size = UDim2.new(1, 0, 0, 28)
      textLabel41.BackgroundColor3 = Color3.fromRGB(23, 27, 37)
      textLabel41.BorderSizePixel = 0
      textLabel41.Text = "â¢ " .. value17
      textLabel41.TextColor3 = Color3.fromRGB(190, 195, 210)
      textLabel41.TextSize = 10
      textLabel41.Font = Enum.Font.Gotham
      textLabel41.TextXAlignment = Enum.TextXAlignment.Left
      textLabel41.Parent = scrollingFrame

      Instance.new("UICorner", textLabel41).CornerRadius = UDim.new(0, 7)

      local uiPadding2 = Instance.new("UIPadding")
      uiPadding2.PaddingLeft = UDim.new(0, 12)
      uiPadding2.Parent = textLabel41
    end

    return
  end

  helper5(val7.MouseButton1Click, function()
    iterate3("Main", helper28)
    return
  end)

  helper5(val8.MouseButton1Click, function()
    iterate3("ESP", helper27)
    return
  end)

  helper5(val9.MouseButton1Click, function()
    iterate3("Mics", helper32)
    return
  end)

  helper5(val10.MouseButton1Click, function()
    iterate3("Teleport", createFrame7)
    return
  end)

  helper5(val11.MouseButton1Click, function()
    iterate3("About", createTextLabel3)
    return
  end)
end

do
  iterate3("Main", helper28)
  helper9()
  local iterate10

  local function createHighlight(val314)

    if val314 == localPlayer then
      return
    else
      iterate10(val314)

      local playerToolBox = Instance.new("Highlight")
      playerToolBox.Name = "PlayerToolBox"
      playerToolBox.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
      playerToolBox.FillTransparency = 1
      playerToolBox.OutlineTransparency = 0
      playerToolBox.Enabled = false
      playerToolBox.Parent = zenithESP

      local playerToolTag = Instance.new("BillboardGui")
      playerToolTag.Name = "PlayerToolTag"
      playerToolTag.Size = UDim2.fromOffset(170, 70)
      playerToolTag.StudsOffset = Vector3.new(0, 3, 0)
      playerToolTag.AlwaysOnTop = true
      playerToolTag.Enabled = false
      playerToolTag.Parent = playerVisualizationTool

      local frame36 = Instance.new("Frame")
      frame36.Size = UDim2.fromScale(1, 1)
      frame36.BackgroundTransparency = 1
      frame36.Parent = playerToolTag

      local name = Instance.new("TextLabel")
      name.Name = "Name"
      name.Size = UDim2.new(1, 0, 0, 22)
      name.BackgroundTransparency = 1
      name.TextColor3 = Color3.new(1, 1, 1)
      name.TextStrokeTransparency = 0.4
      name.Font = Enum.Font.GothamBold
      name.TextSize = 12
      name.Parent = frame36

      local distance2 = Instance.new("TextLabel")
      distance2.Name = "Distance"
      distance2.Position = UDim2.fromOffset(0, 20)
      distance2.Size = UDim2.new(1, 0, 0, 18)
      distance2.BackgroundTransparency = 1
      distance2.TextColor3 = Color3.fromRGB(205, 210, 220)
      distance2.TextStrokeTransparency = 0.5
      distance2.Font = Enum.Font.Gotham
      distance2.TextSize = 10
      distance2.Parent = frame36

      local frame37 = Instance.new("Frame")
      frame37.Position = UDim2.fromOffset(-8, 0)
      frame37.Size = UDim2.fromOffset(4, 35)
      frame37.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
      frame37.BorderSizePixel = 0
      frame37.Parent = frame36

      local frame38 = Instance.new("Frame")
      frame38.AnchorPoint = Vector2.new(0, 1)
      frame38.Position = UDim2.fromScale(0, 1)
      frame38.Size = UDim2.fromScale(1, 1)
      frame38.BackgroundColor3 = Color3.fromRGB(70, 220, 110)
      frame38.BorderSizePixel = 0
      frame38.Parent = frame37

      local object3 = helper7(val314)

      if object3 then
        local humanoidRootPart10 = object3:FindFirstChild("HumanoidRootPart")
        local head4 = object3:FindFirstChild("Head")
        playerToolBox.Adornee = object3

        playerToolTag.Adornee = head4 or humanoidRootPart10
      end

      val2[val314] = {
        Highlight = playerToolBox, Billboard = playerToolTag, Name = name, Distance = distance2, HealthBackground = frame37, HealthFill = frame38, }

      return
    end
  end

  function iterate10(val315)
    local val316 = val2[val315]

    if not val316 then
      return
    else
      for key4, value18 in pairs(val316) do

        if (typeof(value18)) == "Instance" and value18.Parent then
          value18:Destroy()
        end
      end

      val2[val315] = nil
      return
    end
  end

  for index16, value19 in ipairs(players:GetPlayers()) do
    createHighlight(value19)
  end

  helper5(players.PlayerAdded, function(p149)
    createHighlight(p149)

    helper5(p149.CharacterAdded, function()
      task.defer(function()
        if (players:FindFirstChild(p149.Name)) then
          createHighlight(p149)
        end

        return
      end)

      return
    end)

    return
  end)

  helper5(players.PlayerRemoving, iterate10)

  helper5(runService.RenderStepped, function()
    currentCamera = workspace.CurrentCamera

    if not currentCamera then
      return
    else
      local viewportSize4 = currentCamera.ViewportSize

      fovCircle.Position = UDim2.fromOffset(viewportSize4.X / 2, viewportSize4.Y / 2)
      fovCircle.Size = UDim2.fromOffset(val.FOVSize * 2, val.FOVSize * 2)

      fovCircle.Visible = val.FOVEnabled and val.TrackingEnabled

      if val.TrackingEnabled then
        local val317 = iterate()

        if val317 then
          local val318 = helper7(val317)

          if val318 then
            local element27 = helper6(val318)

            if element27 then
              local cframe3 = CFrame.lookAt(currentCamera.CFrame.Position, element27.Position)
              local val319 = math.clamp(val.Smoothness, 0.1, 0.9)

              currentCamera.CFrame = currentCamera.CFrame:Lerp(cframe3, val319)
            end
          end
        end
      end

      for key5, value20 in pairs(val2) do
        local val320, val321, val322
        val322, val321, val320 = helper7(key5)

        if val.ESPEnabled and val322 then
          local boxColor = val.BoxColor

          if value20.Highlight then
            value20.Highlight.Adornee = val322
            value20.Highlight.OutlineColor = boxColor
            value20.Highlight.Enabled = val.BoxESP
          end

          if value20.Billboard then

            value20.Billboard.Adornee = (val322:FindFirstChild("Head")) or val320
            local nameTags2 = val.NameTags
            local distance3 = nameTags2

            if not nameTags2 then

              distance3 = val.Distance or val.HealthBar
            end

            value20.Billboard.Enabled = distance3
          end

          if value20.Name then
            value20.Name.Visible = val.NameTags
            value20.Name.Text = key5.DisplayName
            value20.Name.TextColor3 = boxColor
          end

          if value20.Distance then
            value20.Distance.Visible = val.Distance
            local character16 = localPlayer.Character

            local humanoidRootPart11 = character16
              and character16:FindFirstChild("HumanoidRootPart")

            if humanoidRootPart11 then
              value20.Distance.Text = string.format("%d m", math.floor((humanoidRootPart11.Position
                  - val320.Position).Magnitude
                + 0.5))
            else
              value20.Distance.Text = ""
            end
          end

          if value20.HealthBackground and value20.HealthFill then
            value20.HealthBackground.Visible = val.HealthBar
            value20.HealthFill.Visible = val.HealthBar

            local val323 = math.clamp(val321.Health / (math.max(val321.MaxHealth, 1)), 0, 1)

            value20.HealthFill.Size = UDim2.new(1, 0, val323, 0)

            value20.HealthFill.BackgroundColor3 = Color3.fromRGB(
              70 + (1 - val323) * 185, 220 * val323, 80
            )
          end
        else
          if value20.Highlight then
            value20.Highlight.Enabled = false
          end

          if value20.Billboard then
            value20.Billboard.Enabled = false
          end
        end
      end

      return
    end
  end)

  helper5(aimToggle.MouseButton1Click, function()
    if val5 then
      val5 = false
      return
    else
      helper14(not val.TrackingEnabled)
      return
    end
  end)
end

do
  local menuReopenButton = Instance.new("ImageButton")
  menuReopenButton.Name = "MenuReopenButton"
  menuReopenButton.AnchorPoint = Vector2.new(1, 1)
  menuReopenButton.Position = UDim2.new(1, -18, 1, -18)
  menuReopenButton.Size = UDim2.fromOffset(52, 52)
  menuReopenButton.BackgroundTransparency = 1
  menuReopenButton.Image = "rbxassetid://110688253549566"
  menuReopenButton.ScaleType = Enum.ScaleType.Fit
  menuReopenButton.Visible = false
  menuReopenButton.ZIndex = 1000
  menuReopenButton.Parent = playerVisualizationTool

  Instance.new("UICorner", menuReopenButton).CornerRadius = UDim.new(0, 12)
  local val324 = false
  local val325 = false
  local position18, position19

  helper5(menuReopenButton.InputBegan, function(p150)

    local val326 = p150.UserInputType == Enum.UserInputType.MouseButton1
      or p150.UserInputType == Enum.UserInputType.Touch

    if val326 then
      val324 = true
      val325 = false
      position18 = p150.Position
      position19 = menuReopenButton.Position
      connect6 = nil

      connect6 = p150.Changed:Connect(function()

        if p150.UserInputState == Enum.UserInputState.End then
          val324 = false

          connect6:Disconnect()
        end

        return
      end)
    end

    return
  end)

  helper5(userInputService.InputChanged, function(p151)
    local val327 = val324
    local val328 = val327

    if val327 then

      val328 = p151.UserInputType == Enum.UserInputType.MouseMovement
        or p151.UserInputType == Enum.UserInputType.Touch
    end

    if val328 then
      local element28 = p151.Position - position18
      local val329 = (math.abs(element28.X)) > 4

      if val329 or (math.abs(element28.Y)) > 4 then
        val325 = true
      end

      local udim8 = UDim2.new(
        position19.X.Scale, position19.X.Offset + element28.X, position19.Y.Scale, position19.Y.Offset + element28.Y
      )

      menuReopenButton.Position = menuReopenButton.Position:Lerp(udim8, 0.32)
    end

    return
  end)

  local function helper45()
    mainWindow.Visible = true
    menuReopenButton.Visible = false
    return
  end

  function helper()
    mainWindow.Visible = false
    menuReopenButton.Visible = true
    return
  end

  helper5(menuReopenButton.Activated, function()
    if val325 then
      val325 = false
      return
    else
      helper45()
      return
    end
  end)

  helper5(menuReopenButton.MouseButton1Click, function()
    if val325 then
      val325 = false
      return
    else
      helper45()
      return
    end
  end)
end
