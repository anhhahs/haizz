	game:GetService("CoreGui").PurchasePromptApp.PurchasePromptUI.Visible = false
	local Pos1 = Vector3.new(-3617, 36, 220) --(-2876, 36, 180
	local Pos2 = CFrame.new(-3685, 36, 220)---2876, 36, 260
	local Pos3 = Vector3.new(-3685, 36, 220)
	local remote = game:GetService("ReplicatedStorage").RemoteEvent
	local library = loadstring(game:HttpGet(("https://pastebin.com/raw/T9aKwSFL")))()
	w = library:CreateWindow("Sizzling Simulator")
	w:Section("Created by Empirma#6695")
	w:Toggle("Auto Kill",{flag = "ak"})
	w:Toggle("Auto Teleport",{flag = "atp"})
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
		}
	}, function(teleport)
		if _G.zonet == "Zone 1" then
			_G.cord = Vector3.new(28.3579063, 4.62482548, 40.818779)
		elseif _G.zonet == "Zone 2" then
			_G.cord = Vector3.new(265.137573, 5.28900051, 45.6721916)
		elseif _G.zonet == "Zone 3" then
			_G.cord = Vector3.new(569.577637, 5.29605675, 46.3232117)
		elseif _G.zonet == "Zone 4" then
			_G.cord = Vector3.new(830.793152, 5.27609396, 43.0096512)
		elseif _G.zonet == "Zone 5" then
			_G.cord = Vector3.new(1132.27087, 5.26011324, 46.3232956)
		elseif _G.zonet == "Zone 6" then
			_G.cord = Vector3.new(1408.0675, 5.25802898, 47.8620033)
		elseif _G.zonet == "Zone 7" then
			_G.cord = Vector3.new(1681.42029, 5.25831127, 53.5214119)
		elseif _G.zonet == "Zone 8" then
			_G.cord = Vector3.new(1948.32849, 5.30788898, 55.2010803)
		elseif _G.zonet == "Zone 9" then
			_G.cord = Vector3.new(2229.97632, 5.29400778, 50.0519028)
		elseif _G.zonet == "Zone 10" then
			_G.cord = Vector3.new(2660.13721, 5.2644968, 43.9574356)
		elseif _G.zonet == "Zone 11" then
			_G.cord = Vector3.new(-1441.3165, 4.7, -49.5)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(_G.cord)
	end)

	t:Slider("WalkSpeed",{
		min = 50,
		max = 150
	},function(new)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = new
	end)

	t:Button("Teleport Hide Zone", function()
		pcall(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910, 46, 1688)
		end)
	end)

	t:Button("TeleportRB100", function()
		pcall(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2765.4, 38, 985)
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
			remote:FireServer("Rebirth", 1)
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
				if v:FindFirstChild("CharId") then
					remote:FireServer("Shoot", game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChildOfClass("Tool").TypeId.Value, v.CharId.Value)
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
		end)
	end

	function autoKillAll()
		pcall(function()
			for i,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("CharId") and v.Name ~= "Fiery Dinosaur" and v.Name ~= "Big Bad Wolf" then
					remote:FireServer("Animal Selected", v.CharId.Value)
					remote:FireServer("Animal Hit", v.CharId.Value)
				end
			end
		end)	
	end


	function autoKillAll1()
		pcall(function()
			for i,v in next, workspace:GetChildren() do
				if v:FindFirstChild("CharId") and v.Name ~= "Fiery Dinosaur" and v.Name ~= "Big Bad Wolf" then
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
			remote:FireServer("Purchase Tool", 28)
			remote:FireServer("Purchase Tool", 41)
			remote:FireServer("Purchase Tool", 45)
			remote:FireServer("Purchase Tool", 49)
			remote:FireServer("Purchase Tool", 6)
			remote:FireServer("Purchase Tool", 42)
			remote:FireServer("Purchase Tool", 38)
			remote:FireServer("Purchase Tool", 44)
			remote:FireServer("Purchase Tool", 2)
			remote:FireServer("Purchase Tool", 46)
			remote:FireServer("Purchase Tool", 36)
			remote:FireServer("Purchase Tool", 11)
		end)
	end

	function equip()
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
			return true
		elseif game.Players.LocalPlayer:FindFirstChild("Backpack") and game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
			repeat
				if game.Players.LocalPlayer:FindFirstChild("Backpack") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") then
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool"))
				end
				wait()
			until game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
		return true
		else
			return false
		end
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
			if w.flags.ak and equip() then
				autoKill()
				wait(.1)
			end
		end
	end)


	spawn(function()
		while wait() do
			if w.flags.atp then
				pcall(function()
					if tonumber((Pos3 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) > 70 then
						repeat
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos2
							wait(.25)
						until tonumber((Pos3 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) <= 5 or w.flags.asp == false
					end
				end)
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
				wait()
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
		while wait(5) do
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
					if tonumber((Pos1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) > 5 then
						repeat
							game.Players.LocalPlayer.Character.Humanoid:MoveTo(Pos1)
							wait(1)
						until tonumber((Pos1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) <= 5 or w.flags.am == false
					end
				end)
			end
		end
	end)

	---2725.5, 36, 990
