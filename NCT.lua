local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local remote
local remoteParentName
local currentTycoon = nil

local team_tycoon_association = { 
    ["Neutral"]     = nil,
    ["Blue Team"]   = "TycoonA",
    ["Red Team"]    = "TycoonB",
    ["Yeller Team"] = "TycoonC",
    ["Green Team"]  = "TycoonD",
    ["Black Team"]  = "TycoonE",
    ["Pink Team"]   = "TycoonF", 
}

local function updateTycoon()
    local player = Players.LocalPlayer
    if player and player.Team then
        currentTycoon = team_tycoon_association[player.Team.Name] or nil
    else
        currentTycoon = nil
    end
end

updateTycoon()

Players.LocalPlayer:GetPropertyChangedSignal("Team"):Connect(updateTycoon)

local function getCurrentTycoon()
    return currentTycoon
end
local tycoon = getCurrentTycoon()

local function findRemote()
    local modulesFolder = ReplicatedStorage:FindFirstChild("Modules")
    if not modulesFolder then
        warn("Modules folder not found in ReplicatedStorage.")
        return nil
    end
    
    local children = modulesFolder:GetChildren()
    for _, obj in ipairs(children) do
        if obj:IsA("ModuleScript") or obj:IsA("LocalScript") then
            local success, result = pcall(function() return obj:GetChildren() end)
            if success then
                for _, child in ipairs(result) do
                    if child.Name == "LootSending" then
                        remote = child
                        remoteParentName = obj.Name
                        return remote
                    end
                end
            end
        end
    end
    warn("LootSending remote not found.")
    return nil
end

local function getRemote()
    return ReplicatedStorage.Modules:FindFirstChild(remoteParentName) and ReplicatedStorage.Modules[remoteParentName]:FindFirstChild("LootSending")
end

remote = findRemote()
if not remote then return end

local args = {
    [1] = {
        ["worth"] = {
            [1] = {
                [1] = math.huge
            },
            [2] = {
                [1] = math.huge
            },
            [3] = {
                [1] = math.huge
            },
            [4] = {
                [1] = math.huge
            },
            [5] = {
                [1] = math.huge
            },
            [6] = {
                [1] = math.huge
            },
            [7] = {
                [1] = math.huge
            },
            [8] = {
                [1] = math.huge
            },
            [9] = {
                [1] = math.huge
            },
            [10] = {
                [1] = math.huge
            },
            [11] = {
                [1] = math.huge
            },
            [12] = {
                [1] = math.huge
            },
            [13] = {
                [1] = math.huge
            },
            [14] = {
                [1] = math.huge
            },
            [15] = {
                [1] = math.huge
            },
            [16] = {
                [1] = math.huge
            },
            [17] = {
                [1] = math.huge
            },
            [18] = {
                [1] = math.huge
            },
            [19] = {
                [1] = math.huge
            },
            [20] = {
                [1] = math.huge
            },
            [21] = {
                [1] = math.huge
            },
            [22] = {
                [1] = math.huge
            },
            [23] = {
                [1] = math.huge
            },
            [24] = {
                [1] = math.huge
            },
            [25] = {
                [1] = math.huge
            },
            [26] = {
                [1] = math.huge
            },
            [27] = {
                [1] = math.huge
            },
            [28] = {
                [1] = math.huge
            },
            [29] = {
                [1] = math.huge
            },
            [30] = {
                [1] = math.huge
            },
            [31] = {
                [1] = math.huge
            },
            [32] = {
                [1] = math.huge
            },
            [33] = {
                [1] = math.huge
            },
            [34] = {
                [1] = math.huge
            },
            [35] = {
                [1] = math.huge
            },
            [36] = {
                [1] = math.huge
            },
            [37] = {
                [1] = math.huge
            },
            [38] = {
                [1] = math.huge
            },
            [39] = {
                [1] = math.huge
            },
            [40] = {
                [1] = math.huge
            },
            [41] = {
                [1] = math.huge
            },
            [42] = {
                [1] = math.huge
            },
            [43] = {
                [1] = math.huge
            },
            [44] = {
                [1] = math.huge
            },
            [45] = {
                [1] = math.huge
            },
            [46] = {
                [1] = math.huge
            },
            [47] = {
                [1] = math.huge
            },
            [48] = {
                [1] = math.huge
            },
            [49] = {
                [1] = math.huge
            },
            [50] = {
                [1] = math.huge
            },
            [51] = {
                [1] = math.huge
            },
            [52] = {
                [1] = math.huge
            },
            [53] = {
                [1] = math.huge
            },
            [54] = {
                [1] = math.huge
            },
            [55] = {
                [1] = math.huge
            },
            [56] = {
                [1] = math.huge
            },
            [57] = {
                [1] = math.huge
            },
            [58] = {
                [1] = math.huge
            },
            [59] = {
                [1] = math.huge
            },
            [60] = {
                [1] = math.huge
            },
            [61] = {
                [1] = math.huge
            },
            [62] = {
                [1] = math.huge
            },
            [63] = {
                [1] = math.huge
            },
            [64] = {
                [1] = math.huge
            },
            [65] = {
                [1] = math.huge
            },
            [66] = {
                [1] = math.huge
            },
            [67] = {
                [1] = math.huge
            },
            [68] = {
                [1] = math.huge
            },
            [69] = {
                [1] = math.huge
            },
            [70] = {
                [1] = math.huge
            },
            [71] = {
                [1] = math.huge
            },
            [72] = {
                [1] = math.huge
            },
            [73] = {
                [1] = math.huge
            },
            [74] = {
                [1] = math.huge
            },
            [75] = {
                [1] = math.huge
            },
            [76] = {
                [1] = math.huge
            },
            [77] = {
                [1] = math.huge
            },
            [78] = {
                [1] = math.huge
            },
            [79] = {
                [1] = math.huge
            },
            [80] = {
                [1] = math.huge
            },
            [81] = {
                [1] = math.huge
            },
            [82] = {
                [1] = math.huge
            },
            [83] = {
                [1] = math.huge
            },
            [84] = {
                [1] = math.huge
            },
            [85] = {
                [1] = math.huge
            },
            [86] = {
                [1] = math.huge
            },
            [87] = {
                [1] = math.huge
            },
            [88] = {
                [1] = math.huge
            },
            [89] = {
                [1] = math.huge
            },
            [90] = {
                [1] = math.huge
            },
            [91] = {
                [1] = math.huge
            },
            [92] = {
                [1] = math.huge
            },
            [93] = {
                [1] = math.huge
            },
            [94] = {
                [1] = math.huge
            },
            [95] = {
                [1] = math.huge
            },
            [96] = {
                [1] = math.huge
            },
            [97] = {
                [1] = math.huge
            },
            [98] = {
                [1] = math.huge
            },
            [99] = {
                [1] = math.huge
            },
            [100] = {
                [1] = math.huge
            },
            [101] = {
                [1] = math.huge
            },
            [102] = {
                [1] = math.huge
            },
            [103] = {
                [1] = math.huge
            },
            [104] = {
                [1] = math.huge
            },
            [105] = {
                [1] = math.huge
            },
            [106] = {
                [1] = math.huge
            },
            [107] = {
                [1] = math.huge
            },
            [108] = {
                [1] = math.huge
            },
            [109] = {
                [1] = math.huge
            },
            [110] = {
                [1] = math.huge
            },
            [111] = {
                [1] = math.huge
            },
            [112] = {
                [1] = math.huge
            },
            [113] = {
                [1] = math.huge
            },
            [114] = {
                [1] = math.huge
            },
            [115] = {
                [1] = math.huge
            },
            [116] = {
                [1] = math.huge
            },
            [117] = {
                [1] = math.huge
            },
            [118] = {
                [1] = math.huge
            },
            [119] = {
                [1] = math.huge
            },
            [120] = {
                [1] = math.huge
            },
            [121] = {
                [1] = math.huge
            },
            [122] = {
                [1] = math.huge
            },
            [123] = {
                [1] = math.huge
            },
            [124] = {
                [1] = math.huge
            },
            [125] = {
                [1] = math.huge
            },
            [126] = {
                [1] = math.huge
            },
            [127] = {
                [1] = math.huge
            },
            [128] = {
                [1] = math.huge
            },
            [129] = {
                [1] = math.huge
            },
            [130] = {
                [1] = math.huge
            },
            [131] = {
                [1] = math.huge
            },
            [132] = {
                [1] = math.huge
            },
            [133] = {
                [1] = math.huge
            },
            [134] = {
                [1] = math.huge
            },
            [135] = {
                [1] = math.huge
            },
            [136] = {
                [1] = math.huge
            },
            [137] = {
                [1] = math.huge
            },
            [138] = {
                [1] = math.huge
            },
            [139] = {
                [1] = math.huge
            },
            [140] = {
                [1] = math.huge
            },
            [141] = {
                [1] = math.huge
            },
            [142] = {
                [1] = math.huge
            },
            [143] = {
                [1] = math.huge
            },
            [144] = {
                [1] = math.huge
            },
            [145] = {
                [1] = math.huge
            },
            [146] = {
                [1] = math.huge
            },
            [147] = {
                [1] = math.huge
            },
            [148] = {
                [1] = math.huge
            },
            [149] = {
                [1] = math.huge
            },
            [150] = {
                [1] = math.huge
            },
            [151] = {
                [1] = math.huge
            },
            [152] = {
                [1] = math.huge
            },
            [153] = {
                [1] = math.huge
            },
            [154] = {
                [1] = math.huge
            },
            [155] = {
                [1] = math.huge
            },
            [156] = {
                [1] = math.huge
            },
            [157] = {
                [1] = math.huge
            },
            [158] = {
                [1] = math.huge
            },
            [159] = {
                [1] = math.huge
            },
            [160] = {
                [1] = math.huge
            },
            [161] = {
                [1] = math.huge
            },
            [162] = {
                [1] = math.huge
            },
            [163] = {
                [1] = math.huge
            },
            [164] = {
                [1] = math.huge
            },
            [165] = {
                [1] = math.huge
            },
            [166] = {
                [1] = math.huge
            },
            [167] = {
                [1] = math.huge
            },
            [168] = {
                [1] = math.huge
            },
            [169] = {
                [1] = math.huge
            },
            [170] = {
                [1] = math.huge
            },
            [171] = {
                [1] = math.huge
            },
            [172] = {
                [1] = math.huge
            },
            [173] = {
                [1] = math.huge
            },
            [174] = {
                [1] = math.huge
            },
            [175] = {
                [1] = math.huge
            },
            [176] = {
                [1] = math.huge
            },
            [177] = {
                [1] = math.huge
            },
            [178] = {
                [1] = math.huge
            },
            [179] = {
                [1] = math.huge
            },
            [180] = {
                [1] = math.huge
            },
            [181] = {
                [1] = math.huge
            },
            [182] = {
                [1] = math.huge
            },
            [183] = {
                [1] = math.huge
            },
            [184] = {
                [1] = math.huge
            },
            [185] = {
                [1] = math.huge
            },
            [186] = {
                [1] = math.huge
            },
            [187] = {
                [1] = math.huge
            },
            [188] = {
                [1] = math.huge
            },
            [189] = {
                [1] = math.huge
            },
            [190] = {
                [1] = math.huge
            },
            [191] = {
                [1] = math.huge
            },
            [192] = {
                [1] = math.huge
            },
            [193] = {
                [1] = math.huge
            },
            [194] = {
                [1] = math.huge
            },
            [195] = {
                [1] = math.huge
            },
            [196] = {
                [1] = math.huge
            },
            [197] = {
                [1] = math.huge
            },
            [198] = {
                [1] = math.huge
            },
            [199] = {
                [1] = math.huge
            },
            [200] = {
                [1] = math.huge
            }
        }
    }
}

local autoMoney = false
local autoRebirth = false
local autoOutputMultiplier = false
local autoUpgrades = false
local spamDelay = 0

local function spamRemote()
    while autoMoney do
        local dynamicRemote = getRemote()
        if dynamicRemote then
            dynamicRemote:FireServer(unpack(args))
        else
            remote = findRemote()
            while not remote do
                task.wait(0)
                remote = findRemote()
            end
        end
        task.wait(spamDelay)
    end
end

local function spamRebirth()
    while autoRebirth do
        local rebirthArgs = {
            [1] = workspace:WaitForChild(tycoon)
        }
        ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Upgrades"):WaitForChild("ConfirmCheck"):FireServer(unpack(rebirthArgs))
        task.wait(spamDelay)
    end
end

local function spamOutputMultiplier()
    local tycoonFolder = workspace:FindFirstChild(tycoon)
    if not tycoonFolder then
        warn(tycoon, " folder not found in workspace.")
        return
    end

    while autoOutputMultiplier do
        local buttonsFolder = tycoonFolder:FindFirstChild("Buttons")
        if buttonsFolder then
            for _, button in ipairs(buttonsFolder:GetChildren()) do
                if button.Name == "Upgrade" then
                    for _, descendant in ipairs(button:GetDescendants()) do
                        if descendant.Name == "Machine" then
                            if tostring(descendant.Value) == "OutputMultiplierUpgrade" then
                                local touchInterest = button:FindFirstChild("TouchInterest")
                                if touchInterest then
                                    firetouchinterest(Players.LocalPlayer.Character.HumanoidRootPart, button, 0)
                                    task.wait(0.1)
                                    firetouchinterest(Players.LocalPlayer.Character.HumanoidRootPart, button, 1)
                                    break
                                end
                            end
                        end
                    end
                end
            end
        else
            warn("Buttons folder not found in TycoonA.")
        end

        task.wait(0.5)
    end
end

local function activateAllButtons()
    local tycoonFolder = workspace:FindFirstChild(tycoon)
    if not tycoonFolder then
        warn("TycoonE folder not found in workspace.")
        return
    end

    local buttonsFolder = tycoonFolder:FindFirstChild("Buttons")
    if not buttonsFolder then
        warn("Buttons folder not found in TycoonE.")
        return
    end

    while autoUpgrades do
        for _, button in ipairs(buttonsFolder:GetChildren()) do
            if button.Name ~= "PickupWeapon" then
                local hasInvalidMachine = false
                for _, descendant in ipairs(button:GetDescendants()) do
                    if descendant.Name == "Machine" and descendant:IsA("ValueBase") then
                        local machineValue = tostring(descendant.Value)
                        if machineValue == "OutputMultiplierUpgrade" or machineValue == "Rebirth" then
                            hasInvalidMachine = true
                            break
                        end
                    end
                end

                if not hasInvalidMachine and button:FindFirstChild("ButtonSelectionBox") then
                    local touchInterest = button:FindFirstChild("TouchInterest")
                    if touchInterest then
                        firetouchinterest(Players.LocalPlayer.Character.HumanoidRootPart, button, 0)
                        task.wait(0.1)
                        firetouchinterest(Players.LocalPlayer.Character.HumanoidRootPart, button, 1)
                    end
                end
            end
        end
        task.wait(0.5)
    end
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = CoreGui
ScreenGui.Name = "SpamToggleGui"

local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 250, 0, 250)
Frame.Position = UDim2.new(0.5, -125, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.BackgroundTransparency = 0.2

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Frame

local Header = Instance.new("TextLabel")
Header.Parent = Frame
Header.Size = UDim2.new(1, 0, 0, 30)
Header.Position = UDim2.new(0, 0, 0, 0)
Header.Text = "Noob Crusher Tycoon"
Header.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.Font = Enum.Font.SourceSansBold
Header.TextSize = 16
Header.TextXAlignment = Enum.TextXAlignment.Center

local CloseButton = Instance.new("TextButton")
CloseButton.Parent = Frame
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -30, 0, 0)
CloseButton.Text = "X"
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextSize = 18

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

local function createToggleButton(parent, position, text, callback)
    local button = Instance.new("TextButton")
    button.Parent = parent
    button.Size = UDim2.new(0, 230, 0, 40)
    button.Position = position
    button.Text = text
    button.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
    
    button.MouseButton1Click:Connect(function()
        callback(button)
    end)
    
    return button
end

local function toggleState(state, button, onText, offText)
    state = not state
    button.Text = state and onText or offText
    button.BackgroundColor3 = state and Color3.fromRGB(0, 200, 0) or Color3.fromRGB(200, 0, 0)
    return state
end

local MoneyButton = createToggleButton(Frame, UDim2.new(0.5, -115, 0, 40), "Start Auto-Money", function(button)
    autoMoney = toggleState(autoMoney, button, "Stop Auto-Money", "Start Auto-Money")
    if autoMoney then task.spawn(spamRemote) end
end)
local RebirthButton = createToggleButton(Frame, UDim2.new(0.5, -115, 0, 90), "Start Auto-Rebirthing", function(button)
    autoRebirth = toggleState(autoRebirth, button, "Stop Auto-Rebirthing", "Start Auto-Rebirthing")
    if autoRebirth then task.spawn(spamRebirth) end
end)

local OutputMultiplierButton = createToggleButton(Frame, UDim2.new(0.5, -115, 0, 140), "Start Auto-OutputMultiplier", function(button)
    autoOutputMultiplier = toggleState(autoOutputMultiplier, button, "Stop Auto-OutputMultiplier", "Start Auto-OutputMultiplier")
    if autoOutputMultiplier then task.spawn(spamOutputMultiplier) end
end)

local UpgradesButton = createToggleButton(Frame, UDim2.new(0.5, -115, 0, 190), "Start Auto-Upgrades", function(button)
    autoUpgrades = toggleState(autoUpgrades, button, "Stop Auto-Upgrades", "Start Auto-Upgrades")
    if autoUpgrades then task.spawn(activateAllButtons) end
end)

print("GUI loaded")
