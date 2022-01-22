if not getgenv().totalServers then
	getgenv().totalServers = 0
    getgenv().totalServersMerchant = 0
    getgenv().itemsBought = 0
end

ListOfServers = {}
for i, v in pairs(readfile("JoinedServers.txt"):split('\n')) do
	table.insert(ListOfServers, v)
end

if #ListOfServers > 5000 then
	writefile("JoinedServers.txt", "")
end

function ServerHop()
	Saved = false
	if isfile(game.PlaceId..".txt") then
	    nextpagecursor = readfile(game.PlaceId..".txt")
    else
        nextpagecursor =  nil
    end
	print(nextpagecursor)
	local http = game:GetService("HttpService")

	while wait(.1) do
	    pcall(function()
		server = nil
		Stateresponse = false
		response = nil
		print(nextpagecursor)
		if nextpagecursor == nil then
			server = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/'..game.PlaceId..'/servers/Public?sortOrder=Asc&limit=100'))
		else
		    server = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/'..game.PlaceId..'/servers/Public?sortOrder=Asc&limit=100&cursor='..nextpagecursor))
		end
		for i, v in pairs(server.data) do
			if v.playing < v.maxPlayers and not table.find(ListOfServers, v.id) then
				if not Saved then
					writefile(game.PlaceId..".txt", nextpagecursor)
					Saved = true
				end
				appendfile("JoinedServers.txt", v.id.."\n")
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v.id)
				wait(10)
			end
		end
		nextpagecursor = server.nextPageCursor
		end)
	end
end
   
game:GetService("TeleportService").TeleportInitFailed:Connect(function(plr, reason)
    wait(1)
	ServerHop()
end)

if game:GetService("CoreGui").RobloxPromptGui.promptOverlay.Active then
    wait(1)
    ServerHop()
end

if not game:IsLoaded() then
    game.Loaded:Wait()
end
local console = loadstring(game:HttpGet("https://raw.githubusercontent.com/4lve/SynapseXConsole/main/maine.lua"))()
console.clear()
console.log('New Server Joined. Waiting For Script To Load')
local Lib = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))
while not Lib.Loaded do
	game:GetService("RunService").Heartbeat:Wait()
end

nextTeleport = queue_on_teleport or syn.queue_on_teleport

function useTeleport()
    console.newline()
    console.newline()
    console.log('Teleporting To New Server')
    nextTeleport([[
		getgenv().mode = ]]..mode..[[
        getgenv().totalServers = ]]..totalServers..[[
        getgenv().totalServersMerchant = ]]..totalServersMerchant..[[
        getgenv().itemsBought = ]]..itemsBought..[[
        loadstring(game:HttpGet("https://raw.githubusercontent.com/4lve/Roblox/main/MerchantHop.lua"))()
    ]])
    ServerHop()
end


console.new()
console.windowname('Merchant Hop Created By 4lve#0001')
console.clear()

console.log("Server Info:")
console.newline()
console.formatcolors(" - Current Job ID: &a"..game.JobId)
console.newline()
console.formatcolors(" - Total Servers Joined: &a"..totalServers)
console.newline()
console.formatcolors(" - Total Servers With Merchant: &a"..totalServersMerchant)
console.newline()
console.formatcolors(" - Total Pets Bought: &a"..itemsBought)
console.newline()
console.newline()
console.log("Activity:")
console.newline()

if (Lib.Network.Invoke("get merchant items")["Level 3"]) then
    console.formatcolors(" - &aMerchant Found")
	if (getgenv().mode == 1) then
		notOutOfStock = true
		while notOutOfStock do
			notOutOfStock = Lib.Network.Invoke("buy merchant item", 3)
			if notOutOfStock then
				console.newline()
				console.formatcolors(" - &aMerchant Pet Bought")
				getgenv().itemsBought = getgenv().itemsBought + 1
			end
		end
	else

		for i,v in pairs(Lib.Network.Invoke("get merchant items")) do
			if ((v.petId == "263") and v.petExtra.r) then
				notOutOfStock = Lib.Network.Invoke("buy merchant item", tonumber(i:split(" ")[2]))
				if notOutOfStock then
					console.newline()
					console.formatcolors(" - &aBought Rainbow Santa Paws")
					getgenv().itemsBought = getgenv().itemsBought + 1
				end
			end
		end

	end
    getgenv().totalServers = getgenv().totalServers + 1
    getgenv().totalServersMerchant = getgenv().totalServersMerchant + 1
    useTeleport()
else
    console.formatcolors(" - &4Merchant Not Found")
    getgenv().totalServers = getgenv().totalServers + 1
    useTeleport()
end
