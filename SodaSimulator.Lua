local library = loadstring(game:HttpGet("https://pastebin.com/raw/PpMcEF8z", true))()
local example = library:CreateWindow({
  text = "Auto Stuff"
})
example:AddToggle("Auto Soda", function(state)
 _G.Auto = (state and true or false)
while _G.Auto == true do 
    wait()
require(game:GetService("ReplicatedStorage").Network):Fire("TryFizz")
end 
end)

example:AddToggle("Auto Sell", function(state)
_G.Sell = (state and true or false)
while _G.Sell == true do 
    wait()
require(game:GetService("ReplicatedStorage").Network):Fire("SellFizz")
end
end)

example:AddToggle("AutoCollect Loot", function(state)

_G.Loot = (state and true or false)
while _G.Loot == true do 
    wait()
for i,v in pairs(game:GetService("Workspace").Loots:GetDescendants()) do 
    if v.Name == "Hitbox" then 
        wait()
     v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end
    end
end
end)

example:AddToggle("AutoBuy Flav", function(state)
_G.AutoBuyFlav = (state and true or false)
while _G.AutoBuyFlav == true do 
    wait()
require(game:GetService("ReplicatedStorage").Network):Fire("UnlockMaxFlavors", 1e18)
end
end)

example:AddToggle("AutoBuy Bottle", function(state)
_G.Bottle = (state and true or false)
while _G.Bottle == true do 
    wait()
require(game:GetService("ReplicatedStorage").Network):Fire("UnlockMaxBottles", 1e18)
end
end)

example:AddToggle("Autobuy Jumps", function(state)
_G.Jumps = (state and true or false)
while _G.Jumps == true do 
    wait()
require(game:GetService("ReplicatedStorage").Network):Fire("UnlockMaxJumps", 1e18)
end
end)

example:AddToggle("Autobuy Gliders", function(state)
_G.Gliders = (state and true or false)
while _G.Gliders == true do 
    wait()
require(game:GetService("ReplicatedStorage").Network):Fire("UnlockMaxGliders", 1e18)
end
end)

local example = library:CreateWindow({
  text = "AutoBuy Eggs"
})

example:AddToggle("Basic Egg", function(state)
_G.Basic = (state and true or false)
while _G.Basic == true do 
	wait()
require(game:GetService("ReplicatedStorage").Network):Fire("BuyEgg", "Basic Egg")
end
end)

example:AddToggle("Spring Egg", function(state)
_G.Spring = (state and true or false)
while _G.Spring == true do 
	wait()
require(game:GetService("ReplicatedStorage").Network):Fire("BuyEgg", "Spring Egg")
end
end)

example:AddToggle("Water Egg", function(state)
_G.Water = (state and true or false)
while _G.Water == true do 
	wait()
require(game:GetService("ReplicatedStorage").Network):Fire("BuyEgg", "Water Egg")
end
end)

example:AddToggle("Skybridge Egg", function(state)
_G.Skybridge = (state and true or false)
while _G.Skybridge == true do 
	wait()
require(game:GetService("ReplicatedStorage").Network):Fire("BuyEgg", "Skybridge Egg")
end
end)

example:AddToggle("Mystic Egg", function(state)
_G.Mystic = (state and true or false)
while _G.Mystic == true do 
	wait()
require(game:GetService("ReplicatedStorage").Network):Fire("BuyEgg", "Mystic Egg")
end
end)

example:AddToggle("Lava Egg", function(state)
_G.Lava = (state and true or false)
while _G.Lava == true do 
	wait()
	require(game:GetService("ReplicatedStorage").Network):Fire("BuyEgg", "Lava Egg")
end
end)

example:AddToggle("Galaxy Egg", function(state)
_G.Galaxy = (state and true or false)
while _G.Galaxy == true do 
	wait()
require(game:GetService("ReplicatedStorage").Network):Fire("BuyEgg", "Galaxy Egg")
end
end)

example:AddToggle("Frosty Egg", function(state)
_G.Frosty = (state and true or false)
while _G.Frosty == true do 
	wait()
	require(game:GetService("ReplicatedStorage").Network):Fire("BuyEgg", "Frosty Egg")
end
end)

example:AddToggle("Bunny Egg", function(state)
_G.bunny = (state and true or false)
while _G.bunny == true do 
	wait()
	require(game:GetService("ReplicatedStorage").Network):Fire("BuyEgg", "Bunny Egg")
end
end)

example:AddToggle("Easter Basket", function(state)
_G.east = (state and true or false)
while _G.east == true do 
	wait()
	require(game:GetService("ReplicatedStorage").Network):Fire("BuyEgg", "Easter Basket")
end
end)

example:AddToggle("Easter Terror", function(state)
_G.ter = (state and true or false)
while _G.ter == true do 
	wait()
	require(game:GetService("ReplicatedStorage").Network):Fire("BuyEgg", "Easter Terror")
end
end)

local example = library:CreateWindow({
  text = "Auto Delete Pets"
})
example:AddToggle("Common", function(state)
_G.common = (state and true or false)
while _G.common == true do
wait()
local Raritys = {}
local Network = require(game:GetService("ReplicatedStorage").Network)

for _,Pet in pairs(require(game:GetService("ReplicatedStorage").PetIndex)) do
    if typeof(Pet) == "table" and Pet.Rarity  then
  for Stupid,Pet in pairs(require(game.Players.LocalPlayer.PlayerScripts.ClientLoader.EggService).Cache.Pets) do
                if Pet.ID then
                    local PetInfo = require(game:GetService("ReplicatedStorage").PetIndex)[Pet.ID]
                    if PetInfo.Rarity == "Common" then
                        Network:Fire("DeletePet",Stupid)
                    end
                end
            end
end
end
end
end)

example:AddToggle("Uncommon", function(state)
_G.ucommon = (state and true or false)
while _G.ucommon == true do
wait()
local Raritys = {}
local Network = require(game:GetService("ReplicatedStorage").Network)

for _,Pet in pairs(require(game:GetService("ReplicatedStorage").PetIndex)) do
    if typeof(Pet) == "table" and Pet.Rarity  then
  for Stupid,Pet in pairs(require(game.Players.LocalPlayer.PlayerScripts.ClientLoader.EggService).Cache.Pets) do
                if Pet.ID then
                    local PetInfo = require(game:GetService("ReplicatedStorage").PetIndex)[Pet.ID]
                    if PetInfo.Rarity == "Uncommon" then
                        Network:Fire("DeletePet",Stupid)
                    end
                end
            end
end
end
end
end)

example:AddToggle("Rare", function(state)
_G.rare = (state and true or false)
while _G.rare == true do
wait()
local Raritys = {}
local Network = require(game:GetService("ReplicatedStorage").Network)

for _,Pet in pairs(require(game:GetService("ReplicatedStorage").PetIndex)) do
    if typeof(Pet) == "table" and Pet.Rarity  then
  for Stupid,Pet in pairs(require(game.Players.LocalPlayer.PlayerScripts.ClientLoader.EggService).Cache.Pets) do
                if Pet.ID then
                    local PetInfo = require(game:GetService("ReplicatedStorage").PetIndex)[Pet.ID]
                    if PetInfo.Rarity == "Rare" then
                        Network:Fire("DeletePet",Stupid)
                    end
                end
            end
end
end
end
end)

example:AddToggle("Epic", function(state)
_G.epic = (state and true or false)
while _G.epic == true do
wait()
local Raritys = {}
local Network = require(game:GetService("ReplicatedStorage").Network)

for _,Pet in pairs(require(game:GetService("ReplicatedStorage").PetIndex)) do
    if typeof(Pet) == "table" and Pet.Rarity  then
  for Stupid,Pet in pairs(require(game.Players.LocalPlayer.PlayerScripts.ClientLoader.EggService).Cache.Pets) do
                if Pet.ID then
                    local PetInfo = require(game:GetService("ReplicatedStorage").PetIndex)[Pet.ID]
                    if PetInfo.Rarity == "Epic" then
                        Network:Fire("DeletePet",Stupid)
                    end
                end
            end
end
end
end
end)

example:AddToggle("Legendary", function(state)
_G.legen = (state and true or false)
while _G.legen == true do
wait()
local Raritys = {}
local Network = require(game:GetService("ReplicatedStorage").Network)

for _,Pet in pairs(require(game:GetService("ReplicatedStorage").PetIndex)) do
    if typeof(Pet) == "table" and Pet.Rarity  then
  for Stupid,Pet in pairs(require(game.Players.LocalPlayer.PlayerScripts.ClientLoader.EggService).Cache.Pets) do
                if Pet.ID then
                    local PetInfo = require(game:GetService("ReplicatedStorage").PetIndex)[Pet.ID]
                    if PetInfo.Rarity == "Legendary" then
                        Network:Fire("DeletePet",Stupid)
                    end
                end
            end
end
end
end
end)

example:AddToggle("Mythical", function(state)
_G.myth = (state and true or false)
while _G.myth == true do
wait()
local Raritys = {}
local Network = require(game:GetService("ReplicatedStorage").Network)

for _,Pet in pairs(require(game:GetService("ReplicatedStorage").PetIndex)) do
    if typeof(Pet) == "table" and Pet.Rarity  then
  for Stupid,Pet in pairs(require(game.Players.LocalPlayer.PlayerScripts.ClientLoader.EggService).Cache.Pets) do
                if Pet.ID then
                    local PetInfo = require(game:GetService("ReplicatedStorage").PetIndex)[Pet.ID]
                    if PetInfo.Rarity == "Mythical" then
                        Network:Fire("DeletePet",Stupid)
                    end
                end
            end
end
end
end
end)

example:AddToggle("Godly", function(state)
_G.god = (state and true or false)
while _G.god == true do
wait()
local Raritys = {}
local Network = require(game:GetService("ReplicatedStorage").Network)

for _,Pet in pairs(require(game:GetService("ReplicatedStorage").PetIndex)) do
    if typeof(Pet) == "table" and Pet.Rarity  then
  for Stupid,Pet in pairs(require(game.Players.LocalPlayer.PlayerScripts.ClientLoader.EggService).Cache.Pets) do
                if Pet.ID then
                    local PetInfo = require(game:GetService("ReplicatedStorage").PetIndex)[Pet.ID]
                    if PetInfo.Rarity == "Godly" then
                        Network:Fire("DeletePet",Stupid)
                    end
                end
            end
end
end
end
end)

local example = library:CreateWindow({
  text = "Misc"
})

example:AddButton("Less Popups", function()
game:GetService("Players").LocalPlayer.PlayerGui.ScreenFX.Enabled = false
end)

example:AddButton("Unlock Islands", function()
for i,v in pairs(game:GetService("Workspace").Map:GetDescendants()) do 
    if v.Name == "Unlock" then 
        wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
    end
    end
end)

example:AddButton("Instant Ranks", function()
local event = require(game:GetService("ReplicatedStorage").Network)
event:Fire("UnlockRank", 2)
event:Fire("UnlockRank", 3)
event:Fire("UnlockRank", 4)
event:Fire("UnlockRank", 5)
event:Fire("UnlockRank", 6)
event:Fire("UnlockRank", 7)
event:Fire("UnlockRank", 8)
event:Fire("UnlockRank", 9)
event:Fire("UnlockRank", 10)
event:Fire("UnlockRank", 11)
event:Fire("UnlockRank", 12)
end)

example:AddButton("Shiny Pets", function()
local Raritys = {}
local Network = require(game:GetService("ReplicatedStorage").Network)
for _,Pet in pairs(require(game:GetService("ReplicatedStorage").PetIndex)) do
    if typeof(Pet) == "table"  then
  for Stupid,Pet in pairs(require(game.Players.LocalPlayer.PlayerScripts.ClientLoader.EggService).Cache.Pets) do
                if Pet.ID then
Network:Fire("CombinePets",Stupid,{Stupid,Stupid,Stupid,Stupid,Stupid})
end
end
end
end
end)

example:AddLabel("Glider Speed");
example:AddBox("Enter A Value", function(object, focus)
  if focus then
game.Players.LocalPlayer.Backpack.Glider.Speed.Value = tonumber(object.Text) or 40
  end
end)
