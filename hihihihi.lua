print("Bee Swarm Simulator Gui Created by LuckyMMB - Highly optimized & updated by Dinoz#2787")
print("Discord https://discord.gg/gKXjTf2")
print("V1.6 June 25th 2019")
print("\nEnabling the Avoid Vicious Bee button when doing an Auto Farm will tp you to a safe\nfield if a vicious bee is detected nearby while farming. When it leaves the field\nyou will tp back and continue farming.")
print("\nPress the j key when fireflys are in a field to farm Moon Tokens. You will tp to each\nfirefly and then pick up the moon token when dropped. If you dont get one press the key\nagain to make sure all the fireflys were touched. Keep doing this until the Fireflys leave.")
print("\nPress the h key to toggle Token Auto Gathering to pick up tokens near you.")
print("\nPress the y key to tp back to your hive and make honey from your gathered pollen.")
plr = game:GetService("Players").LocalPlayer
mouse = game.Players.LocalPlayer:GetMouse()
UIS = game:GetService'UserInputService'

Timer = 0
windykills = 0
TreactActiveTimer = 0
autostinger2Timer = 0
autostingerDBTimer = 0
waittime = 8
guidingobject = nil
collectcoconuts = false
collectmeteor = false
antfarmgoing = false
tokenfarmactiveold = false
farmThatSprout = false
farmThatguiding = false
windyfarm = false
windyfarmactive = false
guidingstar = false
windywasactive = false
mondoywasactive = false
windykillstarted = false
mondostarted = false
mondoalive = false
mondohunt = false
guidinghunt = false
commandohunt = false
killmondob = false
automarshmallow = false
AntFarmReady = false
GumDropActive2 = false
AntFarm = false
mtnboostactive = false
blueboostactive = false
redboostactive = false
switchnow = false
rotatingfieldsactive = false
sproutstarted = false
guidingstarted = false
sproutwasactive = false
guidingwasactive = false
mondowasactive = false
viciouswasactive = false
sproutsafety = false
pausehumcheck = false
SproutFarmActive = false
guidingFarmActive = false
FieldBoostActive = false
CollectTickets = false
AutoQuestActive = false
BadgeActive = false
GumDropActive = false
MonsterKillerActive = false
StartKilling = false
TreatActive = false
WealthClockActive = false
AutoDigActive = false
PollenFarmActive = false
Field1AFActive = false
Field2AFActive = false
Field3AFActive = false
Field4AFActive = false
Field5AFActive = false
Field6AFActive = false
Field7AFActive = false
Field8AFActive = false
Field9AFActive = false
Field10AFActive = false
Field11AFActive = false
Field12AFActive = false
Field13AFActive = false
Field14AFActive = false
Field15AFActive = false
Field1BLActive = true
Field2BLActive = true
Field3BLActive = true
Field4BLActive = true
Field5BLActive = true
Field6BLActive = true
Field7BLActive = true
Field8BLActive = true
Field9BLActive = true
Field10BLActive = true
Field11BLActive = true
Field12BLActive = true
Field13BLActive = true
Field14BLActive = true
Field15BLActive = true
Field16BLActive = true
Field17BLActive = true
resethive = false
HuntViciousActive = false
AvoidViciousActive = false
viciousbeenear = false
viciousbeedetected = false
guidingdetected = false
viciousdistance1 = ""
switchlocationmsg = false
tokenfarmactive = false
tokenfarmactive2 = false
farmzoneswitchback = false
switchingzone = false
FarmTempOFF = false
AvoidTempOFF = false
instantconverteractive = false
microconverteractive = false
hasgiftedvicious = false
quickkillactive = false
sproutkillstarted = false
guidingkillstarted = false
viciouskillstarted = false
monsterkilleractive = false
convertinghoney = false
honeytokenactive = true
autosprinkler = false
marshmallowbeeactive = false
autostinger = false
autostingerDB = false
collectbubbles = false
guidingteleport = false
bpstart = 0

--kill counter
viciouskills = 0
sproutkills = 0
beetlekills = 0
ladybugkills = 0
spiderkills = 0
scorpionkills = 0
mantiskills = 0
werewolfkills = 0
windykills = 0

-- Anti Idle
VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)

-- Objects
CoconutCollector = Instance.new("TextButton")
MeteorCollector = Instance.new("TextButton")
BubbleCollector = Instance.new("TextButton")
BlenderUse = Instance.new("TextButton")
RedBoostUse = Instance.new("TextButton")
BlueBoostUse = Instance.new("TextButton")
PetalShop = Instance.new("TextButton")
MtnBoostUse = Instance.new("TextButton")
DemonMaskEquip = Instance.new("TextButton")
GummyMaskEquip = Instance.new("TextButton")
DiamondMaskEquip = Instance.new("TextButton")
SproutButton = Instance.new("TextButton")
RotatingFields = Instance.new("TextButton")
HoneyGained = Instance.new("TextButton")
RunTimer = Instance.new("TextButton")
Viciouskills = Instance.new("TextLabel")
Windykills = Instance.new("TextLabel")
HuntMondo = Instance.new("TextButton")
HuntGuiding = Instance.new("TextButton")
--HuntCommando = Instance.new("TextButton")
local Sproutkills = Instance.new("TextLabel")
local Beetlekills = Instance.new("TextLabel")
local Ladybugkills = Instance.new("TextLabel")
local Spiderkills = Instance.new("TextLabel")
local Scorpionkills = Instance.new("TextLabel")
local Mantiskills = Instance.new("TextLabel")
local Werewolfkills = Instance.new("TextLabel")
local MainGUI = Instance.new("ScreenGui")
local OpenGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Close = Instance.new("TextButton")
local WayPoints = Instance.new("TextButton")
local WayPointsFrame = Instance.new("Frame")
local ShowLocation = Instance.new("TextLabel")
local SetLocation = Instance.new("TextButton")
local TPLocation = Instance.new("TextButton")
local ReturnToHive = Instance.new("TextButton")
local BlackBear = Instance.new("TextButton")
local BrownBear = Instance.new("TextButton")
local PandaBear = Instance.new("TextButton")
local PolarBear = Instance.new("TextButton")
local ScienceBear = Instance.new("TextButton")
local MotherBear = Instance.new("TextButton")
local TunnelBear = Instance.new("TextButton")
local RedBoost = Instance.new("TextButton")
local BlueBoost = Instance.new("TextButton")
local MountainBoost = Instance.new("TextButton")
local TPShop = Instance.new("TextButton")
local TPShop2 = Instance.new("TextButton")
local MountainTopShop = Instance.new("TextButton")
local TentShop = Instance.new("TextButton")
local RedClubhouse = Instance.new("TextButton")
local BlueClubhouse = Instance.new("TextButton")
local TicketShop = Instance.new("TextButton")
local RoyalJelly = Instance.new("TextButton")
local Honeystorm = Instance.new("TextButton")
local GiftedBuckoBee = Instance.new("TextButton")
local GiftedRileyBee = Instance.new("TextButton")
local StickBug = Instance.new("TextButton")
local DemonArea = Instance.new("TextButton")
local GummyArea = Instance.new("TextButton")
local DiamondMask = Instance.new("TextButton")
local BeeMan = Instance.new("TextButton")
local MoonAmulet = Instance.new("TextButton")
local Blender = Instance.new("TextButton")
local StrawBerryField = Instance.new("TextButton")
local PumpkinField = Instance.new("TextButton")
local SunflowerField = Instance.new("TextButton")
local CloverField = Instance.new("TextButton")
local SpiderField = Instance.new("TextButton")
local MushRoomField = Instance.new("TextButton")
local BamBooField = Instance.new("TextButton")
local DandelionField = Instance.new("TextButton")
local PineappleField = Instance.new("TextButton")
local BlueField = Instance.new("TextButton")
local RoseField = Instance.new("TextButton")
local CactusField = Instance.new("TextButton")
local PineTreeField = Instance.new("TextButton")
local MountainTopField = Instance.new("TextButton")
local StumpField = Instance.new("TextButton")
local StumpKill = Instance.new("TextButton")
local CoconutField = Instance.new("TextButton")
local PepperField = Instance.new("TextButton")
local KingbeetlesLair = Instance.new("TextButton")
local AntChallenge = Instance.new("TextButton")
local Onett = Instance.new("TextButton")
local StarHut = Instance.new("TextButton")
local SproutDispenser = Instance.new("TextButton")
local AvoidViciousBee = Instance.new("TextButton")
local FarmWindy = Instance.new("TextButton")
local Field1AF = Instance.new("TextButton")
local Field2AF = Instance.new("TextButton")
local Field3AF = Instance.new("TextButton")
local Field4AF = Instance.new("TextButton")
local Field5AF = Instance.new("TextButton")
local Field6AF = Instance.new("TextButton")
local Field7AF = Instance.new("TextButton")
local Field8AF = Instance.new("TextButton")
local Field9AF = Instance.new("TextButton")
local Field10AF = Instance.new("TextButton")
local Field11AF = Instance.new("TextButton")
local Field12AF = Instance.new("TextButton")
local Field13AF = Instance.new("TextButton")
local Field14AF = Instance.new("TextButton")
local Field15AF = Instance.new("TextButton")
local Field16AF = Instance.new("TextButton")
local Field17AF = Instance.new("TextButton")
Field1BL = Instance.new("TextButton")
Field2BL = Instance.new("TextButton")
Field3BL = Instance.new("TextButton")
Field4BL = Instance.new("TextButton")
Field5BL = Instance.new("TextButton")
Field6BL = Instance.new("TextButton")
Field7BL = Instance.new("TextButton")
Field8BL = Instance.new("TextButton")
Field9BL = Instance.new("TextButton")
Field10BL = Instance.new("TextButton")
Field11BL = Instance.new("TextButton")
Field12BL = Instance.new("TextButton")
Field13BL = Instance.new("TextButton")
Field14BL = Instance.new("TextButton")
Field15BL = Instance.new("TextButton")
Field16BL = Instance.new("TextButton")
Field17BL = Instance.new("TextButton")
local TimeLabel = Instance.new("TextLabel")
local Players = Instance.new("TextButton")
local PlayerFrame = Instance.new("Frame")
local PlayerList = Instance.new("Frame")
local PlayerListBox = Instance.new("Frame")
local PlyrSel = Instance.new("TextLabel")
local Player1 = Instance.new("TextButton")
local Player2 = Instance.new("TextButton")
local Player3 = Instance.new("TextButton")
local Player4 = Instance.new("TextButton")
local Player5 = Instance.new("TextButton")
local Player6 = Instance.new("TextButton")
local TpPlayer = Instance.new("TextButton")
local FindTreasures = Instance.new("TextButton")
local FindTreasuresText1 = Instance.new("TextLabel")
local PromoCodes = Instance.new("TextButton")
local ExtrasScreen = Instance.new("TextButton")
local ExtrasFrame = Instance.new("Frame")
local ViciousBeeFrame = Instance.new("Frame")
local InfoScreen = Instance.new("TextButton")
local InfoFrame = Instance.new("Frame")
local TPTool = Instance.new("TextButton")
local AutoStingerToggle = Instance.new("TextButton")
local ReJoinServer = Instance.new("TextButton")
local NoClip = Instance.new("TextButton")
local InfoText1 = Instance.new("TextLabel")
local HuntViciousBee = Instance.new("TextButton")
local ViciousBeeDetect = Instance.new("TextLabel")
local FireflyDetect = Instance.new("TextLabel")
local SproutDetect = Instance.new("TextLabel")
local WindyDetect = Instance.new("TextLabel")
local PollenFarm = Instance.new("TextButton")
local FarmFrame = Instance.new("Frame")
local StartFarm = Instance.new("TextButton")
local AutoDig = Instance.new("TextButton")
local TokenToggleLabel = Instance.new("TextLabel")
local TokenToggle = Instance.new("TextBox")
local FireflyToggleLabel = Instance.new("TextLabel")
local FireflyToggle = Instance.new("TextBox")
local HoneyToggleLabel = Instance.new("TextLabel")
local HoneyToggle = Instance.new("TextBox")
local InfJumpToggle = Instance.new("TextButton")
local WealthClockToggle = Instance.new("TextButton")
local AutoSprinklerToggle = Instance.new("TextButton")
local CollectAllTickets = Instance.new("TextButton")
local BadgeToggle = Instance.new("TextButton")
local GumDropToggle = Instance.new("TextButton")
local MonsterKillerToggle = Instance.new("TextButton")
local TreatToggle = Instance.new("TextButton")
local SproutFarmToggle = Instance.new("TextButton")
local InfBackpack = Instance.new("TextButton")
local KillCounter = Instance.new("TextButton")
local KillCounterFrame = Instance.new("Frame")
local InstantConverterToggle = Instance.new("TextButton")
local MicroConverterToggle = Instance.new("TextButton")
local MarshmallowToggle = Instance.new("TextButton")
local AutoAntFarm = Instance.new("TextButton")
local QuickKillToggle = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local OpenFrame = Instance.new("Frame")
local OpenButton = Instance.new("TextButton")
local DailyHoney = Instance.new("TextLabel")
local Timers = Instance.new("TextButton")
local TimersFrame = Instance.new("Frame")
local TunnelBearTB = Instance.new("TextLabel")
local KingBeetleTB = Instance.new("TextLabel")
local SnailTB = Instance.new("TextLabel")
local MoonButton = Instance.new("TextButton")
local BPCount = Instance.new("TextLabel")
local HoneyStormButton = Instance.new("TextButton")
local FireMaskButton = Instance.new("TextButton")
local BubbleMaskButton = Instance.new("TextButton")
local AntChallButton = Instance.new("TextButton")
local ClBeetle = Instance.new("TextLabel")
local ClLadybug = Instance.new("TextLabel")
local BFBeetle = Instance.new("TextLabel")
local BaBeetle = Instance.new("TextLabel")
local BaBeetle2 = Instance.new("TextLabel")
local PiBeetle = Instance.new("TextLabel")
local PiMantis = Instance.new("TextLabel")
local SpSpider = Instance.new("TextLabel")
local MuLadybug = Instance.new("TextLabel")
local StLadybug = Instance.new("TextLabel")
local StLadybug2 = Instance.new("TextLabel")
local RoScorpion = Instance.new("TextLabel")
local RoScorpion2 = Instance.new("TextLabel")
local CaWerewolf = Instance.new("TextLabel")
local PiMantis1 = Instance.new("TextLabel")
local PiMantis2 = Instance.new("TextLabel")
local CocoCrab = Instance.new("TextLabel")
local OldTokenFarm = Instance.new("TextButton")
local StopFarmingLabel = Instance.new("TextLabel")
local StopFarming = Instance.new("TextButton")

-- Properties

MainGUI.Name = "MainGUI"
MainGUI.Parent = game.CoreGui
local MainCORE = game.CoreGui["MainGUI"]

OpenGUI.Name = "OpenGUI"
OpenGUI.Parent = game.CoreGui
local OpenCORE = game.CoreGui["OpenGUI"]

MainFrame.Name = "MainFrame"
MainFrame.Parent = MainGUI
MainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MainFrame.BackgroundTransparency = 0.3
MainFrame.BorderColor3 = Color3.new(0, 0, 0)
MainFrame.Position = UDim2.new(.5, -393, 0, 33)
MainFrame.Size = UDim2.new(0, 798, 0, 30)
MainFrame.Draggable = true
MainFrame.Active = true

OpenFrame.Name = "OpenFrame"
OpenFrame.Parent = OpenGUI
OpenFrame.BackgroundColor3 = Color3.new(0, 0, 0)
OpenFrame.BackgroundTransparency = 0.3
OpenFrame.BorderColor3 = Color3.new(0, 0, 0)
OpenFrame.Position = UDim2.new(0, 0, .9, 0)
OpenFrame.Size = UDim2.new(0, 60, 0, 30)
OpenFrame.Draggable = true
OpenFrame.Visible = false

OpenButton.Name = "Minimize"
OpenButton.Parent = OpenFrame
OpenButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
OpenButton.BorderColor3 = Color3.new(0, 1, 0)
OpenButton.Position = UDim2.new(0, 0, 0, 0)
OpenButton.Size = UDim2.new(1, 0, 1, 0)
OpenButton.Font = Enum.Font.Fantasy
OpenButton.Text = "OPEN"
OpenButton.TextColor3 = Color3.new(0,0,1)
OpenButton.TextSize = 17
OpenButton.TextScaled = true
OpenButton.TextWrapped = true

Minimize.Name = "Minimize"
Minimize.Parent = MainFrame
Minimize.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Minimize.BorderColor3 = Color3.new(0, 1, 0)
Minimize.Position = UDim2.new(0, 5, 0, 5)
Minimize.Size = UDim2.new(0, 20, 0, 20)
Minimize.Font = Enum.Font.Fantasy
Minimize.Text = "-"
Minimize.TextColor3 = Color3.new(0,0,1)
Minimize.TextSize = 17
Minimize.TextScaled = true
Minimize.TextWrapped = true

Close.Name = "Close"
Close.Parent = MainFrame
Close.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Close.BorderColor3 = Color3.new(0, 1, 0)
Close.Position = UDim2.new(0, 30, 0, 5)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.Font = Enum.Font.Fantasy
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 0, 0)
Close.TextSize = 17
Close.TextScaled = true
Close.TextWrapped = true

WayPoints.Name = "WayPoints"
WayPoints.Parent = MainFrame
WayPoints.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
WayPoints.BorderColor3 = Color3.new(0, 1, 0)
WayPoints.Position = UDim2.new(0, 55, 0, 5)
WayPoints.Size = UDim2.new(0, 83, 0, 20)
WayPoints.Font = Enum.Font.Fantasy
WayPoints.TextColor3 = Color3.new(1, 1, 1)
WayPoints.Text = "WayPoints"
WayPoints.TextSize = 17
WayPoints.TextWrapped = true

WayPointsFrame.Name = "WayPointsFrame"
WayPointsFrame.Parent = MainFrame
WayPointsFrame.BackgroundColor3 = Color3.new(0, 0, 0)
WayPointsFrame.BorderColor3 = Color3.new(0, 0, 0)
WayPointsFrame.BackgroundTransparency = 0.3
WayPointsFrame.Position = UDim2.new(0, 0, 0, 34)
WayPointsFrame.Size = UDim2.new(0, 700, 0, 480)
WayPointsFrame.Visible = false
WayPointsFrame.ZIndex = 1

ShowLocation.Name = "ShowLocation"
ShowLocation.Parent = WayPointsFrame
ShowLocation.BackgroundColor3 = Color3.new(1, 1, 1)
ShowLocation.TextColor3 = Color3.new(0, 0, 0)
ShowLocation.BorderColor3 = Color3.new(0, 0, 0)
ShowLocation.Position = UDim2.new(0, 230, 0, 5)
ShowLocation.Size = UDim2.new(0, 180, 0, 20)
ShowLocation.Font = Enum.Font.Fantasy
ShowLocation.Text = "Current Location"
ShowLocation.TextWrapped = true
ShowLocation.TextSize = 15

SetLocation.Name = "SetLocation"
SetLocation.Parent = WayPointsFrame
SetLocation.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SetLocation.TextColor3 = Color3.new(1, 1, 1)
SetLocation.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
SetLocation.Position = UDim2.new(0, 455, 0, 5)
SetLocation.Size = UDim2.new(0, 190, 0, 20)
SetLocation.Font = Enum.Font.Fantasy
SetLocation.Text = "Set Location"
SetLocation.TextWrapped = true
SetLocation.TextSize = 16

TPLocation.Name = "TPLocation"
TPLocation.Parent = WayPointsFrame
TPLocation.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TPLocation.TextColor3 = Color3.new(1, 1, 1)
TPLocation.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TPLocation.Position = UDim2.new(0, 610, 0, 5)
TPLocation.Size = UDim2.new(0, 65, 0, 20)
TPLocation.Font = Enum.Font.Fantasy
TPLocation.Text = "Move to"
TPLocation.TextWrapped = true
TPLocation.TextSize = 16

ReturnToHive.Name = "ReturnToHive"
ReturnToHive.Parent = WayPointsFrame
ReturnToHive.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ReturnToHive.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
ReturnToHive.Position = UDim2.new(0, 5, 0, 5)
ReturnToHive.Size = UDim2.new(0, 180, 0, 20)
ReturnToHive.TextColor3 = Color3.new(1, 1, 1)
ReturnToHive.Font = Enum.Font.Fantasy
ReturnToHive.Text = "Return To Hive"
ReturnToHive.TextSize = 16

BlackBear.Name = "BlackBear"
BlackBear.Parent = WayPointsFrame
BlackBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BlackBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BlackBear.Position = UDim2.new(0, 5, 0, 30)
BlackBear.Size = UDim2.new(0, 180, 0, 20)
BlackBear.TextColor3 = Color3.new(1, 1, 1)
BlackBear.Font = Enum.Font.Fantasy
BlackBear.Text = "Black Bear"
BlackBear.TextSize = 16

BrownBear.Name = "BrownBear"
BrownBear.Parent = WayPointsFrame
BrownBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BrownBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BrownBear.Position = UDim2.new(0, 5, 0, 55)
BrownBear.Size = UDim2.new(0, 180, 0, 20)
BrownBear.TextColor3 = Color3.new(1, 1, 1)
BrownBear.Font = Enum.Font.Fantasy
BrownBear.Text = "Brown Bear"
BrownBear.TextSize = 16

PandaBear.Name = "PandaBear"
PandaBear.Parent = WayPointsFrame
PandaBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PandaBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PandaBear.Position = UDim2.new(0, 5, 0, 80)
PandaBear.Size = UDim2.new(0, 180, 0, 20)
PandaBear.TextColor3 = Color3.new(1, 1, 1)
PandaBear.Font = Enum.Font.Fantasy
PandaBear.Text = "Panda Bear"
PandaBear.TextSize = 16

PolarBear.Name = "PolarBear"
PolarBear.Parent = WayPointsFrame
PolarBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PolarBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PolarBear.Position = UDim2.new(0, 5, 0, 105)
PolarBear.Size = UDim2.new(0, 180, 0, 20)
PolarBear.TextColor3 = Color3.new(1, 1, 1)
PolarBear.Font = Enum.Font.Fantasy
PolarBear.Text = "Polar Bear"
PolarBear.TextSize = 16

ScienceBear.Name = "ScienceBear"
ScienceBear.Parent = WayPointsFrame
ScienceBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ScienceBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
ScienceBear.Position = UDim2.new(0, 5, 0, 130)
ScienceBear.Size = UDim2.new(0, 180, 0, 20)
ScienceBear.TextColor3 = Color3.new(1, 1, 1)
ScienceBear.Font = Enum.Font.Fantasy
ScienceBear.Text = "Science Bear"
ScienceBear.TextSize = 16

MotherBear.Name = "MotherBear"
MotherBear.Parent = WayPointsFrame
MotherBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MotherBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MotherBear.Position = UDim2.new(0, 5, 0, 155)
MotherBear.Size = UDim2.new(0, 180, 0, 20)
MotherBear.TextColor3 = Color3.new(1, 1, 1)
MotherBear.Font = Enum.Font.Fantasy
MotherBear.Text = "Mother Bear"
MotherBear.TextSize = 16

TunnelBear.Name = "TunnelBear"
TunnelBear.Parent = WayPointsFrame
TunnelBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TunnelBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TunnelBear.Position = UDim2.new(0, 5, 0, 180)
TunnelBear.Size = UDim2.new(0, 180, 0, 20)
TunnelBear.TextColor3 = Color3.new(1, 1, 1)
TunnelBear.Font = Enum.Font.Fantasy
TunnelBear.Text = "Tunnel Bear"
TunnelBear.TextSize = 16

Onett.Name = "Onett"
Onett.Parent = WayPointsFrame
Onett.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Onett.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Onett.Position = UDim2.new(0, 5, 0, 205)
Onett.Size = UDim2.new(0, 180, 0, 20)
Onett.TextColor3 = Color3.new(1, 1, 1)
Onett.Font = Enum.Font.Fantasy
Onett.Text = "Onett"
Onett.TextSize = 16

RedBoost.Name = "RedBoost"
RedBoost.Parent = WayPointsFrame
RedBoost.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
RedBoost.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
RedBoost.Position = UDim2.new(0, 5, 0, 230)
RedBoost.Size = UDim2.new(0, 180, 0, 20)
RedBoost.TextColor3 = Color3.new(1, 1, 1)
RedBoost.Font = Enum.Font.Fantasy
RedBoost.Text = "Red Field Booster"
RedBoost.TextSize = 16

RedBoostUse.Name = "RedBoostUse"
RedBoostUse.Parent = WayPointsFrame
RedBoostUse.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
RedBoostUse.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
RedBoostUse.Position = UDim2.new(0, 185, 0, 230)
RedBoostUse.Size = UDim2.new(0, 40, 0, 20)
RedBoostUse.TextColor3 = Color3.new(1, 1, 1)
RedBoostUse.Font = Enum.Font.Fantasy
RedBoostUse.Text = "Use"
RedBoostUse.TextSize = 16

BlueBoost.Name = "BlueBoost"
BlueBoost.Parent = WayPointsFrame
BlueBoost.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BlueBoost.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BlueBoost.Position = UDim2.new(0, 5, 0, 255)
BlueBoost.Size = UDim2.new(0, 180, 0, 20)
BlueBoost.TextColor3 = Color3.new(1, 1, 1)
BlueBoost.Font = Enum.Font.Fantasy
BlueBoost.Text = "Blue Field Booster"
BlueBoost.TextSize = 16

BlueBoostUse.Name = "BlueBoostUse"
BlueBoostUse.Parent = WayPointsFrame
BlueBoostUse.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BlueBoostUse.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BlueBoostUse.Position = UDim2.new(0, 185, 0, 255)
BlueBoostUse.Size = UDim2.new(0, 40, 0, 20)
BlueBoostUse.TextColor3 = Color3.new(1, 1, 1)
BlueBoostUse.Font = Enum.Font.Fantasy
BlueBoostUse.Text = "Use"
BlueBoostUse.TextSize = 16

MountainBoost.Name = "MountainBoost"
MountainBoost.Parent = WayPointsFrame
MountainBoost.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MountainBoost.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MountainBoost.Position = UDim2.new(0, 5, 0, 280)
MountainBoost.Size = UDim2.new(0, 180, 0, 20)
MountainBoost.TextColor3 = Color3.new(1, 1, 1)
MountainBoost.Font = Enum.Font.Fantasy
MountainBoost.Text = "MountainTop Booster"
MountainBoost.TextSize = 16

MtnBoostUse.Name = "MtnBoostUse"
MtnBoostUse.Parent = WayPointsFrame
MtnBoostUse.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MtnBoostUse.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MtnBoostUse.Position = UDim2.new(0, 185, 0, 280)
MtnBoostUse.Size = UDim2.new(0, 40, 0, 20)
MtnBoostUse.TextColor3 = Color3.new(1, 1, 1)
MtnBoostUse.Font = Enum.Font.Fantasy
MtnBoostUse.Text = "Use"
MtnBoostUse.TextSize = 16

AntChallenge.Name = "AntChallenge"
AntChallenge.Parent = WayPointsFrame
AntChallenge.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
AntChallenge.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AntChallenge.Position = UDim2.new(0, 5, 0, 305)
AntChallenge.Size = UDim2.new(0, 180, 0, 20)
AntChallenge.TextColor3 = Color3.new(1, 1, 1)
AntChallenge.Font = Enum.Font.Fantasy
AntChallenge.Text = "Ant Challenge"
AntChallenge.TextSize = 16

AntChallButton.Name = "AntChallButton"
AntChallButton.Parent = WayPointsFrame
AntChallButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
AntChallButton.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AntChallButton.Position = UDim2.new(0, 185, 0, 305)
AntChallButton.Size = UDim2.new(0, 40, 0, 20)
AntChallButton.TextColor3 = Color3.new(1, 1, 1)
AntChallButton.Font = Enum.Font.Fantasy
AntChallButton.Text = "Start"
AntChallButton.TextSize = 16

KingbeetlesLair.Name = "KingbeetlesLair"
KingbeetlesLair.Parent = WayPointsFrame
KingbeetlesLair.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
KingbeetlesLair.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
KingbeetlesLair.Position = UDim2.new(0, 5, 0, 330)
KingbeetlesLair.Size = UDim2.new(0, 180, 0, 20)
KingbeetlesLair.TextColor3 = Color3.new(1, 1, 1)
KingbeetlesLair.Font = Enum.Font.Fantasy
KingbeetlesLair.Text = "King Beetles Lair"
KingbeetlesLair.TextSize = 16

GiftedBuckoBee.Name = "GiftedBuckoBee"
GiftedBuckoBee.Parent = WayPointsFrame
GiftedBuckoBee.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
GiftedBuckoBee.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
GiftedBuckoBee.Position = UDim2.new(0, 5, 0, 355)
GiftedBuckoBee.Size = UDim2.new(0, 180, 0, 20)
GiftedBuckoBee.TextColor3 = Color3.new(1, 1, 1)
GiftedBuckoBee.Font = Enum.Font.Fantasy
GiftedBuckoBee.Text = "Gifted Bucko Bee"
GiftedBuckoBee.TextSize = 16

GiftedRileyBee.Name = "GiftedRileyBee"
GiftedRileyBee.Parent = WayPointsFrame
GiftedRileyBee.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
GiftedRileyBee.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
GiftedRileyBee.Position = UDim2.new(0, 5, 0, 380)
GiftedRileyBee.Size = UDim2.new(0, 180, 0, 20)
GiftedRileyBee.TextColor3 = Color3.new(1, 1, 1)
GiftedRileyBee.Font = Enum.Font.Fantasy
GiftedRileyBee.Text = "Gifted Riley Bee"
GiftedRileyBee.TextSize = 16

TPShop.Name = "TPShop"
TPShop.Parent = WayPointsFrame
TPShop.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TPShop.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TPShop.Position = UDim2.new(0, 5, 0, 405)
TPShop.Size = UDim2.new(0, 180, 0, 20)
TPShop.TextColor3 = Color3.new(1, 1, 1)
TPShop.Font = Enum.Font.Fantasy
TPShop.Text = "Basic Tools Shop"
TPShop.TextSize = 16

TPShop2.Name = "TPShop2"
TPShop2.Parent = WayPointsFrame
TPShop2.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TPShop2.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TPShop2.Position = UDim2.new(0, 5, 0, 430)
TPShop2.Size = UDim2.new(0, 180, 0, 20)
TPShop2.TextColor3 = Color3.new(1, 1, 1)
TPShop2.Font = Enum.Font.Fantasy
TPShop2.Text = "Advanced Tools Shop"
TPShop2.TextSize = 16

PetalShop.Name = "PetalShop"
PetalShop.Parent = WayPointsFrame
PetalShop.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PetalShop.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PetalShop.Position = UDim2.new(0, 5, 0, 455)
PetalShop.Size = UDim2.new(0, 180, 0, 20)
PetalShop.TextColor3 = Color3.new(1, 1, 1)
PetalShop.Font = Enum.Font.Fantasy
PetalShop.Text = "Petal Shop"
PetalShop.TextSize = 16

RoyalJelly.Name = "RoyalJelly"
RoyalJelly.Parent = WayPointsFrame
RoyalJelly.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
RoyalJelly.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
RoyalJelly.Position = UDim2.new(0, 230, 0, 30)
RoyalJelly.Size = UDim2.new(0, 180, 0, 20)
RoyalJelly.TextColor3 = Color3.new(1, 1, 1)
RoyalJelly.Font = Enum.Font.Fantasy
RoyalJelly.Text = "Royal Jelly(honey)"
RoyalJelly.TextSize = 16

StarHut.Name = "StarHut"
StarHut.Parent = WayPointsFrame
StarHut.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
StarHut.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StarHut.Position = UDim2.new(0, 230, 0, 55)
StarHut.Size = UDim2.new(0, 180, 0, 20)
StarHut.TextColor3 = Color3.new(1, 1, 1)
StarHut.Font = Enum.Font.Fantasy
StarHut.Text = "Star Hall"
StarHut.TextSize = 16

StickBug.Name = "StickBug"
StickBug.Parent = WayPointsFrame
StickBug.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
StickBug.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StickBug.Position = UDim2.new(0, 230, 0, 80)
StickBug.Size = UDim2.new(0, 180, 0, 20)
StickBug.TextColor3 = Color3.new(1, 1, 1)
StickBug.Font = Enum.Font.Fantasy
StickBug.Text = "Stick Bug"
StickBug.TextSize = 16

SproutDispenser.Name = "SproutDispenser"
SproutDispenser.Parent = WayPointsFrame
SproutDispenser.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SproutDispenser.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
SproutDispenser.Position = UDim2.new(0, 230, 0, 105)
SproutDispenser.Size = UDim2.new(0, 180, 0, 20)
SproutDispenser.TextColor3 = Color3.new(1, 1, 1)
SproutDispenser.Font = Enum.Font.Fantasy
SproutDispenser.Text = "Summon a Sprout"
SproutDispenser.TextSize = 16

SproutButton.Name = "SproutButton"
SproutButton.Parent = WayPointsFrame
SproutButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SproutButton.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
SproutButton.Position = UDim2.new(0, 410, 0, 105)
SproutButton.Size = UDim2.new(0, 40, 0, 20)
SproutButton.TextColor3 = Color3.new(1, 1, 1)
SproutButton.Font = Enum.Font.Fantasy
SproutButton.Text = "Use"
SproutButton.TextSize = 16

Blender.Name = "Blender"
Blender.Parent = WayPointsFrame
Blender.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Blender.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Blender.Position = UDim2.new(0, 230, 0, 130)
Blender.Size = UDim2.new(0, 180, 0, 20)
Blender.TextColor3 = Color3.new(1, 1, 1)
Blender.Font = Enum.Font.Fantasy
Blender.Text = "Blender"
Blender.TextSize = 16

BlenderUse.Name = "BlenderUse"
BlenderUse.Parent = WayPointsFrame
BlenderUse.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BlenderUse.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BlenderUse.Position = UDim2.new(0, 410, 0, 130)
BlenderUse.Size = UDim2.new(0, 40, 0, 20)
BlenderUse.TextColor3 = Color3.new(1, 1, 1)
BlenderUse.Font = Enum.Font.Fantasy
BlenderUse.Text = "Use"
BlenderUse.TextSize = 16

MoonAmulet.Name = "MoonAmulet"
MoonAmulet.Parent = WayPointsFrame
MoonAmulet.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MoonAmulet.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MoonAmulet.Position = UDim2.new(0, 230, 0, 155)
MoonAmulet.Size = UDim2.new(0, 180, 0, 20)
MoonAmulet.TextColor3 = Color3.new(1, 1, 1)
MoonAmulet.Font = Enum.Font.Fantasy
MoonAmulet.Text = "Moon Amulet"
MoonAmulet.TextSize = 16

MoonButton.Name = "MoonButton"
MoonButton.Parent = WayPointsFrame
MoonButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MoonButton.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MoonButton.Position = UDim2.new(0, 410, 0, 155)
MoonButton.Size = UDim2.new(0, 40, 0, 20)
MoonButton.TextColor3 = Color3.new(1, 1, 1)
MoonButton.Font = Enum.Font.Fantasy
MoonButton.Text = "Create"
MoonButton.TextSize = 16

DemonArea.Name = "DemonArea"
DemonArea.Parent = WayPointsFrame
DemonArea.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
DemonArea.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
DemonArea.Position = UDim2.new(0, 230, 0, 180)
DemonArea.Size = UDim2.new(0, 180, 0, 20)
DemonArea.TextColor3 = Color3.new(1, 1, 1)
DemonArea.Font = Enum.Font.Fantasy
DemonArea.Text = "Demon Mask/Area"
DemonArea.TextSize = 16

DemonMaskEquip.Name = "DemonMaskEquip"
DemonMaskEquip.Parent = WayPointsFrame
DemonMaskEquip.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
DemonMaskEquip.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
DemonMaskEquip.Position = UDim2.new(0, 410, 0, 180)
DemonMaskEquip.Size = UDim2.new(0, 40, 0, 20)
DemonMaskEquip.TextColor3 = Color3.new(1, 1, 1)
DemonMaskEquip.Font = Enum.Font.Fantasy
DemonMaskEquip.Text = "Equip"
DemonMaskEquip.TextSize = 16

GummyArea.Name = "GummyArea"
GummyArea.Parent = WayPointsFrame
GummyArea.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
GummyArea.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
GummyArea.Position = UDim2.new(0, 230, 0, 205)
GummyArea.Size = UDim2.new(0, 180, 0, 20)
GummyArea.TextColor3 = Color3.new(1, 1, 1)
GummyArea.Font = Enum.Font.Fantasy
GummyArea.Text = "Gummy Mask/Area"
GummyArea.TextSize = 16

GummyMaskEquip.Name = "GummyMaskEquip"
GummyMaskEquip.Parent = WayPointsFrame
GummyMaskEquip.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
GummyMaskEquip.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
GummyMaskEquip.Position = UDim2.new(0, 410, 0, 205)
GummyMaskEquip.Size = UDim2.new(0, 40, 0, 20)
GummyMaskEquip.TextColor3 = Color3.new(1, 1, 1)
GummyMaskEquip.Font = Enum.Font.Fantasy
GummyMaskEquip.Text = "Equip"
GummyMaskEquip.TextSize = 16

DiamondMask.Name = "DiamondMask"
DiamondMask.Parent = WayPointsFrame
DiamondMask.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
DiamondMask.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
DiamondMask.Position = UDim2.new(0, 230, 0, 230)
DiamondMask.Size = UDim2.new(0, 180, 0, 20)
DiamondMask.TextColor3 = Color3.new(1, 1, 1)
DiamondMask.Font = Enum.Font.Fantasy
DiamondMask.Text = "Diamond Mask/Area"
DiamondMask.TextSize = 16

DiamondMaskEquip.Name = "DiamondMaskEquip"
DiamondMaskEquip.Parent = WayPointsFrame
DiamondMaskEquip.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
DiamondMaskEquip.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
DiamondMaskEquip.Position = UDim2.new(0, 410, 0, 230)
DiamondMaskEquip.Size = UDim2.new(0, 40, 0, 20)
DiamondMaskEquip.TextColor3 = Color3.new(1, 1, 1)
DiamondMaskEquip.Font = Enum.Font.Fantasy
DiamondMaskEquip.Text = "Equip"
DiamondMaskEquip.TextSize = 16

Honeystorm.Name = "Honeystorm"
Honeystorm.Parent = WayPointsFrame
Honeystorm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Honeystorm.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Honeystorm.Position = UDim2.new(0, 230, 0, 255)
Honeystorm.Size = UDim2.new(0, 180, 0, 20)
Honeystorm.TextColor3 = Color3.new(1, 1, 1)
Honeystorm.Font = Enum.Font.Fantasy
Honeystorm.Text = "Summon a Honeystorm"
Honeystorm.TextSize = 16

HoneyStormButton.Name = "HoneyStormButton"
HoneyStormButton.Parent = WayPointsFrame
HoneyStormButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
HoneyStormButton.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
HoneyStormButton.Position = UDim2.new(0, 410, 0, 255)
HoneyStormButton.Size = UDim2.new(0, 40, 0, 20)
HoneyStormButton.TextColor3 = Color3.new(1, 1, 1)
HoneyStormButton.Font = Enum.Font.Fantasy
HoneyStormButton.Text = "Summ"
HoneyStormButton.TextSize = 16

TentShop.Name = "TentShop"
TentShop.Parent = WayPointsFrame
TentShop.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TentShop.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TentShop.Position = UDim2.new(0, 230, 0, 280)
TentShop.Size = UDim2.new(0, 180, 0, 20)
TentShop.TextColor3 = Color3.new(1, 1, 1)
TentShop.Font = Enum.Font.Fantasy
TentShop.Text = "Ticket Tent Shop"
TentShop.TextSize = 16

RedClubhouse.Name = "RedClubhouse"
RedClubhouse.Parent = WayPointsFrame
RedClubhouse.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
RedClubhouse.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
RedClubhouse.Position = UDim2.new(0, 230, 0, 305)
RedClubhouse.Size = UDim2.new(0, 180, 0, 20)
RedClubhouse.TextColor3 = Color3.new(1, 1, 1)
RedClubhouse.Font = Enum.Font.Fantasy
RedClubhouse.Text = "Red Club/Fire Mask"
RedClubhouse.TextSize = 16

FireMaskButton.Name = "FireMaskButton"
FireMaskButton.Parent = WayPointsFrame
FireMaskButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
FireMaskButton.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
FireMaskButton.Position = UDim2.new(0, 410, 0, 305)
FireMaskButton.Size = UDim2.new(0, 40, 0, 20)
FireMaskButton.TextColor3 = Color3.new(1, 1, 1)
FireMaskButton.Font = Enum.Font.Fantasy
FireMaskButton.Text = "Equip"
FireMaskButton.TextSize = 16

BlueClubhouse.Name = "BlueClubhouse"
BlueClubhouse.Parent = WayPointsFrame
BlueClubhouse.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BlueClubhouse.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BlueClubhouse.Position = UDim2.new(0, 230, 0, 330)
BlueClubhouse.Size = UDim2.new(0, 180, 0, 20)
BlueClubhouse.TextColor3 = Color3.new(1, 1, 1)
BlueClubhouse.Font = Enum.Font.Fantasy
BlueClubhouse.Text = "Blue Club/Bubble Mask"
BlueClubhouse.TextSize = 16

BubbleMaskButton.Name = "BubbleMaskButton"
BubbleMaskButton.Parent = WayPointsFrame
BubbleMaskButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BubbleMaskButton.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BubbleMaskButton.Position = UDim2.new(0, 410, 0, 330)
BubbleMaskButton.Size = UDim2.new(0, 40, 0, 20)
BubbleMaskButton.TextColor3 = Color3.new(1, 1, 1)
BubbleMaskButton.Font = Enum.Font.Fantasy
BubbleMaskButton.Text = "Equip"
BubbleMaskButton.TextSize = 16

BeeMan.Name = "BeeMan"
BeeMan.Parent = WayPointsFrame
BeeMan.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BeeMan.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BeeMan.Position = UDim2.new(0, 230, 0, 355)
BeeMan.Size = UDim2.new(0, 180, 0, 20)
BeeMan.TextColor3 = Color3.new(1, 1, 1)
BeeMan.Font = Enum.Font.Fantasy
BeeMan.Text = "Bee Man"
BeeMan.TextSize = 16

TicketShop.Name = "TicketShop"
TicketShop.Parent = WayPointsFrame
TicketShop.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TicketShop.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TicketShop.Position = UDim2.new(0, 230, 0, 380)
TicketShop.Size = UDim2.new(0, 180, 0, 20)
TicketShop.TextColor3 = Color3.new(1, 1, 1)
TicketShop.Font = Enum.Font.Fantasy
TicketShop.Text = "Ticket Dispenser"
TicketShop.TextSize = 16

MountainTopShop.Name = "MountainTopShop"
MountainTopShop.Parent = WayPointsFrame
MountainTopShop.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MountainTopShop.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MountainTopShop.Position = UDim2.new(0, 230, 0, 405)
MountainTopShop.Size = UDim2.new(0, 180, 0, 20)
MountainTopShop.TextColor3 = Color3.new(1, 1, 1)
MountainTopShop.Font = Enum.Font.Fantasy
MountainTopShop.Text = "Mountain Top Shop"
MountainTopShop.TextSize = 16

SunflowerField.Name = "SunflowerField"
SunflowerField.Parent = WayPointsFrame
SunflowerField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SunflowerField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
SunflowerField.Position = UDim2.new(0, 455, 0, 30)
SunflowerField.Size = UDim2.new(0, 180, 0, 20)
SunflowerField.TextColor3 = Color3.new(1, 1, 1)
SunflowerField.Font = Enum.Font.Fantasy
SunflowerField.Text = "Sunflower Field"
SunflowerField.TextSize = 16

MushRoomField.Name = "MushRoomField"
MushRoomField.Parent = WayPointsFrame
MushRoomField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MushRoomField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MushRoomField.Position = UDim2.new(0, 455, 0, 55)
MushRoomField.Size = UDim2.new(0, 180, 0, 20)
MushRoomField.TextColor3 = Color3.new(1, 1, 1)
MushRoomField.Font = Enum.Font.Fantasy
MushRoomField.Text = "Mushroom Field"
MushRoomField.TextSize = 16

DandelionField.Name = "DandelionField"
DandelionField.Parent = WayPointsFrame
DandelionField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
DandelionField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
DandelionField.Position = UDim2.new(0, 455, 0, 80)
DandelionField.Size = UDim2.new(0, 180, 0, 20)
DandelionField.TextColor3 = Color3.new(1, 1, 1)
DandelionField.Font = Enum.Font.Fantasy
DandelionField.Text = "Dandelion Field"
DandelionField.TextSize = 16

BlueField.Name = "BlueField"
BlueField.Parent = WayPointsFrame
BlueField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BlueField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BlueField.Position = UDim2.new(0, 455, 0, 105)
BlueField.Size = UDim2.new(0, 180, 0, 20)
BlueField.TextColor3 = Color3.new(1, 1, 1)
BlueField.Font = Enum.Font.Fantasy
BlueField.Text = "Blue Flower Field"
BlueField.TextSize = 16

CloverField.Name = "CloverField"
CloverField.Parent = WayPointsFrame
CloverField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
CloverField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
CloverField.Position = UDim2.new(0, 455, 0, 130)
CloverField.Size = UDim2.new(0, 180, 0, 20)
CloverField.TextColor3 = Color3.new(1, 1, 1)
CloverField.Font = Enum.Font.Fantasy
CloverField.Text = "Clover Field"
CloverField.TextSize = 16

StrawBerryField.Name = "StrawBerryField"
StrawBerryField.Parent = WayPointsFrame
StrawBerryField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
StrawBerryField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StrawBerryField.Position = UDim2.new(0, 455, 0, 155)
StrawBerryField.Size = UDim2.new(0, 180, 0, 20)
StrawBerryField.TextColor3 = Color3.new(1, 1, 1)
StrawBerryField.Font = Enum.Font.Fantasy
StrawBerryField.Text = "Strawberry Field"
StrawBerryField.TextSize = 16

SpiderField.Name = "SpiderField"
SpiderField.Parent = WayPointsFrame
SpiderField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SpiderField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
SpiderField.Position = UDim2.new(0, 455, 0, 180)
SpiderField.Size = UDim2.new(0, 180, 0, 20)
SpiderField.TextColor3 = Color3.new(1, 1, 1)
SpiderField.Font = Enum.Font.Fantasy
SpiderField.Text = "Spider Field"
SpiderField.TextSize = 16

BamBooField.Name = "BamBooField"
BamBooField.Parent = WayPointsFrame
BamBooField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BamBooField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BamBooField.Position = UDim2.new(0, 455, 0, 205)
BamBooField.Size = UDim2.new(0, 180, 0, 20)
BamBooField.TextColor3 = Color3.new(1, 1, 1)
BamBooField.Font = Enum.Font.Fantasy
BamBooField.Text = "Bamboo Field"
BamBooField.TextSize = 16

RoseField.Name = "RoseField"
RoseField.Parent = WayPointsFrame
RoseField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
RoseField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
RoseField.Position = UDim2.new(0, 455, 0, 230)
RoseField.Size = UDim2.new(0, 180, 0, 20)
RoseField.TextColor3 = Color3.new(1, 1, 1)
RoseField.Font = Enum.Font.Fantasy
RoseField.Text = "Rose Field"
RoseField.TextSize = 16

PineTreeField.Name = "PineTreeField"
PineTreeField.Parent = WayPointsFrame
PineTreeField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PineTreeField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PineTreeField.Position = UDim2.new(0, 455, 0, 255)
PineTreeField.Size = UDim2.new(0, 180, 0, 20)
PineTreeField.TextColor3 = Color3.new(1, 1, 1)
PineTreeField.Font = Enum.Font.Fantasy
PineTreeField.Text = "Pine Tree Forest"
PineTreeField.TextSize = 16

CactusField.Name = "CactusField"
CactusField.Parent = WayPointsFrame
CactusField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
CactusField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
CactusField.Position = UDim2.new(0, 455, 0, 280)
CactusField.Size = UDim2.new(0, 180, 0, 20)
CactusField.TextColor3 = Color3.new(1, 1, 1)
CactusField.Font = Enum.Font.Fantasy
CactusField.Text = "Cactus Field"
CactusField.TextSize = 16

PumpkinField.Name = "PumpkinField"
PumpkinField.Parent = WayPointsFrame
PumpkinField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PumpkinField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PumpkinField.Position = UDim2.new(0, 455, 0, 305)
PumpkinField.Size = UDim2.new(0, 180, 0, 20)
PumpkinField.TextColor3 = Color3.new(1, 1, 1)
PumpkinField.Font = Enum.Font.Fantasy
PumpkinField.Text = "Pumpkin Patch"
PumpkinField.TextSize = 16

PineappleField.Name = "PineappleField"
PineappleField.Parent = WayPointsFrame
PineappleField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PineappleField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PineappleField.Position = UDim2.new(0, 455, 0, 330)
PineappleField.Size = UDim2.new(0, 180, 0, 20)
PineappleField.TextColor3 = Color3.new(1, 1, 1)
PineappleField.Font = Enum.Font.Fantasy
PineappleField.Text = "Pineapple Patch"
PineappleField.TextSize = 16

MountainTopField.Name = "MountainTopField"
MountainTopField.Parent = WayPointsFrame
MountainTopField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MountainTopField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MountainTopField.Position = UDim2.new(0, 455, 0, 355)
MountainTopField.Size = UDim2.new(0, 180, 0, 20)
MountainTopField.TextColor3 = Color3.new(1, 1, 1)
MountainTopField.Font = Enum.Font.Fantasy
MountainTopField.Text = "Mountain Top Field"
MountainTopField.TextSize = 16

StumpField.Name = "StumpField"
StumpField.Parent = WayPointsFrame
StumpField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
StumpField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StumpField.Position = UDim2.new(0, 455, 0, 380)
StumpField.Size = UDim2.new(0, 180, 0, 20)
StumpField.TextColor3 = Color3.new(1, 1, 1)
StumpField.Font = Enum.Font.Fantasy
StumpField.Text = "Stump Field"
StumpField.TextSize = 16

PepperField.Name = "PepperField"
PepperField.Parent = WayPointsFrame
PepperField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PepperField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PepperField.Position = UDim2.new(0, 455, 0, 405)
PepperField.Size = UDim2.new(0, 180, 0, 20)
PepperField.TextColor3 = Color3.new(1, 1, 1)
PepperField.Font = Enum.Font.Fantasy
PepperField.Text = "Pepper Field"
PepperField.TextSize = 16

CoconutField.Name = "CoconutField"
CoconutField.Parent = WayPointsFrame
CoconutField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
CoconutField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
CoconutField.Position = UDim2.new(0, 455, 0, 430)
CoconutField.Size = UDim2.new(0, 180, 0, 20)
CoconutField.TextColor3 = Color3.new(1, 1, 1)
CoconutField.Font = Enum.Font.Fantasy
CoconutField.Text = "Coconut Field"
CoconutField.TextSize = 16

Field1AF.Name = "Field1AF"
Field1AF.Parent = WayPointsFrame
Field1AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field1AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field1AF.Position = UDim2.new(0, 635, 0, 30)
Field1AF.Size = UDim2.new(0, 40, 0, 20)
Field1AF.TextColor3 = Color3.new(1, 1, 1)
Field1AF.Font = Enum.Font.Fantasy
Field1AF.Text = "Farm"
Field1AF.TextSize = 16

Field1BL.Name = "Field1BL"
Field1BL.Parent = WayPointsFrame
Field1BL.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field1BL.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field1BL.Position = UDim2.new(0, 680, 0, 30)
Field1BL.Size = UDim2.new(0, 20, 0, 20)
Field1BL.TextColor3 = Color3.new(1, 1, 1)
Field1BL.Font = Enum.Font.Fantasy
Field1BL.Text = "x"
Field1BL.TextSize = 16

Field2AF.Name = "Field2AF"
Field2AF.Parent = WayPointsFrame
Field2AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field2AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field2AF.Position = UDim2.new(0, 635, 0, 55)
Field2AF.Size = UDim2.new(0, 40, 0, 20)
Field2AF.TextColor3 = Color3.new(1, 1, 1)
Field2AF.Font = Enum.Font.Fantasy
Field2AF.Text = "Farm"
Field2AF.TextSize = 16

Field2BL.Name = "Field2BL"
Field2BL.Parent = WayPointsFrame
Field2BL.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field2BL.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field2BL.Position = UDim2.new(0, 680, 0, 55)
Field2BL.Size = UDim2.new(0, 20, 0, 20)
Field2BL.TextColor3 = Color3.new(1, 1, 1)
Field2BL.Font = Enum.Font.Fantasy
Field2BL.Text = "x"
Field2BL.TextSize = 16

Field3AF.Name = "Field3AF"
Field3AF.Parent = WayPointsFrame
Field3AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field3AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field3AF.Position = UDim2.new(0, 635, 0, 80)
Field3AF.Size = UDim2.new(0, 40, 0, 20)
Field3AF.TextColor3 = Color3.new(1, 1, 1)
Field3AF.Font = Enum.Font.Fantasy
Field3AF.Text = "Farm"
Field3AF.TextSize = 16

Field3BL.Name = "Field3BL"
Field3BL.Parent = WayPointsFrame
Field3BL.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field3BL.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field3BL.Position = UDim2.new(0, 680, 0, 80)
Field3BL.Size = UDim2.new(0, 20, 0, 20)
Field3BL.TextColor3 = Color3.new(1, 1, 1)
Field3BL.Font = Enum.Font.Fantasy
Field3BL.Text = "x"
Field3BL.TextSize = 16

Field4AF.Name = "Field4AF"
Field4AF.Parent = WayPointsFrame
Field4AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field4AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field4AF.Position = UDim2.new(0, 635, 0, 105)
Field4AF.Size = UDim2.new(0, 40, 0, 20)
Field4AF.TextColor3 = Color3.new(1, 1, 1)
Field4AF.Font = Enum.Font.Fantasy
Field4AF.Text = "Farm"
Field4AF.TextSize = 16

Field4BL.Name = "Field4BL"
Field4BL.Parent = WayPointsFrame
Field4BL.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field4BL.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field4BL.Position = UDim2.new(0, 680, 0, 105)
Field4BL.Size = UDim2.new(0, 20, 0, 20)
Field4BL.TextColor3 = Color3.new(1, 1, 1)
Field4BL.Font = Enum.Font.Fantasy
Field4BL.Text = "x"
Field4BL.TextSize = 16

Field5AF.Name = "Field5AF"
Field5AF.Parent = WayPointsFrame
Field5AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field5AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field5AF.Position = UDim2.new(0, 635, 0, 130)
Field5AF.Size = UDim2.new(0, 40, 0, 20)
Field5AF.TextColor3 = Color3.new(1, 1, 1)
Field5AF.Font = Enum.Font.Fantasy
Field5AF.Text = "Farm"
Field5AF.TextSize = 16

Field5BL.Name = "Field5BL"
Field5BL.Parent = WayPointsFrame
Field5BL.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field5BL.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field5BL.Position = UDim2.new(0, 680, 0, 130)
Field5BL.Size = UDim2.new(0, 20, 0, 20)
Field5BL.TextColor3 = Color3.new(1, 1, 1)
Field5BL.Font = Enum.Font.Fantasy
Field5BL.Text = "x"
Field5BL.TextSize = 16

Field6AF.Name = "Field6AF"
Field6AF.Parent = WayPointsFrame
Field6AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field6AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field6AF.Position = UDim2.new(0, 635, 0, 155)
Field6AF.Size = UDim2.new(0, 40, 0, 20)
Field6AF.TextColor3 = Color3.new(1, 1, 1)
Field6AF.Font = Enum.Font.Fantasy
Field6AF.Text = "Farm"
Field6AF.TextSize = 16

Field6BL.Name = "Field6BL"
Field6BL.Parent = WayPointsFrame
Field6BL.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field6BL.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field6BL.Position = UDim2.new(0, 680, 0, 155)
Field6BL.Size = UDim2.new(0, 20, 0, 20)
Field6BL.TextColor3 = Color3.new(1, 1, 1)
Field6BL.Font = Enum.Font.Fantasy
Field6BL.Text = "x"
Field6BL.TextSize = 16

Field7AF.Name = "Field7AF"
Field7AF.Parent = WayPointsFrame
Field7AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field7AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field7AF.Position = UDim2.new(0, 635, 0, 180)
Field7AF.Size = UDim2.new(0, 40, 0, 20)
Field7AF.TextColor3 = Color3.new(1, 1, 1)
Field7AF.Font = Enum.Font.Fantasy
Field7AF.Text = "Farm"
Field7AF.TextSize = 16

Field7BL.Name = "Field7BL"
Field7BL.Parent = WayPointsFrame
Field7BL.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field7BL.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field7BL.Position = UDim2.new(0, 680, 0, 180)
Field7BL.Size = UDim2.new(0, 20, 0, 20)
Field7BL.TextColor3 = Color3.new(1, 1, 1)
Field7BL.Font = Enum.Font.Fantasy
Field7BL.Text = "x"
Field7BL.TextSize = 16

Field8AF.Name = "Field8AF"
Field8AF.Parent = WayPointsFrame
Field8AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field8AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field8AF.Position = UDim2.new(0, 635, 0, 205)
Field8AF.Size = UDim2.new(0, 40, 0, 20)
Field8AF.TextColor3 = Color3.new(1, 1, 1)
Field8AF.Font = Enum.Font.Fantasy
Field8AF.Text = "Farm"
Field8AF.TextSize = 16

Field8BL.Name = "Field8BL"
Field8BL.Parent = WayPointsFrame
Field8BL.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field8BL.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field8BL.Position = UDim2.new(0, 680, 0, 205)
Field8BL.Size = UDim2.new(0, 20, 0, 20)
Field8BL.TextColor3 = Color3.new(1, 1, 1)
Field8BL.Font = Enum.Font.Fantasy
Field8BL.Text = "x"
Field8BL.TextSize = 16

Field9AF.Name = "Field9AF"
Field9AF.Parent = WayPointsFrame
Field9AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field9AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field9AF.Position = UDim2.new(0, 635, 0, 230)
Field9AF.Size = UDim2.new(0, 40, 0, 20)
Field9AF.TextColor3 = Color3.new(1, 1, 1)
Field9AF.Font = Enum.Font.Fantasy
Field9AF.Text = "Farm"
Field9AF.TextSize = 16

Field9BL.Name = "Field9BL"
Field9BL.Parent = WayPointsFrame
Field9BL.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field9BL.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field9BL.Position = UDim2.new(0, 680, 0, 230)
Field9BL.Size = UDim2.new(0, 20, 0, 20)
Field9BL.TextColor3 = Color3.new(1, 1, 1)
Field9BL.Font = Enum.Font.Fantasy
Field9BL.Text = "x"
Field9BL.TextSize = 16

Field10AF.Name = "Field10AF"
Field10AF.Parent = WayPointsFrame
Field10AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field10AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field10AF.Position = UDim2.new(0, 635, 0, 255)
Field10AF.Size = UDim2.new(0, 40, 0, 20)
Field10AF.TextColor3 = Color3.new(1, 1, 1)
Field10AF.Font = Enum.Font.Fantasy
Field10AF.Text = "Farm"
Field10AF.TextSize = 16

Field10BL.Name = "Field10BL"
Field10BL.Parent = WayPointsFrame
Field10BL.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field10BL.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field10BL.Position = UDim2.new(0, 680, 0, 255)
Field10BL.Size = UDim2.new(0, 20, 0, 20)
Field10BL.TextColor3 = Color3.new(1, 1, 1)
Field10BL.Font = Enum.Font.Fantasy
Field10BL.Text = "x"
Field10BL.TextSize = 16

Field11AF.Name = "Field11AF"
Field11AF.Parent = WayPointsFrame
Field11AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field11AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field11AF.Position = UDim2.new(0, 635, 0, 280)
Field11AF.Size = UDim2.new(0, 40, 0, 20)
Field11AF.TextColor3 = Color3.new(1, 1, 1)
Field11AF.Font = Enum.Font.Fantasy
Field11AF.Text = "Farm"
Field11AF.TextSize = 16

Field11BL.Name = "Field11BL"
Field11BL.Parent = WayPointsFrame
Field11BL.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field11BL.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field11BL.Position = UDim2.new(0, 680, 0, 280)
Field11BL.Size = UDim2.new(0, 20, 0, 20)
Field11BL.TextColor3 = Color3.new(1, 1, 1)
Field11BL.Font = Enum.Font.Fantasy
Field11BL.Text = "x"
Field11BL.TextSize = 16

Field12AF.Name = "Field12AF"
Field12AF.Parent = WayPointsFrame
Field12AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field12AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field12AF.Position = UDim2.new(0, 635, 0, 305)
Field12AF.Size = UDim2.new(0, 40, 0, 20)
Field12AF.TextColor3 = Color3.new(1, 1, 1)
Field12AF.Font = Enum.Font.Fantasy
Field12AF.Text = "Farm"
Field12AF.TextSize = 16

Field12BL.Name = "Field12BL"
Field12BL.Parent = WayPointsFrame
Field12BL.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field12BL.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field12BL.Position = UDim2.new(0, 680, 0, 305)
Field12BL.Size = UDim2.new(0, 20, 0, 20)
Field12BL.TextColor3 = Color3.new(1, 1, 1)
Field12BL.Font = Enum.Font.Fantasy
Field12BL.Text = "x"
Field12BL.TextSize = 16

Field13AF.Name = "Field13AF"
Field13AF.Parent = WayPointsFrame
Field13AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field13AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field13AF.Position = UDim2.new(0, 635, 0, 330)
Field13AF.Size = UDim2.new(0, 40, 0, 20)
Field13AF.TextColor3 = Color3.new(1, 1, 1)
Field13AF.Font = Enum.Font.Fantasy
Field13AF.Text = "Farm"
Field13AF.TextSize = 16

Field13BL.Name = "Field13BL"
Field13BL.Parent = WayPointsFrame
Field13BL.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field13BL.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field13BL.Position = UDim2.new(0, 680, 0, 330)
Field13BL.Size = UDim2.new(0, 20, 0, 20)
Field13BL.TextColor3 = Color3.new(1, 1, 1)
Field13BL.Font = Enum.Font.Fantasy
Field13BL.Text = "x"
Field13BL.TextSize = 16

Field14AF.Name = "Field14AF"
Field14AF.Parent = WayPointsFrame
Field14AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field14AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field14AF.Position = UDim2.new(0, 635, 0, 355)
Field14AF.Size = UDim2.new(0, 40, 0, 20)
Field14AF.TextColor3 = Color3.new(1, 1, 1)
Field14AF.Font = Enum.Font.Fantasy
Field14AF.Text = "Farm"
Field14AF.TextSize = 16

Field14BL.Name = "Field14BL"
Field14BL.Parent = WayPointsFrame
Field14BL.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field14BL.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field14BL.Position = UDim2.new(0, 680, 0, 355)
Field14BL.Size = UDim2.new(0, 20, 0, 20)
Field14BL.TextColor3 = Color3.new(1, 1, 1)
Field14BL.Font = Enum.Font.Fantasy
Field14BL.Text = "x"
Field14BL.TextSize = 16

Field15AF.Name = "Field15AF"
Field15AF.Parent = WayPointsFrame
Field15AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field15AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field15AF.Position = UDim2.new(0, 635, 0, 380)
Field15AF.Size = UDim2.new(0, 40, 0, 20)
Field15AF.TextColor3 = Color3.new(1, 1, 1)
Field15AF.Font = Enum.Font.Fantasy
Field15AF.Text = "Farm"
Field15AF.TextSize = 16

Field15BL.Name = "Field15BL"
Field15BL.Parent = WayPointsFrame
Field15BL.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field15BL.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field15BL.Position = UDim2.new(0, 680, 0, 380)
Field15BL.Size = UDim2.new(0, 20, 0, 20)
Field15BL.TextColor3 = Color3.new(1, 1, 1)
Field15BL.Font = Enum.Font.Fantasy
Field15BL.Text = "x"
Field15BL.TextSize = 16

Field16AF.Name = "Field16AF"
Field16AF.Parent = WayPointsFrame
Field16AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field16AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field16AF.Position = UDim2.new(0, 635, 0, 405)
Field16AF.Size = UDim2.new(0, 40, 0, 20)
Field16AF.TextColor3 = Color3.new(1, 1, 1)
Field16AF.Font = Enum.Font.Fantasy
Field16AF.Text = "Farm"
Field16AF.TextSize = 16

Field16BL.Name = "Field16BL"
Field16BL.Parent = WayPointsFrame
Field16BL.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field16BL.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field16BL.Position = UDim2.new(0, 680, 0, 405)
Field16BL.Size = UDim2.new(0, 20, 0, 20)
Field16BL.TextColor3 = Color3.new(1, 1, 1)
Field16BL.Font = Enum.Font.Fantasy
Field16BL.Text = "x"
Field16BL.TextSize = 16

Field17AF.Name = "Field17AF"
Field17AF.Parent = WayPointsFrame
Field17AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field17AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field17AF.Position = UDim2.new(0, 635, 0, 430)
Field17AF.Size = UDim2.new(0, 40, 0, 20)
Field17AF.TextColor3 = Color3.new(1, 1, 1)
Field17AF.Font = Enum.Font.Fantasy
Field17AF.Text = "Farm"
Field17AF.TextSize = 16

Field17BL.Name = "Field17BL"
Field17BL.Parent = WayPointsFrame
Field17BL.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field17BL.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field17BL.Position = UDim2.new(0, 680, 0, 430)
Field17BL.Size = UDim2.new(0, 20, 0, 20)
Field17BL.TextColor3 = Color3.new(1, 1, 1)
Field17BL.Font = Enum.Font.Fantasy
Field17BL.Text = "x"
Field17BL.TextSize = 16

Players.Name = "Players"
Players.Parent = MainFrame
Players.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Players.BorderColor3 = Color3.new(0, 1, 0)
Players.Position = UDim2.new(0, 143, 0, 5)
Players.Size = UDim2.new(0, 70, 0, 20)
Players.BackgroundTransparency = 0
Players.Font = Enum.Font.Fantasy
Players.TextColor3 = Color3.new(1, 1, 1)
Players.Text = "Players"
Players.TextSize = 19
Players.TextWrapped = true

PlayerFrame.Name = "PlayerFrame"
PlayerFrame.Parent = MainFrame
PlayerFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
PlayerFrame.BackgroundTransparency = 0.3
PlayerFrame.BorderColor3 = Color3.new(0, 0, 0)
PlayerFrame.Position = UDim2.new(0, 63, 0, 34)
PlayerFrame.Size = UDim2.new(0, 170, 0, 225)
PlayerFrame.Visible = false

PlyrSel.Name = "PlyrSel"
PlyrSel.Parent = PlayerFrame
PlyrSel.BackgroundColor3 = Color3.new(1, 1, 1)
PlyrSel.BackgroundTransparency = 0.15
PlyrSel.BorderColor3 = Color3.new(0, 0, 0)
PlyrSel.Position = UDim2.new(0, 5, 0, 5)
PlyrSel.Size = UDim2.new(0, 160, 0, 20)
PlyrSel.Font = Enum.Font.SourceSans
PlyrSel.Text = "SELECT A PLAYER"
PlyrSel.TextColor3 = Color3.new(0, 0, 0)
PlyrSel.TextScaled = true
PlyrSel.TextSize = 17
PlyrSel.TextWrapped = true

Player1.Name = "Player1"
Player1.Parent = PlayerFrame
Player1.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Player1.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Player1.Position = UDim2.new(0, 5, 0, 35)
Player1.Size = UDim2.new(0, 160, 0, 20)
Player1.Font = Enum.Font.Fantasy
Player1.Text = ""
Player1.TextColor3 = Color3.new(1, 1, 1)
Player1.TextSize = 15
Player1.TextWrapped = true

Player2.Name = "Player2"
Player2.Parent = PlayerFrame
Player2.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Player2.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Player2.Position = UDim2.new(0, 5, 0, 60)
Player2.Size = UDim2.new(0, 160, 0, 20)
Player2.Font = Enum.Font.Fantasy
Player2.Text = ""
Player2.TextColor3 = Color3.new(1, 1, 1)
Player2.TextSize = 15
Player2.TextWrapped = true

Player3.Name = "Player3"
Player3.Parent = PlayerFrame
Player3.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Player3.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Player3.Position = UDim2.new(0, 5, 0, 85)
Player3.Size = UDim2.new(0, 160, 0, 20)
Player3.Font = Enum.Font.Fantasy
Player3.Text = ""
Player3.TextColor3 = Color3.new(1, 1, 1)
Player3.TextSize = 15
Player3.TextWrapped = true

Player4.Name = "Player4"
Player4.Parent = PlayerFrame
Player4.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Player4.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Player4.Position = UDim2.new(0, 5, 0, 110)
Player4.Size = UDim2.new(0, 160, 0, 20)
Player4.Font = Enum.Font.Fantasy
Player4.Text = ""
Player4.TextColor3 = Color3.new(1, 1, 1)
Player4.TextSize = 15
Player4.TextWrapped = true

Player5.Name = "Player5"
Player5.Parent = PlayerFrame
Player5.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Player5.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Player5.Position = UDim2.new(0, 5, 0, 135)
Player5.Size = UDim2.new(0, 160, 0, 20)
Player5.Font = Enum.Font.Fantasy
Player5.Text = ""
Player5.TextColor3 = Color3.new(1, 1, 1)
Player5.TextSize = 15
Player5.TextWrapped = true

Player6.Name = "Player6"
Player6.Parent = PlayerFrame
Player6.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Player6.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Player6.Position = UDim2.new(0, 5, 0, 160)
Player6.Size = UDim2.new(0, 160, 0, 20)
Player6.Font = Enum.Font.Fantasy
Player6.Text = ""
Player6.TextColor3 = Color3.new(1, 1, 1)
Player6.TextSize = 15
Player6.TextWrapped = true

TpPlayer.Name = "TpPlayer"
TpPlayer.Parent = PlayerFrame
TpPlayer.BackgroundColor3 = Color3.new(0.18, 0.18, 0.18)
TpPlayer.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TpPlayer.Position = UDim2.new(0, 5, 0, 180)
TpPlayer.Size = UDim2.new(0, 160, 0, 30)
TpPlayer.Font = Enum.Font.Fantasy
TpPlayer.Text = "Teleport to Player"
TpPlayer.TextColor3 = Color3.new(1, 1, 1)
TpPlayer.TextWrapped = true
TpPlayer.TextSize = 17

PollenFarm.Name = "PollenFarm"
PollenFarm.Parent = MainFrame
PollenFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PollenFarm.BorderColor3 = Color3.new(0, 1, 0)
PollenFarm.Position = UDim2.new(0, 218, 0, 5)
PollenFarm.Size = UDim2.new(0, 90, 0, 20)
PollenFarm.Font = Enum.Font.Fantasy
PollenFarm.TextColor3 = Color3.new(1, 1, 1)
PollenFarm.Text = "Farm Pollen"
PollenFarm.TextSize = 17
PollenFarm.TextWrapped = true

FarmFrame.Name = "FarmFrame"
FarmFrame.Parent = MainFrame
FarmFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
FarmFrame.BorderColor3 = Color3.new(0, 0, 0)
FarmFrame.BackgroundTransparency = 0
FarmFrame.Position = UDim2.new(0, 138, 0, 34)
FarmFrame.Size = UDim2.new(0, 180, 0, 260)
FarmFrame.ZIndex = 7
FarmFrame.Visible = false

AvoidViciousBee.Name = "AvoidViciousBee"
AvoidViciousBee.Parent = FarmFrame
AvoidViciousBee.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
AvoidViciousBee.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AvoidViciousBee.BackgroundTransparency = 0
AvoidViciousBee.Position = UDim2.new(0, 5, 0, 5)
AvoidViciousBee.Size = UDim2.new(0, 170, 0, 20)
AvoidViciousBee.Font = Enum.Font.Fantasy
AvoidViciousBee.TextColor3 = Color3.new(1, 1, 1)
AvoidViciousBee.Text = "Avoid Vicious Bee: OFF"
AvoidViciousBee.TextSize = 17
AvoidViciousBee.ZIndex = 7
AvoidViciousBee.TextWrapped = true

StartFarm.Name = "StartFarm"
StartFarm.Parent = FarmFrame
StartFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
StartFarm.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StartFarm.BackgroundTransparency = 0
StartFarm.Position = UDim2.new(0, 5, 0, 30)
StartFarm.Size = UDim2.new(0, 170, 0, 20)
StartFarm.Font = Enum.Font.Fantasy
StartFarm.TextColor3 = Color3.new(1, 1, 1)
StartFarm.Text = "Pollen Farm: OFF"
StartFarm.TextSize = 17
StartFarm.ZIndex = 7
StartFarm.TextWrapped = true
StartFarm.TextScaled = true

HuntViciousBee.Name = "HuntViciousBee"
HuntViciousBee.Parent = FarmFrame
HuntViciousBee.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
HuntViciousBee.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
HuntViciousBee.Position = UDim2.new(0, 5, 0, 55)
HuntViciousBee.Size = UDim2.new(0, 170, 0, 20)
HuntViciousBee.Font = Enum.Font.Fantasy
HuntViciousBee.TextColor3 = Color3.new(1, 1, 1)
HuntViciousBee.Text = "Hunt Vicious: OFF"
HuntViciousBee.TextSize = 17
HuntViciousBee.ZIndex = 7
HuntViciousBee.TextWrapped = true
HuntViciousBee.TextScaled = true

SproutFarmToggle.Name = "SproutFarmToggle"
SproutFarmToggle.Parent = FarmFrame
SproutFarmToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SproutFarmToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
SproutFarmToggle.Position = UDim2.new(0, 5, 0, 80)
SproutFarmToggle.Size = UDim2.new(0, 170, 0, 20)
SproutFarmToggle.Font = Enum.Font.Fantasy
SproutFarmToggle.TextColor3 = Color3.new(1, 1, 1)
SproutFarmToggle.Text = "Farm Sprout: OFF"
SproutFarmToggle.TextSize = 17
SproutFarmToggle.ZIndex = 7
SproutFarmToggle.TextWrapped = true
SproutFarmToggle.TextScaled = true

FarmWindy.Name = "FarmWindy"
FarmWindy.Parent = FarmFrame
FarmWindy.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
FarmWindy.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
FarmWindy.BackgroundTransparency = 0
FarmWindy.Position = UDim2.new(0, 5, 0, 105)
FarmWindy.Size = UDim2.new(0, 170, 0, 20)
FarmWindy.Font = Enum.Font.Fantasy
FarmWindy.TextColor3 = Color3.new(1, 1, 1)
FarmWindy.Text = "Hunt Windy: OFF"
FarmWindy.TextSize = 17
FarmWindy.ZIndex = 7
FarmWindy.TextWrapped = true
FarmWindy.TextScaled = true

AutoAntFarm.Name = "AutoAntFarm"
AutoAntFarm.Parent = FarmFrame
AutoAntFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
AutoAntFarm.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AutoAntFarm.BackgroundTransparency = 0
AutoAntFarm.Position = UDim2.new(0, 5, 0, 130)
AutoAntFarm.Size = UDim2.new(0, 170, 0, 20)
AutoAntFarm.Font = Enum.Font.Fantasy
AutoAntFarm.TextColor3 = Color3.new(1, 1, 1)
AutoAntFarm.Text = "Auto Ant: OFF"
AutoAntFarm.TextSize = 17
AutoAntFarm.ZIndex = 7
AutoAntFarm.TextWrapped = true

RotatingFields.Name = "RotatingFields"
RotatingFields.Parent = FarmFrame
RotatingFields.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
RotatingFields.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
RotatingFields.BackgroundTransparency = 0
RotatingFields.Position = UDim2.new(0, 5, 0, 155)
RotatingFields.Size = UDim2.new(0, 170, 0, 20)
RotatingFields.Font = Enum.Font.Fantasy
RotatingFields.TextColor3 = Color3.new(1, 1, 1)
RotatingFields.Text = "Rotating Fields: OFF"
RotatingFields.TextSize = 17
RotatingFields.ZIndex = 7
RotatingFields.TextWrapped = true

BubbleCollector.Name = "BubbleCollector"
BubbleCollector.Parent = FarmFrame
BubbleCollector.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BubbleCollector.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BubbleCollector.BackgroundTransparency = 0
BubbleCollector.Position = UDim2.new(0, 5, 0, 180)
BubbleCollector.Size = UDim2.new(0, 170, 0, 20)
BubbleCollector.Font = Enum.Font.Fantasy
BubbleCollector.TextColor3 = Color3.new(1, 1, 1)
BubbleCollector.Text = "Collect Bubbles: OFF"
BubbleCollector.TextSize = 17
BubbleCollector.ZIndex = 7
BubbleCollector.TextWrapped = true

CoconutCollector.Name = "CoconutCollector"
CoconutCollector.Parent = FarmFrame
CoconutCollector.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
CoconutCollector.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
CoconutCollector.BackgroundTransparency = 0
CoconutCollector.Position = UDim2.new(0, 5, 0, 205)
CoconutCollector.Size = UDim2.new(0, 170, 0, 20)
CoconutCollector.Font = Enum.Font.Fantasy
CoconutCollector.TextColor3 = Color3.new(1, 1, 1)
CoconutCollector.Text = "Collect Coconuts: OFF"
CoconutCollector.TextSize = 17
CoconutCollector.ZIndex = 7
CoconutCollector.TextWrapped = true

MeteorCollector.Name = "MeteorCollector"
MeteorCollector.Parent = FarmFrame
MeteorCollector.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MeteorCollector.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MeteorCollector.BackgroundTransparency = 0
MeteorCollector.Position = UDim2.new(0, 5, 0, 280)
MeteorCollector.Size = UDim2.new(0, 170, 0, 20)
MeteorCollector.Font = Enum.Font.Fantasy
MeteorCollector.TextColor3 = Color3.new(1, 1, 1)
MeteorCollector.Text = "Collect Meteor: OFF"
MeteorCollector.TextSize = 17
MeteorCollector.ZIndex = 7
MeteorCollector.TextWrapped = true

HuntMondo.Name = "HuntMondo"
HuntMondo.Parent = FarmFrame
HuntMondo.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
HuntMondo.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
HuntMondo.BackgroundTransparency = 0
HuntMondo.Position = UDim2.new(0, 5, 0, 230)
HuntMondo.Size = UDim2.new(0, 170, 0, 20)
HuntMondo.Font = Enum.Font.Fantasy
HuntMondo.TextColor3 = Color3.new(1, 1, 1)
HuntMondo.Text = "Hunt Mondo: OFF"
HuntMondo.TextSize = 17
HuntMondo.ZIndex = 7
HuntMondo.TextWrapped = true
--[[
HuntCommando.Name = "HuntCommando"
HuntCommando.Parent = FarmFrame
HuntCommando.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
HuntCommando.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
HuntCommando.BackgroundTransparency = 0
HuntCommando.Position = UDim2.new(0, 5, 0, 255)
HuntCommando.Size = UDim2.new(0, 170, 0, 20)
HuntCommando.Font = Enum.Font.Fantasy
HuntCommando.TextColor3 = Color3.new(1, 1, 1)
HuntCommando.Text = "Hunt Commando: OFF"
HuntCommando.TextSize = 17
HuntCommando.ZIndex = 7
HuntCommando.TextWrapped = true
]]--
HuntGuiding.Name = "HuntGuiding"
HuntGuiding.Parent = FarmFrame
HuntGuiding.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
HuntGuiding.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
HuntGuiding.BackgroundTransparency = 0
HuntGuiding.Position = UDim2.new(0, 5, 0, 305)
HuntGuiding.Size = UDim2.new(0, 170, 0, 20)
HuntGuiding.Font = Enum.Font.Fantasy
HuntGuiding.TextColor3 = Color3.new(1, 1, 1)
HuntGuiding.Text = "Hunt Guiding: OFF"
HuntGuiding.TextSize = 17
HuntGuiding.ZIndex = 7
HuntGuiding.TextWrapped = true

AutoDig.Name = "AutoDig"
AutoDig.Parent = MainFrame
AutoDig.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
AutoDig.BorderColor3 = Color3.new(0, 1, 0)
AutoDig.Position = UDim2.new(0, 313, 0, 5)
AutoDig.Size = UDim2.new(0, 70, 0, 20)
AutoDig.Font = Enum.Font.Fantasy
AutoDig.TextColor3 = Color3.new(1, 1, 1)
AutoDig.Text = "Auto Dig"
AutoDig.TextSize = 17
AutoDig.TextWrapped = true

ExtrasScreen.Name = "ExtrasScreen"
ExtrasScreen.Parent = MainFrame
ExtrasScreen.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ExtrasScreen.BorderColor3 = Color3.new(0, 1, 0)
ExtrasScreen.Position = UDim2.new(0, 388, 0, 5)
ExtrasScreen.Size = UDim2.new(0, 50, 0, 20)
ExtrasScreen.Font = Enum.Font.Fantasy
ExtrasScreen.TextColor3 = Color3.new(1, 1, 1)
ExtrasScreen.Text = "Extras"
ExtrasScreen.TextSize = 17
ExtrasScreen.TextWrapped = true

ExtrasFrame.Name = "ExtrasFrame"
ExtrasFrame.Parent = MainFrame
ExtrasFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
ExtrasFrame.BorderColor3 = Color3.new(0, 0, 0)
ExtrasFrame.BackgroundTransparency = 0
ExtrasFrame.Position = UDim2.new(0, 293, 0, 34)
ExtrasFrame.Size = UDim2.new(0, 170, 0, 530)
ExtrasFrame.ZIndex = 7
ExtrasFrame.Visible = false

WealthClockToggle.Name = "WealthClockToggle"
WealthClockToggle.Parent = ExtrasFrame
WealthClockToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
WealthClockToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
WealthClockToggle.Position = UDim2.new(0, 5, 0, 5)
WealthClockToggle.Size = UDim2.new(0, 160, 0, 20)
WealthClockToggle.TextColor3 = Color3.new(1, 1, 1)
WealthClockToggle.Font = Enum.Font.Fantasy
WealthClockToggle.Text = "Wealth Clock: OFF"
WealthClockToggle.ZIndex = 7
WealthClockToggle.TextSize = 16

AutoSprinklerToggle.Name = "AutoSprinklerToggle"
AutoSprinklerToggle.Parent = ExtrasFrame
AutoSprinklerToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
AutoSprinklerToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AutoSprinklerToggle.Position = UDim2.new(0, 5, 0, 30)
AutoSprinklerToggle.Size = UDim2.new(0, 160, 0, 20)
AutoSprinklerToggle.TextColor3 = Color3.new(1, 1, 1)
AutoSprinklerToggle.Font = Enum.Font.Fantasy
AutoSprinklerToggle.Text = "Auto Sprinkler: OFF"
AutoSprinklerToggle.ZIndex = 7
AutoSprinklerToggle.TextSize = 16

TreatToggle.Name = "TreatToggle"
TreatToggle.Parent = ExtrasFrame
TreatToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TreatToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TreatToggle.Position = UDim2.new(0, 5, 0, 55)
TreatToggle.Size = UDim2.new(0, 160, 0, 20)
TreatToggle.TextColor3 = Color3.new(1, 1, 1)
TreatToggle.Font = Enum.Font.Fantasy
TreatToggle.Text = "Auto Treats: OFF"
TreatToggle.ZIndex = 7
TreatToggle.TextSize = 16

CollectAllTickets.Name = "CollectAllTickets"
CollectAllTickets.Parent = ExtrasFrame
CollectAllTickets.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
CollectAllTickets.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
CollectAllTickets.Position = UDim2.new(0, 5, 0, 80)
CollectAllTickets.Size = UDim2.new(0, 160, 0, 20)
CollectAllTickets.TextColor3 = Color3.new(1, 1, 1)
CollectAllTickets.Font = Enum.Font.Fantasy
CollectAllTickets.Text = "Collect Tickets: OFF"
CollectAllTickets.ZIndex = 7
CollectAllTickets.TextSize = 16

BadgeToggle.Name = "BadgeToggle"
BadgeToggle.Parent = ExtrasFrame
BadgeToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BadgeToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BadgeToggle.Position = UDim2.new(0, 5, 0, 105)
BadgeToggle.Size = UDim2.new(0, 160, 0, 20)
BadgeToggle.TextColor3 = Color3.new(1, 1, 1)
BadgeToggle.Font = Enum.Font.Fantasy
BadgeToggle.Text = "Remote Badge: OFF"
BadgeToggle.ZIndex = 7
BadgeToggle.TextSize = 16

MonsterKillerToggle.Name = "MonsterKillerToggle"
MonsterKillerToggle.Parent = ExtrasFrame
MonsterKillerToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MonsterKillerToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MonsterKillerToggle.Position = UDim2.new(0, 5, 0, 130)
MonsterKillerToggle.Size = UDim2.new(0, 160, 0, 20)
MonsterKillerToggle.TextColor3 = Color3.new(1, 1, 1)
MonsterKillerToggle.Font = Enum.Font.Fantasy
MonsterKillerToggle.Text = "Monster Killer: OFF"
MonsterKillerToggle.ZIndex = 7
MonsterKillerToggle.TextSize = 16

QuickKillToggle.Name = "QuickKillToggle"
QuickKillToggle.Parent = ExtrasFrame
QuickKillToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
QuickKillToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
QuickKillToggle.Position = UDim2.new(0, 5, 0, 155)
QuickKillToggle.Size = UDim2.new(0, 160, 0, 20)
QuickKillToggle.TextColor3 = Color3.new(1, 1, 1)
QuickKillToggle.Font = Enum.Font.Fantasy
QuickKillToggle.Text = "^Gotta go fast^: OFF"
QuickKillToggle.ZIndex = 7
QuickKillToggle.TextSize = 16

GumDropToggle.Name = "GumDropToggle"
GumDropToggle.Parent = ExtrasFrame
GumDropToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
GumDropToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
GumDropToggle.Position = UDim2.new(0, 5, 0, 180)
GumDropToggle.Size = UDim2.new(0, 160, 0, 20)
GumDropToggle.TextColor3 = Color3.new(1, 1, 1)
GumDropToggle.Font = Enum.Font.Fantasy
GumDropToggle.Text = "Auto Gumdrops: OFF"
GumDropToggle.ZIndex = 7
GumDropToggle.TextSize = 16

InstantConverterToggle.Name = "InstantConverterToggle"
InstantConverterToggle.Parent = ExtrasFrame
InstantConverterToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
InstantConverterToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
InstantConverterToggle.Position = UDim2.new(0, 5, 0, 205)
InstantConverterToggle.Size = UDim2.new(0, 160, 0, 20)
InstantConverterToggle.TextColor3 = Color3.new(1, 1, 1)
InstantConverterToggle.Font = Enum.Font.Fantasy
InstantConverterToggle.Text = "Instant Converter: OFF"
InstantConverterToggle.ZIndex = 7
InstantConverterToggle.TextSize = 16

MicroConverterToggle.Name = "MicroConverterToggle"
MicroConverterToggle.Parent = ExtrasFrame
MicroConverterToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MicroConverterToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MicroConverterToggle.Position = UDim2.new(0, 5, 0, 230)
MicroConverterToggle.Size = UDim2.new(0, 160, 0, 20)
MicroConverterToggle.TextColor3 = Color3.new(1, 1, 1)
MicroConverterToggle.Font = Enum.Font.Fantasy
MicroConverterToggle.Text = "Micro Converter: OFF"
MicroConverterToggle.ZIndex = 7
MicroConverterToggle.TextSize = 16

MarshmallowToggle.Name = "MarshmallowToggle"
MarshmallowToggle.Parent = ExtrasFrame
MarshmallowToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MarshmallowToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MarshmallowToggle.Position = UDim2.new(0, 5, 0, 530)
MarshmallowToggle.Size = UDim2.new(0, 160, 0, 20)
MarshmallowToggle.TextColor3 = Color3.new(1, 1, 1)
MarshmallowToggle.Font = Enum.Font.Fantasy
MarshmallowToggle.Text = "Marshmallow Bee: OFF"
MarshmallowToggle.ZIndex = 7
MarshmallowToggle.TextSize = 16

NoClip.Name = "NoClip"
NoClip.Parent = ExtrasFrame
NoClip.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
NoClip.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
NoClip.Position = UDim2.new(0, 5, 0, 255)
NoClip.Size = UDim2.new(0, 160, 0, 20)
NoClip.Font = Enum.Font.Fantasy
NoClip.TextColor3 = Color3.new(1, 1, 1)
NoClip.Text = "NoClip Mode: OFF"
NoClip.TextSize = 17
NoClip.ZIndex = 7
NoClip.TextWrapped = true

AutoStingerToggle.Name = "AutoStingerToggle"
AutoStingerToggle.Parent = ExtrasFrame
AutoStingerToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
AutoStingerToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AutoStingerToggle.Position = UDim2.new(0, 5, 0, 280)
AutoStingerToggle.Size = UDim2.new(0, 160, 0, 20)
AutoStingerToggle.TextColor3 = Color3.new(1, 1, 1)
AutoStingerToggle.Font = Enum.Font.Fantasy
AutoStingerToggle.Text = "Auto Stinger: OFF"
AutoStingerToggle.ZIndex = 7
AutoStingerToggle.TextSize = 16

OldTokenFarm.Name = "OldTokenFarm"
OldTokenFarm.Parent = ExtrasFrame
OldTokenFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
OldTokenFarm.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
OldTokenFarm.Position = UDim2.new(0, 5, 0, 305)
OldTokenFarm.Size = UDim2.new(0, 160, 0, 20)
OldTokenFarm.TextColor3 = Color3.new(1, 1, 1)
OldTokenFarm.Font = Enum.Font.Fantasy
OldTokenFarm.Text = "Old Token Farm: OFF"
OldTokenFarm.ZIndex = 7
OldTokenFarm.TextSize = 16

TPTool.Name = "TPTool"
TPTool.Parent = ExtrasFrame
TPTool.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TPTool.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TPTool.Position = UDim2.new(0, 5, 0, 330)
TPTool.Size = UDim2.new(0, 160, 0, 20)
TPTool.TextColor3 = Color3.new(1, 1, 1)
TPTool.Font = Enum.Font.Fantasy
TPTool.Text = "Add TPTool"
TPTool.ZIndex = 7
TPTool.TextSize = 16

FindTreasures.Name = "FindTreasures"
FindTreasures.Parent = ExtrasFrame
FindTreasures.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
FindTreasures.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
FindTreasures.Position = UDim2.new(0, 5, 0, 355)
FindTreasures.Size = UDim2.new(0, 160, 0, 20)
FindTreasures.BackgroundTransparency = 0
FindTreasures.Font = Enum.Font.Fantasy
FindTreasures.TextColor3 = Color3.new(1, 1, 1)
FindTreasures.Text = "Tp to all Treasures"
FindTreasures.TextSize = 17
FindTreasures.ZIndex = 7
FindTreasures.TextWrapped = true

FindTreasuresText1.Name = "FindTreasuresText1"
FindTreasuresText1.Parent = MainFrame
FindTreasuresText1.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
FindTreasuresText1.BorderColor3 = Color3.new(0, 0, 0)
FindTreasuresText1.BackgroundTransparency = 0.1
FindTreasuresText1.Position = UDim2.new(0, 221, 0, 355)
FindTreasuresText1.Size = UDim2.new(0, 190, 0, 84)
FindTreasuresText1.TextColor3 = Color3.new(1, 1, 1)
FindTreasuresText1.Font = Enum.Font.Fantasy
FindTreasuresText1.Text = "This will Teleport you to all the hidden treasures on the map. It will only work once\nas the treasures do not respawn."
FindTreasuresText1.TextSize = 16
FindTreasuresText1.TextWrapped = true
FindTreasuresText1.ZIndex = 7
FindTreasuresText1.Visible = false
FindTreasuresText1.TextYAlignment = Enum.TextYAlignment.Top


PromoCodes.Name = "PromoCodes"
PromoCodes.Parent = ExtrasFrame
PromoCodes.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PromoCodes.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PromoCodes.Position = UDim2.new(0, 5, 0, 380)
PromoCodes.Size = UDim2.new(0, 160, 0, 20)
PromoCodes.BackgroundTransparency = 0
PromoCodes.Font = Enum.Font.Fantasy
PromoCodes.TextColor3 = Color3.new(1, 1, 1)
PromoCodes.Text = "Enter All Promo Codes"
PromoCodes.TextSize = 17
PromoCodes.ZIndex = 7
PromoCodes.TextWrapped = true

ReJoinServer.Name = "ReJoinServer"
ReJoinServer.Parent = ExtrasFrame
ReJoinServer.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ReJoinServer.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
ReJoinServer.Position = UDim2.new(0, 5, 0, 405)
ReJoinServer.Size = UDim2.new(0, 160, 0, 20)
ReJoinServer.TextColor3 = Color3.new(1, 1, 1)
ReJoinServer.Font = Enum.Font.Fantasy
ReJoinServer.Text = "ReJoin a Server"
ReJoinServer.TextSize = 16
ReJoinServer.ZIndex = 7
ReJoinServer.TextWrapped = true

TokenToggleLabel.Name = "TokenToggleLabel"
TokenToggleLabel.Parent = ExtrasFrame
TokenToggleLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TokenToggleLabel.BorderSizePixel = 0
TokenToggleLabel.Position = UDim2.new(0, 5, 0, 429)
TokenToggleLabel.Size = UDim2.new(0, 132, 0, 22)
TokenToggleLabel.TextColor3 = Color3.new(1, 1, 1)
TokenToggleLabel.Font = Enum.Font.Fantasy
TokenToggleLabel.Text = "Token Pickup kb"
TokenToggleLabel.TextSize = 16
TokenToggleLabel.ZIndex = 7
TokenToggleLabel.TextWrapped = true

TokenToggle.Name = "TokenToggle"
TokenToggle.Parent = ExtrasFrame
TokenToggle.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
TokenToggle.BorderColor3 = Color3.new(0.8, 0.8, 0.8)
TokenToggle.Position = UDim2.new(0, 137, 0, 430)
TokenToggle.Size = UDim2.new(0, 28, 0, 20)
TokenToggle.TextColor3 = Color3.new(1, 1, 1)
TokenToggle.Font = Enum.Font.Fantasy
TokenToggle.Text = "h"
TokenToggle.TextSize = 16
TokenToggle.ZIndex = 7
TokenToggle.TextWrapped = true

FireflyToggleLabel.Name = "FireflyToggleLabel"
FireflyToggleLabel.Parent = ExtrasFrame
FireflyToggleLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
FireflyToggleLabel.BorderSizePixel = 0
FireflyToggleLabel.Position = UDim2.new(0, 5, 0, 455)
FireflyToggleLabel.Size = UDim2.new(0, 132, 0, 22)
FireflyToggleLabel.TextColor3 = Color3.new(1, 1, 1)
FireflyToggleLabel.Font = Enum.Font.Fantasy
FireflyToggleLabel.Text = "Firefly Touch kb"
FireflyToggleLabel.TextSize = 16
FireflyToggleLabel.ZIndex = 7
FireflyToggleLabel.TextWrapped = true

FireflyToggle.Name = "FireflyToggle"
FireflyToggle.Parent = ExtrasFrame
FireflyToggle.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
FireflyToggle.BorderColor3 = Color3.new(0.8, 0.8, 0.8)
FireflyToggle.Position = UDim2.new(0, 137, 0, 455)
FireflyToggle.Size = UDim2.new(0, 28, 0, 20)
FireflyToggle.TextColor3 = Color3.new(1, 1, 1)
FireflyToggle.Font = Enum.Font.Fantasy
FireflyToggle.Text = "j"
FireflyToggle.TextSize = 16
FireflyToggle.ZIndex = 7
FireflyToggle.TextWrapped = true

HoneyToggleLabel.Name = "HoneyToggleLabel"
HoneyToggleLabel.Parent = ExtrasFrame
HoneyToggleLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
HoneyToggleLabel.BorderSizePixel = 0
HoneyToggleLabel.Position = UDim2.new(0, 5, 0, 480)
HoneyToggleLabel.Size = UDim2.new(0, 132, 0, 22)
HoneyToggleLabel.TextColor3 = Color3.new(1, 1, 1)
HoneyToggleLabel.Font = Enum.Font.Fantasy
HoneyToggleLabel.Text = "Make Honey kb"
HoneyToggleLabel.TextSize = 16
HoneyToggleLabel.ZIndex = 7
HoneyToggleLabel.TextWrapped = true

HoneyToggle.Name = "HoneyToggle"
HoneyToggle.Parent = ExtrasFrame
HoneyToggle.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
HoneyToggle.BorderColor3 = Color3.new(0.8, 0.8, 0.8)
HoneyToggle.Position = UDim2.new(0, 137, 0, 479)
HoneyToggle.Size = UDim2.new(0, 28, 0, 20)
HoneyToggle.TextColor3 = Color3.new(1, 1, 1)
HoneyToggle.Font = Enum.Font.Fantasy
HoneyToggle.Text = "y"
HoneyToggle.TextSize = 16
HoneyToggle.ZIndex = 7
HoneyToggle.TextWrapped = true

StopFarmingLabel.Name = "StopFarmingLabel"
StopFarmingLabel.Parent = ExtrasFrame
StopFarmingLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
StopFarmingLabel.BorderSizePixel = 0
StopFarmingLabel.Position = UDim2.new(0, 5, 0, 505)
StopFarmingLabel.Size = UDim2.new(0, 132, 0, 22)
StopFarmingLabel.TextColor3 = Color3.new(1, 1, 1)
StopFarmingLabel.Font = Enum.Font.Fantasy
StopFarmingLabel.Text = "Stop Farming"
StopFarmingLabel.TextSize = 16
StopFarmingLabel.ZIndex = 7
StopFarmingLabel.TextWrapped = true

StopFarming.Name = "StopFarming"
StopFarming.Parent = ExtrasFrame
StopFarming.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
StopFarming.BorderColor3 = Color3.new(0.8, 0.8, 0.8)
StopFarming.Position = UDim2.new(0, 137, 0, 504)
StopFarming.Size = UDim2.new(0, 28, 0, 20)
StopFarming.TextColor3 = Color3.new(1, 1, 1)
StopFarming.Font = Enum.Font.Fantasy          
StopFarming.Text = "u"
StopFarming.TextSize = 16
StopFarming.ZIndex = 7
StopFarming.TextWrapped = true

KillCounter.Name = "KillCounter"
KillCounter.Parent = MainFrame
KillCounter.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
KillCounter.BorderColor3 = Color3.new(0, 1, 0)
KillCounter.Position = UDim2.new(0, 443, 0, 5)
KillCounter.Size = UDim2.new(0, 90, 0, 20)
KillCounter.Font = Enum.Font.Fantasy
KillCounter.TextColor3 = Color3.new(1, 1, 1)
KillCounter.Text = "Kill Counter"
KillCounter.TextSize = 17
KillCounter.TextWrapped = true

KillCounterFrame.Name = "KillCounterFrame"
KillCounterFrame.Parent = MainFrame
KillCounterFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
KillCounterFrame.BorderColor3 = Color3.new(0, 0, 0)
KillCounterFrame.BackgroundTransparency = 0
KillCounterFrame.Position = UDim2.new(0, 408, 0, 34)
KillCounterFrame.Size = UDim2.new(0, 170, 0, 330)
KillCounterFrame.ZIndex = 7
KillCounterFrame.Visible = false
KillCounterFrame.Draggable = true
KillCounterFrame.Active = true

Viciouskills.Name = "Viciouskills"
Viciouskills.Parent = KillCounterFrame
Viciouskills.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Viciouskills.BackgroundTransparency = 0
Viciouskills.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Viciouskills.Position = UDim2.new(0, 5, 0, 5)
Viciouskills.Size = UDim2.new(0, 160, 0, 20)
Viciouskills.Font = Enum.Font.Fantasy
Viciouskills.Text = "Vicious Bees:"
Viciouskills.TextColor3 = Color3.new(1, 1, 1)
Viciouskills.TextScaled = true
Viciouskills.TextSize = 17
Viciouskills.TextWrapped = true
Viciouskills.ZIndex = 8

Windykills.Name = "Windykills"
Windykills.Parent = KillCounterFrame
Windykills.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Windykills.BackgroundTransparency = 0
Windykills.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Windykills.Position = UDim2.new(0, 5, 0, 30)
Windykills.Size = UDim2.new(0, 160, 0, 20)
Windykills.Font = Enum.Font.Fantasy
Windykills.Text = "Windy Bee's:"
Windykills.TextColor3 = Color3.new(1, 1, 1)
Windykills.TextScaled = true
Windykills.TextSize = 17
Windykills.TextWrapped = true
Windykills.ZIndex = 8

Sproutkills.Name = "Sproutkills"
Sproutkills.Parent = KillCounterFrame
Sproutkills.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Sproutkills.BackgroundTransparency = 0
Sproutkills.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Sproutkills.Position = UDim2.new(0, 5, 0, 55)
Sproutkills.Size = UDim2.new(0, 160, 0, 20)
Sproutkills.Font = Enum.Font.Fantasy
Sproutkills.Text = "Sprouts:"
Sproutkills.TextColor3 = Color3.new(1, 1, 1)
Sproutkills.TextScaled = true
Sproutkills.TextSize = 17
Sproutkills.TextWrapped = true
Sproutkills.ZIndex = 8

Beetlekills.Name = "Beetlekills"
Beetlekills.Parent = KillCounterFrame
Beetlekills.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Beetlekills.BackgroundTransparency = 0
Beetlekills.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Beetlekills.Position = UDim2.new(0, 5, 0, 80)
Beetlekills.Size = UDim2.new(0, 160, 0, 20)
Beetlekills.Font = Enum.Font.Fantasy
Beetlekills.Text = "Beetles:"
Beetlekills.TextColor3 = Color3.new(1, 1, 1)
Beetlekills.TextScaled = true
Beetlekills.TextSize = 17
Beetlekills.TextWrapped = true
Beetlekills.ZIndex = 8

Ladybugkills.Name = "Ladybugkills"
Ladybugkills.Parent = KillCounterFrame
Ladybugkills.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Ladybugkills.BackgroundTransparency = 0
Ladybugkills.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Ladybugkills.Position = UDim2.new(0, 5, 0, 105)
Ladybugkills.Size = UDim2.new(0, 160, 0, 20)
Ladybugkills.Font = Enum.Font.Fantasy
Ladybugkills.Text = "Ladybugs:"
Ladybugkills.TextColor3 = Color3.new(1, 1, 1)
Ladybugkills.TextScaled = true
Ladybugkills.TextSize = 17
Ladybugkills.TextWrapped = true
Ladybugkills.ZIndex = 8

Spiderkills.Name = "Spiderkills"
Spiderkills.Parent = KillCounterFrame
Spiderkills.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Spiderkills.BackgroundTransparency = 0
Spiderkills.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Spiderkills.Position = UDim2.new(0, 5, 0, 130)
Spiderkills.Size = UDim2.new(0, 160, 0, 20)
Spiderkills.Font = Enum.Font.Fantasy
Spiderkills.Text = "Spiders:"
Spiderkills.TextColor3 = Color3.new(1, 1, 1)
Spiderkills.TextScaled = true
Spiderkills.TextSize = 17
Spiderkills.TextWrapped = true
Spiderkills.ZIndex = 8

Mantiskills.Name = "Mantiskills"
Mantiskills.Parent = KillCounterFrame
Mantiskills.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Mantiskills.BackgroundTransparency = 0
Mantiskills.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Mantiskills.Position = UDim2.new(0, 5, 0, 155)
Mantiskills.Size = UDim2.new(0, 160, 0, 20)
Mantiskills.Font = Enum.Font.Fantasy
Mantiskills.Text = "Mantis:"
Mantiskills.TextColor3 = Color3.new(1, 1, 1)
Mantiskills.TextScaled = true
Mantiskills.TextSize = 17
Mantiskills.TextWrapped = true
Mantiskills.ZIndex = 8

Scorpionkills.Name = "Scorpionkills"
Scorpionkills.Parent = KillCounterFrame
Scorpionkills.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Scorpionkills.BackgroundTransparency = 0
Scorpionkills.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Scorpionkills.Position = UDim2.new(0, 5, 0, 180)
Scorpionkills.Size = UDim2.new(0, 160, 0, 20)
Scorpionkills.Font = Enum.Font.Fantasy
Scorpionkills.Text = "Scorpions:"
Scorpionkills.TextColor3 = Color3.new(1, 1, 1)
Scorpionkills.TextScaled = true
Scorpionkills.TextSize = 17
Scorpionkills.TextWrapped = true
Scorpionkills.ZIndex = 8

Werewolfkills.Name = "Werewolfkills"
Werewolfkills.Parent = KillCounterFrame
Werewolfkills.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Werewolfkills.BackgroundTransparency = 0
Werewolfkills.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Werewolfkills.Position = UDim2.new(0, 5, 0, 205)
Werewolfkills.Size = UDim2.new(0, 160, 0, 20)
Werewolfkills.Font = Enum.Font.Fantasy
Werewolfkills.Text = "Werewolfs:"
Werewolfkills.TextColor3 = Color3.new(1, 1, 1)
Werewolfkills.TextScaled = true
Werewolfkills.TextSize = 17
Werewolfkills.TextWrapped = true
Werewolfkills.ZIndex = 8

RunTimer.Name = "RunTimer"
RunTimer.Parent = KillCounterFrame
RunTimer.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
RunTimer.BackgroundTransparency = 0
RunTimer.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
RunTimer.Position = UDim2.new(0, 5, 0, 230)
RunTimer.Size = UDim2.new(0, 160, 0, 20)
RunTimer.Font = Enum.Font.Fantasy
RunTimer.Text = ""
RunTimer.TextColor3 = Color3.new(1, 1, 1)
RunTimer.TextScaled = true
RunTimer.TextSize = 17
RunTimer.TextWrapped = true
RunTimer.ZIndex = 8

HoneyGained.Name = "HoneyGained"
HoneyGained.Parent = KillCounterFrame
HoneyGained.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
HoneyGained.BackgroundTransparency = 0
HoneyGained.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
HoneyGained.Position = UDim2.new(0, 5, 0, 255)
HoneyGained.Size = UDim2.new(0, 160, 0, 20)
HoneyGained.Font = Enum.Font.Fantasy
HoneyGained.Text = "0"
HoneyGained.TextColor3 = Color3.new(1, 1, 1)
HoneyGained.TextScaled = true
HoneyGained.TextSize = 17
HoneyGained.TextWrapped = true
HoneyGained.ZIndex = 8

DailyHoney.Name = "DailyHoney"
DailyHoney.Parent = KillCounterFrame
DailyHoney.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
DailyHoney.BackgroundTransparency = 0
DailyHoney.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
DailyHoney.Position = UDim2.new(0, 5, 0, 280)
DailyHoney.Size = UDim2.new(0, 160, 0, 20)
DailyHoney.Font = Enum.Font.Fantasy
DailyHoney.Text = "0"
DailyHoney.TextColor3 = Color3.new(1, 1, 1)
DailyHoney.TextScaled = true
DailyHoney.TextSize = 17
DailyHoney.TextWrapped = true
DailyHoney.ZIndex = 8

BPCount.Name = "BPCount"
BPCount.Parent = KillCounterFrame
BPCount.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BPCount.BackgroundTransparency = 0
BPCount.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BPCount.Position = UDim2.new(0, 5, 0, 305)
BPCount.Size = UDim2.new(0, 160, 0, 20)
BPCount.Font = Enum.Font.Fantasy
BPCount.Text = "0"
BPCount.TextColor3 = Color3.new(1, 1, 1)
BPCount.TextScaled = true
BPCount.TextSize = 17
BPCount.TextWrapped = true
BPCount.ZIndex = 8

Timers.Name = "Timers"
Timers.Parent = MainFrame
Timers.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Timers.BorderColor3 = Color3.new(0, 1, 0)
Timers.Position = UDim2.new(0, 538, 0, 5)
Timers.Size = UDim2.new(0, 70, 0, 20)
Timers.Font = Enum.Font.Fantasy
Timers.TextColor3 = Color3.new(1, 1, 1)
Timers.Text = "Timers"
Timers.TextSize = 17
Timers.TextWrapped = true

TimersFrame.Name = "TimersFrame"
TimersFrame.Parent = MainFrame
TimersFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
TimersFrame.BorderColor3 = Color3.new(0, 0, 0)
TimersFrame.BackgroundTransparency = 0
TimersFrame.Position = UDim2.new(0, 400, 0, 34)
TimersFrame.Size = UDim2.new(0, 170, 0, 505)
TimersFrame.ZIndex = 7
TimersFrame.Visible = false
TimersFrame.Draggable = true
TimersFrame.Active = true

KingBeetleTB.Name = "KingBeetleTB"
KingBeetleTB.Parent = TimersFrame
KingBeetleTB.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
KingBeetleTB.BackgroundTransparency = 0
KingBeetleTB.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
KingBeetleTB.Position = UDim2.new(0, 5, 0, 5)
KingBeetleTB.Size = UDim2.new(0, 160, 0, 20)
KingBeetleTB.Font = Enum.Font.Fantasy
KingBeetleTB.Text = "Waiting.."
KingBeetleTB.TextColor3 = Color3.new(1, 1, 1)
KingBeetleTB.TextScaled = true
KingBeetleTB.TextSize = 17
KingBeetleTB.TextWrapped = true
KingBeetleTB.ZIndex = 8

TunnelBearTB.Name = "TunnelBearTB"
TunnelBearTB.Parent = TimersFrame
TunnelBearTB.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TunnelBearTB.BackgroundTransparency = 0
TunnelBearTB.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TunnelBearTB.Position = UDim2.new(0, 5, 0, 30)
TunnelBearTB.Size = UDim2.new(0, 160, 0, 20)
TunnelBearTB.Font = Enum.Font.Fantasy
TunnelBearTB.Text = "Waiting.."
TunnelBearTB.TextColor3 = Color3.new(1, 1, 1)
TunnelBearTB.TextScaled = true
TunnelBearTB.TextSize = 17
TunnelBearTB.TextWrapped = true
TunnelBearTB.ZIndex = 8

SnailTB.Name = "SnailTB"
SnailTB.Parent = TimersFrame
SnailTB.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SnailTB.BackgroundTransparency = 0
SnailTB.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
SnailTB.Position = UDim2.new(0, 5, 0, 55)
SnailTB.Size = UDim2.new(0, 160, 0, 20)
SnailTB.Font = Enum.Font.Fantasy
SnailTB.Text = "Waiting.."
SnailTB.TextColor3 = Color3.new(1, 1, 1)
SnailTB.TextScaled = true
SnailTB.TextSize = 17
SnailTB.TextWrapped = true
SnailTB.ZIndex = 8

ClBeetle.Name = "ClBeetle"
ClBeetle.Parent = TimersFrame
ClBeetle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ClBeetle.BackgroundTransparency = 0
ClBeetle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
ClBeetle.Position = UDim2.new(0, 5, 0, 80)
ClBeetle.Size = UDim2.new(0, 160, 0, 20)
ClBeetle.Font = Enum.Font.Fantasy
ClBeetle.Text = "Beetle.."
ClBeetle.TextColor3 = Color3.new(1, 1, 1)
ClBeetle.TextScaled = true
ClBeetle.TextSize = 17
ClBeetle.TextWrapped = true
ClBeetle.ZIndex = 8

ClLadybug.Name = "ClLadybug"
ClLadybug.Parent = TimersFrame
ClLadybug.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ClLadybug.BackgroundTransparency = 0
ClLadybug.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
ClLadybug.Position = UDim2.new(0, 5, 0, 105)
ClLadybug.Size = UDim2.new(0, 160, 0, 20)
ClLadybug.Font = Enum.Font.Fantasy
ClLadybug.Text = "Ladybug.."
ClLadybug.TextColor3 = Color3.new(1, 1, 1)
ClLadybug.TextScaled = true
ClLadybug.TextSize = 17
ClLadybug.TextWrapped = true
ClLadybug.ZIndex = 8

BFBeetle.Name = "BFBeetle"
BFBeetle.Parent = TimersFrame
BFBeetle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BFBeetle.BackgroundTransparency = 0
BFBeetle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BFBeetle.Position = UDim2.new(0, 5, 0, 130)
BFBeetle.Size = UDim2.new(0, 160, 0, 20)
BFBeetle.Font = Enum.Font.Fantasy
BFBeetle.Text = "Beetle.."
BFBeetle.TextColor3 = Color3.new(1, 1, 1)
BFBeetle.TextScaled = true
BFBeetle.TextSize = 17
BFBeetle.TextWrapped = true
BFBeetle.ZIndex = 8

BaBeetle.Name = "BaBeetle"
BaBeetle.Parent = TimersFrame
BaBeetle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BaBeetle.BackgroundTransparency = 0
BaBeetle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BaBeetle.Position = UDim2.new(0, 5, 0, 155)
BaBeetle.Size = UDim2.new(0, 160, 0, 20)
BaBeetle.Font = Enum.Font.Fantasy
BaBeetle.Text = "Beetle.."
BaBeetle.TextColor3 = Color3.new(1, 1, 1)
BaBeetle.TextScaled = true
BaBeetle.TextSize = 17
BaBeetle.TextWrapped = true
BaBeetle.ZIndex = 8

BaBeetle2.Name = "BaBeetle2"
BaBeetle2.Parent = TimersFrame
BaBeetle2.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BaBeetle2.BackgroundTransparency = 0
BaBeetle2.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BaBeetle2.Position = UDim2.new(0, 5, 0, 180)
BaBeetle2.Size = UDim2.new(0, 160, 0, 20)
BaBeetle2.Font = Enum.Font.Fantasy
BaBeetle2.Text = "Beetle.."
BaBeetle2.TextColor3 = Color3.new(1, 1, 1)
BaBeetle2.TextScaled = true
BaBeetle2.TextSize = 17
BaBeetle2.TextWrapped = true
BaBeetle2.ZIndex = 8

PiBeetle.Name = "PiBeetle"
PiBeetle.Parent = TimersFrame
PiBeetle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PiBeetle.BackgroundTransparency = 0
PiBeetle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PiBeetle.Position = UDim2.new(0, 5, 0, 205)
PiBeetle.Size = UDim2.new(0, 160, 0, 20)
PiBeetle.Font = Enum.Font.Fantasy
PiBeetle.Text = "Beetle.."
PiBeetle.TextColor3 = Color3.new(1, 1, 1)
PiBeetle.TextScaled = true
PiBeetle.TextSize = 17
PiBeetle.TextWrapped = true
PiBeetle.ZIndex = 8

PiMantis.Name = "PiMantis"
PiMantis.Parent = TimersFrame
PiMantis.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PiMantis.BackgroundTransparency = 0
PiMantis.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PiMantis.Position = UDim2.new(0, 5, 0, 230)
PiMantis.Size = UDim2.new(0, 160, 0, 20)
PiMantis.Font = Enum.Font.Fantasy
PiMantis.Text = "Mantis.."
PiMantis.TextColor3 = Color3.new(1, 1, 1)
PiMantis.TextScaled = true
PiMantis.TextSize = 17
PiMantis.TextWrapped = true
PiMantis.ZIndex = 8

SpSpider.Name = "SpSpider"
SpSpider.Parent = TimersFrame
SpSpider.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SpSpider.BackgroundTransparency = 0
SpSpider.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
SpSpider.Position = UDim2.new(0, 5, 0, 255)
SpSpider.Size = UDim2.new(0, 160, 0, 20)
SpSpider.Font = Enum.Font.Fantasy
SpSpider.Text = "Spider.."
SpSpider.TextColor3 = Color3.new(1, 1, 1)
SpSpider.TextScaled = true
SpSpider.TextSize = 17
SpSpider.TextWrapped = true
SpSpider.ZIndex = 8

MuLadybug.Name = "MuLadybug"
MuLadybug.Parent = TimersFrame
MuLadybug.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MuLadybug.BackgroundTransparency = 0
MuLadybug.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MuLadybug.Position = UDim2.new(0, 5, 0, 280)
MuLadybug.Size = UDim2.new(0, 160, 0, 20)
MuLadybug.Font = Enum.Font.Fantasy
MuLadybug.Text = "Ladybug.."
MuLadybug.TextColor3 = Color3.new(1, 1, 1)
MuLadybug.TextScaled = true
MuLadybug.TextSize = 17
MuLadybug.TextWrapped = true
MuLadybug.ZIndex = 8

StLadybug.Name = "StLadybug"
StLadybug.Parent = TimersFrame
StLadybug.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
StLadybug.BackgroundTransparency = 0
StLadybug.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StLadybug.Position = UDim2.new(0, 5, 0, 305)
StLadybug.Size = UDim2.new(0, 160, 0, 20)
StLadybug.Font = Enum.Font.Fantasy
StLadybug.Text = "Ladybug.."
StLadybug.TextColor3 = Color3.new(1, 1, 1)
StLadybug.TextScaled = true
StLadybug.TextSize = 17
StLadybug.TextWrapped = true
StLadybug.ZIndex = 8

StLadybug2.Name = "StLadybug2"
StLadybug2.Parent = TimersFrame
StLadybug2.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
StLadybug2.BackgroundTransparency = 0
StLadybug2.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StLadybug2.Position = UDim2.new(0, 5, 0, 330)
StLadybug2.Size = UDim2.new(0, 160, 0, 20)
StLadybug2.Font = Enum.Font.Fantasy
StLadybug2.Text = "Ladybug.."
StLadybug2.TextColor3 = Color3.new(1, 1, 1)
StLadybug2.TextScaled = true
StLadybug2.TextSize = 17
StLadybug2.TextWrapped = true
StLadybug2.ZIndex = 8

RoScorpion.Name = "RoScorpion"
RoScorpion.Parent = TimersFrame
RoScorpion.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
RoScorpion.BackgroundTransparency = 0
RoScorpion.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
RoScorpion.Position = UDim2.new(0, 5, 0, 355)
RoScorpion.Size = UDim2.new(0, 160, 0, 20)
RoScorpion.Font = Enum.Font.Fantasy
RoScorpion.Text = "Scorpion.."
RoScorpion.TextColor3 = Color3.new(1, 1, 1)
RoScorpion.TextScaled = true
RoScorpion.TextSize = 17
RoScorpion.TextWrapped = true
RoScorpion.ZIndex = 8

RoScorpion2.Name = "RoScorpion2"
RoScorpion2.Parent = TimersFrame
RoScorpion2.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
RoScorpion2.BackgroundTransparency = 0
RoScorpion2.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
RoScorpion2.Position = UDim2.new(0, 5, 0, 380)
RoScorpion2.Size = UDim2.new(0, 160, 0, 20)
RoScorpion2.Font = Enum.Font.Fantasy
RoScorpion2.Text = "Scorpion.."
RoScorpion2.TextColor3 = Color3.new(1, 1, 1)
RoScorpion2.TextScaled = true
RoScorpion2.TextSize = 17
RoScorpion2.TextWrapped = true
RoScorpion2.ZIndex = 8

CaWerewolf.Name = "CaWerewolf"
CaWerewolf.Parent = TimersFrame
CaWerewolf.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
CaWerewolf.BackgroundTransparency = 0
CaWerewolf.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
CaWerewolf.Position = UDim2.new(0, 5, 0, 405)
CaWerewolf.Size = UDim2.new(0, 160, 0, 20)
CaWerewolf.Font = Enum.Font.Fantasy
CaWerewolf.Text = "Werewolf.."
CaWerewolf.TextColor3 = Color3.new(1, 1, 1)
CaWerewolf.TextScaled = true
CaWerewolf.TextSize = 17
CaWerewolf.TextWrapped = true
CaWerewolf.ZIndex = 8

PiMantis1.Name = "PiMantis1"
PiMantis1.Parent = TimersFrame
PiMantis1.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PiMantis1.BackgroundTransparency = 0
PiMantis1.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PiMantis1.Position = UDim2.new(0, 5, 0, 430)
PiMantis1.Size = UDim2.new(0, 160, 0, 20)
PiMantis1.Font = Enum.Font.Fantasy
PiMantis1.Text = "Mantis.."
PiMantis1.TextColor3 = Color3.new(1, 1, 1)
PiMantis1.TextScaled = true
PiMantis1.TextSize = 17
PiMantis1.TextWrapped = true
PiMantis1.ZIndex = 8

PiMantis2.Name = "PiMantis2"
PiMantis2.Parent = TimersFrame
PiMantis2.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PiMantis2.BackgroundTransparency = 0
PiMantis2.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PiMantis2.Position = UDim2.new(0, 5, 0, 455)
PiMantis2.Size = UDim2.new(0, 160, 0, 20)
PiMantis2.Font = Enum.Font.Fantasy
PiMantis2.Text = "Mantis.."
PiMantis2.TextColor3 = Color3.new(1, 1, 1)
PiMantis2.TextScaled = true
PiMantis2.TextSize = 17
PiMantis2.TextWrapped = true
PiMantis2.ZIndex = 8

CocoCrab.Name = "CocoCrab"
CocoCrab.Parent = TimersFrame
CocoCrab.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
CocoCrab.BackgroundTransparency = 0
CocoCrab.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
CocoCrab.Position = UDim2.new(0, 5, 0, 480)
CocoCrab.Size = UDim2.new(0, 160, 0, 20)
CocoCrab.Font = Enum.Font.Fantasy
CocoCrab.Text = "Cococrab.."
CocoCrab.TextColor3 = Color3.new(1, 1, 1)
CocoCrab.TextScaled = true
CocoCrab.TextSize = 17
CocoCrab.TextWrapped = true
CocoCrab.ZIndex = 8

InfoScreen.Name = "InfoScreen"
InfoScreen.Parent = MainFrame
InfoScreen.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
InfoScreen.BorderColor3 = Color3.new(0, 1, 0)
InfoScreen.Position = UDim2.new(0, 688, 0, 5)
InfoScreen.Size = UDim2.new(0, 40, 0, 20)
InfoScreen.BackgroundTransparency = 0
InfoScreen.Font = Enum.Font.Fantasy
InfoScreen.TextColor3 = Color3.new(1, 1, 1)
InfoScreen.Text = "Info"
InfoScreen.TextSize = 17
InfoScreen.TextWrapped = true

InfoFrame.Name = "InfoFrame"
InfoFrame.Parent = MainFrame
InfoFrame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
InfoFrame.BorderColor3 = Color3.new(0, 0, 0)
InfoFrame.BackgroundTransparency = 0
InfoFrame.Position = UDim2.new(0, 578, 0, 34)
InfoFrame.Size = UDim2.new(0, 200, 0, 190)
InfoFrame.ZIndex = 7
InfoFrame.Visible = false

InfoText1.Name = "InfoText1"
InfoText1.Parent = InfoFrame
InfoText1.BackgroundColor3 = Color3.new(0, 0, 0)
InfoText1.BorderColor3 = Color3.new(0, 0, 0)
InfoText1.BackgroundTransparency = 1
InfoText1.Position = UDim2.new(0, 5, 0, 5)
InfoText1.Size = UDim2.new(0, 190, 0, 210)
InfoText1.TextColor3 = Color3.new(1, 1, 1)
InfoText1.Font = Enum.Font.Fantasy
InfoText1.Text = "This Gui was created by LuckyMMB\nDiscord https://discord.gg/MU8acmY\n\n\nUpdated Optimized and\nMaintained by Dinoz#2787"
InfoText1.ZIndex = 7
InfoText1.TextSize = 15
InfoText1.TextWrapped = true
InfoText1.TextYAlignment = Enum.TextYAlignment.Top

TimeLabel.Name = "TimeLabel"
TimeLabel.Parent = MainFrame
TimeLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TimeLabel.BorderColor3 = Color3.new(0.15, 0.15, 0.15)
TimeLabel.Position = UDim2.new(0, 733, 0, 5)
TimeLabel.Size = UDim2.new(0, 60, 0, 20)
TimeLabel.BackgroundTransparency = 0
TimeLabel.Font = Enum.Font.Fantasy
TimeLabel.TextColor3 = Color3.new(1, 1, 1)
TimeLabel.Text = ""
TimeLabel.TextSize = 17
TimeLabel.TextWrapped = true

SproutDetect.Name = "SproutDetect"
SproutDetect.Parent = MainFrame
SproutDetect.BackgroundColor3 = Color3.new(0, 0.5, 0)
SproutDetect.BorderColor3 = Color3.new(0.15, 0.15, 0.15)
SproutDetect.Position = UDim2.new(0, 60, 0, 33)
SproutDetect.Size = UDim2.new(0, 150, 0, 35)
SproutDetect.Font = Enum.Font.Fantasy
SproutDetect.TextColor3 = Color3.new(1, 1, 1)
SproutDetect.Text = "Sprout Detected\nDistance: "
SproutDetect.TextSize = 17
SproutDetect.TextWrapped = true
SproutDetect.ZIndex = 0
SproutDetect.Visible = false

WindyDetect.Name = "WindyDetect"
WindyDetect.Parent = MainFrame
WindyDetect.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
WindyDetect.BorderColor3 = Color3.new(0.15, 0.15, 0.15)
WindyDetect.Position = UDim2.new(0, 522, 0, 33)
WindyDetect.Size = UDim2.new(0, 150, 0, 35)
WindyDetect.Font = Enum.Font.Fantasy
WindyDetect.TextColor3 = Color3.new(1, 1, 1)
WindyDetect.Text = "Windy Detectedd\nDistance: "
WindyDetect.TextSize = 17
WindyDetect.TextWrapped = true
WindyDetect.ZIndex = 0
WindyDetect.Visible = false

FireflyDetect.Name = "FireflyDetect"
FireflyDetect.Parent = MainFrame
FireflyDetect.BackgroundColor3 = Color3.new(0, 0, 0.5)
FireflyDetect.BorderColor3 = Color3.new(0.15, 0.15, 0.15)
FireflyDetect.Position = UDim2.new(0, 214, 0, 33)
FireflyDetect.Size = UDim2.new(0, 150, 0, 35)
FireflyDetect.Font = Enum.Font.Fantasy
FireflyDetect.TextColor3 = Color3.new(1, 1, 1)
FireflyDetect.Text = "Firefly's Detected\nDistance: "
FireflyDetect.TextSize = 17
FireflyDetect.TextWrapped = true
FireflyDetect.ZIndex = 0
FireflyDetect.Visible = false

ViciousBeeDetect.Name = "ViciousBeeDetect"
ViciousBeeDetect.Parent = MainFrame
ViciousBeeDetect.BackgroundColor3 = Color3.new(0.5, 0, 0)
ViciousBeeDetect.BorderColor3 = Color3.new(0.15, 0.15, 0.15)
ViciousBeeDetect.Position = UDim2.new(0, 368, 0, 33)
ViciousBeeDetect.Size = UDim2.new(0, 150, 0, 35)
ViciousBeeDetect.Font = Enum.Font.Fantasy
ViciousBeeDetect.TextColor3 = Color3.new(1, 1, 1)
ViciousBeeDetect.Text = "Vicious Bee Detected\nDistance: "
ViciousBeeDetect.TextSize = 17
ViciousBeeDetect.TextWrapped = true
ViciousBeeDetect.ZIndex = 0
ViciousBeeDetect.Visible = false

--blender gui 
blenderButton = Instance.new('TextButton')
blenderButton.Name = "blenderButton"
blenderButton.Parent = MainFrame
blenderButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
blenderButton.BorderColor3 = Color3.new(0, 1, 0)
blenderButton.Position = UDim2.new(0, 613, 0, 5)
blenderButton.Size = UDim2.new(0, 70, 0, 20)
blenderButton.Font = Enum.Font.Fantasy
blenderButton.TextColor3 = Color3.new(1, 1, 1)
blenderButton.Text = "Blender"
blenderButton.TextSize = 17
blenderButton.TextWrapped = true

blenderFrame = Instance.new('Frame')
blenderFrame.Name = "blenderFrame"
blenderFrame.Parent = MainFrame
blenderFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
blenderFrame.BorderColor3 = Color3.new(0, 0, 0)
blenderFrame.BackgroundTransparency = 0
blenderFrame.Position = UDim2.new(0, 550, 0, 34)
blenderFrame.Size = UDim2.new(0, 170, 0, 305)
blenderFrame.Transparency = 0
blenderFrame.ZIndex = 0
blenderFrame.Visible = false

StartBlenderB = Instance.new("TextButton")
StartBlenderB.Name = "StartBlenderB"
StartBlenderB.Parent = blenderFrame
StartBlenderB.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
StartBlenderB.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StartBlenderB.Position = UDim2.new(0, 5, 0, 5)
StartBlenderB.Size = UDim2.new(0, 160, 0, 20)
StartBlenderB.TextColor3 = Color3.new(1, 1, 1)
StartBlenderB.Font = Enum.Font.Fantasy
StartBlenderB.Text = "Blender: OFF"
StartBlenderB.ZIndex = 7
StartBlenderB.TextSize = 16

BlenderQB = Instance.new("TextBox")
BlenderQB.Name = "BlenderQB"
BlenderQB.Parent = blenderFrame
BlenderQB.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BlenderQB.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BlenderQB.Position = UDim2.new(0, 5, 0, 30)
BlenderQB.Size = UDim2.new(0, 160, 0, 20)
BlenderQB.TextColor3 = Color3.new(1, 1, 1)
BlenderQB.Font = Enum.Font.Fantasy
BlenderQB.Text = "1"
BlenderQB.ZIndex = 7
BlenderQB.TextSize = 16

RedExtractB = Instance.new("TextButton")
RedExtractB.Name = "RedExtractB"
RedExtractB.Parent = blenderFrame
RedExtractB.BackgroundColor3 = Color3.new(0.5, 0, 0)
RedExtractB.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
RedExtractB.Position = UDim2.new(0, 5, 0, 55)
RedExtractB.Size = UDim2.new(0, 160, 0, 20)
RedExtractB.TextColor3 = Color3.new(1, 1, 1)
RedExtractB.Font = Enum.Font.Fantasy
RedExtractB.Text = "Red Extract"
RedExtractB.ZIndex = 7
RedExtractB.TextSize = 16

BlueExtractB = Instance.new("TextButton")
BlueExtractB.Name = "BlueExtractB"
BlueExtractB.Parent = blenderFrame
BlueExtractB.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BlueExtractB.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BlueExtractB.Position = UDim2.new(0, 5, 0, 80)
BlueExtractB.Size = UDim2.new(0, 160, 0, 20)
BlueExtractB.TextColor3 = Color3.new(1, 1, 1)
BlueExtractB.Font = Enum.Font.Fantasy
BlueExtractB.Text = "Blue Extract"
BlueExtractB.ZIndex = 7
BlueExtractB.TextSize = 16

EnzymeB = Instance.new("TextButton")
EnzymeB.Name = "EnzymeB"
EnzymeB.Parent = blenderFrame
EnzymeB.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
EnzymeB.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
EnzymeB.Position = UDim2.new(0, 5, 0, 105)
EnzymeB.Size = UDim2.new(0, 160, 0, 20)
EnzymeB.TextColor3 = Color3.new(1, 1, 1)
EnzymeB.Font = Enum.Font.Fantasy
EnzymeB.Text = "Enzyme"
EnzymeB.ZIndex = 7
EnzymeB.TextSize = 16

OilB = Instance.new("TextButton")
OilB.Name = "OilB"
OilB.Parent = blenderFrame
OilB.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
OilB.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
OilB.Position = UDim2.new(0, 5, 0, 130)
OilB.Size = UDim2.new(0, 160, 0, 20)
OilB.TextColor3 = Color3.new(1, 1, 1)
OilB.Font = Enum.Font.Fantasy
OilB.Text = "Oil"
OilB.ZIndex = 7
OilB.TextSize = 16

GlueB = Instance.new("TextButton")
GlueB.Name = "GlueB"
GlueB.Parent = blenderFrame
GlueB.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
GlueB.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
GlueB.Position = UDim2.new(0, 5, 0, 155)
GlueB.Size = UDim2.new(0, 160, 0, 20)
GlueB.TextColor3 = Color3.new(1, 1, 1)
GlueB.Font = Enum.Font.Fantasy
GlueB.Text = "Glue"
GlueB.ZIndex = 7
GlueB.TextSize = 16

GumdropsB = Instance.new("TextButton")
GumdropsB.Name = "GumdropsB"
GumdropsB.Parent = blenderFrame
GumdropsB.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
GumdropsB.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
GumdropsB.Position = UDim2.new(0, 5, 0, 180)
GumdropsB.Size = UDim2.new(0, 160, 0, 20)
GumdropsB.TextColor3 = Color3.new(1, 1, 1)
GumdropsB.Font = Enum.Font.Fantasy
GumdropsB.Text = "Gumdrop"
GumdropsB.ZIndex = 7
GumdropsB.TextSize = 16

MoonCharmB = Instance.new("TextButton")
MoonCharmB.Name = "MoonCharmB"
MoonCharmB.Parent = blenderFrame
MoonCharmB.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MoonCharmB.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MoonCharmB.Position = UDim2.new(0, 5, 0, 205)
MoonCharmB.Size = UDim2.new(0, 160, 0, 20)
MoonCharmB.TextColor3 = Color3.new(1, 1, 1)
MoonCharmB.Font = Enum.Font.Fantasy
MoonCharmB.Text = "Moon Charm"
MoonCharmB.ZIndex = 7
MoonCharmB.TextSize = 16

GlitterB = Instance.new("TextButton")
GlitterB.Name = "GlitterB"
GlitterB.Parent = blenderFrame
GlitterB.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
GlitterB.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
GlitterB.Position = UDim2.new(0, 5, 0, 230)
GlitterB.Size = UDim2.new(0, 160, 0, 20)
GlitterB.TextColor3 = Color3.new(1, 1, 1)
GlitterB.Font = Enum.Font.Fantasy
GlitterB.Text = "Glitter"
GlitterB.ZIndex = 7
GlitterB.TextSize = 16

StarJellyB = Instance.new("TextButton")
StarJellyB.Name = "StarJellyB"
StarJellyB.Parent = blenderFrame
StarJellyB.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
StarJellyB.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StarJellyB.Position = UDim2.new(0, 5, 0, 255)
StarJellyB.Size = UDim2.new(0, 160, 0, 20)
StarJellyB.TextColor3 = Color3.new(1, 1, 1)
StarJellyB.Font = Enum.Font.Fantasy
StarJellyB.Text = "Star Jelly"
StarJellyB.ZIndex = 7
StarJellyB.TextSize = 16

TropicalDrinkB = Instance.new("TextButton")
TropicalDrinkB.Name = "TropicalDrinkB"
TropicalDrinkB.Parent = blenderFrame
TropicalDrinkB.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TropicalDrinkB.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TropicalDrinkB.Position = UDim2.new(0, 5, 0, 280)
TropicalDrinkB.Size = UDim2.new(0, 160, 0, 20)
TropicalDrinkB.TextColor3 = Color3.new(1, 1, 1)
TropicalDrinkB.Font = Enum.Font.Fantasy
TropicalDrinkB.Text = "Tropical Drink"
TropicalDrinkB.ZIndex = 7
TropicalDrinkB.TextSize = 16

--monster killer variables
refer = workspace.MonsterSpawners
noclip = false
gameover = false

--mushroom field
mushT = refer.MushroomBush.TimerAttachment.TimerGui.TimerLabel
--clover field
rhino1T = refer["Rhino Bush"].Attachment.TimerGui.TimerLabel
ladyb1T = refer["Ladybug Bush"].Attachment.TimerGui.TimerLabel
--blue flower field
rhino2T = refer["Rhino Cave 1"].Attachment.TimerGui.TimerLabel
--bamboo field
rhino3T = refer["Rhino Cave 2"].Attachment.TimerGui.TimerLabel
rhino4T = refer["Rhino Cave 3"].Attachment.TimerGui.TimerLabel
--spider field
spiderT = refer["Spider Cave"].Attachment.TimerGui.TimerLabel
--strawberry field
ladyb2T = refer["Ladybug Bush 2"].Attachment.TimerGui.TimerLabel
ladyb3T = refer["Ladybug Bush 3"].TimerAttachment.TimerGui.TimerLabel
--rose field
rose1T = refer.RoseBush.Attachment.TimerGui.TimerLabel
rose2T = refer.RoseBush2.Attachment.TimerGui.TimerLabel
--pine tree field
forestmantis1T = refer.ForestMantis1.TimerAttachment.TimerGui.TimerLabel
forestmantis2T = refer.ForestMantis2.TimerAttachment.TimerGui.TimerLabel
--werewolf
werewT = refer.WerewolfCave.Attachment.TimerGui.TimerLabel
--pineapple field
pinemantisT = refer.PineappleMantis1.Attachment.TimerGui.TimerLabel
pinebeetleT = refer.PineappleBeetle.Attachment.TimerGui.TimerLabel

--noclip
game:GetService('RunService').Stepped:connect(function()
	if noclip then
		if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end
end)

pcall(function()
for k,v in pairs(workspace.Collectibles:GetChildren()) do
	--if v.Name == game.Players.LocalPlayer.Name and v.Transparency < .7 and not v:FindFirstChild("farmed") or tonumber((v.Position - rootP.Position).magnitude) <= 60 and not v:FindFirstChild("farmed") then
		local intvalue = Instance.new("IntValue",v)
		intvalue.Name = "farmed"
	--end
end
end)
--token farm
function farmtokens()
	rootP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	for k,v in pairs(workspace.Collectibles:GetChildren()) do
		if v.Name == game.Players.LocalPlayer.Name and v.Transparency < .7 and not v:FindFirstChild("farmed") or tonumber((v.Position - rootP.Position).magnitude) <= 60 and not v:FindFirstChild("farmed") then
			local intvalue = Instance.new("IntValue",v)
			intvalue.Name = "farmed"
			noclip = true
			toTarget(rootP.Position, v.Position)
			wait(.1)
			noclip = false
		end
	end
end




--field monster positions / teleports
CloverA = Vector3.new(157.268417, 34, 242.779205)
CloverG1 = Vector3.new(161, 34, 199)
BlueA = Vector3.new(145.823746, 4, 121.861526)
BlueG1 = Vector3.new(115, 4, 101)
BambooA = Vector3.new(127.28508, 21, 3.43407989)
BambooG1 = Vector3.new(129.132538, 21, -50.0906181)
PineappleA = Vector3.new(257, 68, -205)
PineappleG1 = Vector3.new(221, 68, -234)
SpiderA = Vector3.new(-44.9185219, 20, 32.1326523)
SpiderG1 = Vector3.new(-47, 20, -16)
MushroomA = Vector3.new(-96.5041733, 5, 152.095932)
MushroomG1 = Vector3.new(-88, 5, 109)
StrawberryA = Vector3.new(-141.830444, 21, 34.7548828)
StrawberryG1 = Vector3.new(-216.277405, 21, -53.3578911)
RoseA = Vector3.new(-320, 40, 130)
RoseG1 = Vector3.new(-330.554382, 20, 125.98172)
WerewolfA = Vector3.new(-166, 68, -174)
WerewolfG1 = Vector3.new(-134.243652, 68, -211.528366)
PineA = Vector3.new(-300.64502, 68, -189.465759)
PineG1 = Vector3.new(-369.566254, 68, -194.724686)

--rose field monster kill
function roseKill()
	if rose1T.Visible == false or rose2T.Visible == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, RoseA)
		noclip = true
		wait(3)
		noclip = false
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, RoseG1)
		qwait = 0
		repeat
		wait(1)
		qwait = qwait + 1
		if qwait == 15 then
			gameover = true
		end
		until
		rose1T.Visible == true and rose2T.Visible == true or gameover == true
		if gameover == true then
			print("Failed Rose field monster kill")
			gameover = false
		end		
		wait(1)
		farmtokens()
		farmtokens()
		wait(1)
		gameover = false
	end
end

--pine field monster kill
function pineKill()
	if forestmantis1T.Visible == false or forestmantis2T.Visible == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,PineA)
		noclip = true
		wait(3)
		noclip = false
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,PineG1)
		qwait = 0
		repeat
		wait(1)
		qwait = qwait + 1
		if qwait == 15 then
			gameover = true
		end
		until
		forestmantis1T.Visible == true and forestmantis2T.Visible == true or gameover == true
		if gameover == true then
			print("Failed Pine Tree field monster kill")
			gameover = false
		end		
		wait(1)
		farmtokens()
		farmtokens()
		wait(1)
		gameover = false
	end
end

--clover field monster kill
function cloverKill()
	if rhino1T.Visible == false or ladyb1T.Visible == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,CloverA)
		noclip = true
		wait(2)
		noclip = false
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,CloverG1)
		qwait = 0
		repeat
		wait(1)
		qwait = qwait + 1
		if qwait == 15 then
			gameover = true
		end
		until
		rhino1T.Visible == true and ladyb1T.Visible == true or gameover == true
		if gameover == true then
			print("Failed Clover field monster kill")
			gameover = false
		end
		wait(1)
		farmtokens()
		farmtokens()
		wait(1)
		gameover = false
	end
end

--blue flower field monster kill
function blueflowerKill()
	if rhino2T.Visible == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,BlueA)
		noclip = true
		wait(1)
		noclip = false
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,BlueG1)
		qwait = 0
		repeat
		wait(1)
		qwait = qwait + 1
		if qwait == 15 then
			gameover = true
		end
		until
		rhino2T.Visible == true or gameover == true
		if gameover == true then
			print("Failed Blue Flower field monster kill")
			gameover = false
		end		
		wait(1)
		farmtokens()
		farmtokens()
		wait(1)
		gameover = false
	end
end

--werewolf killer
function werewolfKill()
	if werewT.Visible == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,WerewolfA)
		noclip = true
		wait(3)
		noclip = false
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,WerewolfG1)
		qwait = 0
		repeat
		wait(1)
		qwait = qwait + 1
		if qwait == 15 then
			gameover = true
		end		  
		until
		werewT.Visible == true or gameover == true
		if gameover == true then
			print("Failed Werewolf monster kill")
			gameover = false
		end		
		wait(1)
		farmtokens()
		farmtokens()
		wait(1)
		gameover = false
	end
end

--strawberry field monster kill
function strawberryKill()
	if ladyb2T.Visible == false or ladyb3T.Visible == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,StrawberryA)
		noclip = true
		wait(1)
		noclip = false
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,StrawberryG1)
		qwait = 0
		repeat
		wait(1)
		qwait = qwait + 1
		if qwait == 15 then
			gameover = true
		end						  
		until
		ladyb2T.Visible == true and ladyb3T.Visible == true or gameover == true
		if gameover == true then
			print("Failed Strawberry field monster kill")
			gameover = false
		end		
		wait(1)
		farmtokens()
		farmtokens()
		wait(1)
		gameover = false
	end
end

--spider killer
function spiderKill()
	if spiderT.Visible == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,SpiderA)
		noclip = true
		wait(3)
		noclip = false
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,SpiderG1)
		qwait = 0
		repeat
		wait(1)
		qwait = qwait + 1
		if qwait == 15 then
			gameover = true
		end
		until
		spiderT.Visible == true or gameover == true
		if gameover == true then
			print("Failed Spider field monster kill")
			gameover = false
		end		
		wait(1)
		farmtokens()
		farmtokens()
		wait(1)
		gameover = false
	end
end

--bamboo field monster kill
function bambooKill()
	if rhino3T.Visible == false or rhino4T.Visible == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,BambooA)
		noclip = true
		wait(1)
		noclip = false
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,BambooG1)
		qwait = 0
		repeat
		wait(1)
		qwait = qwait + 1
		if qwait == 15 then
			gameover = true
		end
		until
		rhino3T.Visible == true and rhino4T.Visible == true or gameover == true
		if gameover == true then
			print("Failed Bamboo field monster kill")
			gameover = false
		end		
		wait(1)
		farmtokens()
		farmtokens()
		wait(1)
		gameover = false
	end
end

--pineapple field monster kill
function pineappleKill()
	if pinemantisT.Visible == false or pinebeetleT.Visible == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,PineappleA)
		noclip = true
		wait(2)
		noclip = false
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,PineappleG1)
		qwait = 0
		repeat
		wait(1)
		qwait = qwait + 1
		if qwait == 15 then
			gameover = true
		end		  
		until
		pinemantisT.Visible == true and pinebeetleT.Visible == true or gameover == true
		if gameover == true then
			print("Failed Pineapple field monster kill")
			gameover = false
		end		
		wait(1)
		farmtokens()
		farmtokens()
		wait(1)
		gameover = false
	end
end

--mushroom field killer
function mushroomKill()
	if mushT.Visible == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,MushroomA)
		noclip = true
		wait(1)
		noclip = false
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,MushroomG1)
		qwait = 0
		repeat
		wait(1)
		qwait = qwait + 1
		if qwait == 15 then
			gameover = true
		end
		until
		mushT.Visible == true or gameover == true
		if gameover == true then
			print("Failed Mushroom field monster kill")
			gameover = false
		end		
		wait(1)
		farmtokens()
		farmtokens()
		wait(1)
		gameover = false
	end
end

function KillMonsters()
	print("Starting monster killer")
	gameover = false
	AutoDigActive = true
	cloverKill()
	blueflowerKill()
	bambooKill()
	pineappleKill()
	spiderKill()
	mushroomKill()
	strawberryKill()
	roseKill()
	pineKill()
	werewolfKill()
	AutoDigActive = false
	gameover = false
	print("Successfully finished monster killer")
end

-- Badges --
function badges()
	badge = game.ReplicatedStorage.Events.BadgeEvent
	badge:FireServer("Collect","Playtime")
	badge:FireServer("Collect","Honey")
	wait(.25)
	badge:FireServer("Collect","Quest")
	badge:FireServer("Collect","Battle")
	badge:FireServer("Collect","Ability")
	wait(.25)
	badge:FireServer("Collect","Goo")
	badge:FireServer("Collect","Sunflower")
	badge:FireServer("Collect","Dandelion")
	wait(.25)
	badge:FireServer("Collect","Mushroom")
	badge:FireServer("Collect","Blue Flower")
	badge:FireServer("Collect","Clover")
	wait(.25)
	badge:FireServer("Collect","Spider")
	badge:FireServer("Collect","Bamboo")
	badge:FireServer("Collect","Strawberry")
	wait(.25)
	badge:FireServer("Collect","Pineapple")
	badge:FireServer("Collect","Pumpkin")
	badge:FireServer("Collect","Cactus")
	wait(.25)
	badge:FireServer("Collect","Rose")
	badge:FireServer("Collect","Pine Tree")
	badge:FireServer("Collect","Stump")
	wait(.25)
	badge:FireServer("Collect","Coconut")
	badge:FireServer("Collect","Pepper")
end

-- Promo Codes --
function promocodes()
	promo = game.ReplicatedStorage.Events.PromoCodeEvent
	promo:FireServer("38217")
	promo:FireServer("Bopmaster")
	promo:FireServer("Buzz")
	promo:FireServer("Cog")
	promo:FireServer("Connoisseur")
	promo:FireServer("Crawlers")
	promo:FireServer("Nectar")
	promo:FireServer("Roof")
	promo:FireServer("Wax")
	promo:FireServer("Wink")
	promo:FireServer("ClubBean")
	promo:FireServer("SecretProfileCode")
	promo:FireServer("WikiHonor")
	promo:FireServer("WikiAwardClock")
	promo:FireServer("GumdropsForScience")
	promo:FireServer("Sure")
	promo:FireServer("BloxyCelebration")
	promo:FireServer("ClubConverters")
	promo:FireServer("ClubBasket")
	promo:FireServer("Marshmallow")
	promo:FireServer("500Mil")
	promo:FireServer("Discord100k")
	promo:FireServer("BeeDay2019")
	promo:FireServer("TornadoGlitch")
	promo:FireServer("RebootCloud")
	promo:FireServer("Tornado")
	promo:FireServer("ClubCloud")
	promo:FireServer("Gumaden10T")
	promo:FireServer("Beesmasbegins")
	promo:FireServer("BeesBuzz123")
	promo:FireServer("JollyJelly")
	promo:FireServer("FestiveFrogs")
end

-- AutoQuest Stuff --

fieldFarmButtons = {
	Field1AF, Field2AF, Field3AF, Field4AF, Field5AF, Field6AF, Field7AF, Field8AF, Field9AF,
	Field10AF, Field11AF, Field12AF, Field13AF, Field14AF, Field15AF, Field16AF, Field17AF
}

activefield = nil

function FarmForAll(FieldChosen, rotating)
	if not rotating then
		switchnow = true
	end
	justField = (string.match(tostring(FieldChosen), "%d+"))
	if tostring(justField) == "1" then Field1AFActive = true activefield = 1 else Field1AFActive = false end
	if tostring(justField) == "2" then Field2AFActive = true activefield = 2 else Field2AFActive = false end
	if tostring(justField) == "3" then Field3AFActive = true activefield = 3 else Field3AFActive = false end
	if tostring(justField) == "4" then Field4AFActive = true activefield = 4 else Field4AFActive = false end
	if tostring(justField) == "5" then Field5AFActive = true activefield = 5 else Field5AFActive = false end
	if tostring(justField) == "6" then Field6AFActive = true activefield = 6 else Field6AFActive = false end
	if tostring(justField) == "7" then Field7AFActive = true activefield = 7 else Field7AFActive = false end
	if tostring(justField) == "8" then Field8AFActive = true activefield = 8 else Field8AFActive = false end
	if tostring(justField) == "9" then Field9AFActive = true activefield = 9 else Field9AFActive = false end
	if tostring(justField) == "10" then Field10AFActive = true activefield = 10 else Field10AFActive = false end
	if tostring(justField) == "11" then Field11AFActive = true activefield = 11 else Field11AFActive = false end
	if tostring(justField) == "12" then Field12AFActive = true activefield = 12 else Field12AFActive = false end
	if tostring(justField) == "13" then Field13AFActive = true activefield = 13 else Field13AFActive = false end
	if tostring(justField) == "14" then Field14AFActive = true activefield = 14 else Field14AFActive = false end
	if tostring(justField) == "15" then Field15AFActive = true activefield = 15 else Field15AFActive = false end
	if tostring(justField) == "16" then Field16AFActive = true activefield = 16 else Field16AFActive = false end
	if tostring(justField) == "17" then Field17AFActive = true activefield = 17 else Field17AFActive = false end
	if not rotating then
		PollenFarmActive = true
		resethive = false
		switchlocationmsg = false
		StartFarm.Text = "Pollen Farm: ON"
		PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
		StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
		WayPointsFrame.Visible = false
	end
end

for i,v in pairs(fieldFarmButtons) do
	v.MouseButton1Down:connect(function()
		FarmForAll(v, false)
	end)
end

--Auto Blender

blenderButtons = {
	RedExtractB,
	BlueExtractB,
	EnzymeB,
	OilB,
	GlueB,
	GumdropsB,
	MoonCharmB,
	GlitterB,
	StarJellyB,
	TropicalDrinkB
}

blenderitem = "RedExtract"
for i,v in pairs(blenderButtons) do
	v.MouseButton1Click:connect(function()
		if v == RedExtractB then
			blenderitem = "RedExtract"
		elseif v == BlueExtractB then
			blenderitem = "BlueExtract"
		elseif v == EnzymeB then
			blenderitem = "Enzymes"
		elseif v == OilB then
			blenderitem = "Oil"
		elseif v == GlueB then
			blenderitem = "Glue"
		elseif v == GumdropsB then
			blenderitem = "Gumdrops"	
		elseif v == MoonCharmB then
			blenderitem = "MoonCharm"
		elseif v == GlitterB then
			blenderitem = "Glitter"	
		elseif v == StarJellyB then
			blenderitem = "StarJelly"
		elseif v == TropicalDrinkB then
			blenderitem = "TropicalDrink"	
		end	
		for k,q in pairs(blenderButtons) do
			if v == q then
				q.BackgroundColor3 = Color3.new(0.5, 0, 0)
			else
				q.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
			end
		end
	end)
end


--- Blender Toggle ---
isBlending = false
StartBlenderB.MouseButton1Click:connect(function()
	if isBlending ~= true then
		isBlending = true
		notify'Auto Blender Started'
		print("Blender will run automatically with given input.")
		StartBlenderB.BackgroundColor3 = Color3.new(0.5, 0, 0)
		StartBlenderB.Text = "Blender: ON"
	else
		isBlending = false
		notify'Auto Blender Stopped'
		StartBlenderB.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		StartBlenderB.Text = "Blender: OFF"
	end
end)

-- Instant Converter Toggle --

InstantConverterToggle.MouseButton1Click:connect(function()
	if instantconverteractive ~= true then
		instantconverteractive = true
		notify'Instant Converter Started'
		print("Instant Converter. Instant Converter used when off cooldown.")
		InstantConverterToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		InstantConverterToggle.Text = "Instant Converter: ON"
	else
		instantconverteractive = false
		notify'Instant Converter Stopped'
		InstantConverterToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		InstantConverterToggle.Text = "Instant Converter: OFF"
	end
end)

-- Micro Converter Toggle --

MicroConverterToggle.MouseButton1Click:connect(function()
	if microconverteractive ~= true then
		microconverteractive = true
		notify'Micro Converter Started'
		print("Micro Converter. Micro Converter used if you have any.")
		MicroConverterToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		MicroConverterToggle.Text = "Micro Converter: ON"
	else
		microconverteractive = false
		notify'Micro Converter Stopped'
		MicroConverterToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		MicroConverterToggle.Text = "Micro Converter: OFF"
	end
end)

-- Marshmallow Bee Toggle --

MarshmallowToggle.MouseButton1Click:connect(function()
	if marshmallowbeeactive ~= true then
		marshmallowbeeactive = true
		notify'MarshmallowBee Started'
		MarshmallowToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		MarshmallowToggle.Text = "Marshmallow: ON"
	else
		marshmallowbeeactive = false
		notify'Micro Converter Stopped'
		MarshmallowToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		MarshmallowToggle.Text = "Marshmallow: OFF"
	end
end)

-- CollectAllTickets Toggle --

CollectAllTickets.MouseButton1Click:connect(function()
	if CollectTickets ~= true then
		CollectTickets = true
		notify'Collect All Tickets Started'
		print("All tickets will be collected, regardless of distance.")
		CollectAllTickets.BackgroundColor3 = Color3.new(0.5, 0, 0)
		CollectAllTickets.Text = "Collect Tickets: ON"
	else
		CollectTickets = false
		notify'Collect All Tickets Stopped'
		CollectAllTickets.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		CollectAllTickets.Text = "Collect Tickets: OFF"
	end
end)

-- Remote Badge Toggle --

BadgeToggle.MouseButton1Click:connect(function()
	if RemoteBadgeActive ~= true then
		RemoteBadgeActive = true
		notify'Remote Badge Started'
		print("Remote Quest Started. Badges automatically upgraded when ready.")
		BadgeToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		BadgeToggle.Text = "Remote Badge: ON"
	else
		RemoteBadgeActive = false
		notify'Remote Badge Stopped'
		BadgeToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		BadgeToggle.Text = "Remote Badge: OFF"
	end
end)

-- Trigger Treats every 4 hours --

TreatToggle.MouseButton1Click:connect(function()
	if TreatActive ~= true then
		TreatActive = true
		notify'Auto Treats Started'
		print("Treats will be given every 1 hour (4 hours for Blueberry and Strawberry).")
		TreatToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		TreatToggle.Text = "Auto Treats: ON"
	else
		TreatActive = false
		notify'Auto Treats Stopped'
		TreatToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		TreatToggle.Text = "Auto Treats: OFF"
	end
end)

-- Auto Stinger --

AutoStingerToggle.MouseButton1Click:connect(function()
	if autostinger ~= true and autostinger2 ~= true then
		autostinger = true
		autostinger2 = false
		notify'Snail/Crab Auto Stinger Started'
		print("Stingers will be automatically used during snail and crab kill.")
		AutoStingerToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		AutoStingerToggle.Text = "Auto Stinger: ON"
	else
		autostinger = false
		autostinger2 = false
		notify'Snail/Crab Auto Stinger Stopped'
		AutoStingerToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		AutoStingerToggle.Text = "Auto Stinger: OFF"
	end
end)

AutoStingerToggle.MouseButton2Click:connect(function()
	if autostinger2 ~= true and autostinger ~= true then
		autostinger = false
		autostinger2 = true
		notify'Auto Stinger Started'
		print("Stingers will be automatically used every 30 seconds.")
		AutoStingerToggle.BackgroundColor3 = Color3.new(0, .5, 0)
		AutoStingerToggle.Text = "Auto Stinger: ON"
	else
		autostinger = false
		autostinger2 = false
		notify'Auto Stinger Stopped'
		AutoStingerToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		AutoStingerToggle.Text = "Auto Stinger: OFF"
	end
end)

-- Farm Sprouts --

SproutFarmToggle.MouseButton1Click:connect(function()
	if SproutFarmActive ~= true then
		SproutFarmActive = true
		SproutFarmToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		SproutFarmToggle.Text = "Farm Sprout: ON"
		PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	else
		SproutFarmActive = false
		SproutFarmToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		SproutFarmToggle.Text = "Farm Sprout: OFF"
		PollenFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	end
end)

-- Avoid Vicious Bee --

AvoidViciousBee.MouseButton1Click:connect(function()
	if AvoidViciousActive ~= true then
		AvoidViciousActive = true
		AvoidViciousBee.BackgroundColor3 = Color3.new(0.5, 0, 0)
		AvoidViciousBee.Text = "Avoid Vicious Bee: ON"
	else
		AvoidViciousActive = false
		AvoidViciousBee.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		AvoidViciousBee.Text = "Avoid Vicious Bee: OFF"
	end
end)

-- Hunt Vicious Bee --

HuntViciousBee.MouseButton1Click:connect(function()
	if HuntViciousActive ~= true then
		HuntViciousActive = true
		HuntViciousBee.BackgroundColor3 = Color3.new(0.5, 0, 0)
		HuntViciousBee.Text = "Hunt Vicious: ON"
		PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	else
		HuntViciousActive = false
		HuntViciousBee.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		HuntViciousBee.Text = "Hunt Vicious: OFF"
		PollenFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	end
end)

--- windy bee button ---

FarmWindy.MouseButton1Click:connect(function()
	if not windyfarm then
		windyfarm = true
		notify'Windy Hunt started'
		FarmWindy.BackgroundColor3 = Color3.new(0.5, 0, 0)
		FarmWindy.Text = "Hunt Windy: ON"
	else
		windyfarm = false
		notify'Hunt Windy Off'
		FarmWindy.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		FarmWindy.Text = "Hunt Windy: OFF"
	end
end)

-- Trigger Wealth Clock every 30 minutes --

WealthClockToggle.MouseButton1Click:connect(function()
	if WealthClockActive ~= true then
		WealthClockActive = true
		notify'Wealth Clock Started'
		print("Wealth Clock Started. The Wealth Clock will be triggered every 30 minutes.")
		WealthClockToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		WealthClockToggle.Text = "Wealth Clock: ON"
	else
		WealthClockActive = false
		notify'Wealth Clock Stopped'
		WealthClockToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		WealthClockToggle.Text = "Wealth Clock: OFF"
	end
end)

-- Trigger Field Boosts every 2 hours --

AutoSprinklerToggle.MouseButton1Click:connect(function()
	if autosprinkler ~= true then
		autosprinkler = true
		notify'Auto Sprinkler Started'
		print("Auto Sprinkler Started. 1 sprinkler will be set every field.")
		AutoSprinklerToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		AutoSprinklerToggle.Text = "Auto Sprinkler: ON"
	else
		autosprinkler = false
		notify'Auto Sprinkler Stopped'
		AutoSprinklerToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		AutoSprinklerToggle.Text = "Auto Sprinkler: OFF"
	end
end)	

-- Auto Ant Farm Toggle --

AutoAntFarm.MouseButton1Down:connect(function()
	if AntFarm then
		AntFarm = false
		AutoAntFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		AutoAntFarm.Text = "Auto Ant: Off"
		print("Auto Ant Farm Disabled")
	else
		AntFarm = true
		AutoAntFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
		AutoAntFarm.Text = "Auto Ant: On"
		print("Auto Ant Farm Started")
	end
end)


-- Monster Killer Toggle --

MonsterKillerToggle.MouseButton1Click:connect(function()
	if MonsterKillerActive ~= true then
		MonsterKillerActive = true
		notify'Monster Killer Started'
		print("Monster Killer Started.")
		MonsterKillerToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		MonsterKillerToggle.Text = "Monster Killer: ON"
		ExtrasScreen.BackgroundColor3 = Color3.new(0.5, 0, 0)
	else
		MonsterKillerActive = false
		notify'Monster Killer Stopped'
		MonsterKillerToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		MonsterKillerToggle.Text = "Monster Killer: OFF"
		ExtrasScreen.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	end
end)

--- Monster Killer Quick Mode ---

QuickKillToggle.MouseButton1Click:connect(function()
	if quickkillactive ~= true then
		quickkillactive = true
		notify'Quick Kill Started'
		print("Speeding up monster killer!")
		QuickKillToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		QuickKillToggle.Text = "^Gotta go fast^: ON"
	else
		quickkillactive = false
		notify'Quick Kill Stopped'
		QuickKillToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		QuickKillToggle.Text = "^Gotta go fast^: OFF"
	end
end)

-- Auto Dig --

AutoDig.MouseButton1Click:connect(function()
	if AutoDigActive ~= true then
		AutoDigActive = true
		AutoDig.BackgroundColor3 = Color3.new(0.5, 0, 0)
	else
		AutoDigActive = false
		notify'Auto Dig Stopped'
		AutoDig.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	end
end)

--- NoClip ---

noclip = false
NoClip.MouseButton1Down:connect(function()
	noclip = not noclip
	if noclip then
		NoClip.Text = "NoClip Mode: ON"
		NoClip.BackgroundColor3 = Color3.new(0.5, 0, 0)
	else
		NoClip.Text = "NoClip Mode: OFF"
		NoClip.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	end
end)

-- GumDrop Toggle --

GumDropToggle.MouseButton1Click:connect(function()
	if GumDropActive ~= true and GumDropActive2 ~= true then
		GumDropActive = true
		GumDropActive2 = false
		notify'Auto Gumdrops Started'
		print("Auto Gumdrops. Gumdrops automatically used on fields.")
		GumDropToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		GumDropToggle.Text = "Auto Gumdrop: ON"
	else
		GumDropActive = false
		GumDropActive2 = false
		notify'Auto Gumdrops Stopped'
		GumDropToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		GumDropToggle.Text = "Auto Gumdrops: OFF"
	end
end)

GumDropToggle.MouseButton2Click:connect(function()
	if GumDropActive ~= true and GumDropActive2 ~= true then
		GumDropActive = false
		GumDropActive2 = true
		notify'Auto Gumdrops Started'
		print("Auto Gumdrops. Gumdrops automatically used at all times.")
		GumDropToggle.BackgroundColor3 = Color3.new(0, .5, 0)
		GumDropToggle.Text = "Auto Gumdrop: ON"
	else
		GumDropActive = false
		GumDropActive2 = false
		notify'Auto Gumdrops Stopped'
		GumDropToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		GumDropToggle.Text = "Auto Gumdrops: OFF"
	end
end)

-- Fix settings --

function turnthemoff()
	if PollenFarmActive and not convertinghoney then
		FarmTempOFF = true
		PollenFarmActive = false
		StartFarm.Text = "Pollen Farm: PAUSED"
		PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0.5)
		StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0.5)
	end
	if SproutFarmActive and not sproutkillstarted then
		sproutwasactive = true
		SproutFarmActive = false
		SproutFarmToggle.Text = "Farm Sprout: PAUSED"
		SproutFarmToggle.BackgroundColor3 = Color3.new(0.5, 0, 0.5)
	end
	if HuntViciousActive and not viciouskillstarted then
		viciouswasactive = true
		HuntViciousActive = false
		HuntViciousBee.Text = "Hunt Vicious: PAUSED"
		HuntViciousBee.BackgroundColor3 = Color3.new(0.5, 0, 0.5)
	end
	if windyfarm and not windykillstarted then
		windywasactive = true
		windyfarm = false
		FarmWindy.Text = "Hunt Windy: PAUSED"
		FarmWindy.BackgroundColor3 = Color3.new(0.5, 0, 0.5)
	end
	if mondohunt and not mondostarted then
		mondowasactive = true
		mondohunt = false
		HuntMondo.Text = "Mondo Chick: PAUSED"
		HuntMondo.BackgroundColor3 = Color3.new(0.5, 0, 0.5)
	end
	if guidingfarm and not guidingstarted then
		guidingwasactive = true
		guidingfarm = false
		HuntGuiding.Text = "Hunt Windy: PAUSED"
		HuntGuiding.BackgroundColor3 = Color3.new(0.5, 0, 0.5)
	end
end

function turnthemon()
	if FarmTempOFF then
		FarmTempOFF = false
		PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
		StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
		StartFarm.Text = "Pollen Farm: ON"
		PollenFarmActive = true
	end
	if sproutwasactive then
		sproutwasactive = false
		SproutFarmActive = true
		SproutFarmToggle.Text = "Farm Sprout: ON"
		SproutFarmToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		SproutFarmToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
	end
	if viciouswasactive then
		viciouswasactive = false
		HuntViciousActive = true
		HuntViciousBee.Text = "Hunt Vicious: ON"
		HuntViciousBee.BackgroundColor3 = Color3.new(0.5, 0, 0)
		HuntViciousBee.BackgroundColor3 = Color3.new(0.5, 0, 0)
	end
	if windywasactive then
		windywasactive = false
		windyfarm = true
		FarmWindy.Text = "Hunt Windy: ON"
		FarmWindy.BackgroundColor3 = Color3.new(0.5, 0, 0)
	end	
	if mondowasactive then
		mondowasactive = false
		mondohunt = true
		HuntMondo.Text = "Mondo Chick: ON"
		HuntMondo.BackgroundColor3 = Color3.new(0.5, 0, 0)
	end
		if guidingwasactive then
		guidingwasactive = false
		guidinghunt = true
		HuntGuiding.Text = "Mondo Chick: ON"
		HuntGuiding.BackgroundColor3 = Color3.new(0.5, 0, 0)
	end
end

local tween_s = game:service"TweenService"
-- local info = 
function toTarget(pos, targetPos)
       -- local tween, err = pcall(function()
           -- tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], TweenInfo.new((targetPos - pos).Magnitude/120, Enum.EasingStyle.Quad), {CFrame = CFrame.new(targetPos)}):Play()
       -- end)
       -- if not tween then return err end
	tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], TweenInfo.new((targetPos - pos).Magnitude/65, Enum.EasingStyle.Linear), {CFrame = CFrame.new(targetPos)}):Play()
end

function forceempty()
	pollenLbl = player.Character:FindFirstChild("ProgressLabel",true)
	if not pollenLbl then
		print("Backpack not found")
	end
	maxpollen = tonumber(pollenLbl.Text:match("%d+$"))
	if tonumber(player.CoreStats.Pollen.Value+1) > tonumber(maxpollen) then
		print("Potential to get stuck, forcing you back to hive")
		turnthemoff()
		wait(1)
		game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Players").LocalPlayer.SpawnPos.Value.p)
		wait(.5)
		game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
		repeat
		wait(1)
		until game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value < 1
		wait(8)
	end
	if tonumber(player.CoreStats.Pollen.Value+1) > tonumber(maxpollen) then
		forceempty()
	end
	turnthemon()
end

--- Notify ---

function notify(msg)
	game.StarterGui:SetCore('SendNotification', {
	Title = 'Bee Swarm AIO GUI';
	Text = msg;
	Duration = 5;
	})
end

--- Close ---

Close.MouseButton1Down:connect(function()
	MainGUI:Destroy()
end)

--- Minimize ---

Minimize.MouseButton1Down:connect(function()
	MainFrame.Visible = false
	OpenFrame.Visible = true
end)

OpenButton.MouseButton1Down:connect(function()
	MainFrame.Visible = true
	OpenFrame.Visible = false
end)

--- Waypoint Extras buttons ---

SproutButton.MouseButton1Down:connect(function()
	game.ReplicatedStorage.Events.ToyEvent:FireServer("Sprout Summoner")
	WayPointsFrame.Visible = false
end)

DiamondMaskEquip.MouseButton1Down:connect(function()
	game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Diamond Mask",["Category"]  = "Accessory"})
	WayPointsFrame.Visible = false
	print("Equipped Diamond Mask if owned")
end)

GummyMaskEquip.MouseButton1Down:connect(function()
	game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Gummy Mask",["Category"]  = "Accessory"})
	WayPointsFrame.Visible = false
	print("Equipped Gummy Mask if owned")
end)

DemonMaskEquip.MouseButton1Down:connect(function()
	game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Demon Mask",["Category"]  = "Accessory"})
	WayPointsFrame.Visible = false
	print("Equipped Demon Mask if owned")
end)

FireMaskButton.MouseButton1Down:connect(function()
	game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Fire Mask",["Category"]  = "Accessory"})
	WayPointsFrame.Visible = false
	print("Equipped Fire Mask if owned")
end)

BubbleMaskButton.MouseButton1Down:connect(function()
	game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Bubble Mask",["Category"]  = "Accessory"})
	WayPointsFrame.Visible = false
	print("Equipped Bubble Mask if owned")
end)

BlueBoostUse.MouseButton1Down:connect(function()
	game.ReplicatedStorage.Events.ToyEvent:FireServer("Blue Field Booster")
	WayPointsFrame.Visible = false
	print("Blue Field Boosted")
end)

RedBoostUse.MouseButton1Down:connect(function()
	game.ReplicatedStorage.Events.ToyEvent:FireServer("Red Field Booster")
	WayPointsFrame.Visible = false
	print("Red Field Boosted")
end)

MtnBoostUse.MouseButton1Down:connect(function()
	game.ReplicatedStorage.Events.ToyEvent:FireServer("Field Booster")
	WayPointsFrame.Visible = false
	print("Mountain Top Field Boosted")
end)

MoonButton.MouseButton1Down:connect(function()
	game.ReplicatedStorage.Events.ToyEvent:FireServer("Moon Amulet Generator")
	WayPointsFrame.Visible = false
	print("Moon Amulet Created")
end)

HoneyStormButton.MouseButton1Down:connect(function()
	game.ReplicatedStorage.Events.ToyEvent:FireServer("Honeystorm")
	WayPointsFrame.Visible = false
	print("Honeystorm Summoned")
end)

AntChallButton.MouseButton1Down:connect(function()
	game.ReplicatedStorage.Events.ToyEvent:FireServer("Ant Challenge")
	WayPointsFrame.Visible = false
	print("Ant Challenge Started")
end)

AntChallButton.MouseButton2Down:connect(function()
	AntFarmFunc()
end)

BlenderUse.MouseButton1Down:connect(function()
	WayPointsFrame.Visible = false
	player = game:GetService("Players").LocalPlayer
	root = player.Character.HumanoidRootPart
	origPOS = root.CFrame
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-426, 69, 38)
	game.ReplicatedStorage.Events.ToyEvent:FireServer("Blender")
	game.Players.LocalPlayer.PlayerGui.ScreenGui.Blender.Visible = true
	game.Players.LocalPlayer.PlayerGui.ScreenGui.Blender.RecipeProgress.Visible = true
	wait(.1)
	root.CFrame = origPOS
	print("Blender GUI opened")
end)

--- Menus ---

local Menus = {
[WayPoints] = WayPointsFrame;
[ExtrasScreen] = ExtrasFrame;
[InfoScreen] = InfoFrame;
[PollenFarm] = FarmFrame;
[Players] = PlayerFrame;
[blenderButton] = blenderFrame;
}

for button,frame in pairs(Menus) do
	button.MouseButton1Click:connect(function()
		if frame.Visible then
			frame.Visible = false
			return
		end
		for k,v in pairs(Menus) do
			v.Visible = v == frame
		end
	end)
end

KillCounter.MouseButton1Down:connect(function()
	if KillCounterFrame.Visible == true then
		KillCounterFrame.Visible = false
	else
		KillCounterFrame.Visible = true
	end
end)

Timers.MouseButton1Down:connect(function()
	if TimersFrame.Visible == true then
		TimersFrame.Visible = false
	else
		TimersFrame.Visible = true
	end
end)

--- Claim open Hive ---

for i, v in pairs(game.Workspace.Honeycombs:GetChildren()) do
	if v.Owner.Value == nil then
		ID = v.HiveID.Value
		--game.ReplicatedStorage.Events.ClaimHive:FireServer(ID)
	end
end

-- kill counter --
PSEvent = game:GetService("ReplicatedStorage").Events.RetrievePlayerStats
statstable = PSEvent:InvokeServer()
beetlebk = statstable.Totals.Kills["Rhino Beetle"]
spiderbk = statstable.Totals.Kills.Spider
ladybugbk = statstable.Totals.Kills.Ladybug
scorpionbk = statstable.Totals.Kills.Scorpion
mantisbk = statstable.Totals.Kills.Mantis
werewolfbk = statstable.Totals.Kills.Werewolf
beetledb = false
spiderdb = false
ladybugdb = false
scorpiondb = false
mantisdb = false
werewolfdb = false

if not beetledb then
	beetlekills = beetlebk or 0
	beetledb = true
end
if not spiderdb then
	spiderkills = spiderbk or 0
	spiderdb = true
end
if not ladybugdb then
	ladybugkills = ladybugbk or 0
	ladybugdb = true
end
if not scorpiondb then
	scorpionkills = scorpionbk or 0
	scorpiondb = true
end
if not mantisdb then
	mantiskills = mantisbk or 0
	mantisdb = true
end
if not werewolfdb then
	werewolfkills = werewolfbk or 0
	werewolfdb = true
end

--- Honey Gained ---
honeystart = 0
honeycurrent = statstable.Totals.Honey

local suffixes = {"K", "M", "B", "T", "Q", "Qu", "S", "Se", "O", "N", "D"}

local function toSuffixString(n)
	for i = #suffixes, 1, -1 do
		local v = math.pow(10, i * 3)
		if n >= v then
			return ("%.1f"):format(n / v) .. suffixes[i]
		end
	end
	return tostring(n)
end

if honeystart == 0 then
	honeystart = statstable.Totals.Honey
end

HoneyGained.MouseButton1Click:Connect(function()
	honeystart = honeycurrent
end)

-- Time --
function Format(Int)
	return string.format("%02i", Int)
end

function convertToHMS(Timer)
	Minutes = (Timer - Timer%60)/60
	Timer = Timer - Minutes*60
	Hours = (Minutes - Minutes%60)/60
	Minutes = Minutes - Hours*60
	return Format(Hours)..":"..Format(Minutes)..":"..Format(Timer)
end

RunTimer.MouseButton1Click:Connect(function()
	Timer = 0
end)

--- Battle point counter ---
StatCache = require(game.ReplicatedStorage.ClientStatCache)
MonsterTypes = require(game.ReplicatedStorage.MonsterTypes)
stats = StatCache:Get()
points = MonsterTypes.CalculateBattlePoints(stats)

if bpstart == 0 then
	bpstart = points
end

spawn(function()
	while wait() do
		wait(2)		
		--kill menu stuff
		StatCache = require(game.ReplicatedStorage.ClientStatCache)
		MonsterTypes = require(game.ReplicatedStorage.MonsterTypes)
		stats = StatCache:Get()
		points = MonsterTypes.CalculateBattlePoints(stats)
		BPCount.Text = "BP: "..points - bpstart	
		StatCache = require(game.ReplicatedStorage.ClientStatCache)
		dailytotal = StatCache:GetDailyTotal("Honey")
		DailyHoney.Text = "Daily: "..toSuffixString(dailytotal)
		honeycurrent = statstable.Totals.Honey
		HoneyGained.Text = "Honey Gained: "..toSuffixString(honeycurrent - honeystart)			
		--kill amount
		PSEvent = game:GetService("ReplicatedStorage").Events.RetrievePlayerStats
		Spiderkills.Text = "Spiders: "..(statstable.Totals.Kills.Spider or 0) - spiderkills
		Beetlekills.Text = "Beetles: "..(statstable.Totals.Kills["Rhino Beetle"] or 0) - beetlekills
		Ladybugkills.Text = "Ladybugs: "..(statstable.Totals.Kills.Ladybug or 0) - ladybugkills
		Scorpionkills.Text = "Scorpions: "..(statstable.Totals.Kills.Scorpion or 0) - scorpionkills
		Mantiskills.Text = "Mantis: "..(statstable.Totals.Kills.Mantis or 0) - mantiskills
		Werewolfkills.Text = "Werewolfs: "..(statstable.Totals.Kills.Werewolf or 0) - werewolfkills
		Viciouskills.Text = "Vicious Bees: "..viciouskills
		Sproutkills.Text = "Sprouts: "..sproutkills	
		Windykills.Text = "Windy Bee's: "..windykills			
	end
end)

microTimer = 0
blendertimer = 0
spawn(function()
	while wait() do
		wait(1)
		if microconverteractive and microCD and microTimer < 6 then
			microTimer = microTimer + 1
		elseif microconverteractive and microCD and microTimer >= 8 then
			microTimer = 0
			microCD = false
		end
		if isBlending then
			if blendertimer == 0 then
				if BlenderQB.Text == "" or BlenderQB.Text == nil then
					BlenderQB.Text = 1
				end
				print(blenderitem)
				print(BlenderQB.Text)
				game.ReplicatedStorage.Events.BlenderCommand:InvokeServer("PlaceOrder", {
					Recipe = blenderitem,
					["Count"] = tonumber(BlenderQB.Text)
				})
				blenderendtime = (tonumber(BlenderQB.Text) * 300) + 1
			elseif blenderendtime == blendertimer then
				game.ReplicatedStorage.Events.BlenderCommand:InvokeServer("StopOrder")
				blendertimer = 0
				game.ReplicatedStorage.Events.BlenderCommand:InvokeServer("PlaceOrder", {
					Recipe = blenderitem,
					["Count"] = BlenderQB.Text
				})
				if BlenderQB.Text == "" or BlenderQB.Text == nil then
					BlenderQB.Text = 1
				end
				blenderendtime = (tonumber(BlenderQB.Text) * 300) + 1
			end
			blendertimer = tonumber(blendertimer) + 1
		end
		if not pausehumcheck then
			local player = game:GetService'Players'.LocalPlayer
			local character = player.Character or player.CharacterAdded:wait()
			local head = character:WaitForChild'Head'
			local hum = player.Character.HumanoidRootPart
			LocationX = round(hum.Position.x, 1)
			LocationY = round(hum.Position.y, 1)
			LocationZ = round(hum.Position.z, 1)
			ShowLocation.Text = "Coords: "..LocationX..", "..LocationY..", "..LocationZ
		end		
		--time of day stuff
		if tostring(game.Lighting.TimeOfDay) == "13:39:00" or tostring(game.Lighting.TimeOfDay) == "13:51:36" then
			TimeLabel.BackgroundColor3 = Color3.new(120/255, 1, 235/255)
			TimeLabel.BorderColor3 = Color3.new(120/255, 1, 235/255)
			TimeLabel.Text = "Day"
			TimeLabel.TextColor3 = Color3.new(0, 0, 0)
		else
			TimeLabel.BackgroundColor3 = Color3.new(59/255, 41/255, 86/255)
			TimeLabel.BorderColor3 = Color3.new(59/255, 41/255, 86/255)
			TimeLabel.Text = "Night"
			TimeLabel.TextColor3 = Color3.new(1, 1, 1)
		end			
		--kill timers
		crabT = game.Workspace.MonsterSpawners.CoconutCrab.TimerAttachment.TimerGui.TimerLabel
		snailT = game.Workspace.MonsterSpawners.StumpSnail.TimerAttachment.TimerGui.TimerLabel
		kingT = game.Workspace.MonsterSpawners["King Beetle Cave"].Attachment.TimerGui.TimerLabel
		tunnelT = game.Workspace.MonsterSpawners.TunnelBear.TimerAttachment.TimerGui.TimerLabel	
		crabalive = false
		RespawnTimersMenu = {
			[mushT] = { MuLadybug, "Mushroom Ladybug alive!" },
			[pinemantisT] = { PiMantis, "Pineapple Mantis alive!" },
			[pinebeetleT] = { PiBeetle, "Pineapple Beetle alive!" },
			[rhino3T] = { BaBeetle, "Bamboo Beetle alive!" },
			[rhino4T] = { BaBeetle2, "Bamboo Beetle 2 alive!" },
			[spiderT] = { SpSpider, "Spider alive!" },
			[ladyb3T] = { StLadybug2, "Strawberry Ladybug alive!" },
			[ladyb2T] = { StLadybug, "Strawberry Ladybug 2 alive!" },
			[werewT] = { CaWerewolf, "Werewolf alive!" },
			[rhino2T] = { BFBeetle, "Blue Flower Beetle alive!" },
			[rhino1T] = { ClBeetle, "Clover Beetle alive!" },
			[ladyb1T] = { ClLadybug, "Clover Ladybug alive!" },
			[forestmantis1T] = { PiMantis1, "Pine Mantis alive!" },
			[forestmantis2T] = { PiMantis2, "Pine Mantis 2 alive!" },
			[rose1T] = { RoScorpion, "Rose Scorpion alive!" },
			[rose2T] = { RoScorpion2, "Rose Scorpion 2 alive!" },	
			[crabT] = { CocoCrab, "Coconut Crab alive!" },				
		}
		for timers, labels in pairs(RespawnTimersMenu) do
			if timers.Visible == false then
				labels[1].Text = labels[2]
				labels[1].BackgroundColor3 = Color3.new(.5, 0, 0)
			else
				labels[1].Text = timers.Text
				labels[1].BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
			end
		end
		if tunnelbalive == true or snailalive == true or kingbalive == true then
			Timers.BackgroundColor3 = Color3.new(0.5, 0, 0)
		else
			Timers.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		end
		if snailT.Visible == false then
			SnailTB.Text = "Snail alive!"
			SnailTB.BackgroundColor3 = Color3.new(.5, 0, 0)
			snailalive = true
				else
			SnailTB.Text = snailT.Text
			SnailTB.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
			snailalive = false
		end		
		if kingT.Visible == false then
			KingBeetleTB.Text = "King Beetle alive!"
			KingBeetleTB.BackgroundColor3 = Color3.new(.5, 0, 0)
			kingbalive = true
				else
			KingBeetleTB.Text = kingT.Text
			KingBeetleTB.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)	
			kingbalive = false
		end
		if tunnelT.Visible == false then
			TunnelBearTB.Text = "Tunnel Bear alive!"
			TunnelBearTB.BackgroundColor3 = Color3.new(.5, 0, 0)
			tunnelbalive = true
				else
			TunnelBearTB.Text = tunnelT.text
			TunnelBearTB.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)	
			tunnelbalive = false
		end
		--health check
		if not pausehumcheck then
			PlrChar = game.Players.LocalPlayer.Character
			FindHum = PlrChar:FindFirstChildOfClass("Humanoid")
			if FindHum then
				plrHealth = string.format("%.0f", FindHum.Health)
			end
		end			
		if farmzoneswitchback then
			if switchlocationmsg then
				print("Vicious Bee has gone. Switching back to original location")
				notify'Switching back to original location'
				switchlocationmsg = false
			end
			switchingzone = true
			PollenFarmActive = false
			wait(1)
			if originalzone == "Clover" then
				Field3AFActive = false
				Field5AFActive = true
			elseif originalzone == "Spider" then
				Field3AFActive = false
				Field7AFActive = true
			elseif originalzone == "Rose" then
				Field3AFActive = false
				Field9AFActive = true
			elseif originalzone == "Cactus" then
				Field3AFActive = false
				Field11AFActive = true
			elseif originalzone == "MountainTop" then
				Field3AFActive = false
			end
			farmzoneswitched = false
			farmzoneswitchback = false
			switchingzone = false
			PollenFarmActive = true
		end	
		if PollenFarmActive then
			if AvoidViciousActive and viciousbeenear then
				if not farmzoneswitched then
					if not switchlocationmsg then
						print("Vicious Bee Near. Switching to Safe Farming Zone")
						notify'Switching to safe Farming Zone'
						switchlocationmsg = true
					end
					switchingzone = true
					PollenFarmActive = false
					wait(1)
					if Field5AFActive then
						originalzone = "Clover"
						Field5AFActive = false
						Field3AFActive = true
					elseif Field7AFActive then
						originalzone = "Spider"
						Field7AFActive = false
						Field3AFActive = true
					elseif Field9AFActive then
						originalzone = "Rose"
						Field9AFActive = false
						Field3AFActive = true
					elseif Field11AFActive then
						originalzone = "Cactus"
						Field11AFActive = false
						Field3AFActive = true
					else
						originalzone = "MountainTop"
						Field3AFActive = true
					end
					farmzoneswitched = true
					switchingzone = false
					PollenFarmActive = true
				end
			end
		end		
	end
end)

--- Snow Menus Show Hide ---

FindTreasures.MouseEnter:connect(function()
	FindTreasuresText1.Visible = true
end)

FindTreasures.MouseLeave:connect(function()
	FindTreasuresText1.Visible = false
end)

-- Round value to x decimal places --

function round(num, numDecimalPlaces)
	if num ~= nil then
		mult = 10^(numDecimalPlaces or 0)
		return math.floor(num * mult + 0.5) / mult
	end
end

-- always show stuff during match game
spawn (function()
	while wait() do
		for i,v in pairs(game.Players.LocalPlayer.PlayerGui.ScreenGui:WaitForChild("MinigameLayer"):GetChildren()) do
			for k,q in pairs(v:WaitForChild("GuiGrid"):GetDescendants()) do
				if q.Name == "ObjContent" or q.Name == "ObjImage" then
					q.Visible = true
				end
			end
		end
	end
end)

-- Check for Sprout --
spawn(function()
	while wait() do
		sproutdistance1 = nil
		sproutdetected = false
		SproutDetect.Visible = false
		sproutobject = nil
		repeat
		for i,v in pairs(workspace.Particles.Folder2:GetChildren()) do
			if string.gmatch(v.Name, "Sprout") then
				if not pausehumcheck and v.Name == "Sprout" and not windykillstarted then
					sproutalive = true
					while sproutalive do
						wait()
						sproutobject = v
						sproutdetected = true
						local player = game:GetService'Players'.LocalPlayer
						local character = player.Character or player.CharacterAdded:wait()
						head = character:WaitForChild'Head'
						hum = player.Character.HumanoidRootPart
						sproutdistance = (v.Position-hum.Position).magnitude
						sproutdistance1 = round(sproutdistance, 2)
						SproutDetect.Text = "Sprout Detected\nDistance: " ..tostring(sproutdistance1).. ""
						SproutDetect.Visible = true
						sproutalive = false
						for pee,poo in pairs(workspace.Particles.Folder2:GetChildren()) do
							if poo == v then
								sproutalive = true
							end
						end
					end
				end
			end
		end
		wait(0.3)
		until v == nil
		wait(0.1)
	end
end)

-- Check for Guiding Star --
spawn(function()
	while wait() do
		guidingdistance1 = nil
		guidingdetected = false
		guidingobject = nil
		repeat
		for i,v in pairs(workspace.Particles:GetChildren()) do
			if string.gmatch(v.Name, "Guiding Star") then
				if not pausehumcheck and v.Name == "Guiding Star" and guidinghunt and PollenFarmActive and not windykillstarted and not mondostarted and not sproutkillstarted and not viciouskillstarted then
					guidingalive = true
					while guidingalive do
						wait()
						guidingobject = v
						guidingdetected = true
						guidingalive = false
					end
				end
			else
				guidingdetected = false
			end
		end
		wait(0.3)
		until v == nil
		wait(0.1)
	end
end)

--check for vicious
spawn(function()
	while wait() do
		viciousdistance1 = nil
		viciousbeedetected = false
		ViciousBeeDetect.Visible = false
		repeat
		for i,v in pairs(workspace.Particles:GetChildren()) do
			for x in string.gmatch(v.Name, "Vicious") do
				if not pausehumcheck and string.find(v.Name, "Vicious") then
					viciousbeedetected = true
					local player = game:GetService'Players'.LocalPlayer
					local character = player.Character or player.CharacterAdded:wait()
					head = character:WaitForChild'Head'
					hum = player.Character.HumanoidRootPart
					viciousdistance = (v.Position-hum.Position).magnitude
					viciousdistance1 = round(viciousdistance, 2)
					--print("Vicious Bee Detected. Distance: " ..tostring(viciousdistance))--
					ViciousBeeDetect.Text = "Vicious Bee Detected\nDistance: " ..tostring(viciousdistance1).. ""
					ViciousBeeDetect.Visible = true
				end
			end
		end
		if viciousbeedetected and viciousdistance < 80 then
			viciousbeenear = true
			if viciousbeenear and not beenearmsg then
				print("WARNING!! Vicious Bee Near")
				beenearmsg=true
			end
		else
			viciousbeenear = false
			beenearmsg = false
		end
		wait(0.5)
		until v == nil
		wait(0.1)
	end
end)

-- Check for Windy Bee --
spawn(function()
	while wait() do
		windydistance = 0
		windydistance1 = 0
		windydetected = false
		WindyDetect.Visible = false
		repeat
		for i,v in pairs(workspace.NPCBees:GetChildren()) do
			if v.Name == "Windy" then
				windyalive = true
				while windyalive and v.Position.x < 540 do
					windybee = v
					windydetected = true
					local player = game:GetService'Players'.LocalPlayer
					local character = player.Character or player.CharacterAdded:wait()
					head = character:WaitForChild'Head'
					hum = player.Character.HumanoidRootPart
					windydistance = (v.Position-hum.Position).magnitude
					windydistance1 = round(windydistance, 2)
					WindyDetect.Text = "Windy Bee Detected\nDistance: " ..tostring(windydistance1).. ""
					WindyDetect.Visible = true
					windyalive = false
					for peepee,poopoo in pairs(workspace.NPCBees:GetChildren()) do
						if poopoo == v then
							windyalive = true
						end
					end
					wait(.1)
				end
			end
		end
		wait(0.3)
		until v == nil
		wait(0.1)
	end
end)

-- Check for fireflys --

spawn(function()
	while wait() do
		fireflydistance1 = nil
		fireflydetected = false
		FireflyDetect.Visible = false
		repeat
			for i,v in pairs(workspace.NPCBees:GetChildren()) do
				for x in string.gmatch(v.Name, "Firefly") do
					if not pausehumcheck and v.Name == "Firefly" then
						fireflydetected = true
						local player = game:GetService'Players'.LocalPlayer
						local character = player.Character or player.CharacterAdded:wait()
						head = character:WaitForChild'Head'
						hum = player.Character.HumanoidRootPart
						fireflydistance = (v.Position-hum.Position).magnitude
						fireflydistance1 = round(fireflydistance, 2)
						--print("Fireflys Detected. Distance: " ..tostring(firelfydistance))--
						FireflyDetect.Text = "Firefly Detected\nDistance: " ..tostring(fireflydistance1).. ""
						FireflyDetect.Visible = true
					end
				end
			end
			wait(0.4)
		until v == nil
		wait(0.1)
	end
end)


--- Destroy Deco's ---
pcall(function()
for i, v in pairs(game.workspace.FieldDecos:GetChildren()) do	
	v:Destroy()
end
-- for i, v in pairs(game.workspace.Decorations:GetChildren()) do	
	-- v:Destroy()
-- end
end)
--- Auto Ant Farm ---
function AntFarmFunc()
	AntFarmReady = false
	AntFarmStart = false
	player = game:GetService("Players").LocalPlayer
	PSEvent = game:GetService("ReplicatedStorage").Events.RetrievePlayerStats
	statstable = PSEvent:InvokeServer()	
	antpasscheck = statstable.Eggs.AntPass
	left = true
	turnthemoff()
	right = false
	if antpasscheck > 0 then
		player = game:GetService("Players").LocalPlayer
		root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		PSEvent = game:GetService("ReplicatedStorage").Events.RetrievePlayerStats
		statstable = PSEvent:InvokeServer()	
		oldTool = statstable["EquippedCollector"]
		game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Spark Staff",["Category"]  = "Collector"})
		game.ReplicatedStorage.Events.ToyEvent:FireServer("Ant Challenge")
		print("Ant Challenge started")
		AutoDigActive = true
		wait(1.5)
		game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer({["Name"] = "Sprinkler Builder"})
		coordsL = CFrame.new(127, 48, 547)
		coordsR = CFrame.new(65, 48, 534)
		root.CFrame = coordsR
		noclip = true
		antdb = false
		repeat
			wait()
			for i,v in pairs(workspace.Toys["Ant Challenge"].Obstacles:GetChildren()) do
				if v:FindFirstChild("Root") then
					if (v.Root.Position-root.Position).magnitude <= 40 and left and not antdb then
						root.CFrame = coordsR
						right = true
						left = false
						antdb = true
						wait(.1)
					elseif (v.Root.Position-root.Position).magnitude <= 40 and right and not antdb then
						root.CFrame = coordsL
						right = false
						left = true
						antdb = true
						wait(.1)
					end
					antdb = false
				end
			end
		until workspace.Toys["Ant Challenge"].Busy.Value == false
		noclip = false
		AutoDigActive = false	
		wait(2)
		game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = oldTool,["Category"]  = "Collector"})
		antfarmgoing = false
		turnthemon()
	end	
end

--- Hunt Mondo ---
HuntMondo.MouseButton1Click:connect(function()
	if mondohunt ~= true then
		mondohunt = true
		notify'Hunt Mondo Started'
		print("Hunt Mondo Chick.")
		HuntMondo.BackgroundColor3 = Color3.new(0.5, 0, 0)
		HuntMondo.Text = "Hunt Mondo: ON"
	else
		mondohunt = false
		notify'Not Hunting Mondo'
		HuntMondo.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		HuntMondo.Text = "Hunt Mondo: OFF"
		noclip = false
	end
end)

--- Collect Bubbles ---
BubbleCollector.MouseButton1Click:connect(function()
	if collectbubbles ~= true then
		collectbubbles = true
		notify'Collect Bubbles Started'
		print("Bubbles will be collected in a certain distance from the player.")
		BubbleCollector.BackgroundColor3 = Color3.new(0.5, 0, 0)
		BubbleCollector.Text = "Collect Bubbles: ON"
	else
		collectbubbles = false
		notify'Bubble Collection Stopped'
		BubbleCollector.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		BubbleCollector.Text = "Collect Bubbles: OFF"
	end
end)

--- Collect Coconuts ---
CoconutCollector.MouseButton1Click:connect(function()
	if collectcoconuts ~= true then
		collectcoconuts = true
		notify'Collect Coconuts Started'
		print("Coconuts will be collected in a certain distance from the player.")
		CoconutCollector.BackgroundColor3 = Color3.new(0.5, 0, 0)
		CoconutCollector.Text = "Collect Coconuts: ON"
	else
		collectcoconuts = false
		notify'Coconut Collection Stopped'
		CoconutCollector.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		CoconutCollector.Text = "Collect Coconuts: OFF"
	end
end)

--- Collect Meteor ---
MeteorCollector.MouseButton1Click:connect(function()
	if collectmeteor ~= true then
		collectmeteor = true
		notify'Collect Meteor Started'
		print("Meteor will be collected in a certain distance from the player.")
		MeteorCollector.BackgroundColor3 = Color3.new(0.5, 0, 0)
		MeteorCollector.Text = "Collect Meteor: ON"
	else
		collectmeteor  = false
		notify'Meteor Collection Stopped'
		MeteorCollector.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		MeteorCollector.Text = "Collect Meteor: OFF"
	end
end)

--- Hunt Guiding ---
HuntGuiding.MouseButton1Click:connect(function()
	if guidinghunt ~= true then
		guidinghunt = true
		guidingFarmActive = true
		notify'Hunt guiding Started'
		print("Hunt guiding Star.")
		HuntGuiding.BackgroundColor3 = Color3.new(0.5, 0, 0)
		HuntGuiding.Text = "Hunt guiding: ON"
	else
		guidinghunt = false
		guidingFarmActive = false
		notify'Not Hunting guiding'
		HuntGuiding.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		HuntGuiding.Text = "Hunt guiding: OFF"
		guidingdetected = false
	end
end)
--[[
--- Hunt Commando---
HuntCommando.MouseButton1Click:connect(function()
	if commandohunt ~= true then
		commandohunt = true
		killcommando()
		HuntCommando.BackgroundColor3 = Color3.new(0.5, 0, 0)
		HuntCommando.Text = "Hunt Commando: ON"
	else
		commandohunt = false
		notify'Not Hunting Mondo'
		HuntCommando.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		HuntCommando.Text = "Hunt Commando: OFF"
	end
end)
]]--
--- Old Token Collection ---
OldTokenFarm.MouseButton1Click:connect(function()
	if tokenfarmactiveold ~= true then
		tokenfarmactiveold = true
		notify'Old Token Collection Started'
		print("Token collection reverted to older style.")
		OldTokenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
		OldTokenFarm.Text = "Old Token Farm: ON"
	else
		tokenfarmactiveold = false
		notify'New Style Token Collection Active'
		OldTokenFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		OldTokenFarm.Text = "Old Token Farm: OFF"
	end
end)
	
--- Rotating Fields ---
RotatingFields.MouseButton1Click:connect(function()
	if rotatingfieldsactive ~= true then
		rotatingfieldsactive = true
		notify'Rotating Fields Started'
		print("Rotating Fields. Fields will rotate after converting.")
		RotatingFields.BackgroundColor3 = Color3.new(0.5, 0, 0)
		RotatingFields.Text = "Rotating Fields: ON"
		PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	else
		rotatingfieldsactive = false
		notify'Rotating Fields Stopped'
		RotatingFields.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		RotatingFields.Text = "Rotating Fields: OFF"
		PollenFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)		
	end
end)

blacklistA = {
	Field1BLActive, Field2BLActive, Field3BLActive,Field4BLActive,Field5BLActive,Field6BLActive,Field7BLActive,Field8BLActive,Field9BLActive, 
	Field10BLActive,Field11BLActive,Field12BLActive,Field13BLActive,Field14BLActive,Field15BLActive,Field16BLActive,Field17BLActive
}	

blacklistButtons = {
	Field1BL, Field2BL, Field3BL,Field4BL,Field5BL,Field6BL,Field7BL,Field8BL,Field9BL, 
	Field10BL,Field11BL,Field12BL,Field13BL,Field14BL,Field15BL,Field16BL,Field17BL
}	

for i,v in pairs(blacklistButtons) do
	v.MouseButton1Down:connect(function()
		if not blacklistA[i] then
			blacklistA[i] = true
			v.Text = "x"
		else
			blacklistA[i] = false
			v.Text = ""
		end
	end)
end

function RotatingFieldsChange()
	nextFIELD = true
	for i,v in pairs(blacklistA) do
		if activefield == i then
			while nextFIELD do
				i = i + 1
				if i == 18 then i = 1 end
				if blacklistA[i] == true then
					FarmForAll(i, true)
					nextFIELD = false
				end
			end
		end
	end
end

function HoneyConvertFix()
	if game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value > 1 then
		print("You got stuck, correcting...")
		tokenfarmactive2 = false
		honeytimer = 0
		game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Players").LocalPlayer.SpawnPos.Value.p)
		wait(.1)
		game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
		repeat
		wait(1)
		honeytimer = honeytimer + 1
		until game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value < 1 or honeytimer >= 90
		honeytimer = 0
		wait()
		if game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value > 1 then
			HoneyConvertFix()
		end
	end
end


function mondofarmtokens()
	rootP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	for k,v in pairs(workspace.Collectibles:GetChildren()) do
		if (v.Position-workspace.Monsters["Mondo Chick (Lvl 8)"].HumanoidRootPart.position).Magnitude > 30 and v.Transparency < .7 and not v:FindFirstChild("farmed") or tonumber((v.Position - rootP.Position).magnitude) <= 80 and not v:FindFirstChild("farmed") then
			local intvalue = Instance.new("IntValue",v)
			intvalue.Name = "farmed"
			noclip = true
			rootP.CFrame = CFrame.new(v.Position)
			wait(.07)
			noclip = false
		end
	end
end

-- Pollen Farming --
currentmask = nil
spawn (function()
	while wait() do
	wait(.25)
	pcall(function()
		if resethive then
			print("Waiting 35 seconds before AutoFarm resumes")
			wait(35)
			resethive = false
			PollenFarmActive = true
		end
		if PollenFarmActive then
			player = game:GetService("Players").LocalPlayer
			while player == nil do wait(0.5) end
			root = player.Character.HumanoidRootPart
			if farmzoneswitched and not viciousbeedetected then PollenFarmActive = false farmzoneswitchback = true end
			local currp
			player.Character.Humanoid.Died:connect(function()
				if PollenFarmActive then
					resethive = true
					PollenFarmActive = false
					print("Player: " ..tostring(player.Name).. " has died")
				end
			end)
			pollenLbl = player.Character:FindFirstChild("ProgressLabel",true)
			if not pollenLbl then
				print("Backpack not found")
			end
			sprinklerDB = false
			maxpollen = tonumber(pollenLbl.Text:match("%d+$"))
			if switchnow == true then
				switchnow = false
			end
			if PollenFarmActive then
				fieldpos = nil
				if Field1AFActive == true then
					fieldpos = {CFrame.new(-212,3.4,191.7)}
					print("Farming Sunflower Field")
				elseif Field2AFActive == true then
					fieldpos = {CFrame.new(-93.6, 3.4, 117.2)}
					print("Farming Mushroom Field")
				elseif Field3AFActive == true then
					fieldpos = {CFrame.new(-37,4,220.1)}
					print("Farming Dandelion Field")
				elseif Field4AFActive == true then
					fieldpos = {CFrame.new(151,4,96.5)}
					print("Farming Blue Flower Field")
				elseif Field5AFActive == true then
					fieldpos = {CFrame.new(161,33.6,183.8)}
					print("Farming Clover Field")
				elseif Field6AFActive == true then
					fieldpos = {CFrame.new(-175.9,20.4,0)}
					print("Farming StrawBerry Field")
				elseif Field7AFActive == true then
					fieldpos = {CFrame.new(-45,19.4,-2)}
					print("Farming Spider Field")
				elseif Field8AFActive == true then
					fieldpos = {CFrame.new(126.7,20,-27.1)}
					print("Farming BamBoo Field")
				elseif Field9AFActive == true then
					fieldpos = {CFrame.new(-330.7,20,125.5)}
					print("Farming Rose Field")
				elseif Field10AFActive == true then
					fieldpos = {CFrame.new(-328.3,68.5,-187.5)}
					print("Farming Pine Tree Forest")
				elseif Field11AFActive == true then
					fieldpos = {CFrame.new(-186,68,-102)}
					print("Farming Cactus Field")
				elseif Field12AFActive == true then
					fieldpos = {CFrame.new(-190,68,-184.3)}
					print("Farming Pumpkin Patch")
				elseif Field13AFActive == true then
					fieldpos = {CFrame.new(267.7,68.2,-201.1)}
					print("Farming Pineapple Patch")
				elseif Field14AFActive == true then
					fieldpos = {CFrame.new(73.2, 176.35, -167)}
					print("Farming Mountain Top Field")
				elseif Field15AFActive == true then
					fieldpos = {CFrame.new(423, 96.3, -179.6)}
					print("Farming Stump Field")
				elseif Field16AFActive == true then
					fieldpos = {CFrame.new(-479, 123, 525)}
					print("Farming Pepper Field")
				elseif Field17AFActive == true then
					fieldpos = {CFrame.new(-258, 72, 457)}
					print("Farming Coconut Field")
				else 
					Field14AFActive = true
					fieldpos = {CFrame.new(76.2, 175.35, -170)}
					print("Farming Mountain Top Field")
				end
				if fieldpos ~= nil then
					if game.Players.LocalPlayer:DistanceFromCharacter(fieldpos[1].p) > 65 then
						root.CFrame = fieldpos[1]
					end
				end
			end
			--collect pollen
			posIndex = 0
			AutoDigActive = true
			game.ReplicatedStorage.Events.ToyEvent:FireServer("Honeystorm")
			while PollenFarmActive and tonumber(player.CoreStats.Pollen.Value) < tonumber(maxpollen) and switchnow == false do	
				fieldpos2 = fieldpos
				if fieldpos ~= nil and tostring(fieldpos[1].p) ~= "0, 0, 0" then
					if game.Players.LocalPlayer:DistanceFromCharacter(fieldpos[1].p) > 65 then
						root.CFrame = fieldpos[1]
					end
				end
				snailT = game.Workspace.MonsterSpawners.StumpSnail.TimerAttachment.TimerGui.TimerLabel
				player = game:GetService("Players").LocalPlayer
				root = player.Character.HumanoidRootPart			
				if not rotatingfieldsactive then
					game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
				end
				local gumdb = false
				setbeesforcrab = false
				if CollectTickets then
					tokenfarmactive2 = false
					for k,v in pairs(workspace.Collectibles:GetChildren()) do
						decal = v:FindFirstChildOfClass("Decal")
						if decal and decal.Texture and v.Transparency < .2 then
							if decal.Texture == "rbxassetid://1674871631" then
								root.CFrame = v.CFrame
								wait(.1)
								--v.Transparency = 1
							end
						end
					end
					tokenfarmactive2 = true
				end

				while Field17AFActive and not crabT.Visible do -- crab auto kill
					tokenfarmactive2 = false
					if not setbeesforcrab then
						wait(1)
						currp = CFrame.new(-397, 111.8, 560)
						root.CFrame = currp
						noclip = true
						wait(10)
						setbeesforcrab = true
					end
					tokenfarmactive2 = false
					currp = CFrame.new(-259, 111.8, 496.4)
					root.CFrame = currp
					noclip = true
					wait(.3)
					noclip = false
					if autostinger and autostingerDB == false then
						autostingerDB = true
						game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer({["Name"] = "Stinger"})
					end
					player = game:GetService("Players").LocalPlayer
					if tonumber(player.CoreStats.Pollen.Value+1) > tonumber(maxpollen) then
						print("Total Honey: " ..tostring(player.CoreStats.Honey.Value).. ". Bag Full: " ..tostring(player.CoreStats.Pollen.Value))
						break
					end
				end
				while Field15AFActive and not snailT.Visible and PollenFarmActive do--and not workspace.Monsters:FindFirstChild("Mondo Chick (Lvl 8)") do -- snail auto kill
					for i, v in pairs(Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
						if string.match(v.Name,"Mask") and v:IsA("Accessory") then
							currentmask = v.Name
						end
					end
					game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Demon Mask",["Category"]  = "Accessory"})
					while Field15AFActive and not snailT.Visible and PollenFarmActive do-- not workspace.Monsters:FindFirstChild("Mondo Chick (Lvl 8)") do -- snail auto kill
						tokenfarmactive2 = false
						if switchnow then break end
						currp = CFrame.new(427, 75.5, -177)
						root.CFrame = currp
						wait(.5)
						noclip = false
						if autostinger and autostingerDB == false then
							autostingerDB = true
							game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer({["Name"] = "Stinger"})
						end
						player = game:GetService("Players").LocalPlayer
						if tonumber(player.CoreStats.Pollen.Value+1) > tonumber(maxpollen) then
							print("Total Honey: " ..tostring(player.CoreStats.Honey.Value).. ". Bag Full: " ..tostring(player.CoreStats.Pollen.Value))
							break
						end
					end
					game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = currentmask,["Category"]  = "Accessory"})
				end
				--game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Diamond Mask",["Category"]  = "Accessory"})
				while workspace.Monsters:FindFirstChild("Mondo Chick (Lvl 8)") and mondohunt and PollenFarmActive and not convertinghoney and not sproutkillstarted and not guidingstarted do -- mondokill auto kill
					wait(.1)
					for i, v in pairs(Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
						if string.match(v.Name,"Mask") and v:IsA("Accessory") then
							currentmask = v.Name
						end
					end
					game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Demon Mask",["Category"]  = "Accessory"})
					wait(.1)
					mondostarted = true
					wait(.1)
					while workspace.Monsters:FindFirstChild("Mondo Chick (Lvl 8)") and mondohunt  do
						turnthemoff()
						autostinger = true
						tokenfarmactive2 = false
						mondop = workspace.Monsters["Mondo Chick (Lvl 8)"].HumanoidRootPart.position
						currp = CFrame.new(mondop.x + 20, 176.4, mondop.z + 20)
						root.CFrame = currp
						noclip = true
						wait(.2)--[[
						if autostinger and autostingerDB == false then
							autostingerDB = true
							game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer({["Name"] = "Stinger"})
						end
						farmtokensmondo()]]--
						--mondofarmtokens()
					end
					wait(.5)
					game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = currentmask,["Category"]  = "Accessory"})
					noclip = false
					autostinger = false
					tokenfarmactive2 = true
					wait(.5)
					mondostarted = false
					wait(40)
					turnthemon()
					if autostinger and autostingerDB == false then
						autostingerDB = true
						game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer({["Name"] = "Stinger"})
					end
					player = game:GetService("Players").LocalPlayer
					if tonumber(player.CoreStats.Pollen.Value+1) > tonumber(maxpollen) then
						print("Total Honey: " ..tostring(player.CoreStats.Honey.Value).. ". Bag Full: " ..tostring(player.CoreStats.Pollen.Value))
						break
					end
				end	
				if guidingdetected then
					fieldpos = {CFrame.new(guidingobject.Position.x, guidingobject.Position.y, guidingobject.Position.z)}
					print(fieldpos)
					root.CFrame = CFrame.new(guidingobject.Position.x, guidingobject.Position.y, guidingobject.Position.z)
					print("Farming Guiding Star")
					wait(5)
					game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer({["Name"] = "Sprinkler Builder"})
				end
				
				-- root.CFrame = fieldpos[1]
				wait()
				if autosprinkler and sprinklerDB == false then
					wait(1.5)
					game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer({["Name"] = "Sprinkler Builder"})
					sprinklerDB = true
				end
				AutoDigActive = true
				if switchnow then break end
				if GumDropActive == true and gumdb == false then
					game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer({["Name"] = "Gumdrops"})
					gumdb = true
				end
				if farmzoneswitched and not viciousbeedetected then PollenFarmActive = false farmzoneswitchback = true end
				if not PollenFarmActive then break end
				player = game:GetService("Players").LocalPlayer
				tokenfarmactive2 = true
				maxpollen = tonumber(pollenLbl.Text:match("%d+$"))
				wait(.5)
				if tonumber(player.CoreStats.Pollen.Value+1) > (tonumber(maxpollen) * .95) and microconverteractive then
					game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer({["Name"] = "Micro-Converter"})		
					game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer({["Name"] = "Micro-Converter"})
					wait(.25)
					--microCD = true
				end
				wait(.5)
				if instantconverteractive then
					if tonumber(player.CoreStats.Pollen.Value+1) > (tonumber(maxpollen) * .95)  then
						game.ReplicatedStorage.Events.ToyEvent:FireServer("Instant Converter")		
						wait(.5)		
						if tonumber(player.CoreStats.Pollen.Value+1) < tonumber(maxpollen) then																				  
							print("Honey instantly converted using instant converter")
						end
					end
					if tonumber(player.CoreStats.Pollen.Value+1) > (tonumber(maxpollen) * .95) then
						game.ReplicatedStorage.Events.ToyEvent:FireServer("Instant Converter B")		
						wait(.5)
						if tonumber(player.CoreStats.Pollen.Value+1) < tonumber(maxpollen) then																				  
							print("Honey instantly converted using instant converter")
						end
					end
					if tonumber(player.CoreStats.Pollen.Value+1) > (tonumber(maxpollen) * .95) then
						game.ReplicatedStorage.Events.ToyEvent:FireServer("Instant Converter C")	
						wait(.5)
						if tonumber(player.CoreStats.Pollen.Value+1) < tonumber(maxpollen) then																				  
							print("Honey instantly converted using instant converter")
						end
					end
				end
				wait(.5)
				if tonumber(player.CoreStats.Pollen.Value+1) > tonumber(maxpollen) then
					print("Total Honey: " ..tostring(player.CoreStats.Honey.Value).. ". Bag Full: " ..tostring(player.CoreStats.Pollen.Value))
					tokenfarmactive2 = false
					break
				end
				wait(.5)
			end
			-- turn pollen to honey --
			tokenfarmactive2 = false
			currp = nil
			PSEvent = game:GetService("ReplicatedStorage").Events.RetrievePlayerStats
			statstable = PSEvent:InvokeServer()	
			antpasscheck = statstable.Eggs.AntPass
			
			wait(.5)
			if PollenFarmActive and tonumber(player.CoreStats.Pollen.Value+1) > tonumber(maxpollen) then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.SpawnPos.Value.p)
				player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, 5)
			end
			if not switchingzone and tonumber(player.CoreStats.Pollen.Value+1) > tonumber(maxpollen) and not sproutkillstarted and not viciouskillstarted and not mondoalive then
				convertinghoney = true
				AutoDigActive = true
				honeytimer = 0
				wait(1.75)
				game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
				if PollenFarmActive and not sproutkillstarted and not viciouskillstarted then
					turnthemoff()
					repeat
					wait(1)
					honeytimer = honeytimer + 1
					until game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value < 1 or honeytimer >= 120
					wait(4)
					if game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value > 1 then
						HoneyConvertFix()
						repeat wait() until game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value < 1
					end
					if StartKilling and not guidingkillstarted then
						monsterkilleractive = true
						KillMonsters()
						StartKilling = false
						monsterkilleractive = false
						if AntFarm then
							wait(3)
						end
					end
					PSEvent = game:GetService("ReplicatedStorage").Events.RetrievePlayerStats
					statstable = PSEvent:InvokeServer()	
					antpasscheck = statstable.Eggs.AntPass
					if antpasscheck > 0 and AntFarm and workspace.Toys["Ant Challenge"].Busy.Value == false then
						AntFarmReady = true
						AntFarmFunc()
					end
					if rotatingfieldsactive then
						RotatingFieldsChange()
					end
					convertinghoney = false
					turnthemon()
				end
			end
		sprinklerDB = false	
		tokenfarmactive2 = false	
		end
	end)
	end
end)

viciouscheck = false
spawn(function()
	while wait() do
		if MonsterKillerActive and viciouscheck == false and game.Players.LocalPlayer:FindFirstChild("Honeycomb") then
			comb = game.Players.LocalPlayer.Honeycomb.Value
			combstring = tostring(comb)
			checkvicious = workspace.Honeycombs[combstring].Cells:GetChildren()
			for i, cell in pairs(checkvicious) do
				if cell.CellType.Value == "ViciousBee" then
					if cell:FindFirstChild("GiftedCell") then
						hasgiftedvicious = true
					end
				end
				viciouscheck = true
			end
		end	
		if MonsterKillerActive and hasgiftedvicious == false and quickkillactive then
			while MonsterKillerActive do
				print("Quick Monster Killer activated, monsters will be killed next time you convert honey.")
				waittime = 330
				StartKilling = true
				repeat
				wait(1)
				until StartKilling ~= true
				repeat
				wait(1)
				waittime = waittime - 1
				MonsterKillerToggle.Text = "Monster Killer: " ..tostring(waittime).. "sec"
				until waittime == 0 or not MonsterKillerActive
			end
		elseif MonsterKillerActive and hasgiftedvicious == false and quickkillactive == false then
			while MonsterKillerActive do
				print("Slow Monster Killer activated, monsters will be killed next time you convert honey.")
				waittime = 1205
				StartKilling = true
				repeat
				wait(1)
				until StartKilling ~= true
				repeat
				wait(1)
				waittime = waittime - 1
				MonsterKillerToggle.Text = "Monster Killer: " ..tostring(waittime).. "sec"
				until waittime == 0 or not MonsterKillerActive
			end
		elseif MonsterKillerActive and hasgiftedvicious and quickkillactive then
			while MonsterKillerActive do
				print("Quick Monster Killer activated, monsters will be killed next time you convert honey.")
				waittime = 265
				StartKilling = true
				repeat
				wait(1)
				until StartKilling ~= true
				repeat
				wait(1)
				waittime = waittime - 1
				MonsterKillerToggle.Text = "Monster Killer: " ..tostring(waittime).. "sec"
				until waittime == 0 or not MonsterKillerActive
			end
		elseif MonsterKillerActive and hasgiftedvicious and quickkillactive == false then
				while MonsterKillerActive do
				print("Slow Monster Killer activated, monsters will be killed next time you convert honey.")
				waittime = 980
				StartKilling = true
				repeat
				wait(1)
				until StartKilling ~= true
				repeat
				wait(1)
				waittime = waittime - 1
				MonsterKillerToggle.Text = "Monster Killer: " ..tostring(waittime).. "sec"
				until waittime == 0 or not MonsterKillerActive
			end
		end
	wait(1)
	end
end)

spawn(function()
	while wait() do
		if autostingerDBTimer > 29 and autostingerDB then
			autostingerDB = false
			autostingerDBTimer = 0
		else
			autostingerDBTimer = autostingerDBTimer + 1
		end
		if autostinger2 and autostinger2Timer > 29 then
			game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer({["Name"] = "Stinger"})
			autostinger2Timer = 0
		else
			autostinger2Timer = autostinger2Timer + 1
		end	
		if TreatActive and TreactActiveTimer > 59 then
			game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Free Ant Pass Dispenser")
			game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Wealth Clock")
			game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Blueberry Dispenser")
			game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Strawberry Dispenser")
			game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Treat Dispenser")
			game.ReplicatedStorage.Events.ToyEvent:FireServer("Glue Dispenser")
			game.ReplicatedStorage.Events.ToyEvent:FireServer("Free Royal Jelly Dispenser")
			game.ReplicatedStorage.Events.ToyEvent:FireServer("Coconut Dispenser")
			game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack({ [1] = "Stockings"}))
			game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack({[1] = "Gingerbread House"}))
			game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack({[1] = "Honey Wreath"}))
			game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack({[1] = "Onett's Lid Art"}))
			game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack({[1] = "Beesmas Feast"}))
			TreactActiveTimer = 0
		else
			TreactActiveTimer = TreactActiveTimer + 1
		end
		local buttons = {
			Player1,
			Player2,
			Player3,
			Player4,
			Player5,
			Player6
		}
		Player1.Text = ""
		Player2.Text = ""
		Player3.Text = ""
		Player4.Text = ""
		Player5.Text = ""
		Player6.Text = ""
		for i, v in pairs(game.Players:GetChildren()) do
			buttons[i].Text = v.Name
			buttons[i].Visible = true
		end	
		if GumDropActive2 then
			game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer({["Name"] = "Gumdrops"})
			wait(1)
		end
		wait(1)
	end
end)

spawn(function()
	while wait(15) do
		if RemoteBadgeActive then
			badges()
		end
	end
end)

function killcommando()
	while wait() do
	wait(.1)
		--commandoT = game.Workspace.MonsterSpawners["Commando Chick"].TimerAttachment.TimerGui.TimerLabel
		player = game:GetService("Players").LocalPlayer
		root = player.Character.HumanoidRootPart
		if commandohunt then
			while commandohunt do
				for i,v in pairs(workspace.Monsters:GetChildren()) do
					for x in string.gmatch(v.Name, "Commando") do
					commandoalive = true
					commandostarted = true
					currp = CFrame.new(v.Head.Position.x,v.Head.Position.y +10 ,v.Head.Position.z)
					root.CFrame = currp
					noclip = true
					wait(.01)
					end	
				end
			wait(.05)
			noclip = false
			end
		else
			commandoalive = false
			commandostarted = false
			noclip = false
		end
	end
end

spawn(function()
	while wait() do
	    wait(1)
		while PollenFarmActive and marshmallowbeeactive do
			game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer({["Name"] = "Marshmallow Bee"})
			wait(1800)
		end
		wait(1)
	end
end)


--- WayPoints ---

local WayPoints = {
["Black Bear"] = CFrame.new(-258.1, 5, 299.7),
["Brown Bear"] = CFrame.new(282, 46, 236),
["Panda Bear"] = CFrame.new(106.3, 35, 50.1),
["Polar Bear"] = CFrame.new(-106, 119, -77),
["Science Bear"] = CFrame.new(267, 103, 20),
["Traveling Bear"] = CFrame.new(23.9, 14, 359.9),
["Mother Bear"] = CFrame.new(-183.8, 4.6, 87.5),
["Tunnel Bear"] = CFrame.new(507.3, 5.7, -45.7),
["Sun Bear"] = CFrame.new(23.25, 14, 360.26),
["Redfield Boost"] = CFrame.new(-332, 20, 244),
["Bluefield Boost"] = CFrame.new(272, 58, 86),
["MountainTop Boost"] = CFrame.new(-40, 176, -191.7),
["Red Cannon (22)"] = CFrame.new(-240, 17, 345),
["Blue Cannon (16)"] = CFrame.new(-287, 73, 22),
["Yellow Cannon (12)"] = CFrame.new(266, 109, -25),
["Slingshot (8)"] = CFrame.new(78, 23, 149),
["Bee Shop"] = CFrame.new(-136.8, 4.6, 243.4),
["Tool Shop"] = CFrame.new(86, 4.6, 294),
["Tool Shop 2"] = CFrame.new(165, 69, -161),
["MountainTop Shop"] = CFrame.new(-18, 176, -137),
["Ticket Tent"] = CFrame.new(-234, 17, 398),
["Red Clubhouse"] = CFrame.new(-334, 21, 216),
["Blue Clubhouse"] = CFrame.new(292, 4, 98),
["Ticket Shop"] = CFrame.new(-12.8, 184, -222.2),
["Club Honey"] = CFrame.new(44.8, 5, 319.6),
["RoyalJelly"] = CFrame.new(-297, 53, 68),
["Honeystorm Dispensor"] = CFrame.new(238.4, 33.3, 165.6),
["Blueberry Dispenser"] = CFrame.new(313.3, 58, 86.9),
["Strawberry Dispenser"] = CFrame.new(-320.5, 46, 272.5),
["Sprout Dispenser"] = CFrame.new(-269.26, 26.56, 267.31),
["Instant Honey Convertor"] = CFrame.new(282, 68, -62),
["King Beetles Lair"] = CFrame.new(218, 3, 140),
["Clover Field"] = CFrame.new(174, 34, 189),
["Mushroom Field"] = CFrame.new(-258.1, 5, 299.7),
["Spider Field"] = CFrame.new(-57.2, 20, -5.3),
["Blue Field"] = CFrame.new(113.7, 4, 101.5),
["Sunflower Field"] = CFrame.new(-208, 4, 185),
["StrawBerry Field"] = CFrame.new(-169.3, 20, -3.2),
["Red Field"] = CFrame.new(-258.1, 5, 299.7),
["Dandelion Field"] = CFrame.new(-30, 4, 225),
["BamBoo Field"] = CFrame.new(93, 20, -25),
["Rose Field"] = CFrame.new(-322, 20, 124),
["Mushroom Field"] = CFrame.new(-94, 5, 116),
["Cactus Field"] = CFrame.new(-194, 68, -107),
["Pumpkin Field"] = CFrame.new(-194, 68, -182),
["MountainTop Field"] = CFrame.new(76, 176, -181),
["PineTree Field"] = CFrame.new(-318, 68, -150),
["Pineapple Field"] = CFrame.new(262, 68, -201),
["Onett"] = CFrame.new(-8.4, 234, -517.9),
["Gumdrop Dispenser"] = CFrame.new(63, 20.7, 38.7),
["Treat Dispenser"] = CFrame.new(193.9, 68, -123),
["Treat Shop"] = CFrame.new(-228.2, 5, 89.4),
["Star Hut"] = CFrame.new(135.9, 64.6, 322.1),
["Wealth Clock"] = CFrame.new(310.5, 47.6, 190),
["Ant Challenge"] = CFrame.new(90.6, 32.6, 501),
["Stump Field"] = CFrame.new(420, 96.3, -177.6),
["Pepper Field"] = CFrame.new(-479, 123, 525),
["Coconut Field"] = CFrame.new(-253, 71, 464),
["Gifted Bucko Bee"] = CFrame.new(304.8, 61.7, 104.4),
["Gifted Riley Bee"] = CFrame.new(-360.4, 73.6, 214.2),
["Glue Dispenser"] = CFrame.new(271.9, 25257.4, -724.3),
["Stick Bug"] = CFrame.new(-125.3, 49.9, 147.1),
["Demon Area"] = CFrame.new(291, 27.2, 271),
["Gummy Area"] = CFrame.new(270, 25276, -808),
["Diamond Mask"] = CFrame.new(-336, 133, -387),
["Bee Man"] = CFrame.new(93, 310, -288),
["Moon Amulet"] = CFrame.new(21, 88, -54),
["Petal Shop"] = CFrame.new(-499, 52, 453),
["Blender"] = CFrame.new(-426, 69, 38)
}

PetalShop.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Petal Shop"]
WayPointsFrame.Visible = false
notify'Teleported to Petal Shop'
end)

Blender.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Blender"]
WayPointsFrame.Visible = false
notify'Teleported to Blender'
end)

MoonAmulet.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Moon Amulet"]
WayPointsFrame.Visible = false
notify'Teleported to Moon Amulet'
end)

BeeMan.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Bee Man"]
WayPointsFrame.Visible = false
notify'Teleported to Bee Man'
end)

DiamondMask.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Diamond Mask"]
WayPointsFrame.Visible = false
notify'Teleported to Diamond Mask'
end)

GummyArea.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Gummy Area"]
WayPointsFrame.Visible = false
notify'Teleported to Gummy Area'
end)

DemonArea.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Demon Area"]
WayPointsFrame.Visible = false
notify'Teleported to Demon Area'
end)

StickBug.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Stick Bug"]
WayPointsFrame.Visible = false
notify'Teleported to Stick Bug'
end)

GiftedRileyBee.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Gifted Riley Bee"]
WayPointsFrame.Visible = false
notify'Teleported to Gifted Riley Bee'
end)

GiftedBuckoBee.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Gifted Bucko Bee"]
WayPointsFrame.Visible = false
notify'Teleported to Gifted Bucko Bee'
end)

StumpField.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Stump Field"]
WayPointsFrame.Visible = false
notify'Teleported to Stump Field'
end)

PepperField.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Pepper Field"]
WayPointsFrame.Visible = false
notify'Teleported to Pepper Field'
end)

CoconutField.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Coconut Field"]
WayPointsFrame.Visible = false
notify'Teleported to Coconut Field'
end)

ReturnToHive.MouseButton1Down:connect(function()
player = game:GetService("Players").LocalPlayer
player.Character:MoveTo(player.SpawnPos.Value.p)
WayPointsFrame.Visible = false
notify'Teleported to Hive'
end)

BlackBear.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Black Bear"]
WayPointsFrame.Visible = false
notify'Teleported to Black Bear'
end)

BrownBear.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Brown Bear"]
WayPointsFrame.Visible = false
notify'Teleported to Brown Bear'
end)

PandaBear.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Panda Bear"]
WayPointsFrame.Visible = false
notify'Teleported to Panda Bear'
end)

PolarBear.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Polar Bear"]
WayPointsFrame.Visible = false
notify'Teleported to Polar Bear'
end)

ScienceBear.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Science Bear"]
WayPointsFrame.Visible = false
notify'Teleported to Science Bear'
end)

MotherBear.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Mother Bear"]
WayPointsFrame.Visible = false
notify'Teleported to Mother Bear'
end)

TunnelBear.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Tunnel Bear"]
WayPointsFrame.Visible = false
notify'Teleported to Tunnel Bear'
end)

RedBoost.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Redfield Boost"]
WayPointsFrame.Visible = false
notify'Teleported to RedField Booster'
end)

BlueBoost.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Bluefield Boost"]
WayPointsFrame.Visible = false
notify'Teleported to BlueField Booster'
end)

MountainBoost.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["MountainTop Boost"]
WayPointsFrame.Visible = false
notify'Teleported to MountainTop Boost'
end)

TPShop.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Tool Shop"]
WayPointsFrame.Visible = false
notify'Teleported to Basic Tool Shop'
end)

TPShop2.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Tool Shop 2"]
WayPointsFrame.Visible = false
notify'Teleported to Advanced Tool Shop'
end)

MountainTopShop.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["MountainTop Shop"]
WayPointsFrame.Visible = false
notify'Teleported to MountainTop Shop'
end)

TentShop.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Ticket Tent"]
WayPointsFrame.Visible = false
notify'Teleported to Ticket Tent Shop'
end)

RedClubhouse.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Red Clubhouse"]
WayPointsFrame.Visible = false
notify'Teleported to Red ClubHouse'
end)

BlueClubhouse.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Blue Clubhouse"]
WayPointsFrame.Visible = false
notify'Teleported to Blue ClubHouse'
end)

TicketShop.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Ticket Shop"]
WayPointsFrame.Visible = false
notify'Teleported to Ticket Dispenser'
end)

RoyalJelly.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["RoyalJelly"]
WayPointsFrame.Visible = false
notify'Teleported to Royal Jelly Shop'
end)

Honeystorm.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Honeystorm Dispensor"]
WayPointsFrame.Visible = false
notify'Teleported to Honeystorm'
end)

SproutDispenser.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Sprout Dispenser"]
WayPointsFrame.Visible = false
notify'Teleported to Sprout Dispenser'
end)

KingbeetlesLair.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["King Beetles Lair"]
WayPointsFrame.Visible = false
notify'Teleported to King Beetles Lair'
end)


MushRoomField.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Mushroom Field"]
WayPointsFrame.Visible = false
notify'Teleported to Mushroom Field'
end)

StrawBerryField.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["StrawBerry Field"]
WayPointsFrame.Visible = false
notify'Teleported to StrawBerry Field'
end)

CloverField.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Clover Field"]
WayPointsFrame.Visible = false
notify'Teleported to Clover Field'
end)

SpiderField.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Spider Field"]
WayPointsFrame.Visible = false
notify'Teleported to Spider Field'
end)

BlueField.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Blue Field"]
WayPointsFrame.Visible = false
notify'Teleported to Blue Field'
end)

SunflowerField.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Sunflower Field"]
WayPointsFrame.Visible = false
notify'Teleported to Sunflower Field'
end)

DandelionField.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Dandelion Field"]
WayPointsFrame.Visible = false
notify'Teleported to Dandelion Field'
end)

BamBooField.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["BamBoo Field"]
WayPointsFrame.Visible = false
notify'Teleported to Bamboo Field'
end)

RoseField.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Rose Field"]
WayPointsFrame.Visible = false
notify'Teleported to Rose Field'
end)

CactusField.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Cactus Field"]
WayPointsFrame.Visible = false
notify'Teleported to Cactus Field'
end)

PumpkinField.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Pumpkin Field"]
WayPointsFrame.Visible = false
notify'Teleported to Pumpkin Field'
end)

PineTreeField.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["PineTree Field"]
WayPointsFrame.Visible = false
notify'Teleported to Pine Tree Field'
end)

MountainTopField.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["MountainTop Field"]
WayPointsFrame.Visible = false
notify'Teleported to Mountain Top Field'
end)

PineappleField.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Pineapple Field"]
WayPointsFrame.Visible = false
notify'Teleported to Pineapple Field'
end)

StarHut.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Star Hut"]
WayPointsFrame.Visible = false
notify'Teleported to Star Hut'
end)

Onett.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Onett"]
WayPointsFrame.Visible = false
notify'Teleported to Onett'
end)

AntChallenge.MouseButton1Down:connect(function()
uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Ant Challenge"]
WayPointsFrame.Visible = false
notify'Teleported to Ant Challenge'
end)

SetLocation.MouseButton1Down:connect(function()
	setlocationx = round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x, 0)
	setlocationy = round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.y, 0)
	setlocationz = round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z, 0)
	print("Set Custom Location: "..setlocationx..", "..setlocationy..", "..setlocationz)
	SetLocation.Text = "Set: " ..setlocationx..","..setlocationy..","..setlocationz
	CustomLocationSet = true
end)

--- TP to custom location ---

TPLocation.MouseButton1Down:connect(function()
	if CustomLocationSet and not pausehumcheck then
		local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
		uTorso.CFrame = CFrame.new(setlocationx, setlocationy, setlocationz)
	end
end)

Player1.MouseButton1Down:connect(function()
	PlyrSel.Text = Player1.Text
end)
Player2.MouseButton1Down:connect(function()
	PlyrSel.Text = Player2.Text
end)
Player3.MouseButton1Down:connect(function()
	PlyrSel.Text = Player3.Text
end)
Player4.MouseButton1Down:connect(function()
	PlyrSel.Text = Player4.Text
end)
Player5.MouseButton1Down:connect(function()
	PlyrSel.Text = Player5.Text
end)
Player6.MouseButton1Down:connect(function()
	PlyrSel.Text = Player6.Text
end)

TpPlayer.MouseButton1Down:connect(function()
	if PlyrSel.Text == "SELECT A PLAYER" then
		warn("No Player Selected")
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[PlyrSel.Text].HumanoidRootPart.CFrame
	end
end)

-- Find Hidden Treasures --

FindTreasures.MouseButton1Down:connect(function()
	for i,v in pairs(workspace.Collectibles:GetChildren()) do
		noclip = true
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
		wait(.1)
		noclip = false
	end
end)

--- Promo Codes ---

PromoCodes.MouseButton1Down:connect(function()
	promocodes()
end)

--- Pollen Farm ---

StartFarm.MouseButton1Click:connect(function()
if PollenFarmActive ~= true then
print("Use waypoints menu to begin farming.")
else
PollenFarmActive = false
Field1AFActive = false
Field2AFActive = false
Field3AFActive = false
Field4AFActive = false
Field5AFActive = false
Field6AFActive = false
Field7AFActive = false
Field8AFActive = false
Field9AFActive = false
Field10AFActive = false
Field11AFActive = false
Field12AFActive = false
Field13AFActive = false
Field14AFActive = false
Field15AFActive = false
Field16AFActive = false	
Field17AFActive = false				
farmzoneswitched = false
resethive = false
print("Pollen Farming Ended")
notify'Pollen Farming Ended'
StartFarm.Text = "Pollen Farm: OFF"
PollenFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
StartFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
local player = game:GetService("Players").LocalPlayer
currp=nil
player.Character:MoveTo(player.SpawnPos.Value.p)
end
end)

-- vicious bee --
spawn(function()
	while wait() do
		wait(1)
		if HuntViciousActive and viciousbeedetected then
			print("Vicous Bee has Appeared. Hunting Time!!")
			notify'Vicous Bee has Appeared. Hunting Time!!'
			if AvoidViciousActive then
				AvoidTempOFF = true
				AvoidViciousActive = false
				AvoidViciousBee.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
				AvoidViciousBee.Text = "Avoid ViciousBee: OFF"
			end
			viciouskillstarted = true
			turnthemoff()
			local hum = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			for i,v in pairs(workspace.Particles:GetChildren()) do
				for x in string.gmatch(v.Name, "Vicious") do
					if string.find(v.Name, "Vicious") then
						hum.CFrame = CFrame.new(v.Position.x, v.Position.y, v.Position.z)
						wait(1)
						hum.CFrame = CFrame.new(v.Position.x, v.Position.y, v.Position.z+3)
						wait(.5)
						hum.CFrame = CFrame.new(v.Position.x, v.Position.y, v.Position.z-3)
						wait(.5)
					end
				end
			end
			for i,v in pairs(workspace.Particles:GetChildren()) do
				for x in string.gmatch(v.Name, "Vicious") do
					while HuntViciousActive and viciousbeedetected do
						if string.find(v.Name, "Vicious") then
							for i=1, 4 do
								hum.CFrame = CFrame.new(v.Position.x, v.Position.y+20, v.Position.z)
								noclip = true
								wait(1)
								noclip = false
							end
							noclip = false
							wait(1.25)
						end
					end
				end
			end
			wait(1)
			noclip = false
			if AvoidTempOFF then
				AvoidTempOFF = false
				AvoidViciousBee.BackgroundColor3 = Color3.new(0.5, 0, 0)
				AvoidViciousBee.Text = "Avoid ViciousBee: ON"
				AvoidViciousActive = true
			end
			viciouskillstarted = false
			turnthemon()
			viciouskills = viciouskills + 1
		end
	end
end)

-- windy bee --
spawn(function()
	while wait() do
		wait(1)
		if windyfarm and windydetected and not mondoalive and not guidingkillstarted then
			print("Windy Bee has Appeared. Hunting Time!!")
			notify'Windy Bee has Appeared. Hunting Time!!'
			windykillstarted = true
			turnthemoff()
			activatewindy = false
			windylevelset = false
			local hum = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			while windyfarm and windydetected do
				if not windylevelset then
					for i,v in pairs(workspace.Monsters:GetChildren()) do
						if string.gmatch(v.Name, "Windy") then
							windylevel = v.Name
							windylevelset = true
						end
					end
				end
				if windylevelset then
					for i,v in pairs(workspace.Monsters:GetChildren()) do
						if string.gmatch(v.Name, "Windy") then
							if v.Name ~= windylevel then
								noclip = false
								wait(5)
								farmtokens()
								farmtokens()
								windylevel = v.Name
							end
						end
					end
				end
				if not activatewindy then
					hum.CFrame = CFrame.new(windybee.Position.x, windybee.Position.y+5, windybee.Position.z)
					wait(1.5)
					activatewindy = true
				end
				if windybee.Name == "Windy" and activatewindy then
					hum.CFrame = CFrame.new(windybee.Position.x, windybee.Position.y+25, windybee.Position.z)
					noclip = true
					wait()
				end
			end
			windykills = windykills + 1
			noclip = false
			turnthemon()
			windykillstarted = false
		end
	end
end)

-- sprout farm --
sproutCollecting = false
spawn(function()
    while wait() do
        startpos = nil
        wait()        
        if SproutFarmActive and sproutdetected then
			AutoDigActive = false
			sprinklerDB = false
			player = game:GetService("Players").LocalPlayer
			pollenLbl = player.Character:FindFirstChild("ProgressLabel",true)
			if not pollenLbl then
				print("Backpack not found")
			end
			maxpollen = tonumber(pollenLbl.Text:match("%d+$"))
            print("A Sprout has Appeared. Farming Time!!")
            notify'A Sprout has Appeared. Farming Time!!'
			sproutkillstarted = true
            turnthemoff()
			wait(.5)
            while SproutFarmActive and sproutdetected and not sproutCollecting do
                local root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
				if (sproutobject.Position-root.Position).magnitude > 250 then
					wait(.5)
					if sproutobject ~= nil then
						root.CFrame = CFrame.new(sproutobject.Position.x, sproutobject.Position.y, sproutobject.Position.z) * CFrame.new(0, 20, 0)
					end
					noclip = true
					wait(3)
					noclip = false
					if sproutobject ~= nil then
						root.CFrame = sproutobject.CFrame
					end
				else   
					if not sprinklerDB then
						wait(1.5)
						game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer({["Name"] = "Sprinkler Builder"})
						sprinklerDB = true
					end
					if sproutobject ~= nil then
						root.CFrame = sproutobject.CFrame * CFrame.new(5, 2, 5)
					end
					wait(1)
					AutoDigActive = true
					sproutstarted = true		
					tokenfarmactive2 = true						
				end
                if tonumber(player.CoreStats.Pollen.Value+1) > tonumber(maxpollen) then
                    print("Bag Full: " ..tostring(player.CoreStats.Pollen.Value))
                    SproutFarmActive = false
					tokenfarmactive2 = false
					honeytimer = 0
                    wait(2)
                    game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Players").LocalPlayer.SpawnPos.Value.p)
                    wait(1)
                    game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
					repeat 
					wait(1)
					honeytimer = honeytimer + 1
					until game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value < 1 or honeytimer >= 120
					wait(6)
					if game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value > 1 then
						HoneyConvertFix()
						repeat wait() until game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value < 1
					end
					SproutFarmActive = true
                end
                wait()
            end
            print("Finished farming Sprout")
			sproutCollecting = true
            wait(20)
			sproutCollecting = false
            AutoDigActive = false
            sproutstarted = false
            sproutkillstarted = false
			tokenfarmactive2 = false
			wait(.1)
            turnthemon()
            sproutkills = sproutkills + 1
			sprinklerDB = false
        end
    end
end)

function findtool(player)
	if workspace[player.Name] then
		if workspace[player.Name]:FindFirstChildOfClass("Tool") then
			if workspace[player.Name]:FindFirstChildOfClass("Tool"):FindFirstChild("ClickEvent", true) then
				click = workspace[player.Name]:FindFirstChildOfClass("Tool"):FindFirstChild("ClickEvent", true) or nil
			end
		end
	end
	return click or nil
end

spawn(function()
	while wait(.1) do
		wait()
		if AutoDigActive ~= true then
			AutoDig.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		else
			AutoDig.BackgroundColor3 = Color3.new(0.5, 0, 0)
		end		
		if AutoDigActive then
		pcall(function()
			if game:GetService("Players").LocalPlayer then
				player = game:GetService("Players").LocalPlayer
				local ce = findtool(player)
				if ce then
					ce:FireServer()
				end
			end
		end)
		end
	end
end)

spawn(function()
wait(2)
	pcall(function()
		if game:GetService("Players").LocalPlayer then
			player = game:GetService("Players").LocalPlayer
			local ce = findtool(player)
			if ce then
				ce:FireServer()
				wait(1)
				ce:FireServer()
			end
		end
	end)
end)

--- ReJoin Server ---

ReJoinServer.MouseButton1Down:connect(function()
	local placeId = 1537690962
	game:GetService("TeleportService"):Teleport(placeId)
end)

-- Auto Token Gather --

mouse.KeyDown:connect(function(key)
	if key == TokenToggle.Text then
		if not tokenfarmactive then
			tokenfarmactive = true
			notify'Auto Token Gather Enabled'
		else
			tokenfarmactive = false
			notify'Auto Token Gather Disabled'
		end
	end
end)
--"rbxassetid://6087969886"
listitems = {"rbxassetid://2028574353", "rbxassetid://6087969886", "rbxassetid://1838129169", "rbxassetid://1471882621", "rbxassetid://1952682401", "rbxassetid://1952740625", "rbxassetid://1952796032", "rbxassetid://2028453802"}

local function getclosest()
local distance = math.huge
local closest
local enemi = workspace.Collectibles:GetChildren()
    for i=1,#enemi do 
        local v = enemi[i]
        if not table.find(listitems, tostring(v.FrontDecal.Texture)) and math.abs(v.Position.Y - game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y) < 4 and not v:FindFirstChild("farmed") and game.Players.LocalPlayer:DistanceFromCharacter(v.Position) < 100 and game.Players.LocalPlayer:DistanceFromCharacter(v.Position) < distance then
            distance = game.Players.LocalPlayer:DistanceFromCharacter(v.Position)
            closest = v
        end
    end
    return closest
end

spawn(function()
while wait(.15) do
	pcall(function()
		if tokenfarmactive2 then
			nearest = getclosest()
			game.Players.LocalPlayer.Character.Humanoid:MoveTo(nearest.Position)
			if game.Players.LocalPlayer:DistanceFromCharacter(nearest.Position) < 3 then
				local intvalue = Instance.new("IntValue",nearest)
				intvalue.Name = "farmed"
			end
		end
	end)
end
end)

local function getclosestcoconut()
local distance = math.huge
local closest
local enemi = workspace.Particles:GetChildren()
    for i=1,#enemi do 
		if enemi[i].Name == "WarningDisk" and enemi[i].BrickColor == BrickColor.new("Lime green") and enemi[i].Position ~= nil then
        local v = enemi[i]
        if game.Players.LocalPlayer:DistanceFromCharacter(v.Position) < 100 and game.Players.LocalPlayer:DistanceFromCharacter(v.Position) < distance then
            distance = game.Players.LocalPlayer:DistanceFromCharacter(v.Position)
            closest = v
        end
		end
    end
    return closest
end

spawn(function()
while wait(.1) do
	pcall(function()
		if collectcoconuts and tokenfarmactive2 then
			-- print('hi')
			nearest = getclosestcoconut()
			-- print('true')
			-- print(nearest:GetFullName())
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, nearest.Position)
		end
	end)
end
end)

spawn(function()
	while wait() do
	pcall(function()
		if tokenfarmactive2 then
			while tokenfarmactive2 do
				if tokenfarmactiveold then -- old style tokens
					local root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
					local rootpos = root.CFrame
					for k,v in pairs(workspace.Collectibles:GetChildren()) do
						if tonumber((v.Position - root.Position).magnitude) <= 60 and not v:FindFirstChild("farmed") then	-- and v.BrickColor ~= BrickColor.new("Flame yellowish orange")
							local intvalue = Instance.new("IntValue",v)
							intvalue.Name = "farmed"
							noclip = true
							root.CFrame = CFrame.new(v.Position.x, v.Position.y, v.Position.z) * CFrame.new(0, -1.8, 0)
							wait(.25)
							noclip = false
						end
					end
					if collectbubbles or collectcoconuts or collectmeteor then
						for i,v in pairs(workspace.Particles:GetChildren()) do
							if collectbubbles then
								if string.find(v.Name, "Bubble") then
									if (v.Position-root.Position).magnitude <= 60 then
										toTarget(root.Position, v.Position)
										wait(.25)
									end	
								end
							end
							-- if collectcoconuts then
								-- if v.Name == "WarningDisk" and v.BrickColor == BrickColor.new("Lime green") then
									-- if (v.Position-root.Position).magnitude <= 60 then
										-- toTarget(root.Position, v.Position)
										-- wait(.25)
									-- end
								-- end
							-- end
							if collectmeteor then
								if v.Name == "WarningDisk" and v.BrickColor == BrickColor.new("Royal purple") then
									if (v.Position-root.Position).magnitude <= 70 then
										toTarget(root.Position, v.Position)
										wait(.25)
									end
								end
							end
						end
					end
				elseif not tokenfarmactiveold then -- new style tokens
					local root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
					local rootpos = root.CFrame
					-- for k,v in pairs(workspace.Collectibles:GetChildren()) do
						-- if not table.find(listitems, tostring(v.FrontDecal.Texture)) and not v:FindFirstChild("farmed") and game.Players.LocalPlayer:DistanceFromCharacter(v.Position) < 150 and math.abs(v.CFrame.Y-game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y) < 5 then
						
						--if tonumber((v.Position - root.Position).magnitude) <= 80 and not v:FindFirstChild("farmed") then --and tostring(v:FindFirstChild("FrontDecal"):FindFirstChild("Texture")) ~= "rbxassetid://1472135114" then
							-- noclip = true
							-- toTarget(root.Position, v.Position-Vector3.new(0,1.5,0))
							-- wait(.25)
							-- noclip = false
						-- end
					-- end
					if collectbubbles or collectcoconuts then
						for i,v in pairs(workspace.Particles:GetChildren()) do
							if collectbubbles then
								if string.find(v.Name, "Bubble") then
									if (v.Position-root.Position).magnitude <= 80 then
										toTarget(root.Position, v.Position)
										wait(.25)
									end	
								end
							end
							-- if collectcoconuts then
								-- if v.Name == "WarningDisk" and v.BrickColor == BrickColor.new("Lime green") then
									-- if (v.Position-root.Position).magnitude <= 80 then
										-- while v.Name == "WarningDisk" and v.BrickColor == BrickColor.new("Lime green") do
											-- toTarget(root.Position, v.Position)
											-- wait(.25)
										-- end
									-- end
								-- end
							-- end
							--[[
							if v.Name == "FlamePart" and (v.Position-root.Position).Magnitude < 80 then
								root.CFrame = CFrame.new(v.Position)
								wait(.1)
							end ]]--
						end
					end
				end
			wait()
			end
		end		
		end)
	end
end)


-- spawn(function()
-- while wait() do
-- pcall(function()
	-- if tokenfarmactive2 then
		-- local root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		-- for i,v in pairs(workspace.Particles:GetChildren()) do
			-- if v.Name == "FlamePart" and (v.Position-root.Position).Magnitude < 80 then
				-- toTarget(root.Position, v.Position,  v.CFrame)
				-- wait(.07)
			-- end
		-- end
	-- end
-- end)
-- end
-- end)

spawn(function()
	while wait() do
		Timer = Timer + 1
		RunTimer.Text = convertToHMS(Timer)		
		wait(1)
	end
end)

-- Make Honey --

mouse.KeyDown:connect(function(key)
	if key == HoneyToggle.Text then
		notify'Making Honey'
		game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Players").LocalPlayer.SpawnPos.Value.p)
		wait(1.5)
		game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
	end
end)

--- Stop farming ---

mouse.KeyDown:connect(function(key)
	if key == StopFarming.Text then
		PollenFarmActive = false
		Field1AFActive = false
		Field2AFActive = false
		Field3AFActive = false
		Field4AFActive = false
		Field5AFActive = false
		Field6AFActive = false
		Field7AFActive = false
		Field8AFActive = false
		Field9AFActive = false
		Field10AFActive = false
		Field11AFActive = false
		Field12AFActive = false
		Field13AFActive = false
		Field14AFActive = false
		Field15AFActive = false
		Field16AFActive = false		
		Field17AFActive = false		
		farmzoneswitched = false
		resethive = false
		print("Pollen Farming Ended")
		notify'Pollen Farming Ended'
		StartFarm.Text = "Pollen Farm: OFF"
		PollenFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		StartFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	end
end)

-- Farm Moon Amulet Tokens

mouse.KeyDown:connect(function(key)
	if key == FireflyToggle.Text then
		notify'Moon Token Gather Enabled'
		count = 0
		if fireflydetected then
			local root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			for i,v in pairs(workspace.NPCBees:GetChildren()) do
				if v.Name == "Firefly" then
					wait(0.2)
					count = count + 1
					--print("Teleporting to Firefly " ..tostring(count))--
					root.CFrame = CFrame.new(v.Position.x, v.Position.y, v.Position.z)
				end
			end
			wait(1)
			for i,v in pairs(workspace.Collectibles:GetChildren()) do
				if v.Name == "C" then
					if (v.Position-root.Position).magnitude <= 50 then
						root.CFrame = CFrame.new(v.Position.x, v.Position.y, v.Position.z)
						wait(0.1)
					end
				end
			end
		end
	end
end)

--get rid of all used tokens
wait(2)
for i,v in pairs(workspace.Collectibles:GetChildren()) do
	local intvalue = Instance.new("IntValue",v)
	intvalue.Name = "farmed"
end
