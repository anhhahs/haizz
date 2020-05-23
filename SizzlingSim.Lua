game:GetService("CoreGui").PurchasePromptApp.PurchasePromptUI.Visible = false
local Pos1 = Vector3.new(2576, 4.67, 38)
local Pos2 = CFrame.new(1970, -16, 38)
local Pos3 = Vector3.new(1970, -16, 38)
local PosZone1 = Vector3.new(-109, 6, 32)
local CFrameZone1 = CFrame.new(-109, 6, 32)
local PosZone2 = Vector3.new(300.137573, 5.28900051, 45.6721916)
local CFrameZone2 = CFrame.new(300.137573, 5.28900051, 45.6721916)
local PosZone5 = Vector3.new(1414, 6, 38)
local CFrameZone5 = CFrame.new(1414, 6, 38)
local PosZone10 = Vector3.new(2576, 6, 38)
local CFrameZone10 = CFrame.new(2576, 6, 38)
local PosZone11 = Vector3.new(-1441.3165, 10, -49.5)
local CFrameZone11 = CFrame.new(-1441.3165, 10, -49.5)
local remote = game:GetService("ReplicatedStorage").RemoteEvent
local library = loadstring(game:HttpGet(("https://pastebin.com/raw/T9aKwSFL")))()
w = library:CreateWindow("Sizzling Simulator")
w:Section("Created by Empirma#6695")
w:Toggle("Auto Kill",{flag = "ak"})
w:Toggle("Auto Kill Boss",{flag = "ak2"})
w:Toggle("Auto Kill All",{flag = "akall"})
w:Toggle("Auto Kill All 1",{flag = "akall1"})
w:Toggle("Auto Collect Meat",{flag = "acm"})
w:Toggle("Auto Collect Item",{flag = "aci"})
w:Toggle("Auto Move",{flag = "am"})
w:Toggle("Auto Sell",{flag = "as"})
w:Toggle("Auto Buy",{flag = "ab"})
w:Toggle("Auto Chest",{flag = "ach"})
w:Toggle("Auto Rebirth", {flag = "ar"})
w:Toggle("Auto Collect Coins",{flag = "acc"})
w:Toggle("Safety Position",{flag = "asp"})
w:Toggle("Auto Buy Zones",{flag = "abz"})
w:Toggle("Auto Grill",{flag = "ag"})
w:Toggle("Auto TP",{flag = "tlp"})
w:Toggle("Auto TP 1",{flag = "tlp2"})
w:Button("Destroy Gui", function()
    game:GetService("CoreGui").ScreenGui:Destroy()
end)
t = library:CreateWindow("Miscellaneous")
e = library:CreateWindow("Eggs/Hats Opener")
t:Section("Created by Empirma#6695")

t:Section("Zones Teleporter")
t:Dropdown("Zones Teleporter",{
    location = _G;
    flag = "zonet";
    list = {
        "Zone 1";
        "Zone 2";
        "Zone 3";
        "Zone 4";
        "Zone 5";
        "Zone 6";
        "Zone 7";
        "Zone 8";
        "Zone 9";
        "Zone 10";
		"Zone 11";
		"Zone 12";
    }
}, function(teleport)
    if _G.zonet == "Zone 1" then
        _G.cord = Vector3.new(28.3579063, 5.5, 40.818779)
    elseif _G.zonet == "Zone 2" then
        _G.cord = Vector3.new(265.137573, 5.5, 45.6721916)
    elseif _G.zonet == "Zone 3" then
        _G.cord = Vector3.new(569.577637, 5.5, 46.3232117)
    elseif _G.zonet == "Zone 4" then
        _G.cord = Vector3.new(830.793152, 5.5, 43.0096512)
    elseif _G.zonet == "Zone 5" then
        _G.cord = Vector3.new(1132.27087, 5.5, 46.3232956)
    elseif _G.zonet == "Zone 6" then
        _G.cord = Vector3.new(1408.0675, 5.5, 47.8620033)
    elseif _G.zonet == "Zone 7" then
        _G.cord = Vector3.new(1681.42029, 5.5, 53.5214119)
    elseif _G.zonet == "Zone 8" then
        _G.cord = Vector3.new(1948.32849, 5.5, 55.2010803)
    elseif _G.zonet == "Zone 9" then
        _G.cord = Vector3.new(2229.97632, 5.5, 50.0519028)
    elseif _G.zonet == "Zone 10" then
        _G.cord = Vector3.new(2660.13721, 5.5, 43.9574356)
	elseif _G.zonet == "Zone 11" then
        _G.cord = Vector3.new(-1441.3165, 5.5, -49.5)
	elseif _G.zonet == "Zone 12" then
        _G.cord = Vector3.new(-428, 5.5, 730)
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(_G.cord)
end)

t:Slider("WalkSpeed",{
    min = 50,
    max = 200
},function(new)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = new
end)

t:Button("Purchase Areas", function()
    pcall(function()
    remote:FireServer("Purchase Area", 1)
    remote:FireServer("Purchase Area", 2)
    remote:FireServer("Purchase Area", 3)
    remote:FireServer("Purchase Area", 4)
    remote:FireServer("Purchase Area", 5)
    remote:FireServer("Purchase Area", 6)
    remote:FireServer("Purchase Area", 7)
    remote:FireServer("Purchase Area", 8)
    remote:FireServer("Purchase Area", 9)
    remote:FireServer("Purchase Area", 10)
	remote:FireServer("Purchase Area", 11)
    remote:FireServer("Purchase Area", 12)
    end)
end)

t:Button("Open Chests", function()
    pcall(function()
    remote:FireServer("Open Chest", 1)
    remote:FireServer("Open Chest", 2)
    remote:FireServer("Open Chest", 3)
    remote:FireServer("Open Chest", 4)
    remote:FireServer("Open Chest", 5)
    remote:FireServer("Open Chest", 6)
	remote:FireServer("Open Chest", 7)
	remote:FireServer("Open Chest", 8)
    end)
end)

t:Button("Fix lag", function()
    pcall(function()
		local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
		local g = game
		local w = g.Workspace
		local l = g.Lighting
		local t = w.Terrain
		t.WaterWaveSize = 0
		t.WaterWaveSpeed = 0
		t.WaterReflectance = 0
		t.WaterTransparency = 0
		l.GlobalShadows = false
		l.FogEnd = 9e9
		l.Brightness = 0
		settings().Rendering.QualityLevel = "Level01"
		for i,v in pairs(g:GetDescendants()) do
		   if v:IsA("Part") or v:IsA("Union") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			   v.Material = "Plastic"
		v.Reflectance = 0
		elseif v:IsA("Decal") and decalsyeeted then
		v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
		v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
		v.BlastPressure = 1
		v.BlastRadius = 1
		   end
		end
		for i,e in pairs(l:GetChildren()) do
		if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
		e.Enabled = false
		end
		end
    end)
end)

e:Section("Created by Empirma#6695")

e:Dropdown("Eggs/Hats", {
	location = _G;
	flag = "egg";
	list = {
		"Egg Z1";
		"Hat Z1";
		"Egg Z2";
		"Hat Z2";
		"Egg Z3";
		"Hat Z3";
		"Egg Z4";
		"Hat Z4";
		"Egg Z5";
		"Hat Z5";
		"Egg Z6";
		"Hat Z6";
		"Egg Z7";
		"Egg Z8";
		"Hat Z8";
		"Egg Z9";
		"Hat Z9";
		"Egg Z10";
		"Hat Z10";
		"Egg Z11";
		"Hat Z11";
		"Egg Z12";
		"Hat Z12";
	}
}, function(tre)
	if _G.egg == "Egg Z1" then 
		_G.chosen = 1
	elseif _G.egg == "Hat Z1" then 
		_G.chosen = 11
	elseif _G.egg == "Egg Z2" then 
		_G.chosen = 2
	elseif _G.egg == "Hat Z2" then 
		_G.chosen = 11
	elseif _G.egg == "Egg Z3" then 
		_G.chosen = 3
	elseif _G.egg == "Hat Z3" then 
		_G.chosen = 12
	elseif _G.egg == "Egg Z4" then 
		_G.chosen = 4
	elseif _G.egg == "Hat Z4" then 
		_G.chosen = 13
	elseif _G.egg == "Egg Z5" then 
		_G.chosen = 5
	elseif _G.egg == "Hat Z5" then 
		_G.chosen = 14
	elseif _G.egg == "Egg Z6" then 
		_G.chosen = 6
	elseif _G.egg == "Hat Z6" then 
		_G.chosen = 15
	elseif _G.egg == "Egg Z7" then 
		_G.chosen = 7
	elseif _G.egg == "Egg Z8" then 
		_G.chosen = 8 
	elseif _G.egg == "Hat Z8" then
		_G.chosen = 16
	elseif _G.egg == "Egg Z9" then 
		_G.chosen = 9
	elseif _G.egg == "Hat Z9" then 
		_G.chosen = 17
	elseif _G.egg == "Egg Z10" then 
		_G.chosen = 10
	elseif _G.egg == "Hat Z10" then 
		_G.chosen = 18
	elseif _G.egg == "Egg Z11" then 
		_G.chosen = 19
	elseif _G.egg == "Hat Z11" then 
		_G.chosen = 20
	elseif _G.egg == "Egg Z12" then 
		_G.chosen = 21
	elseif _G.egg == "Hat Z12" then 
		_G.chosen = 22
	end
end)

e:Toggle("Auto Open",{flag = "aoe"})

e:Button("Open Once", function()
	remote:FireServer("Purchase One Egg", _G.chosen)
end)

game:GetService('RunService').Stepped:connect(function()
	if noclip then
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
	end
end)

local VirtualUser=game:service'VirtualUser'
game:GetService("Players").LocalPlayer.Idled:connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)

function autorebirth()
	pcall(function()
		remote:FireServer("Rebirth", 3)
	end)
end

function autoopen()
	pcall(function() 
			remote:FireServer("Purchase One Egg", _G.chosen)
	end)
end


function autoKill()
    pcall(function()
        for i,v in pairs(workspace:GetChildren()) do
			if v:FindFirstChild("CharId") and (v.Name == "Cornish Chicken" or v.Name == "Blue Duck" or v.Name == "Brown Cow" or v.Name == "Red Turkey" or v.Name == "Fat Pig" or v.Name == "Dark Bison" or v.Name == "Buck" or v.Name == "Grizzly Bear" or v.Name == "Angry Moose" or v.Name == "Angry Dinosaur" or v.Name == "Brown Wolf") then	
				remote:FireServer("Animal Selected", v.CharId.Value)
				remote:FireServer("Animal Hit", v.CharId.Value)
			end
        end
    end)
end

function autoKillBoss()
    pcall(function()
        for i,v in pairs(workspace:GetChildren()) do
			if v:FindFirstChild("CharId") and (v.Name == "Fiery Dinosaur" or v.Name == "Big Bad Wolf" or v.Name == "Yeti") then
				remote:FireServer("Animal Selected", v.CharId.Value)
				remote:FireServer("Animal Hit", v.CharId.Value)
			end
        end
    end)
end

function autoZone()
	pcall(function()
		remote:FireServer("Purchase Area", 1)
		remote:FireServer("Purchase Area", 2)
		remote:FireServer("Purchase Area", 3)
		remote:FireServer("Purchase Area", 4)
		remote:FireServer("Purchase Area", 5)
		remote:FireServer("Purchase Area", 6)
		remote:FireServer("Purchase Area", 7)
		remote:FireServer("Purchase Area", 8)
		remote:FireServer("Purchase Area", 9)
		remote:FireServer("Purchase Area", 10)
		remote:FireServer("Purchase Area", 11)
	end)
end

function autoKillAll()
    pcall(function()
        for i,v in pairs(workspace:GetChildren()) do
			if v:FindFirstChild("CharId") and v.Name ~= "Fiery Dinosaur" and v.Name ~= "Big Bad Wolf" and v.Name ~= "Yeti" then
				remote:FireServer("Animal Selected", v.CharId.Value)
				remote:FireServer("Animal Hit", v.CharId.Value)
			end
        end
    end)	
end


function autoKillAll1()
    pcall(function()
        for i,v in next, workspace:GetChildren() do
			if v:FindFirstChild("CharId") and v.Name ~= "Fiery Dinosaur" and v.Name ~= "Big Bad Wolf" and v.Name ~= "Yeti" then
				remote:FireServer("Animal Selected", v.CharId.Value)
				remote:FireServer("Animal Hit", v.CharId.Value)
			end
        end
    end)
end

function autoMeat()
    pcall(function()
        for i2,v2 in pairs(workspace:GetChildren()) do
            if string.match(v2.Name,"Meat") and v2:FindFirstChild("Main") then
                v2.Main.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end)
end

function autoItem()
    pcall(function()
        for i2,v2 in pairs(workspace:GetChildren()) do
            if string.match(v2.Name,"Item") and v2:FindFirstChild("Main") then
                v2.Main.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end)
end

function autoCoins()
    pcall(function()
        for i,v in pairs(workspace.Currency:GetChildren()) do
		    remote:FireServer("Collect Currency", v.Name)
        end
    end)
end

function autoSell()
    pcall(function()
        remote:FireServer("Drop Off Meat")
        remote:FireServer("Collect Grill Coins")
    end)
end

function autoBuy()
    pcall(function()
		remote:FireServer("Buy Fork", 4)
        remote:FireServer("Buy Fork", 9)
		remote:FireServer("Buy Fork", 18)
		remote:FireServer("Buy Fork", 20)
		remote:FireServer("Buy Weapon", 24)
		remote:FireServer("Buy Weapon", 26)
		remote:FireServer("Buy Weapon", 29)
		remote:FireServer("Buy Weapon", 34)
		remote:FireServer("Buy Weapon", 39)
		remote:FireServer("Buy Fork", 29)
		remote:FireServer("Buy Weapon", 41)
    end)
end

spawn(function()
	while wait() do
		if e.flags.aoe then 
			autoopen()
		end
	end
end)

spawn(function()
	while wait() do 
		if w.flags.ar then
			autorebirth()
		end
	end
end)

spawn(function()
    while wait() do
        if w.flags.ak then
            autoKill()
			autoKill()
        end
    end
end)

spawn(function()
    while wait() do
        if w.flags.ak2 then
            autoKillBoss()
        end
    end
end)

spawn(function()
    while wait() do
        if w.flags.akall then
			autoKillAll()
        end
    end
end)

spawn(function()
    while wait() do
        if w.flags.akall1 then
            autoKillAll1()
        end
    end
end)

spawn(function()
    while wait() do
        if w.flags.acm then
            autoMeat()
        end
    end
end)

spawn(function()
    while wait() do
        if w.flags.aci then
            autoItem()
        end
    end
end)


spawn(function()
    while wait() do
        if w.flags.as then
            autoSell()
        end
    end
end)

spawn(function()
    while wait() do
        if w.flags.ab then
            autoBuy()
        end
    end
end)

spawn(function()
    while wait() do
        if w.flags.acc then
            autoCoins()
        end
    end
end)

spawn(function()
	while wait(.1) do
		if w.flags.abz then
			autoZone()	
		end
	end
end)

spawn(function()
	while wait(2) do
		if w.flags.asp then
			noclip = true
			pcall(function()
				if tonumber((Pos3 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) > 5 then
					repeat
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos2
						wait(1)
					until tonumber((Pos3 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) <= 5 or w.flags.asp == false
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if w.flags.tlp then
			pcall(function()
				--[[
				if tonumber((PosZone2 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) <120 then
					wait(.1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameZone10
				end]]--
				if tonumber((PosZone10 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) <10 then
					wait(5)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameZone11
				end
				--[[
				if tonumber((PosZone5 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) <10 then
					wait(3)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameZone10
				end
				]]--
			end)
		end
	end
end)

spawn(function()
    while wait() do
        if w.flags.tlp2 then
            pcall(function()
				if tonumber((PosZone2 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) <120 then
					wait(.1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameZone10
				end
				if tonumber((PosZone10 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) <10 then
					wait(5)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameZone11
				end
				--[[
				if tonumber((PosZone5 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) <10 then
					wait(3)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameZone10
				end
				]]--
			end)
        end
    end
end)

spawn(function()
    while wait(2) do
        if w.flags.ach then
			pcall(function()
				remote:FireServer("Open Chest", 1)
				remote:FireServer("Open Chest", 2)
				remote:FireServer("Open Chest", 3)
				remote:FireServer("Open Chest", 4)
				remote:FireServer("Open Chest", 5)
				remote:FireServer("Open Chest", 6)
				remote:FireServer("Open Chest", 7)
				remote:FireServer("Open Chest", 8)
			end)       
		end
    end
end)

spawn(function()
    while wait() do
        if w.flags.ag then
			pcall(function()
				remote:FireServer("Buy +1 Grill")
				remote:FireServer("Upgrade Grill", 1)
				remote:FireServer("Upgrade Grill", 2)
				remote:FireServer("Upgrade Grill", 3)
				remote:FireServer("Upgrade Grill", 4)
				remote:FireServer("Upgrade Grill", 5)
			end)       
		end
    end
end)

spawn(function()
    while wait() do
        if w.flags.am then
			pcall(function()
				if tonumber((Pos1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) > 5 and tonumber((PosZone11 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) >= 150 then
					repeat
						game.Players.LocalPlayer.Character.Humanoid:MoveTo(Pos1)
                        wait(1)
					until tonumber((Pos1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) <= 5 or tonumber((PosZone11 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) <= 150 or w.flags.am == false
				end
			end)
        end
    end
end)

--2576, 4.67, 38
