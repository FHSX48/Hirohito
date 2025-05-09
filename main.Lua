-- GUI Creation
local screenGui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
screenGui.Name = "FlingGui"

local mainFrame = Instance.new("Frame", screenGui)
mainFrame.Size = UDim2.new(0, 300, 0, 150)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -75)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 0

local title = Instance.new("TextLabel", mainFrame)
title.Size = UDim2.new(1, 0, 0.3, 0)
title.Position = UDim2.new(0, 0, 0, 0)
title.Text = "أهلاً بك في VortexX GUI"
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Font = Enum.Font.SourceSansBold
title.TextScaled = true

local flingButton = Instance.new("TextButton", mainFrame)
flingButton.Size = UDim2.new(0.8, 0, 0.4, 0)
flingButton.Position = UDim2.new(0.1, 0, 0.5, 0)
flingButton.Text = "FLING"
flingButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
flingButton.TextColor3 = Color3.new(1, 1, 1)
flingButton.Font = Enum.Font.SourceSansBold
flingButton.TextScaled = true

-- Fling Function
local function fling()
    local char = game.Players.LocalPlayer.Character
    if not char then return end

    local hrp = char:FindFirstChild("HumanoidRootPart")
    if hrp then
        local bv = Instance.new("BodyVelocity", hrp)
        bv.Velocity = Vector3.new(9999, 9999, 9999)
        bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        game.Debris:AddItem(bv, 0.1)
    end
end

flingButton.MouseButton1Click:Connect(fling)