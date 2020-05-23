local SELL_TRESHOLD = 55000 -- ONLY CHANGE THIS IF YOU HAVE INF BACKPACK.

local LocalPlayer = game.Players.LocalPlayer
local Rebirths = LocalPlayer.leaderstats.Rebirths

local OldGui = game.Players.LocalPlayer.PlayerGui:FindFirstChild("Nice Flex But OK")
if OldGui then
	OldGui:Destroy()
end
local ScreenGUI = game:GetObjects("rbxassetid://4835603667")[1]
ScreenGUI.Enabled = true
ScreenGUI.Parent = LocalPlayer.PlayerGui
ScreenGUI.Name = "Nice Flex But OK"
local TopBar = ScreenGUI.Frame
local MainFrame = TopBar.Frame
local ExitButton = TopBar.ExitButton
local OpenButton = TopBar.Parent.OpenButton
local AutoSellToggle = MainFrame.AutoSellToggle
local FastMineToggle = MainFrame.FastMineToggle
local AutoMineToggle = MainFrame.AutoMineToggle
local AutoBackpackToggle = MainFrame.AutoBackpackToggle
local AutoToolsToggle = MainFrame.AutoToolsToggle
local AutoRebirthToggle = MainFrame.AutoRebirthToggle
local Remote = game.ReplicatedStorage.Network:InvokeServer()
local Toggles = {
	AutoSell = false,
	FastMine = false,
	AutoMine = false,
	AutoBackpack = false,
	AutoTools = false,
	AutoRebirth = false
}
local InventoryAmount = LocalPlayer.PlayerGui.ScreenGui.StatsFrame2.Inventory.Amount
local CoinsAmount = game.Players.LocalPlayer.leaderstats.Coins
local function GetCoinsAmount()
	local Amount = CoinsAmount.Value
	Amount = Amount:gsub(',', '')

	return tonumber(Amount)
end
local function GetInventoryAmount()
	local Amount = InventoryAmount.Text
	local Amount2 = InventoryAmount.Text
	Amount = Amount:gsub('%s+', '')
	Amount2 = Amount2:gsub('%s+', '')
	Amount = Amount:gsub(',', '')
	
	local stringTable = Amount:split("/")
	local stringTable2 = Amount2:split("/")
	return tonumber(stringTable[1]), tonumber(stringTable[2]), stringTable2[1], stringTable2[2]
end
local Remote = game.ReplicatedStorage.Network:InvokeServer()
local function Raycast(Vector)
	local Raycast = Ray.new(game.Players.LocalPlayer.Character.Head.Position, Vector)
	local Ignore = {game.Players.LocalPlayer.Character}
	local Ore, endPoint = game.Workspace:FindPartOnRayWithIgnoreList(Raycast, Ignore)
	if Ore then
		if Ore.Parent.Parent.Name == "Blocks" then
			local Arguments = {
					[1] = "MineBlock",
					[2] = {
						[1] = {
							[1] = Ore.Parent
						}
					}
			}
			Remote:FireServer(unpack(Arguments))
			wait()
		end
	end
end
AutoMineToggle.MouseButton1Click:Connect(function()
	if Remote then
		Toggles["AutoMine"] = not Toggles["AutoMine"]
		if Toggles["AutoMine"] == true then
			AutoMineToggle.Text = "Disable"
			while Toggles["AutoMine"] do
				Raycast(Vector3.new(5, 0, 0))
				Raycast(Vector3.new(-5, 0, 0))
				Raycast(Vector3.new(0, 0, 5))
				Raycast(Vector3.new(0, 0, -5))
				Raycast(Vector3.new(0, -5, 0))
				wait()
				if not ScreenGUI then
					break
				end
			end
		else
			AutoMineToggle.Text = "Enable"
		end
	end
end)

AutoRebirthToggle.MouseButton1Click:Connect(function()
	if Remote then
		Toggles["AutoRebirth"] = not Toggles["AutoRebirth"]
		if Toggles["AutoRebirth"] == true then
			AutoRebirthToggle.Text = "Disable"
		else
			AutoRebirthToggle.Text = "Enable"
		end
	end
end)

AutoBackpackToggle.MouseButton1Click:Connect(function()
	if Remote then
		Toggles["AutoBackpack"] = not Toggles["AutoBackpack"]
		if Toggles["AutoBackpack"] == true then
			AutoBackpackToggle.Text = "Disable"
		else
			AutoBackpackToggle.Text = "Enable"
		end
	end
end)

AutoToolsToggle.MouseButton1Click:Connect(function()
	if Remote then
		Toggles["AutoTools"] = not Toggles["AutoTools"]
		if Toggles["AutoTools"] == true then
			AutoToolsToggle.Text = "Disable"
		else
			AutoToolsToggle.Text = "Enable"
		end
	end
end)

AutoSellToggle.MouseButton1Click:Connect(function()
	if Remote then
		Toggles["AutoSell"] = not Toggles["AutoSell"]
		if Toggles["AutoSell"] == true then
			AutoSellToggle.Text = "Disable"
		else
			AutoSellToggle.Text = "Enable"
		end
	end
end)

FastMineToggle.MouseButton1Click:Connect(function()
	if Remote then
		Toggles["FastMine"] = not Toggles["FastMine"]
		if Toggles["FastMine"] == true then
			FastMineToggle.Text = "Disable"
			for each, block in pairs(game.Workspace.Blocks:GetChildren()) do
				local Stats = block:FindFirstChild("Stats")
				if Stats then
					local Multiplier = Stats:FindFirstChild("Multiplier")
					if Multiplier then
						local ActualMultiplier = Stats:FindFirstChild("ActualMultiplier")
						if not ActualMultiplier then
							local ActualMultiplier = Multiplier:Clone()
							ActualMultiplier.Name = "ActualMultiplier"
							ActualMultiplier.Parent = Stats
						end
						Multiplier.Value = -1337
					end
				end
			end
		else
			FastMineToggle.Text = "Enable"
			
			for each, block in pairs(game.Workspace.Blocks:GetChildren()) do
				local Stats = block:FindFirstChild("Stats")
				if Stats then
					local Multiplier = Stats:FindFirstChild("Multiplier")
					if Multiplier then
						local ActualMultiplier = Stats:FindFirstChild("ActualMultiplier")
						if ActualMultiplier then
							Multiplier.Value = ActualMultiplier.Value
						end
					end
				end
			end
		end
	end
end)

CoinsAmount.Changed:Connect(function(Change)
	if ScreenGUI then
		while Toggles["AutoRebirth"] do
				Remote:FireServer("Rebirth",{{					                }})
				wait(.1)
		end
		if Toggles["AutoBackpack"] then
			for i = 3, 50 do
				Remote:FireServer("BuyItem",{{"Backpack",i}})
				wait(0.1)			
			end
		end
		if Toggles["AutoTools"] then
			for i = 1, 50 do
				Remote:FireServer("BuyItem",{{"Tools",i}})
				wait(0.1)			
			end
		end
	end
end)

local ResetPosition = Vector3.new(14.9, 14.6, 22461)
local MinePosition = Vector3.new(29.9638, 12.3, 22392.1)
InventoryAmount.Changed:Connect(function(Change)
	if ScreenGUI then
		if Change == "Text" then
			if Toggles["AutoSell"] then
				local Amount, MaxAmount, AmountComma, MaxAmountComma2 = GetInventoryAmount()
				if SELL_TRESHOLD ~= nil then
					MaxAmount = SELL_TRESHOLD
				end
				if Amount >= MaxAmount then
					local LastPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					local Character = LocalPlayer.Character
					for i = 1, 15 do
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116, 13, 38)
					Remote:FireServer("SellItems",{{               }})
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false	
					wait()
					end
					for i = 1, 10 do
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = LastPosition + Vector3.new(0,2,0)
					wait()
					end
					--[[if Character then
						local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
						if HumanoidRootPart then
							local SavedLocation = HumanoidRootPart.CFrame
							while InventoryAmount.Text ~= "0 / " .. tostring(MaxAmountComma2) do
								HumanoidRootPart.CFrame = CFrame.new(-36, 14.401, 22552.91)
								Remote:FireServer("SellItems",{{               }})
								wait()
						 	end
							HumanoidRootPart.Anchored = true
							while HumanoidRootPart.CFrame ~= SavedLocation do
								HumanoidRootPart.CFrame = SavedLocation
							wait()
							end
							HumanoidRootPart.Anchored = false	
						end
					end]]
				end
			end
		end
	end
end)

--[[while ((ResetPosition-game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).magnitude > 10 ) do
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(29.9638, 12.3, 22392.1)
end]]
game.Workspace.Blocks.ChildAdded:Connect(function(block)
	if ScreenGUI then
		if Toggles["FastMine"] then
			local Stats = block:WaitForChild("Stats")
			if Stats then
				local Multiplier = Stats:WaitForChild("Multiplier")
				if Multiplier then
					local ActualMultiplier = Stats:FindFirstChild("ActualMultiplier")
					if not ActualMultiplier then
						local ActualMultiplier = Multiplier:Clone()
						ActualMultiplier.Name = "ActualMultiplier"
						ActualMultiplier.Parent = Stats
					end
					Multiplier.Value = -1337
				end
			end
		end
	end
end)

ExitButton.MouseButton1Click:Connect(function()
	TopBar.Visible = false
	OpenButton.Visible = true
end)

OpenButton.MouseButton1Click:Connect(function()
	TopBar.Visible = true
	OpenButton.Visible = false
end)
