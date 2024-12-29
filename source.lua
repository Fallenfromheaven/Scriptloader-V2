local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local placeId = game.PlaceId
local Players = game:GetService("Players")
local player  = Players.LocalPlayer
local UID     = player.UserId

local whitelisted_players = {
    [7638241013] = true,
    [7643960984] = true,
    [7655662062] = true,
    [6035836892] = true
}

local gamePlaceIDs = {
    ["Blox Fruits"] = {2753915549, 4442272183, 7449423635},
    -- ["Game2"] = {4567890123, 5678901234},
    -- ["Game3"] = {6789012345}
}

local function resolveGameNameByPlaceID(placeId)
    for gameName, placeIDs in pairs(gamePlaceIDs) do
        for _, id in ipairs(placeIDs) do
            if id == placeID then
                return gameName
            end
        end
    end
    return nil
end

local game = resolveGameNameByPlaceID(placeID)

local Window = Rayfield:CreateWindow({
   Name = "Scriptloader",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Der Ultimative Scriptloader :)",
   LoadingSubtitle = "by Fallen_from_heaven",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Scriptloader",
      FileName = "loader-data"
   }
})

local Universal = Window:CreateTab("Universal", 4483362458)

if whitelisted_players[UID] then
    local u_Section_1 = Universal:CreateSection("Zeke Hub")
    local u_Button_1 = Universal:CreateButton({
        Name = "Zeke Hub",
        Callback = function()
            script_key="NQsRcBXEQcjlzKnHblaTomNdtmafHNfa"
    		loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d416a9fb566c94cba596550ef09d256b.lua"))()
        end
    })
    local u_Toggle_1 = Universal:CreateToggle({
        Name = "Zeke Hub Auto-execute",
        CurrentValue = false,
        Flag = "u_toggle_1",
        Callback = function(Value)
            script_key="NQsRcBXEQcjlzKnHblaTomNdtmafHNfa"
    		loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d416a9fb566c94cba596550ef09d256b.lua"))()
        end
    })
    local u_Divider_1 = Universal:CreateDivider()
end

local u_Section_2 = Universal:CreateSection("Infinit Yield")
local u_Button_2 = Universal:CreateButton({
    Name = "Infinit Yield",
    Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end
})
local u_Toggle_2 = Universal:CreateToggle({
    Name = "Infinit Yield Auto-execute",
    CurrentValue = false,
    Flag = "u_toggle_2",
    Callback = function(Value)
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end
})
local u_Divider_2 = Universal:CreateDivider()

local u_Section_3 = Universal:CreateSection("Plutonium Hub")
local u_Button_3 = Universal:CreateButton({
    Name = "Plutonium Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/PawsThePaw/Plutonium.AA/refs/heads/main/Versions%202/V3.7.3.txt", true))()
    end
})
local u_Toggle_3 = Universal:CreateToggle({
    Name = "Plutonium Hub Auto-execute",
    CurrentValue = false,
    Flag = "u_toggle_3",
    Callback = function(Value)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/PawsThePaw/Plutonium.AA/refs/heads/main/Versions%202/V3.7.3.txt", true))()
    end
})
local u_Divider_3 = Universal:CreateDivider()

local u_Section_4 = Universal:CreateSection("Chat Bypass")
local u_Button_4 = Universal:CreateButton({
    Name = "Chat Bypass",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua",true))()
    end
})
local u_Toggle_4 = Universal:CreateToggle({
    Name = "Chat Bypass Auto-execute",
    CurrentValue = false,
    Flag = "u_toggle_4",
    Callback = function(Value)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua",true))()
    end
})
local u_Divider_4 = Universal:CreateDivider()

local u_Section_5 = Universal:CreateSection("Save Instance")
local u_Button_5 = Universal:CreateButton({
    Name = "Save Instance",
    Callback = function()
        local Params = {
        RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
        SSI = "saveinstance",
        }
        local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()
        local Options = {} -- Documentation here https://luau.github.io/UniversalSynSaveInstance/api/SynSaveInstance
        synsaveinstance(Options)
    end
})
local u_Toggle_5 = Universal:CreateToggle({
    Name = "Save Instance Auto-execute",
    CurrentValue = false,
    Flag = "u_toggle_5",
    Callback = function(Value)
        local Params = {
        RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
        SSI = "saveinstance",
        }
        local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()
        local Options = {} -- Documentation here https://luau.github.io/UniversalSynSaveInstance/api/SynSaveInstance
        synsaveinstance(Options)
    end
})
local u_Divider_5 = Universal:CreateDivider()

if game = "Blox Fruits" then

    local game1 = Window:CreateTab("Blox Fruits", 4483362458)

    local g1_Section_1 = game1:CreateSection("Quartyz Hub")
    local g1_Button_1 = game1:CreateButton({
        Name = "Quartyz Hub",
        Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
        end
        })
    local g1_Toggle_1 = game1:CreateToggle({
        Name = "Quartyz Hub Auto-execute",
        CurrentValue = false,
        Flag = "g1_toggle_1",
        Callback = function(Value)
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
        end
        })
    local g1_Divider_1 = game1:CreateDivider()

Rayfield:LoadConfiguration()
