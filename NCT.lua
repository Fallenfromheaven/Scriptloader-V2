local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local remote
local remoteParentName

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
                        print("Found remote in: " .. remoteParentName)
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
            }
        }
    }
}

local autoMoney = false
local autoRebirth = false
local spamDelay = 0

local function spamRemote()
    while autoMoney do
        local dynamicRemote = getRemote()
        if dynamicRemote then
            dynamicRemote:FireServer(unpack(args))
        else
            print("Remote lost. Re-scanning...")
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
            [1] = workspace:WaitForChild("TycoonA")
        }
        ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Upgrades"):WaitForChild("ConfirmCheck"):FireServer(unpack(rebirthArgs))
        task.wait(spamDelay)
    end
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = CoreGui
ScreenGui.Name = "SpamToggleGui"

local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 250, 0, 160)
Frame.Position = UDim2.new(0.5, -125, 0.5, -80)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true  -- Ensures the entire frame is draggable
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
Header.Active = true
Header.Draggable = false  -- Ensures only the Frame is draggable, not just the header

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

local MoneyButton = Instance.new("TextButton")
MoneyButton.Parent = Frame
MoneyButton.Size = UDim2.new(0, 230, 0, 40)
MoneyButton.Position = UDim2.new(0.5, -115, 0, 40)
MoneyButton.Text = "Start Auto-Money"
MoneyButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)

local RebirthButton = Instance.new("TextButton")
RebirthButton.Parent = Frame
RebirthButton.Size = UDim2.new(0, 230, 0, 40)
RebirthButton.Position = UDim2.new(0.5, -115, 0, 90)
RebirthButton.Text = "Start Auto-Rebirthing"
RebirthButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)

MoneyButton.MouseButton1Click:Connect(function()
    autoMoney = not autoMoney
    MoneyButton.Text = autoMoney and "Stop Auto-Money" or "Start Auto-Money"
    MoneyButton.BackgroundColor3 = autoMoney and Color3.fromRGB(0, 200, 0) or Color3.fromRGB(200, 0, 0)
    if autoMoney then
        task.spawn(spamRemote)
    end
end)

RebirthButton.MouseButton1Click:Connect(function()
    autoRebirth = not autoRebirth
    RebirthButton.Text = autoRebirth and "Stop Auto-Rebirthing" or "Start Auto-Rebirthing"
    RebirthButton.BackgroundColor3 = autoRebirth and Color3.fromRGB(0, 200, 0) or Color3.fromRGB(200, 0, 0)
    if autoRebirth then
        task.spawn(spamRebirth)
    end
end)

print("Optimized GUI Toggle Loaded.")
