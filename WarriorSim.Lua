-- warrior sim https://www.roblox.com/games/2716845201/Warrior-Simulator?nl=true
-- initial variables
hum = game.Players.LocalPlayer.Character.HumanoidRootPart
gamepasses = game.Players.LocalPlayer.Gamepass:GetChildren()
thePlayer = game.Players.LocalPlayer.Character
-- get gamepasses
for i = 1, #gamepasses do
	gamepasses[i].Value = true
end
game.Players.LocalPlayer.Gamepass.DualWield.Enabled.Value = true

-- Objects

local ScreenGui = Instance.new("ScreenGui")
local GUI = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local KillAllWarriors= Instance.new("TextButton")
local KillAllLizard = Instance.new("TextButton")
local KillAllSkeleton = Instance.new("TextButton")
local KillDesertBoss = Instance.new("TextButton")
local Credits = Instance.new("TextLabel")
local KillKoblox= Instance.new("TextButton")
local KillTerrainSpecialist= Instance.new("TextButton")
local KillSunstar= Instance.new("TextButton")
local KillMagmaFiend= Instance.new("TextButton")
local Button1 = Instance.new("TextButton")
local Button2 = Instance.new("TextButton")
local Button3 = Instance.new("TextButton")
local Button4 = Instance.new("TextButton")
local Button5 = Instance.new("TextButton")
local Button6 = Instance.new("TextButton")
local Button7 = Instance.new("TextButton")
local Button8 = Instance.new("TextButton")
-- Properties

modifier = false

ScreenGui.Parent = game.CoreGui

GUI.Name = "GUI"
GUI.Parent = ScreenGui
GUI.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
GUI.BorderColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
GUI.BorderSizePixel = 0
GUI.Position = UDim2.new(0, 0, 0.730039531, 0)
GUI.Size = UDim2.new(0, 316, 0, 339)
GUI.Style = Enum.FrameStyle.RobloxRound

Title.Name = "Title"
Title.Parent = GUI
Title.Active = true
Title.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Title.Position = UDim2.new(0.114720426, 0, 0.00523944944, 0)
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = "Warrior Simulator GUI"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 14

KillAllWarriors.Name = "Typhinius"
KillAllWarriors.Parent = GUI
KillAllWarriors.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillAllWarriors.Position = UDim2.new(0.0284810141, 0, 0.133038366, 0)
KillAllWarriors.Size = UDim2.new(0, 114, 0, 26)
KillAllWarriors.Font = Enum.Font.SourceSans
KillAllWarriors.Text = "Kill Typhinius"
KillAllWarriors.TextColor3 = Color3.new(1, 1, 1)
KillAllWarriors.TextSize = 14
KillAllWarriors.MouseButton1Down:connect(function()
if modifier == true then
modifier = false
noclip = false
KillAllWarriors.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
else
modifier = true
KillAllWarriors.BackgroundColor3 = Color3.new(40, 127, 71)
noclip = true
KillAllIdiots("Typhinius", "Future", 2)
end
end)

game:GetService('RunService').Stepped:connect(function()
	if noclip then
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
	end
end)


KillAllLizard.Name = "End Effector"
KillAllLizard.Parent = GUI
KillAllLizard.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillAllLizard.Position = UDim2.new(0.525316477, 0, 0.133038366, 0)
KillAllLizard.Size = UDim2.new(0, 114, 0, 26)
KillAllLizard.Font = Enum.Font.SourceSans
KillAllLizard.Text = "End Effector"
KillAllLizard.TextColor3 = Color3.new(1, 1, 1)
KillAllLizard.TextSize = 14
KillAllLizard.MouseButton1Down:connect(function()
if modifier == true then
modifier = false
noclip = false
KillAllLizard.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
else
modifier = true
KillAllLizard.BackgroundColor3 = Color3.new(40, 127, 71)
noclip = true
KillAllIdiots("End Effector", "Mars", 2)
end
end)


KillAllSkeleton.Name = "Futurion General"
KillAllSkeleton.Parent = GUI
KillAllSkeleton.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillAllSkeleton.Position = UDim2.new(0.03164557, 0, 0.233038366, 0)
KillAllSkeleton.Size = UDim2.new(0, 114, 0, 26)
KillAllSkeleton.Font = Enum.Font.SourceSans
KillAllSkeleton.Text = "Kill Futurion General"
KillAllSkeleton.TextColor3 = Color3.new(1, 1, 1)
KillAllSkeleton.TextSize = 14
KillAllSkeleton.MouseButton1Down:connect(function()
if modifier == true then
modifier = false
noclip = false
KillAllSkeleton.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
else
modifier = true
KillAllSkeleton.BackgroundColor3 = Color3.new(40, 127, 71)
noclip = true
KillAllIdiots("Futurion General", "Future", 2)
end
end)


KillDesertBoss.Name = "Kill Ud'zal"
KillDesertBoss.Parent = GUI
KillDesertBoss.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillDesertBoss.Position = UDim2.new(0.525316477, 0, 0.233038366, 0)
KillDesertBoss.Size = UDim2.new(0, 114, 0, 26)
KillDesertBoss.Font = Enum.Font.SourceSans
KillDesertBoss.Text = "Kill Ud'zal"
KillDesertBoss.TextColor3 = Color3.new(1, 1, 1)
KillDesertBoss.TextSize = 14
KillDesertBoss.MouseButton1Down:connect(function()
if modifier == true then
modifier = false
noclip = false
KillDesertBoss.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
else
modifier = true
KillDesertBoss.BackgroundColor3 = Color3.new(40, 127, 71)
noclip = true
KillAllIdiots("Ud'zal", "Future", 2)
end
end)


Credits.Name = "Credits"
Credits.Parent = GUI
Credits.BackgroundColor3 = Color3.new(1, 1, 1)
Credits.Position = UDim2.new(0.00316455704, 0, 0.943952799, 0)
Credits.Size = UDim2.new(0, 109, 0, 18)
Credits.Font = Enum.Font.SourceSans
Credits.Text = "Credits to MRobbin99"
Credits.TextSize = 14

KillTerrainSpecialist.Name = "KillTerrainSpecialist"
KillTerrainSpecialist.Parent = GUI
KillTerrainSpecialist.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillTerrainSpecialist.Position = UDim2.new(0.0284810122, 0, 0.333038366, 0)
KillTerrainSpecialist.Size = UDim2.new(0, 114, 0, 26)
KillTerrainSpecialist.Font = Enum.Font.SourceSans
KillTerrainSpecialist.Text = "Kill Terrain Specialist"
KillTerrainSpecialist.TextColor3 = Color3.new(1, 1, 1)
KillTerrainSpecialist.TextSize = 14
KillTerrainSpecialist.MouseButton1Down:connect(function()
if modifier == true then
modifier = false
noclip = false
KillTerrainSpecialist.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
else
modifier = true
KillTerrainSpecialist.BackgroundColor3 = Color3.new(40, 127, 71)
noclip = true
KillAllIdiots("Terrain Specialist", "Iceland", 1)
end
end)


KillKoblox.Parent = GUI
KillKoblox.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillKoblox.Position = UDim2.new(0.525316477, 0, 0.333038366, 0)
KillKoblox.Size = UDim2.new(0, 114, 0, 26)
KillKoblox.Font = Enum.Font.SourceSans
KillKoblox.Text = "Kill Korblox General"
KillKoblox.TextColor3 = Color3.new(1, 1, 1)
KillKoblox.TextSize = 14
KillKoblox.MouseButton1Down:connect(function()
if modifier == true then
modifier = false
KillKoblox.BackgroundColor3 = Color3.new(0.0588235, 0.0688235, 0.0588235)
else
modifier = true
KillKoblox.BackgroundColor3 = Color3.new(40, 127, 71)
KillAllIdiots("Korblox General", "Iceland", 1)
end
end)

KillSunstar.Parent = GUI
KillSunstar.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillSunstar.Position = UDim2.new(0.0284810122, 0, 0.433038366, 0)
KillSunstar.Size = UDim2.new(0, 114, 0, 26)
KillSunstar.Font = Enum.Font.SourceSans
KillSunstar.Text = "Kill Sunstar"
KillSunstar.TextColor3 = Color3.new(1, 1, 1)
KillSunstar.TextSize = 14
KillSunstar.MouseButton1Down:connect(function()
if modifier == true then
modifier = false
KillSunstar.BackgroundColor3 = Color3.new(0.0588235, 0.0688235, 0.0588235)
else
modifier = true
KillSunstar.BackgroundColor3 = Color3.new(40, 127, 71)
KillAllIdiots("Sunstar", "Lavaland", 1)
end
end)

KillMagmaFiend.Parent = GUI
KillMagmaFiend.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillMagmaFiend.Position = UDim2.new(0.525316477, 0, 0.433038366, 0)
KillMagmaFiend.Size = UDim2.new(0, 114, 0, 26)
KillMagmaFiend.Font = Enum.Font.SourceSans
KillMagmaFiend.Text = "Kill Magma Fiend"
KillMagmaFiend.TextColor3 = Color3.new(1, 1, 1)
KillMagmaFiend.TextSize = 14
KillMagmaFiend.MouseButton1Down:connect(function()
if modifier == true then
modifier = false
KillMagmaFiend.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
else
modifier = true
KillMagmaFiend.BackgroundColor3 = Color3.new(40, 127, 71)
KillAllIdiots("Magma Fiend", "Lavaland", 1)
end
end)

Button1.Parent = GUI
Button1.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
Button1.Position = UDim2.new(0.0284810122, 0, 0.533038366, 0)
Button1.Size = UDim2.new(0, 114, 0, 26)
Button1.Font = Enum.Font.SourceSans
Button1.Text = "Kill Overseer Assassin"
Button1.TextColor3 = Color3.new(1, 1, 1)
Button1.TextSize = 14
Button1.MouseButton1Down:connect(function()
if modifier == true then
modifier = false
Button1.BackgroundColor3 = Color3.new(0.0588235, 0.0688235, 0.0588235)
else
modifier = true
Button1.BackgroundColor3 = Color3.new(40, 127, 71)
KillAllIdiots("Overseer Assassin", "Overseer", 1)
end
end)

Button2.Parent = GUI
Button2.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
Button2.Position = UDim2.new(0.525316477, 0, 0.533038366, 0)
Button2.Size = UDim2.new(0, 114, 0, 26)
Button2.Font = Enum.Font.SourceSans
Button2.Text = "Kill Dragonfly Striker"
Button2.TextColor3 = Color3.new(1, 1, 1)
Button2.TextSize = 14
Button2.MouseButton1Down:connect(function()
if modifier == true then
modifier = false
Button2.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
else
modifier = true
Button2.BackgroundColor3 = Color3.new(40, 127, 71)
KillAllIdiots("Dragonfly Striker", "Overseer", 1)
end
end)


Button3.Parent = GUI
Button3.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
Button3.Position = UDim2.new(0.0284810122, 0, 0.633038366, 0)
Button3.Size = UDim2.new(0, 114, 0, 26)
Button3.Font = Enum.Font.SourceSans
Button3.Text = "kill Overseer Overlord"
Button3.TextColor3 = Color3.new(1, 1, 1)
Button3.TextSize = 14
Button3.MouseButton1Down:connect(function()
if modifier == true then
modifier = false
Button3.BackgroundColor3 = Color3.new(0.0588235, 0.0688235, 0.0588235)
else
modifier = true
Button3.BackgroundColor3 = Color3.new(40, 127, 71)
KillAllIdiots("Overseer Overlord", "Overseer", 1)
end
end)

Button4 .Parent = GUI
Button4 .BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
Button4 .Position = UDim2.new(0.525316477, 0, 0.633038366, 0)
Button4 .Size = UDim2.new(0, 114, 0, 26)
Button4 .Font = Enum.Font.SourceSans
Button4 .Text = "Kill Eternal Fairy"
Button4 .TextColor3 = Color3.new(1, 1, 1)
Button4 .TextSize = 14
Button4 .MouseButton1Down:connect(function()
if modifier == true then
modifier = false
Button4 .BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
else
modifier = true
Button4 .BackgroundColor3 = Color3.new(40, 127, 71)
KillAllIdiots("Eternal Fairy", "Egypt", 1)
end
end)

Button5.Parent = GUI
Button5.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
Button5.Position = UDim2.new(0.525316477, 0, 0.733038366, 0)
Button5.Size = UDim2.new(0, 114, 0, 26)
Button5.Font = Enum.Font.SourceSans
Button5.Text = "Kill Cursed Mummy"
Button5.TextColor3 = Color3.new(1, 1, 1)
Button5.TextSize = 14
Button5.MouseButton1Down:connect(function()
if modifier == true then
modifier = false
Button5 .BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
else
modifier = true
Button5 .BackgroundColor3 = Color3.new(40, 127, 71)
KillAllIdiots("Cursed Mummy", "Egypt", 1)
end
end)

Button6.Parent = GUI
Button6.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
Button6.Position = UDim2.new(0.0284810122, 0, 0.733038366, 0)
Button6.Size = UDim2.new(0, 114, 0, 26)
Button6.Font = Enum.Font.SourceSans
Button6.Text = "Kill Space Cat"
Button6.TextColor3 = Color3.new(1, 1, 1)
Button6.TextSize = 14
Button6.MouseButton1Down:connect(function()
if modifier == true then
modifier = false
Button6.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
else
modifier = true
Button6.BackgroundColor3 = Color3.new(40, 127, 71)
KillAllIdiots("Space Cat", "Moon", 2)
end
end)

Button7.Parent = GUI
Button7.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
Button7.Position = UDim2.new(0.525316477, 0, 0.833038366, 0)
Button7.Size = UDim2.new(0, 114, 0, 26)
Button7.Font = Enum.Font.SourceSans
Button7.Text = "Kill Mech Golem"
Button7.TextColor3 = Color3.new(1, 1, 1)
Button7.TextSize = 14
Button7.MouseButton1Down:connect(function()
if modifier == true then
modifier = false
Button7.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
else
modifier = true
Button7.BackgroundColor3 = Color3.new(40, 127, 71)
KillAllIdiots("Mech Golem", "Moon", 2)
end
end)

Button8.Parent = GUI
Button8.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
Button8.Position = UDim2.new(0.0284810122, 0, 0.833038366, 0)
Button8.Size = UDim2.new(0, 114, 0, 26)
Button8.Font = Enum.Font.SourceSans
Button8.Text = "Kill Futurion General"
Button8.TextColor3 = Color3.new(1, 1, 1)
Button8.TextSize = 14
Button8.MouseButton1Down:connect(function()
if modifier == true then
modifier = false
Button8.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
else
modifier = true
Button8.BackgroundColor3 = Color3.new(40, 127, 71)
KillAllIdiots("Futurion General", "Moon", 2)
end
end)
-- functions
--Anti-AFK
        local VirtualUser=game:service'VirtualUser'
        game:GetService("Players").LocalPlayer.Idled:connect(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end)

-- KillAllWarriors
function KillAllIdiots(mobName, area, sell)
while modifier do
hum = game.Players.LocalPlayer.Character.HumanoidRootPart
thePlayer = game.Players.LocalPlayer.Character
wait()
playerSword = game.Players.LocalPlayer.Data.Sword.Value
enemie = game.Workspace.Map:FindFirstChild(area).Enemies:GetChildren()
maxmoney = 639000000
for i = 1, #enemie do
	if enemie[i].Name == mobName and enemie[i].Humanoid.Health > 1 then
		money = game.Players.LocalPlayer.Data.Backpack.Value
		temp = money	
		-- if ur at max money it sells ur money
		if money >= maxmoney then
			if sell == 1 then
				hum.CFrame = CFrame.new(-95, 6, 77)
				wait(.3)
				hum.CFrame = CFrame.new(-94, 5, 73)
				wait(1)
				money = game.Players.LocalPlayer.Data.Backpack.Value	
				temp = money	
			else
				hum.CFrame = CFrame.new(-102, 6, -2483)
				wait(.3)
				hum.CFrame = CFrame.new(-103, 6, -2483)
				wait(1)
				money = game.Players.LocalPlayer.Data.Backpack.Value	
				temp = money					
			end
		end
		-- teleport to enemie
		hum.CFrame = enemie[i].PrimaryPart.CFrame * CFrame.new(0,-10,10) *CFrame.Angles(1.6,0,0)
		-- kill till ur backpack changes
		while money == temp and modifier do
			-- inital variables
			hum = game.Players.LocalPlayer.Character.HumanoidRootPart
			hum.CFrame = enemie[i].PrimaryPart.CFrame * CFrame.new(0,-10,10)*CFrame.Angles(1.6,0,0)
			thePlayer = game.Players.LocalPlayer.Character
			temp = game.Players.LocalPlayer.Data.Backpack.Value
			-- destroys projectiles
			debris = game.Workspace.Debris:GetChildren()
			for i = 1, #debris do
				if debris[i].Name == "Meteor" or debris[i].Name == "HitDetection" then
					debris[i]:Destroy()
				end
			end
			-- check if player is dead, if so wait till he respawns to keep going
			if thePlayer.Humanoid.Health < .2 then
				wait(6.5)
			end	
			-- very fast swinging sword
			local A_1 = enemie[i]:FindFirstChild("Humanoid")
			local A_2 = thePlayer:FindFirstChild(playerSword)
			local A_3 = enemie[i]:FindFirstChild("HumanoidRootPart")
			local A_3 = A_3.Position
			local A_4 = 5
			local Event = game:GetService("ReplicatedStorage").RemoteEvents.Client.SwordAttack
			Event:FireServer(A_1, A_2, A_3, A_4)
			wait()
		end
		-- pick up potion if it dropped
		debris = game.Workspace.Debris:GetChildren()
		for i = 1, #debris do
			if debris[i].Name == "Potion" then
				hum.CFrame = debris[i].PrimaryPart.CFrame
				wait(.1)
			end
		end
	end
end
end
end
