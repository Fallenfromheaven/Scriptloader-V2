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
                [1] = 999999999999999999
            },
            [2] = {
                [1] = 999999999999999999
            },
            [3] = {
                [1] = 999999999999999999
            },
            [4] = {
                [1] = 999999999999999999
            },
            [5] = {
                [1] = 999999999999999999
            },
            [6] = {
                [1] = 999999999999999999
            },
            [7] = {
                [1] = 999999999999999999
            },
            [8] = {
                [1] = 999999999999999999
            },
            [9] = {
                [1] = 999999999999999999
            },
            [10] = {
                [1] = 999999999999999999
            },
            [11] = {
                [1] = 999999999999999999
            },
            [12] = {
                [1] = 999999999999999999
            },
            [13] = {
                [1] = 999999999999999999
            },
            [14] = {
                [1] = 999999999999999999
            },
            [15] = {
                [1] = 999999999999999999
            },
            [16] = {
                [1] = 999999999999999999
            },
            [17] = {
                [1] = 999999999999999999
            },
            [18] = {
                [1] = 999999999999999999
            },
            [19] = {
                [1] = 999999999999999999
            },
            [20] = {
                [1] = 999999999999999999
            },
            [21] = {
                [1] = 999999999999999999
            },
            [22] = {
                [1] = 999999999999999999
            },
            [23] = {
                [1] = 999999999999999999
            },
            [24] = {
                [1] = 999999999999999999
            },
            [25] = {
                [1] = 999999999999999999
            },
            [26] = {
                [1] = 999999999999999999
            },
            [27] = {
                [1] = 999999999999999999
            },
            [28] = {
                [1] = 999999999999999999
            },
            [29] = {
                [1] = 999999999999999999
            },
            [30] = {
                [1] = 999999999999999999
            },
            [31] = {
                [1] = 999999999999999999
            },
            [32] = {
                [1] = 999999999999999999
            },
            [33] = {
                [1] = 999999999999999999
            },
            [34] = {
                [1] = 999999999999999999
            },
            [35] = {
                [1] = 999999999999999999
            },
            [36] = {
                [1] = 999999999999999999
            },
            [37] = {
                [1] = 999999999999999999
            },
            [38] = {
                [1] = 999999999999999999
            },
            [39] = {
                [1] = 999999999999999999
            },
            [40] = {
                [1] = 999999999999999999
            },
            [41] = {
                [1] = 999999999999999999
            },
            [42] = {
                [1] = 999999999999999999
            },
            [43] = {
                [1] = 999999999999999999
            },
            [44] = {
                [1] = 999999999999999999
            },
            [45] = {
                [1] = 999999999999999999
            },
            [46] = {
                [1] = 999999999999999999
            },
            [47] = {
                [1] = 999999999999999999
            },
            [48] = {
                [1] = 999999999999999999
            },
            [49] = {
                [1] = 999999999999999999
            },
            [50] = {
                [1] = 999999999999999999
            },
            [51] = {
                [1] = 999999999999999999
            },
            [52] = {
                [1] = 999999999999999999
            },
            [53] = {
                [1] = 999999999999999999
            },
            [54] = {
                [1] = 999999999999999999
            },
            [55] = {
                [1] = 999999999999999999
            },
            [56] = {
                [1] = 999999999999999999
            },
            [57] = {
                [1] = 999999999999999999
            },
            [58] = {
                [1] = 999999999999999999
            },
            [59] = {
                [1] = 999999999999999999
            },
            [60] = {
                [1] = 999999999999999999
            },
            [61] = {
                [1] = 999999999999999999
            },
            [62] = {
                [1] = 999999999999999999
            },
            [63] = {
                [1] = 999999999999999999
            },
            [64] = {
                [1] = 999999999999999999
            },
            [65] = {
                [1] = 999999999999999999
            },
            [66] = {
                [1] = 999999999999999999
            },
            [67] = {
                [1] = 999999999999999999
            },
            [68] = {
                [1] = 999999999999999999
            },
            [69] = {
                [1] = 999999999999999999
            },
            [70] = {
                [1] = 999999999999999999
            },
            [71] = {
                [1] = 999999999999999999
            },
            [72] = {
                [1] = 999999999999999999
            },
            [73] = {
                [1] = 999999999999999999
            },
            [74] = {
                [1] = 999999999999999999
            },
            [75] = {
                [1] = 999999999999999999
            },
            [76] = {
                [1] = 999999999999999999
            },
            [77] = {
                [1] = 999999999999999999
            },
            [78] = {
                [1] = 999999999999999999
            },
            [79] = {
                [1] = 999999999999999999
            },
            [80] = {
                [1] = 999999999999999999
            },
            [81] = {
                [1] = 999999999999999999
            },
            [82] = {
                [1] = 999999999999999999
            },
            [83] = {
                [1] = 999999999999999999
            },
            [84] = {
                [1] = 999999999999999999
            },
            [85] = {
                [1] = 999999999999999999
            },
            [86] = {
                [1] = 999999999999999999
            },
            [87] = {
                [1] = 999999999999999999
            },
            [88] = {
                [1] = 999999999999999999
            },
            [89] = {
                [1] = 999999999999999999
            },
            [90] = {
                [1] = 999999999999999999
            },
            [91] = {
                [1] = 999999999999999999
            },
            [92] = {
                [1] = 999999999999999999
            },
            [93] = {
                [1] = 999999999999999999
            },
            [94] = {
                [1] = 999999999999999999
            },
            [95] = {
                [1] = 999999999999999999
            },
            [96] = {
                [1] = 999999999999999999
            },
            [97] = {
                [1] = 999999999999999999
            },
            [98] = {
                [1] = 999999999999999999
            },
            [99] = {
                [1] = 999999999999999999
            },
            [100] = {
                [1] = 999999999999999999
            },
            [101] = {
                [1] = 999999999999999999
            },
            [102] = {
                [1] = 999999999999999999
            },
            [103] = {
                [1] = 999999999999999999
            },
            [104] = {
                [1] = 999999999999999999
            },
            [105] = {
                [1] = 999999999999999999
            },
            [106] = {
                [1] = 999999999999999999
            },
            [107] = {
                [1] = 999999999999999999
            },
            [108] = {
                [1] = 999999999999999999
            },
            [109] = {
                [1] = 999999999999999999
            },
            [110] = {
                [1] = 999999999999999999
            },
            [111] = {
                [1] = 999999999999999999
            },
            [112] = {
                [1] = 999999999999999999
            },
            [113] = {
                [1] = 999999999999999999
            },
            [114] = {
                [1] = 999999999999999999
            },
            [115] = {
                [1] = 999999999999999999
            },
            [116] = {
                [1] = 999999999999999999
            },
            [117] = {
                [1] = 999999999999999999
            },
            [118] = {
                [1] = 999999999999999999
            },
            [119] = {
                [1] = 999999999999999999
            },
            [120] = {
                [1] = 999999999999999999
            },
            [121] = {
                [1] = 999999999999999999
            },
            [122] = {
                [1] = 999999999999999999
            },
            [123] = {
                [1] = 999999999999999999
            },
            [124] = {
                [1] = 999999999999999999
            },
            [125] = {
                [1] = 999999999999999999
            },
            [126] = {
                [1] = 999999999999999999
            },
            [127] = {
                [1] = 999999999999999999
            },
            [128] = {
                [1] = 999999999999999999
            },
            [129] = {
                [1] = 999999999999999999
            },
            [130] = {
                [1] = 999999999999999999
            },
            [131] = {
                [1] = 999999999999999999
            },
            [132] = {
                [1] = 999999999999999999
            },
            [133] = {
                [1] = 999999999999999999
            },
            [134] = {
                [1] = 999999999999999999
            },
            [135] = {
                [1] = 999999999999999999
            },
            [136] = {
                [1] = 999999999999999999
            },
            [137] = {
                [1] = 999999999999999999
            },
            [138] = {
                [1] = 999999999999999999
            },
            [139] = {
                [1] = 999999999999999999
            },
            [140] = {
                [1] = 999999999999999999
            },
            [141] = {
                [1] = 999999999999999999
            },
            [142] = {
                [1] = 999999999999999999
            },
            [143] = {
                [1] = 999999999999999999
            },
            [144] = {
                [1] = 999999999999999999
            },
            [145] = {
                [1] = 999999999999999999
            },
            [146] = {
                [1] = 999999999999999999
            },
            [147] = {
                [1] = 999999999999999999
            },
            [148] = {
                [1] = 999999999999999999
            },
            [149] = {
                [1] = 999999999999999999
            },
            [150] = {
                [1] = 999999999999999999
            },
            [151] = {
                [1] = 999999999999999999
            },
            [152] = {
                [1] = 999999999999999999
            },
            [153] = {
                [1] = 999999999999999999
            },
            [154] = {
                [1] = 999999999999999999
            },
            [155] = {
                [1] = 999999999999999999
            },
            [156] = {
                [1] = 999999999999999999
            },
            [157] = {
                [1] = 999999999999999999
            },
            [158] = {
                [1] = 999999999999999999
            },
            [159] = {
                [1] = 999999999999999999
            },
            [160] = {
                [1] = 999999999999999999
            },
            [161] = {
                [1] = 999999999999999999
            },
            [162] = {
                [1] = 999999999999999999
            },
            [163] = {
                [1] = 999999999999999999
            },
            [164] = {
                [1] = 999999999999999999
            },
            [165] = {
                [1] = 999999999999999999
            },
            [166] = {
                [1] = 999999999999999999
            },
            [167] = {
                [1] = 999999999999999999
            },
            [168] = {
                [1] = 999999999999999999
            },
            [169] = {
                [1] = 999999999999999999
            },
            [170] = {
                [1] = 999999999999999999
            },
            [171] = {
                [1] = 999999999999999999
            },
            [172] = {
                [1] = 999999999999999999
            },
            [173] = {
                [1] = 999999999999999999
            },
            [174] = {
                [1] = 999999999999999999
            },
            [175] = {
                [1] = 999999999999999999
            },
            [176] = {
                [1] = 999999999999999999
            },
            [177] = {
                [1] = 999999999999999999
            },
            [178] = {
                [1] = 999999999999999999
            },
            [179] = {
                [1] = 999999999999999999
            },
            [180] = {
                [1] = 999999999999999999
            },
            [181] = {
                [1] = 999999999999999999
            },
            [182] = {
                [1] = 999999999999999999
            },
            [183] = {
                [1] = 999999999999999999
            },
            [184] = {
                [1] = 999999999999999999
            },
            [185] = {
                [1] = 999999999999999999
            },
            [186] = {
                [1] = 999999999999999999
            },
            [187] = {
                [1] = 999999999999999999
            },
            [188] = {
                [1] = 999999999999999999
            },
            [189] = {
                [1] = 999999999999999999
            },
            [190] = {
                [1] = 999999999999999999
            },
            [191] = {
                [1] = 999999999999999999
            },
            [192] = {
                [1] = 999999999999999999
            },
            [193] = {
                [1] = 999999999999999999
            },
            [194] = {
                [1] = 999999999999999999
            },
            [195] = {
                [1] = 999999999999999999
            },
            [196] = {
                [1] = 999999999999999999
            },
            [197] = {
                [1] = 999999999999999999
            },
            [198] = {
                [1] = 999999999999999999
            },
            [199] = {
                [1] = 999999999999999999
            },
            [200] = {
                [1] = 999999999999999999
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
                task.wait(0.5)
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
