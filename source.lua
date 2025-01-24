local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local placeId = game.PlaceId
local Players = game:GetService("Players")
local player  = Players.LocalPlayer
local UID     = player.UserId


local whitelisted_players = {
    [7638241013] = true,
    [7643960984] = true,
    [7655662062] = true,
    [6035836892] = true,
    [7812184164] = true,
    [4353073500] = true, 
}

local gamePlaceIDs = {
    ["Blox Fruits"]      = {2753915549, 4442272183, 7449423635},
    ["Break in 2"]       = {13864661000, 13864667823},
    ["Fisch"]            = {16732694052},
    ["Pets Go!"]         = {18901165922},
    ["NPC OR DIE!"]      = {11276071411},
    ["Murder Mystery 2"] = {142823291},
    ["Blade Ball"]       = {13772394625,14732610803,15131065025,15234596844,16331600459,15144787112,15264892126,16581637217,16581648071},
    ["Jujutsu Infinite"] = {10450270085,119359147980471,78904562518018,16379688837,16379684339,17677080566,17677081746}, -- should be all idk
    ["Slab Battles"]     = {6403373529}, -- maybe missing place ids idk
    ["Combat Warriors"]  = {4282985734, 11979315221, 9532476417, 16323991061, 18480127448, 18480122340}
}

local function resolveGameNameByPlaceID(placeId)
    for gameName, placeIDs in pairs(gamePlaceIDs) do
        for _, id in ipairs(placeIDs) do
            if id == placeId then
                return gameName
            end
        end
    end
    return nil
end

local game_name = resolveGameNameByPlaceID(placeId)

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
            if Rayfield.Flags["u_toggle_1"].CurrentValue then
                script_key="NQsRcBXEQcjlzKnHblaTomNdtmafHNfa"
    		    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d416a9fb566c94cba596550ef09d256b.lua"))()
            end
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
        if Rayfield.Flags["u_toggle_2"].CurrentValue then
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
        end
    end
})
local u_Divider_2 = Universal:CreateDivider()

local u_Section_3 = Universal:CreateSection("Plutonium Hub")
local u_Button_3 = Universal:CreateButton({
    Name = "Plutonium Hub",
    Callback = function()
        print"YOOOO"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/PawsThePaw/Plutonium.AA/refs/heads/main/Versions%202/V3.7.3.txt", true))()
    end
})
local u_Toggle_3 = Universal:CreateToggle({
    Name = "Plutonium Hub Auto-execute",
    CurrentValue = false,
    Flag = "u_toggle_3",
    Callback = function(Value)
        if Rayfield.Flags["u_toggle_3"].CurrentValue then
            print"hey am very cool yk"
            loadstring(game:HttpGet("https://raw.githubusercontent.com/PawsThePaw/Plutonium.AA/refs/heads/main/Versions%202/V3.7.3.txt", true))()
        end
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
        if Rayfield.Flags["u_toggle_4"].CurrentValue then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua",true))()
        end
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
        if Rayfield.Flags["u_toggle_5"].CurrentValue then
            local Params = {
            RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
            SSI = "saveinstance",
            }
            local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()
            local Options = {} -- Documentation here https://luau.github.io/UniversalSynSaveInstance/api/SynSaveInstance
            synsaveinstance(Options)
        end
    end
})
local u_Divider_5 = Universal:CreateDivider()

if game_name == "Blox Fruits" then

    local game1 = Window:CreateTab("Blox Fruits", 4483362458)

    local g1_Section_1 = game1:CreateSection("Quartyz Hub")
    local g1_Button_1 = game1:CreateButton({
        Name = "Quartyz Hub",
        Callback = function()
            loadstring(game:HttpGet"https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader")()
        end
        })
    local g1_Toggle_1 = game1:CreateToggle({
        Name = "Quartyz Hub Auto-execute",
        CurrentValue = false,
        Flag = "g1_toggle_1",
        Callback = function(Value)
            if Rayfield.Flags["g1_toggle_1"].CurrentValue then
                loadstring(game:HttpGet"https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader")()
            end
        end
        })
    local g1_Divider_1 = game1:CreateDivider()

    local g1_Section_2 = game1:CreateSection("Redz Hub")
    local g1_Button_2 = game1:CreateButton({
        Name = "Redz Hub",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
        end
        })
    local g1_Toggle_2 = game1:CreateToggle({
        Name = "Redz Hub Auto-execute",
        CurrentValue = false,
        Flag = "g1_toggle_2",
        Callback = function(Value)
            if Rayfield.Flags["g1_toggle_2"].CurrentValue then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
            end
        end
        })
    local g1_Divider_2 = game1:CreateDivider()
end

if game_name == "Break in 2" then

    local game2 = Window:CreateTab("Break in 2", 4483362458)

    local g2_Section_1 = game2:CreateSection("Breaking Blitz")
    local g2_Button_1 = game2:CreateButton({
        Name = "Breaking Blitz",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/RScriptz/RobloxScripts/main/BreakIn2.lua"))()
        end
        })
    local g2_Toggle_1 = game2:CreateToggle({
        Name = "Breaking Blitz Auto-execute",
        CurrentValue = false,
        Flag = "g2_toggle_1",
        Callback = function(Value)
            if Rayfield.Flags["g2_toggle_1"].CurrentValue then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/RScriptz/RobloxScripts/main/BreakIn2.lua"))()
            end
        end
        })
    local g2_Divider_1 = game2:CreateDivider()
end

if game_name == "Fisch" then

    local game3 = Window:CreateTab("Fisch", 4483362458)

    local g3_Section_1 = game3:CreateSection("Spectrum Hub")
    local g3_Button_1 = game3:CreateButton({
        Name = "Spectrum Hub",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/xZPUHigh/Spectrum-Cloud/main/Loader.lua'))()
        end
        })
    local g3_Toggle_1 = game3:CreateToggle({
        Name = "Spectrum Hub Auto-execute",
        CurrentValue = false,
        Flag = "g3_toggle_1",
        Callback = function(Value)
            if Rayfield.Flags["g3_toggle_1"].CurrentValue then
                loadstring(game:HttpGet('https://raw.githubusercontent.com/xZPUHigh/Spectrum-Cloud/main/Loader.lua'))()
            end
        end
        })
    local g3_Divider_1 = game3:CreateDivider()

    if whitelisted_players[UID] then
        local g3_Section_2 = game3:CreateSection("Flow")
        local g3_Button_2 = game3:CreateButton({
            Name = "Flow",
            Callback = function()
                script_key="sYpQSjImhYYNzIWKDEruPFVRUAlixnXc";
                loadstring(game:HttpGet("https://api.flow-hub.xyz/loader"))()
            end
            })
        local g3_Toggle_2 = game3:CreateToggle({
            Name = "Flow Auto-execute",
            CurrentValue = false,
            Flag = "g3_toggle_2",
            Callback = function(Value)
                if Rayfield.Flags["g3_toggle_2"].CurrentValue then
                    script_key="sYpQSjImhYYNzIWKDEruPFVRUAlixnXc";
                    loadstring(game:HttpGet("https://api.flow-hub.xyz/loader"))()
                end
            end
            })
        local g3_Divider_2 = game3:CreateDivider()
    end
end

if game_name == "Pets Go!" then

    local game4 = Window:CreateTab("Pets Go!", 4483362458)

    local g4_Section_1 = game4:CreateSection("Banana Hub")
    local g4_Button_1 = game4:CreateButton({
        Name = "Banana Hub",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/diepedyt/bui/refs/heads/main/BananaHubLoader.lua"))()
        end
        })
    local g4_Toggle_1 = game4:CreateToggle({
        Name = "Banana Hub Auto-execute",
        CurrentValue = false,
        Flag = "g4_toggle_1",
        Callback = function(Value)
            if Rayfield.Flags["g4_toggle_1"].CurrentValue then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/diepedyt/bui/refs/heads/main/BananaHubLoader.lua"))()
            end
        end
        })
    local g4_Divider_1 = game4:CreateDivider()
end

if game_name == "NPC OR DIE!" then

    local game5 = Window:CreateTab("NPC OR DIE!", 4483362458)

    local g5_Section_1 = game5:CreateSection("Arceusx Hub")
    local g5_Button_1 = game5:CreateButton({
        Name = "Arceusx Hub",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/BeNpcOrDie"))("t.me/arceusxscripts")
        end
        })
    local g5_Toggle_1 = game5:CreateToggle({
        Name = "Arceusx Hub Auto-execute",
        CurrentValue = false,
        Flag = "g5_toggle_1",
        Callback = function(Value)
            if Rayfield.Flags["g5_toggle_1"].CurrentValue then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/BeNpcOrDie"))("t.me/arceusxscripts")
            end
        end
        })
    local g5_Divider_1 = game5:CreateDivider()
end

if game_name == "Murder Mystery 2" then

    local game6 = Window:CreateTab("Murder Mystery 2", 4483362458)

    local g6_Section_1 = game6:CreateSection("Nexus Hub")
    local g6_Button_1 = game6:CreateButton({
        Name = "Nexus Hub",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/s-o-a-b/nexus/main/loadstring"))()
        end
        })
    local g6_Toggle_1 = game6:CreateToggle({
        Name = "Nexus Hub Auto-execute",
        CurrentValue = false,
        Flag = "g6_toggle_1",
        Callback = function(Value)
            if Rayfield.Flags["g6_toggle_1"].CurrentValue then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/s-o-a-b/nexus/main/loadstring"))()
            end
        end
        })
    local g6_Divider_1 = game6:CreateDivider()
end

if game_name == "Blade Ball" then

    local game7 = Window:CreateTab("Blade Ball", 4483362458)

    if whitelisted_players[UID] then
        local g7_Section_1 = game7:CreateSection("Byte - 2025")
        local g7_Button_1 = game7:CreateButton({
            Name = "Byte - 2025",
            Callback = function()
                script_key="XNxoqoSCOcRYAsjkGCtlokBSpmAmmvtg";
                loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/9f4f1b58db2ea0c9da9ec077e56c57ea.lua"))()
            end
            })
        local g7_Toggle_1 = game7:CreateToggle({
            Name = "Byte - 2025 Auto-execute",
            CurrentValue = false,
            Flag = "g7_toggle_1",
            Callback = function(Value)
                if Rayfield.Flags["g7_toggle_1"].CurrentValue then
                    script_key="XNxoqoSCOcRYAsjkGCtlokBSpmAmmvtg";
                    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/9f4f1b58db2ea0c9da9ec077e56c57ea.lua"))()
                end
            end
            })
        local g7_Divider_1 = game7:CreateDivider()
    end
end

if game_name == "Jujutsu Infinite" then

    local game8 = Window:CreateTab("Jujutsu Infinite", 4483362458)

    if whitelisted_players[UID] then
        local g8_Section_1 = game8:CreateSection("Lyoris")
        local g8_Button_1 = game8:CreateButton({
            Name = "Lycoris",
            Callback = function()
                script_key="yZEepBBCVYQQiPNiQXONXMbaTOMLRvtQ";
                loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/9c1ecb61da02bfd33c5bc251f6a32d1e.lua"))()
            end
            })
        local g8_Divider_1 = game8:CreateDivider()
    end

    if whitelisted_players[UID] then
        local g8_Section_2 = game8:CreateSection("Vexium Hub")
        local g8_Button_2 = game8:CreateButton({
            Name = "Vexium Hub",
            Callback = function()
                script_key="ZRLDelGwrpBVydXSMJQdjAkzGwFvSqcH";
                loadstring(game:HttpGet("https://raw.githubusercontent.com/VexiumInternal/VexiumHub/main/Loader"))()
            end
            })
        local g8_Toggle_1 = game8:CreateToggle({
            Name = "Vexium Hub (turn off in auto boss / inves ) Auto-execute",
            CurrentValue = false,
            Flag = "g8_toggle_1",
            Callback = function(Value)
                if Rayfield.Flags["g8_toggle_1"].CurrentValue then
                    script_key="ZRLDelGwrpBVydXSMJQdjAkzGwFvSqcH";
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/VexiumInternal/VexiumHub/main/Loader"))()
                end
            end
            })
        local g8_Divider_2 = game8:CreateDivider()
    end
end

if game_name == "Slab Battles" then

    local game9 = Window:CreateTab("Slab Battles", 4483362458)

    local g9_Section_1 = game9:CreateSection("Forge Hub")
    local g9_Button_1 = game9:CreateButton({
        Name = "Forge Hub",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
        end
        })
    local g9_Toggle_1 = game9:CreateToggle({
        Name = "Forge Hub Auto-execute",
        CurrentValue = false,
        Flag = "g9_toggle_1",
        Callback = function(Value)
            if Rayfield.Flags["g9_toggle_1"].CurrentValue then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
            end
        end
        })
    local g9_Divider_1 = game9:CreateDivider()
end

if game_name == "Combat Warriors" then

    local game10 = Window:CreateTab("Combat Warriors", 4483362458)

    local g10_Section_1 = game10:CreateSection("Stratos Hub")
    local g10_Button_1 = game10:CreateButton({
        Name = "Stratos Hub",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/HeroReaII/asda213/refs/heads/main/uhmwhatthesigma.lua"))()
        end
        })
    local g10_Toggle_1 = game10:CreateToggle({
        Name = "Stratos Hub Auto-execute",
        CurrentValue = false,
        Flag = "g10_toggle_1",
        Callback = function(Value)
            if Rayfield.Flags["g10_toggle_1"].CurrentValue then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/HeroReaII/asda213/refs/heads/main/uhmwhatthesigma.lua"))()
            end
        end
        })
    local g10_Divider_1 = game9:CreateDivider()
end

local settings_ = Window:CreateTab("Settings", 4483362458)

local s_Section_1 = settings_:CreateSection("Settings")
local s_Button_1 = settings_:CreateButton({
    Name = "Destroy GUI",
    Callback = function()
        Rayfield:Destroy()
    end
    })
local s_Toggle_1 = settings_:CreateToggle({
    Name = "Queue on Teleport",
    CurrentValue = false,
    Flag = "s_toggle_1",
    Callback = function(Value)
        if Rayfield.Flags["s_toggle_1"].CurrentValue then
            queue_on_teleport("task.wait(15)loadstring(game:HttpGet('https://raw.githubusercontent.com/Fallenfromheaven/Scriptloader-V2/refs/heads/main/source.lua'))()")
        end
    end
    })
local s_Divider_1 = settings_:CreateDivider()

Rayfield:LoadConfiguration()
