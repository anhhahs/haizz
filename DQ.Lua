--[[

I am reworking this script, so i suggest you join my discord server where i will post the new and reworked script once im done with it.
Discord server: https://discord.gg/BZjz2gw

]]--





local hom = "cool"

local dun = _G.shit.moarshit.CustomDungeon
local diff = _G.shit.Difficulty
local hard = _G.shit.Hardcore
local remotes = game:service('ReplicatedStorage'):WaitForChild("remotes")
local startergui = game:GetService("StarterGui")
startergui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
startergui:SetCore("TopbarEnabled", false) 
local nosee = coroutine.wrap(function()
    while wait() do
        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("playerStatus") and game.workspace:FindFirstChild(game.Players.LocalPlayer.Name) and _G.shit.Name_Protect then
            if game.workspace[game.Players.LocalPlayer.Name]:FindFirstChild("playerNameplate") then
                game.workspace[game.Players.LocalPlayer.Name].playerNameplate:Destroy()
            end
            local frame = game.Players.LocalPlayer.PlayerGui.playerStatus.Frame
            frame.playerName.Text = _G.shit.namesettings.CustomName
            frame.levelBorder.level.Text = _G.shit.namesettings.CustomLevel
            frame.xpFrame.xp.Text = _G.shit.namesettings.CustomExp
            frame.healthFrame.health.Text = _G.shit.namesettings.CustomHp
            frame.moneyMain.TextLabel.Text = _G.shit.namesettings.CustomMoney
            frame.portraitBorder.portrait.Image = _G.shit.namesettings.CustomImage
    end
end
end)
nosee()
if game.PlaceId == 2414851778 then
    remotes.loadPlayerCharacter:FireServer()
    repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("inventory") ~= nil 
    repeat wait() until game.Players.LocalPlayer.PlayerGui.inventory.mainBackground.innerBackground.rightSideFrame.ScrollingFrame:FindFirstChild("UIGridLayout")
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if _G.idk.GetDaily then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").dailyRewardTouchPart.CFrame
    end
if _G.idk.autopoints.Enabled then
local skillpoints = string.match(game:GetService("Players").LocalPlayer.PlayerGui.inventory.mainBackground.innerBackground.leftSideStats.skillPoints.Text, "%d+")
    for i=1,tonumber(skillpoints) do
        game:GetService("ReplicatedStorage").remotes.spendSkillPoint:FireServer(_G.idk.autopoints.Point)
    end
end
end
if game.PlaceId == 2414851778 and _G.shit.Enabled then
remotes.loadPlayerCharacter:FireServer()
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("inventory") ~= nil 
repeat wait() until game.Players.LocalPlayer.PlayerGui.inventory.mainBackground.innerBackground.rightSideFrame.ScrollingFrame:FindFirstChild("UIGridLayout")
common = "0.596078, 0.596078, 0.596078"
uncommon = "0.356863, 0.760784, 0.313726"
rare = "0.294118, 0.301961, 0.764706"
epic = "0.572549, 0.27451, 0.623529"
legendary = "0.956863, 0.603922, 0.0352941"
local sell_wep = {}
local sell_chest = {}
local sell_helmet = {}
local sell_ability = {}
local val1 = game.Players.LocalPlayer.PlayerGui.inventory.mainBackground.innerBackground.leftSideFrame.qAbility.itemType.uniqueItemNum.Value
local val2 = game.Players.LocalPlayer.PlayerGui.inventory.mainBackground.innerBackground.leftSideFrame.eAbility.itemType.uniqueItemNum.Value
for i,v in pairs(game.Players.LocalPlayer.PlayerGui.inventory.mainBackground.innerBackground.rightSideFrame.ScrollingFrame:GetChildren()) do
    if v:IsA("ImageLabel") then
    if _G.test.Common and tostring(v.ImageColor3) == common and v.itemType.uniqueItemNum.Value ~= val1 and val2 then
        if v.itemType.Value == "weapon" then
        table.insert(sell_wep, v.itemType.uniqueItemNum.Value)
        end
        if v.itemType.Value == "chest" then
        table.insert(sell_chest, v.itemType.uniqueItemNum.Value)
        end
        if v.itemType.Value == "helmet" then
        table.insert(sell_helmet, v.itemType.uniqueItemNum.Value)
        end
    end
    if _G.test.Uncommon and tostring(v.ImageColor3) == uncommon and v.itemType.uniqueItemNum.Value ~= val1 and val2 then
        if v.itemType.Value == "weapon" then
        table.insert(sell_wep, v.itemType.uniqueItemNum.Value)
        end
        if v.itemType.Value == "chest" then
        table.insert(sell_chest, v.itemType.uniqueItemNum.Value)
        end
        if v.itemType.Value == "helmet" then
        table.insert(sell_helmet, v.itemType.uniqueItemNum.Value)
        end
    end
    if _G.test.Rare and tostring(v.ImageColor3) == rare and v.itemType.uniqueItemNum.Value ~= val1 and val2 then
        if v.itemType.Value == "weapon" then
        table.insert(sell_wep, v.itemType.uniqueItemNum.Value)
        end
        if v.itemType.Value == "chest" then
        table.insert(sell_chest, v.itemType.uniqueItemNum.Value)
        end
        if v.itemType.Value == "helmet" then
        table.insert(sell_helmet, v.itemType.uniqueItemNum.Value)
        end
    end
    if _G.test.Epic and tostring(v.ImageColor3) == epic and v.itemType.uniqueItemNum.Value ~= val1 and val2 then
        if v.itemType.Value == "weapon" then
        table.insert(sell_wep, v.itemType.uniqueItemNum.Value)
        end
        if v.itemType.Value == "chest" then
        table.insert(sell_chest, v.itemType.uniqueItemNum.Value)
        end
        if v.itemType.Value == "helmet" then
        table.insert(sell_helmet, v.itemType.uniqueItemNum.Value)
        end
        if v.itemType.Value == "ability" then
        table.insert(sell_ability, v.itemType.uniqueItemNum.Value)
        end
    end
    if _G.test.Legendary and tostring(v.ImageColor3) == legendary and v.itemType.uniqueItemNum.Value ~= val1 and val2 then
        if v.itemType.Value == "weapon" then
        table.insert(sell_wep, v.itemType.uniqueItemNum.Value)
        end
        if v.itemType.Value == "chest" then
        table.insert(sell_chest, v.itemType.uniqueItemNum.Value)
        end
        if v.itemType.Value == "helmet" then
        table.insert(sell_helmet, v.itemType.uniqueItemNum.Value)
        end
    end
end
end
game:GetService("ReplicatedStorage").remotes.sellItemEvent:FireServer({["ability"] = sell_ability, ["helmet"] = sell_helmet, ["chest"] = sell_chest, ["weapon"] = sell_wep})
if not _G.shit.AutoDungeon and _G.shit.moarshit.Enabled then
remotes.createLobby:InvokeServer(dun, diff, 0, hard, true, false)
elseif _G.shit.AutoDungeon and _G.shit.Enabled then
    remotes.createLobby:InvokeServer("Orbital Outpost", "Nightmare", 0, hard, true, false)
    remotes.createLobby:InvokeServer("Orbital Outpost", "Insane", 0, hard, true, false) 
    remotes.createLobby:InvokeServer("Steampunk Sewers", "Nightmare", 0, hard, true, false)  
    remotes.createLobby:InvokeServer("Steampunk Sewers", "Insane", 0, hard, true, false)
    remotes.createLobby:InvokeServer("Ghastly Harbor", "Nightmare", 0, true, false, false) 
    remotes.createLobby:InvokeServer("Ghastly Harbor", "Insane", 0, true, false, false)
    remotes.createLobby:InvokeServer("The Canals", "Nightmare", 0, hard, true, false)
    remotes.createLobby:InvokeServer("The Canals", "Insane", 0, hard, true, false)
    remotes.createLobby:InvokeServer("Samurai Palace", "Nightmare", 0, hard, true, false)
    remotes.createLobby:InvokeServer("Samurai Palace", "Insane", 0, hard, true, false)
    remotes.createLobby:InvokeServer("The Underworld", "Nightmare", 0, hard, true, false)
    remotes.createLobby:InvokeServer("The Underworld", "Insane", 0, hard, true, false)
    remotes.createLobby:InvokeServer("King's Castle", "Nightmare", 0, hard, true, false)
    remotes.createLobby:InvokeServer("King's Castle", "Insane", 0, hard, true, false)
    remotes.createLobby:InvokeServer("Pirate Island", "Nightmare", 0, hard, true, false)
    remotes.createLobby:InvokeServer("Pirate Island", "Insane", 0, hard, true, false)
    remotes.createLobby:InvokeServer("Winter Outpost", "Nightmare", 0, hard, true, false)
    remotes.createLobby:InvokeServer("Winter Outpost", "Insane", 0, hard, true, false) 
    remotes.createLobby:InvokeServer("Winter Outpost", "Hard", 0, hard, true, false)
    remotes.createLobby:InvokeServer("Winter Outpost", "Medium", 0, hard, true, false)
    remotes.createLobby:InvokeServer("Winter Outpost", "Easy", 0, hard, true, false)
    remotes.createLobby:InvokeServer("Desert Temple", "Nightmare", 0, hard, true, false)
    remotes.createLobby:InvokeServer("Desert Temple", "Insane", 0, hard, true, false)     
    remotes.createLobby:InvokeServer("Desert Temple", "Hard", 0, hard, true, false)    
    remotes.createLobby:InvokeServer("Desert Temple", "Medium", 0, hard, true, false)
    remotes.createLobby:InvokeServer("Desert Temple", "Easy", 0, hard, true, false)
end
remotes.startDungeon:FireServer()
end
if game.PlaceId ~= 2414851778 and _G.shit.Enabled then
repeat wait() until game.Players.LocalPlayer.Character ~= nil
wait(1.5)
local attack = coroutine.wrap(function()
remotes.equipItem:InvokeServer(unpack{"ability", game.Players.LocalPlayer.PlayerGui.inventory.mainBackground.innerBackground.leftSideFrame.qAbility.itemType.uniqueItemNum.Value, "w"})
remotes.equipItem:InvokeServer(unpack{"ability", game.Players.LocalPlayer.PlayerGui.inventory.mainBackground.innerBackground.leftSideFrame.eAbility.itemType.uniqueItemNum.Value, "w"})
while wait() do
game:GetService("Players").LocalPlayer.PlayerGui.alertBox.Frame.Visible = false
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        v:FindFirstChildWhichIsA("RemoteEvent"):FireServer()
    end
end
end
end)
attack()
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("inventory") ~= nil
remotes.changeStartValue:FireServer()
local fuckoff = coroutine.wrap(function()
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
        if string.find(v.Name:lower(), "leg") or v.Name == "LowerTorso" then 
            v:Destroy()
        end
    end
end)
fuckoff()
game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end)
local ok = 28
local ok1 = 0
local ok2 = 0
if game.PlaceId == 4628698373 then
while wait() do
local hum = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
for i,v in pairs(game:GetService("Workspace").dungeon:GetChildren()) do
    if v:FindFirstChild("enemyFolder") then 
        for i,x in pairs(v.enemyFolder:GetChildren()) do 
            if x:FindFirstChild("HumanoidRootPart") and x:FindFirstChild("Humanoid") then
                --if v:FindFirstChild("enemyFolder"):FindFirstChild("Electric Tower") then
                    --if v:FindFirstChild("enemyFolder"):FindFirstChild("Electric Tower"):FindFirstChild("HumanoidRootPart") then
                --hum.CFrame = v:FindFirstChild("enemyFolder"):FindFirstChild("Electric Tower").HumanoidRootPart.CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(ok1,ok,ok2)
                --end
            --else
            hum.CFrame = x.HumanoidRootPart.CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(ok1,ok,ok2)
            x.Humanoid.Health = 0
     end
end
end
end
end
end
if game.PlaceId == 4113459044 then
game.workspace.ChildAdded:connect(function(attack)
    if attack.Name == "rangeMobShot" then
        ok1 = 40
        wait(2)
        ok1 = 0
    end
end)
while wait() do
local hum = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
for i,v in pairs(game:GetService("Workspace").dungeon:GetChildren()) do
    if v:FindFirstChild("enemyFolder") then
        for i,x in pairs(v.enemyFolder:GetChildren()) do
            if x:FindFirstChild("HumanoidRootPart") and x:FindFirstChild("Humanoid") and x:FindFirstChild("enemyNameplate") then
                if x.Name == "Spinner Bot" or x.Name == "Hammer Bot" then
                    hum.CFrame = x.HumanoidRootPart.CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(ok1,ok,ok2)
                    x.Humanoid.Health = 0
                end
                if x:FindFirstChildWhichIsA("Accessory") then
                    hum.CFrame = x.HumanoidRootPart.CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(ok1,ok,ok2)
                    x.Humanoid.Health = 0
                elseif x.Name == "Cyclops Siege Bot" or x.Name == "Cannon Blaster 2000" then
                    wait(1)
                    hum.CFrame = x.HumanoidRootPart.CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(ok1,ok,ok2)
                end
            end
        end
    end
end
end
end
if game.placeId == 3737465474 then
game.workspace.ChildAdded:connect(function(attack)
if attack.Name == "riflemanShot" then
    ok1 = 30
    ok = 108
    wait(2)
    ok1 = 0
ok = 28
end
end)
while wait() do 
    for i,v in pairs(game:GetService("Workspace").dungeon:GetChildren()) do
    --if not v:FindFirstChild("barrier") then
    local hum = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        for i,z in pairs(game:GetService("Workspace").dungeon:GetChildren()) do
            if z:FindFirstChild("enemyFolder") then
                for i,x in pairs(z.enemyFolder:GetChildren()) do
                    if x:IsA("Model") and x:FindFirstChild("HumanoidRootPart") and x:FindFirstChild("Humanoid") and x:FindFirstChild("enemyNameplate") then
                    --if x:FindFirstChildWhichIsA("Accessory") then
                        hum.CFrame = x.HumanoidRootPart.CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(ok1,ok,ok2)
                    --elseif x.Name == "The Kraken" or x.Name == "Sea Serpent" or x.Name == "Cannon Crab" then
                        --wait(1)
                            --hum.CFrame = x.HumanoidRootPart.CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(ok1,ok,ok2)
                        --end
                    end
                end
            end
        end
      end
    --end
    end
end
if game.placeId == 3488584454 then
while wait() do
local hum = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
for i,v in pairs(game:GetService("Workspace").dungeon:GetChildren()) do
    if v:FindFirstChild("enemyFolder") then
        for i,x in pairs(v.enemyFolder:GetChildren()) do
            if x:FindFirstChild("HumanoidRootPart") and x:FindFirstChild("Humanoid") and x:FindFirstChild("enemyNameplate") then
                if x:FindFirstChildWhichIsA("Accessory") then
                    hum.CFrame = x.HumanoidRootPart.CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(ok1,ok,ok2)
                    x.Humanoid.Health = 0
            end
        end
    end
end
end
end
end
if game.placeId == 3277965370 then
while wait() do 
    for i,v in pairs(game:GetService("Workspace").dungeon:GetChildren()) do
    --if not v:FindFirstChild("barrier") then
    local hum = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        for i,z in pairs(game:GetService("Workspace").dungeon:GetChildren()) do
            if z:FindFirstChild("enemyFolder") then
                for i,x in pairs(z.enemyFolder:GetChildren()) do
                    if x:IsA("Model") and x:FindFirstChild("HumanoidRootPart") and x:FindFirstChild("Humanoid") and x:FindFirstChild("enemyNameplate") then
                    if x:FindFirstChildWhichIsA("Accessory") then
                            hum.CFrame = x.HumanoidRootPart.CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(ok1,ok,ok2)
                            x.Humanoid.Health = 0
                    elseif x.Name == "Ancient Golem Guardian" then
                        wait(1)
                           hum.CFrame = x.HumanoidRootPart.CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(ok1,ok,ok2)
                        end
                    end
                end
            end
        end
      end
    --end
    end
end
if game.placeId == 3119903031 then
while wait() do 
    for i,v in pairs(game:GetService("Workspace").dungeon:GetChildren()) do
    --if not v:FindFirstChild("barrier") then
    local hum = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        for i,z in pairs(game:GetService("Workspace").dungeon:GetChildren()) do
            if z:FindFirstChild("enemyFolder") then
                for i,x in pairs(z.enemyFolder:GetChildren()) do
                    if x:IsA("Model") and x:FindFirstChild("HumanoidRootPart") and x:FindFirstChild("Humanoid") and x:FindFirstChild("enemyNameplate") then
                        if x:FindFirstChildWhichIsA("Accessory") then
                            hum.CFrame = x.HumanoidRootPart.CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(ok1,ok,ok2)
                            x.Humanoid.Health = 0
                        elseif x.Name == "Demonic Overgrowth" or x.Name == "Kolvumar" or x.Name == "Demon Lord Azrallik" then
                            wait(1)
                            hum.CFrame = x.HumanoidRootPart.CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(ok1,ok,ok2)
                        end
                    end
                end
            end
        end
      end
    --end
    end
end
--save
if game.placeId == 3041739550 then
 while wait() do 
    for i,v in pairs(game:GetService("Workspace").dungeon:GetChildren()) do
    local hum = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        for i,z in pairs(game:GetService("Workspace").dungeon:GetChildren()) do
            if z:FindFirstChild("enemyFolder") then
                for i,x in pairs(z.enemyFolder:GetChildren()) do
                    if x:IsA("Model") and x:FindFirstChild("HumanoidRootPart") and x:FindFirstChild("Humanoid") then
                        if x:FindFirstChildWhichIsA("Accessory") then
                            if x:FindFirstChildWhichIsA("Accessory"):FindFirstChildWhichIsA("Script") then
                                hum.CFrame = x.HumanoidRootPart.CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(ok1,ok,ok2)
                                x.Humanoid.Health = 0
                            elseif x.Name == "Hitman" or x.Name == "Elementalist" then
                                wait(1)
                                hum.CFrame = x.HumanoidRootPart.CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(ok1,ok,ok2)
                            end
                        end
                    end
                end
            end
        end
        end
    end
end
if game.placeId == 2988891534 then
local squigga = 300
game.workspace.ChildAdded:connect(function(attack)
    print(attack)
    if attack.Name == "gank" or attack.Name == "aoeSwipe" then
        warn("attack by boss, dodging")
        ok = 50
        wait(2)
        ok = 20
    elseif attack.Name == "spiritStrike" then
        warn("Spirit")
        ok = 100
        ok1 = math.random(10, 100)
        wait(1.2)
        ok = 20
        ok1 = 0
    end
end)
while wait() do 
    for i,v in pairs(game:GetService("Workspace").dungeon:GetChildren()) do
    local hum = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        for i,z in pairs(game:GetService("Workspace").dungeon:GetChildren()) do
            if z:FindFirstChild("enemyFolder") then
                for i,x in pairs(z.enemyFolder:GetChildren()) do
                    if x:IsA("Model") and x:FindFirstChild("HumanoidRootPart") and x:FindFirstChild("Humanoid") then
                        if x:FindFirstChildWhichIsA("Accessory") then
                                hum.CFrame = x.HumanoidRootPart.CFrame * CFrame.fromOrientation(squigga,0,0) + Vector3.new(ok1,ok,ok2)
                                x.Humanoid.Health = 0
                            elseif x.Name == "Spider Queen" then
                            wait(1)
                            hum.CFrame = x.HumanoidRootPart.CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(ok1,ok,ok2)
                            elseif x.Name == "Demonic Pirate Captain" then
                            squigga = 300
                            ok = 20
                        end
                    end
                end
            end
        end
        end
    end
end
if game.placeId == 2743806150 then
while wait() do 
    for i,v in pairs(game:GetService("Workspace").dungeon:GetChildren()) do
    local hum = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        for i,z in pairs(game:GetService("Workspace").dungeon:GetChildren()) do
            if z:FindFirstChild("enemyFolder") then
                for i,x in pairs(z.enemyFolder:GetChildren()) do
                    if x:IsA("Model") and x:FindFirstChild("HumanoidRootPart") and x:FindFirstChild("Humanoid") then
                        if x:FindFirstChildWhichIsA("Accessory") then
                                hum.CFrame = x.HumanoidRootPart.CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(ok1,ok,ok2)
                                x.Humanoid.Health = 0
                            elseif x.Name == "Ice Elemental" then
                            wait(1)
                            hum.CFrame = x.HumanoidRootPart.CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(ok1,ok,ok2)
                        end
                    end
                end
            end
        end
        end
    end
end
if game.placeId == 2606294912 then
while wait() do 
    for i,v in pairs(game:GetService("Workspace").dungeon:GetChildren()) do
    local hum = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        for i,z in pairs(game:GetService("Workspace").dungeon:GetChildren()) do
            if z:FindFirstChild("enemyFolder") then
                for i,x in pairs(z.enemyFolder:GetChildren()) do
                    if x:IsA("Model") and x:FindFirstChild("HumanoidRootPart") and x:FindFirstChild("Humanoid") then
                        hum.CFrame = x.HumanoidRootPart.CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(ok1,ok,ok2)
                        x.Humanoid.Health = 0
                    end
                end
            end
        end
        end
    end
end
end
if _G.shit.Enabled == false and _G.Raid.Enabled then
local what = 0
local ok = -400
local ok1 = 0
local ok2 = 3
local math = math.random(500, 1000)
local remotes = game:service('ReplicatedStorage'):WaitForChild("remotes")
if game.PlaceId == 2414851778 then
remotes.loadPlayerCharacter:FireServer()
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("inventory") ~= nil
local enab = _G.Raid.Enabled
local auto = _G.Raid.Auto
local key = _G.Raid.Tier
if enab then
if auto then 
key = 0
wait(2)
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.inventory.mainBackground.innerBackground.keysFrameBorder.keysFrameInner.ScrollingFrame:GetChildren()) do
	if v.Name == "keyFrame" then
		key = key+1
	end
end
wait(2)
elseif auto == false then 
key = key
end
print("Enabled = " .. tostring(enab))
print("Auto = " .. tostring(auto))
print("key = " .. key)
remotes.createBossLobby:InvokeServer(key, true, 0)
remotes.startDungeon:FireServer()
remotes.startBossRaid:FireServer()
end
end
if game.PlaceId ~= 2414851778 and _G.Raid.Enabled then
prenis = false
local wait_time = _G.Raid.wait_time
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("inventory") ~= nil
local spellidq = game.Players.LocalPlayer.PlayerGui.inventory.mainBackground.innerBackground.leftSideFrame.qAbility.itemType.uniqueItemNum.Value
game.ReplicatedStorage.remotes.equipItem:InvokeServer(unpack{"ability", spellidq, "f"})
game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
if not _G.atc then
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
      if v:IsA("Tool") then
        v:FindFirstChildWhichIsA("RemoteEvent"):FireServer()
	  end
    end
  end
end)
wait(wait_time)
remotes.readyUp:FireServer()
local test = 0
workspace.ChildAdded:connect(function(attack)
for i,z in pairs(game.workspace.enemies:GetChildren()) do
  repeat wait() until z ~= nil
  if z.Name == 'Gilded Dragon' then
    test = -300  
  elseif z.Name == 'Earth Goldem' then
    test = -300
end
 if z ~= nil then --ik this is bad coding but im noth botherd enoughh 2 make it work better :weary:
 if attack.Name == "secondBossHorizontalBeam" and z.Name == 'Golden Golem' then 
  test = -300
  ok2 = -20
  ok = 0
  wait(5)
  test = -300
  ok2 = -20
  ok = 0
  elseif attack.Name == "secondBossShootPlayer" and z.Name == 'Golden Golem' then
  warn("we be getting shot at lOl (secondBossShootPlayer Goldem Golem)")
  _G.atc = true
  test = 300
  ok1 = -30
  ok = 0
  wait(3)
  _G.atc = false
  test = -300
  ok1 = 0
  ok2 = -20
  ok = 0
  elseif attack.Name == "bossHorizontalBeam" and z.Name == 'Gilded Dragon' then 
  test = -300
  ok2 = -20
  ok = 0
  wait(500)
  test = -300
  ok2 = 0
  ok = 0
elseif not _G.sbs and attack.Name == "firstBossShootPlayer" and z.Name == 'Earth Golem' then
  warn("SBS in Progress lol skiDDo")
  _G.atc = true
  _G.rand = true
  _G.sbs = true
  test = -300
  ok2 = -20
  ok = 400
  wait(1.5)
  _G.sbs = false
  _G.rand = false
  _G.atc = false
  test = -300
  ok2 = -20
  ok = 0
  elseif not _G.rand and attack.Name == "bossRandomStrike" and z.Name == 'Earth Golem' then
    warn("Random strike for earth golem")
    _G.atc = true
    _G.sbs = true
    _G.rand = true
  test = -300
  ok2 = -20
  ok = 400
  wait(2)
  _G.rand = false
  _G.sbs = false
  _G.atc = false
  test = -300
  ok2 = -20
  ok = 0
  ok1 = 0
elseif attack.Name == "secondBossShootPlayer" and z.Name == 'Ancient Stone Guardian' then
  warn("SBS in progress lol")
  _G.atc = true
  test = 300
  ok2 = 20
  ok1 = -40
  ok = 0
  wait(1)
  _G.atc = false
  test = 300
  ok = 0
  ok1 = 0
  elseif not _G.rando and attack.Name == "bossRandomStrike" and z.Name == 'Fusion Goliath' then
      warn("THis shit hella annoying, RandomStrike")
      _G.rando = true
      _G.Beam = true
      _G.atc = true
        ok = math
        wait(2.3)
        _G.atc = false
        _G.rando = false
        _G.Beam = false
        ok = 0
  elseif not _G.Beam and attack.name == "bossCannonBeam" and z.Name == 'Fusion Goliath' then
    _G.rando = true
    _G.atc = true
	  warn("CannonBeam bruv")
        ok = math
        wait(2.3)
        _G.rando = false
        _G.atc = false
        ok = 0
  elseif not _G.orb and attack.Name == "secondBossOrbShot" and z.Name == 'Robot Gladiator' then 
    warn("secondBossOrbShot lmao")
    prenis = true
    _G.orb = true
    _G.ZigZag = true
    _G.BossPunch = true
    _G.atc = true
    ok = -300
    wait(1.5)
    _G.orb = false
    _G.ZigZag = false
    _G.BossPunch = false
    _G.atc = false
    ok = 25
    ok1 = -15
    elseif not _G.pull and attack.Name == "pullPlayerPart" and z.Name == 'Robot Gladiator' then
    warn("ay yo stop pulling my dick")
    _G.pull = true
    _G.orb = true
    _G.atc = true
	ok = -700
    wait(1)
    _G.atc = false
    _G.pull = false
    _G.orb = false
    ok = 25
    ok1 = -15
  elseif not _G.ZigZag and attack.Name == "secondBossZigZag" and z.Name == 'Robot Gladiator' then
    warn("ZigZag bruv")
    _G.orb = true
    _G.ZigZag = true
    _G.atc = true
    ok = -500
    wait(3)
    _G.ZigZag = false
    _G.orb = false
    _G.atc = false
    ok = 25
    ok1 = -15
  elseif not _G.BossPunch and attack.Name == 'secondBossPunchHorizontalBeam' and z.Name == 'Robot Gladiator' then
    _G.orb = true
    _G.BossPunch = true
    _G.atc = true
    ok = -800
    wait(2)
    _G.orb = false
    _G.BossPunch = true
    _G.atc = false
    ok = 25
    ok1 = -15
  end
  end
  end
  end)
while true do
game:GetService("RunService").Heartbeat:Wait()
repeat wait() until game.Players.LocalPlayer.Character ~= nil
if game.Players.LocalPlayer.Character ~= nil then
for i,v in pairs(game.Workspace.enemies:GetChildren()) do 
  if v:FindFirstChild("HumanoidRootPart") then 
    if v.Name ~= "Stone Warrior" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.fromOrientation(test,0,0) + Vector3.new(ok,ok2,ok1)
        if prenis then
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(0,v.HumanoidRootPart.Position.Y,0)))
        end
	for c,d in pairs(game.Workspace:GetChildren()) do
		if d.Name == "Dragon Orb" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = d:FindFirstChild("HumanoidRootPart").CFrame * CFrame.fromOrientation(300,0,0) + Vector3.new(0,33,0) 
  end
	end
end
end
end
end
end
end
end
