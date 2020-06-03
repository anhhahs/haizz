local version = "0.4.8"

repeat
wait(0.1)
until game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart")

local library = {count = 0, queue = {}, callbacks = {}, rainbowtable = {}, toggled = true, binds = {}};
local defaults; do
local dragger = {}; do
local mouse= game:GetService("Players").LocalPlayer:GetMouse();
local inputService = game:GetService('UserInputService');
local heartbeat= game:GetService("RunService").Heartbeat;
-- // credits to Ririchi / Inori for this cute drag function :)
function dragger.new(frame)
local s, event = pcall(function()
return frame.MouseEnter
end)

if s then
frame.Active = true;

event:connect(function()
local input = frame.InputBegan:connect(function(key)
if key.UserInputType == Enum.UserInputType.MouseButton1 then
local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
pcall(function()
frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Linear', 0.1, true);
end)
end
end
end)

local leave;
leave = frame.MouseLeave:connect(function()
input:disconnect();
leave:disconnect();
end)
end)
end
end

game:GetService('UserInputService').InputBegan:connect(function(key, gpe)
if (not gpe) then
if key.KeyCode == Enum.KeyCode.RightControl then
library.toggled = not library.toggled;
for i, data in next, library.queue do
local pos = (library.toggled and data.p or UDim2.new(-1, 0, -0.5,0))
data.w:TweenPosition(pos, (library.toggled and 'Out' or 'In'), 'Quad', 0.15, true)
wait();
end
end
end
end)
end

local types = {}; do
types.__index = types;
function types.window(name, options)
library.count = library.count + 1
local newWindow = library:Create('Frame', {
Name = name;
Size = UDim2.new(0, 190, 0, 30);
BackgroundColor3 = options.topcolor;
BorderSizePixel = 0;
Parent = library.container;
Position = UDim2.new(0, (15 + (200 * library.count) - 200), 0, 0);
ZIndex = 3;
library:Create('TextLabel', {
Text = name;
Size = UDim2.new(1, -10, 1, 0);
Position = UDim2.new(0, 5, 0, 0);
BackgroundTransparency = 1;
Font = Enum.Font.Code;
TextSize = options.titlesize;
Font = options.titlefont;
TextColor3 = options.titletextcolor;
TextStrokeTransparency = library.options.titlestroke;
TextStrokeColor3 = library.options.titlestrokecolor;
ZIndex = 3;
});
library:Create("TextButton", {
Size = UDim2.new(0, 30, 0, 30);
Position = UDim2.new(1, -35, 0, 0);
BackgroundTransparency = 1;
Text = "-";
TextSize = options.titlesize;
Font = options.titlefont;--Enum.Font.Code;
Name = 'window_toggle';
TextColor3 = options.titletextcolor;
TextStrokeTransparency = library.options.titlestroke;
TextStrokeColor3 = library.options.titlestrokecolor;
ZIndex = 3;
});
library:Create("Frame", {
Name = 'Underline';
Size = UDim2.new(1, 0, 0, 2);
Position = UDim2.new(0, 0, 1, -2);
BackgroundColor3 = (options.underlinecolor ~= "rainbow" and options.underlinecolor or Color3.new());
BorderSizePixel = 0;
ZIndex = 3;
});
library:Create('Frame', {
Name = 'container';
Position = UDim2.new(0, 0, 1, 0);
Size = UDim2.new(1, 0, 0, 0);
BorderSizePixel = 0;
BackgroundColor3 = options.bgcolor;
ClipsDescendants = false;
library:Create('UIListLayout', {
Name = 'List';
SortOrder = Enum.SortOrder.LayoutOrder;
})
});
})

if options.underlinecolor == "rainbow" then
table.insert(library.rainbowtable, newWindow:FindFirstChild('Underline'))
end

local window = setmetatable({
count = 0;
object = newWindow;
container = newWindow.container;
toggled = true;
flags   = {};

}, types)

table.insert(library.queue, {
w = window.object;
p = window.object.Position;
})

newWindow:FindFirstChild("window_toggle").MouseButton1Click:connect(function()
window.toggled = not window.toggled;
newWindow:FindFirstChild("window_toggle").Text = (window.toggled and "+" or "-")
if (not window.toggled) then
window.container.ClipsDescendants = true;
end
wait();
local y = 0;
for i, v in next, window.container:GetChildren() do
if (not v:IsA('UIListLayout')) then
y = y + v.AbsoluteSize.Y;
end
end 

local targetSize = window.toggled and UDim2.new(1, 0, 0, y+5) or UDim2.new(1, 0, 0, 0);
local targetDirection = window.toggled and "In" or "Out"

window.container:TweenSize(targetSize, targetDirection, "Quad", 0.15, true)
wait(.15)
if window.toggled then
window.container.ClipsDescendants = false;
end
end)

return window;
end

function types:Resize()
local y = 0;
for i, v in next, self.container:GetChildren() do
if (not v:IsA('UIListLayout')) then
y = y + v.AbsoluteSize.Y;
end
end 
self.container.Size = UDim2.new(1, 0, 0, y+5)
end

function types:GetOrder() 
local c = 0;
for i, v in next, self.container:GetChildren() do
if (not v:IsA('UIListLayout')) then
c = c + 1
end
end
return c
end

function types:Label(text)
local v = game:GetService'TextService':GetTextSize(text, 18, Enum.Font.SourceSans, Vector2.new(math.huge, math.huge))
local object = library:Create('Frame', {
Size = UDim2.new(1, 0, 0, v.Y + 5);
BackgroundTransparency  = 1;
library:Create('TextLabel', {
Size = UDim2.new(1, 0, 1, 0);
Position = UDim2.new(0, 10, 0, 0);
LayoutOrder = self:GetOrder();

Text = text;
TextSize = 18;
Font = Enum.Font.SourceSans;
TextColor3 = Color3.fromRGB(255, 255, 255);
BackgroundTransparency = 1;
TextXAlignment = Enum.TextXAlignment.Left;
TextWrapped = true;
});
Parent = self.container
})
self:Resize();
end

function types:Toggle(name, options, callback)
local default  = options.default or false;
local location = options.location or self.flags;
local flag = options.flag or "";
local callback = callback or function() end;

location[flag] = default;

local check = library:Create('Frame', {
BackgroundTransparency = 1;
Size = UDim2.new(1, 0, 0, 25);
LayoutOrder = self:GetOrder();
library:Create('TextLabel', {
Name = name;
Text = "\r" .. name;
BackgroundTransparency = 1;
TextColor3 = library.options.textcolor;
Position = UDim2.new(0, 5, 0, 0);
Size = UDim2.new(1, -5, 1, 0);
TextXAlignment = Enum.TextXAlignment.Left;
Font = library.options.font;
TextSize = library.options.fontsize;
TextStrokeTransparency = library.options.textstroke;
TextStrokeColor3 = library.options.strokecolor;
library:Create('TextButton', {
Text = (location[flag] and utf8.char(10003) or "");
Font = library.options.font;
TextSize = library.options.fontsize;
Name = 'Checkmark';
Size = UDim2.new(0, 20, 0, 20);
Position = UDim2.new(1, -25, 0, 4);
TextColor3 = library.options.textcolor;
BackgroundColor3 = library.options.bgcolor;
BorderColor3 = library.options.bordercolor;
TextStrokeTransparency = library.options.textstroke;
TextStrokeColor3 = library.options.strokecolor;
})
});
Parent = self.container;
});

local function click(t)
location[flag] = not location[flag];
callback(location[flag])
check:FindFirstChild(name).Checkmark.Text = location[flag] and utf8.char(10003) or "";
end

check:FindFirstChild(name).Checkmark.MouseButton1Click:connect(click)
library.callbacks[flag] = click;

if location[flag] == true then
callback(location[flag])
end

self:Resize();
return {
Set = function(self, b)
location[flag] = b;
callback(location[flag])
check:FindFirstChild(name).Checkmark.Text = location[flag] and utf8.char(10003) or "";
end
}
end

function types:Button(name, callback)
callback = callback or function() end;

local check = library:Create('Frame', {
BackgroundTransparency = 1;
Size = UDim2.new(1, 0, 0, 25);
LayoutOrder = self:GetOrder();
library:Create('TextButton', {
Name = name;
Text = name;
BackgroundColor3 = library.options.btncolor;
BorderColor3 = library.options.bordercolor;
TextStrokeTransparency = library.options.textstroke;
TextStrokeColor3 = library.options.strokecolor;
TextColor3 = library.options.textcolor;
Position = UDim2.new(0, 5, 0, 5);
Size = UDim2.new(1, -10, 0, 20);
Font = library.options.font;
TextSize = library.options.fontsize;
});
Parent = self.container;
});

check:FindFirstChild(name).MouseButton1Click:connect(callback)
self:Resize();

return {
Fire = function()
callback();
end
}
end

function types:Box(name, options, callback) --type, default, data, location, flag)
local type   = options.type or "";
local default = options.default or "";
local data = options.data
local location = options.location or self.flags;
local flag = options.flag or "";
local callback = callback or function() end;
local min  = options.min or 0;
local max  = options.max or 9e9;

if type == 'number' and (not tonumber(default)) then
location[flag] = default;
else
location[flag] = "";
default = "";
end

local check = library:Create('Frame', {
BackgroundTransparency = 1;
Size = UDim2.new(1, 0, 0, 25);
LayoutOrder = self:GetOrder();
library:Create('TextLabel', {
Name = name;
Text = "\r" .. name;
BackgroundTransparency = 1;
TextColor3 = library.options.textcolor;
TextStrokeTransparency = library.options.textstroke;
TextStrokeColor3 = library.options.strokecolor;
Position = UDim2.new(0, 5, 0, 0);
Size = UDim2.new(1, -5, 1, 0);
TextXAlignment = Enum.TextXAlignment.Left;
Font = library.options.font;
TextSize = library.options.fontsize;
library:Create('TextBox', {
TextStrokeTransparency = library.options.textstroke;
TextStrokeColor3 = library.options.strokecolor;
Text = tostring(default);
Font = library.options.font;
TextSize = library.options.fontsize;
Name = 'Box';
Size = UDim2.new(0, 60, 0, 20);
Position = UDim2.new(1, -65, 0, 3);
TextColor3 = library.options.textcolor;
BackgroundColor3 = library.options.boxcolor;
BorderColor3 = library.options.bordercolor;
PlaceholderColor3 = library.options.placeholdercolor;
})
});
Parent = self.container;
});

local box = check:FindFirstChild(name):FindFirstChild('Box');
box.FocusLost:connect(function(e)
local old = location[flag];
if type == "number" then
local num = tonumber(box.Text)
if (not num) then
box.Text = tonumber(location[flag])
else
location[flag] = math.clamp(num, min, max)
box.Text = tonumber(location[flag])
end
else
location[flag] = tostring(box.Text)
end

callback(location[flag], old, e)
end)

if type == 'number' then
box:GetPropertyChangedSignal('Text'):connect(function()
box.Text = string.gsub(box.Text, "[%a+]", "");
end)
end

self:Resize();
return box
end

function types:Bind(name, options, callback)
local location = options.location or self.flags;
local keyboardOnly = options.kbonly or false
local flag = options.flag or "";
local callback = callback or function() end;
local default  = options.default;

if keyboardOnly and (not tostring(default):find('MouseButton')) then
location[flag] = default
end

local banned = {
Return = true;
Space = true;
Tab = true;
Unknown = true;
}

local shortNames = {
RightControl = 'RightCtrl';
LeftControl = 'LeftCtrl';
LeftShift = 'LShift';
RightShift = 'RShift';
MouseButton1 = "Mouse1";
MouseButton2 = "Mouse2";
}

local allowed = {
MouseButton1 = true;
MouseButton2 = true;
}  

local nm = (default and (shortNames[default.Name] or default.Name) or "None");
local check = library:Create('Frame', {
BackgroundTransparency = 1;
Size = UDim2.new(1, 0, 0, 30);
LayoutOrder = self:GetOrder();
library:Create('TextLabel', {
Name = name;
Text = "\r" .. name;
BackgroundTransparency = 1;
TextColor3 = library.options.textcolor;
Position = UDim2.new(0, 5, 0, 0);
Size = UDim2.new(1, -5, 1, 0);
TextXAlignment = Enum.TextXAlignment.Left;
Font = library.options.font;
TextSize = library.options.fontsize;
TextStrokeTransparency = library.options.textstroke;
TextStrokeColor3 = library.options.strokecolor;
BorderColor3 = library.options.bordercolor;
BorderSizePixel  = 1;
library:Create('TextButton', {
Name = 'Keybind';
Text = nm;
TextStrokeTransparency = library.options.textstroke;
TextStrokeColor3 = library.options.strokecolor;
Font = library.options.font;
TextSize = library.options.fontsize;
Size = UDim2.new(0, 60, 0, 20);
Position = UDim2.new(1, -65, 0, 5);
TextColor3 = library.options.textcolor;
BackgroundColor3 = library.options.bgcolor;
BorderColor3 = library.options.bordercolor;
BorderSizePixel  = 1;
})
});
Parent = self.container;
});
 
local button = check:FindFirstChild(name).Keybind;
button.MouseButton1Click:connect(function()
library.binding = true

button.Text = "..."
local a, b = game:GetService('UserInputService').InputBegan:wait();
local name = tostring(a.KeyCode.Name);
local typeName = tostring(a.UserInputType.Name);

if (a.UserInputType ~= Enum.UserInputType.Keyboard and (allowed[a.UserInputType.Name]) and (not keyboardOnly)) or (a.KeyCode and (not banned[a.KeyCode.Name])) then
local name = (a.UserInputType ~= Enum.UserInputType.Keyboard and a.UserInputType.Name or a.KeyCode.Name);
location[flag] = (a);
button.Text = shortNames[name] or name;

else
if (location[flag]) then
if (not pcall(function()
return location[flag].UserInputType
end)) then
local name = tostring(location[flag])
button.Text = shortNames[name] or name
else
local name = (location[flag].UserInputType ~= Enum.UserInputType.Keyboard and location[flag].UserInputType.Name or location[flag].KeyCode.Name);
button.Text = shortNames[name] or name;
end
end
end

wait(0.1)  
library.binding = false;
end)

if location[flag] then
button.Text = shortNames[tostring(location[flag].Name)] or tostring(location[flag].Name)
end

library.binds[flag] = {
location = location;
callback = callback;
};

self:Resize();
end

function types:Section(name)
local order = self:GetOrder();
local determinedSize = UDim2.new(1, 0, 0, 25)
local determinedPos = UDim2.new(0, 0, 0, 4);
local secondarySize = UDim2.new(1, 0, 0, 20);

if order == 0 then
determinedSize = UDim2.new(1, 0, 0, 21)
determinedPos = UDim2.new(0, 0, 0, -1);
secondarySize = nil
end

local check = library:Create('Frame', {
Name = 'Section';
BackgroundTransparency = 1;
Size = determinedSize;
BackgroundColor3 = library.options.sectncolor;
BorderSizePixel = 0;
LayoutOrder = order;
library:Create('TextLabel', {
Name = 'section_lbl';
Text = name;
BackgroundTransparency = 0;
BorderSizePixel = 0;
BackgroundColor3 = library.options.sectncolor;
TextColor3 = library.options.textcolor;
Position = determinedPos;
Size = (secondarySize or UDim2.new(1, 0, 1, 0));
Font = library.options.font;
TextSize = library.options.fontsize;
TextStrokeTransparency = library.options.textstroke;
TextStrokeColor3 = library.options.strokecolor;
});
Parent = self.container;
});

self:Resize();
end

function types:Slider(name, options, callback)
local default = options.default or options.min;
local min = options.min or 0;
local max  = options.max or 1;
local location = options.location or self.flags;
local precise  = options.precise  or false -- e.g 0, 1 vs 0, 0.1, 0.2, ...
local flag = options.flag or "";
local callback = callback or function() end

location[flag] = default;

local check = library:Create('Frame', {
BackgroundTransparency = 1;
Size = UDim2.new(1, 0, 0, 25);
LayoutOrder = self:GetOrder();
library:Create('TextLabel', {
Name = name;
TextStrokeTransparency = library.options.textstroke;
TextStrokeColor3 = library.options.strokecolor;
Text = "\r" .. name;
BackgroundTransparency = 1;
TextColor3 = library.options.textcolor;
Position = UDim2.new(0, 5, 0, 2);
Size = UDim2.new(1, -5, 1, 0);
TextXAlignment = Enum.TextXAlignment.Left;
Font = library.options.font;
TextSize = library.options.fontsize;
library:Create('Frame', {
Name = 'Container';
Size = UDim2.new(0, 60, 0, 20);
Position = UDim2.new(1, -65, 0, 3);
BackgroundTransparency = 1;
--BorderColor3 = library.options.bordercolor;
BorderSizePixel = 0;
library:Create('TextLabel', {
Name = 'ValueLabel';
Text = default;
BackgroundTransparency = 1;
TextColor3 = library.options.textcolor;
Position = UDim2.new(0, -10, 0, 0);
Size = UDim2.new(0, 1, 1, 0);
TextXAlignment = Enum.TextXAlignment.Right;
Font = library.options.font;
TextSize = library.options.fontsize;
TextStrokeTransparency = library.options.textstroke;
TextStrokeColor3 = library.options.strokecolor;
});
library:Create('TextButton', {
Name = 'Button';
Size = UDim2.new(0, 5, 1, -2);
Position = UDim2.new(0, 0, 0, 1);
AutoButtonColor = false;
Text = "";
BackgroundColor3 = Color3.fromRGB(20, 20, 20);
BorderSizePixel = 0;
ZIndex = 2;
TextStrokeTransparency = library.options.textstroke;
TextStrokeColor3 = library.options.strokecolor;
});
library:Create('Frame', {
Name = 'Line';
BackgroundTransparency = 0;
Position = UDim2.new(0, 0, 0.5, 0);
Size = UDim2.new(1, 0, 0, 1);
BackgroundColor3 = Color3.fromRGB(255, 255, 255);
BorderSizePixel = 0;
});
})
});
Parent = self.container;
});

local overlay = check:FindFirstChild(name);

local renderSteppedConnection;
local inputBeganConnection;
local inputEndedConnection;
local mouseLeaveConnection;
local mouseDownConnection;
local mouseUpConnection;

check:FindFirstChild(name).Container.MouseEnter:connect(function()
local function update()
if renderSteppedConnection then renderSteppedConnection:disconnect() end 


renderSteppedConnection = game:GetService('RunService').RenderStepped:connect(function()
local mouse = game:GetService("UserInputService"):GetMouseLocation()
local percent = (mouse.X - overlay.Container.AbsolutePosition.X) / (overlay.Container.AbsoluteSize.X)
percent = math.clamp(percent, 0, 1)
percent = tonumber(string.format("%.2f", percent))

overlay.Container.Button.Position = UDim2.new(math.clamp(percent, 0, 0.99), 0, 0, 1)

local num = min + (max - min) * percent
local value = (precise and num or math.floor(num))

overlay.Container.ValueLabel.Text = value;
callback(tonumber(value))
location[flag] = tonumber(value)
end)
end

local function disconnect()
if renderSteppedConnection then renderSteppedConnection:disconnect() end
if inputBeganConnection then inputBeganConnection:disconnect() end
if inputEndedConnection then inputEndedConnection:disconnect() end
if mouseLeaveConnection then mouseLeaveConnection:disconnect() end
if mouseUpConnection then mouseUpConnection:disconnect() end
end

inputBeganConnection = check:FindFirstChild(name).Container.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
update()
end
end)

inputEndedConnection = check:FindFirstChild(name).Container.InputEnded:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
disconnect()
end
end)

mouseDownConnection = check:FindFirstChild(name).Container.Button.MouseButton1Down:connect(update)
mouseUpConnection   = game:GetService("UserInputService").InputEnded:connect(function(a, b)
if a.UserInputType == Enum.UserInputType.MouseButton1 and (mouseDownConnection.Connected) then
disconnect()
end
end)
end)

if default ~= min then
local percent = 1 - ((max - default) / (max - min))
local number  = default 

number = tonumber(string.format("%.2f", number))
if (not precise) then
number = math.floor(number)
end

overlay.Container.Button.Position  = UDim2.new(math.clamp(percent, 0, 0.99), 0,  0, 1) 
overlay.Container.ValueLabel.Text  = number
end

self:Resize();
return {
Set = function(self, value)
local percent = 1 - ((max - value) / (max - min))
local number  = value 

number = tonumber(string.format("%.2f", number))
if (not precise) then
number = math.floor(number)
end

overlay.Container.Button.Position  = UDim2.new(math.clamp(percent, 0, 0.99), 0,  0, 1) 
overlay.Container.ValueLabel.Text  = number
location[flag] = number
callback(number)
end
}
end 

function types:SearchBox(text, options, callback)
local list = options.list or {};
local flag = options.flag or "";
local location = options.location or self.flags;
local callback = callback or function() end;

local busy = false;
local box = library:Create('Frame', {
BackgroundTransparency = 1;
Size = UDim2.new(1, 0, 0, 25);
LayoutOrder = self:GetOrder();
library:Create('TextBox', {
Text = "";
PlaceholderText = text;
PlaceholderColor3 = Color3.fromRGB(60, 60, 60);
Font = library.options.font;
TextSize = library.options.fontsize;
Name = 'Box';
Size = UDim2.new(1, -10, 0, 20);
Position = UDim2.new(0, 5, 0, 4);
TextColor3 = library.options.textcolor;
BackgroundColor3 = library.options.dropcolor;
BorderColor3 = library.options.bordercolor;
TextStrokeTransparency = library.options.textstroke;
TextStrokeColor3 = library.options.strokecolor;
library:Create('ScrollingFrame', {
Position = UDim2.new(0, 0, 1, 1);
Name = 'Container';
BackgroundColor3 = library.options.btncolor;
ScrollBarThickness = 0;
BorderSizePixel = 0;
BorderColor3 = library.options.bordercolor;
Size = UDim2.new(1, 0, 0, 0);
library:Create('UIListLayout', {
Name = 'ListLayout';
SortOrder = Enum.SortOrder.LayoutOrder;
});
ZIndex = 2;
});
});
Parent = self.container;
})

local function rebuild(text)
box:FindFirstChild('Box').Container.ScrollBarThickness = 0
for i, child in next, box:FindFirstChild('Box').Container:GetChildren() do
if (not child:IsA('UIListLayout')) then
child:Destroy();
end
end

if #text > 0 then
for i, v in next, list do
if string.sub(string.lower(v), 1, string.len(text)) == string.lower(text) then
local button = library:Create('TextButton', {
Text = v;
Font = library.options.font;
TextSize = library.options.fontsize;
TextColor3 = library.options.textcolor;
BorderColor3 = library.options.bordercolor;
TextStrokeTransparency = library.options.textstroke;
TextStrokeColor3 = library.options.strokecolor;
Parent = box:FindFirstChild('Box').Container;
Size = UDim2.new(1, 0, 0, 20);
LayoutOrder = i;
BackgroundColor3 = library.options.btncolor;
ZIndex = 2;
})

button.MouseButton1Click:connect(function()
busy = true;
box:FindFirstChild('Box').Text = button.Text;
wait();
busy = false;

location[flag] = button.Text;
callback(location[flag])

box:FindFirstChild('Box').Container.ScrollBarThickness = 0
for i, child in next, box:FindFirstChild('Box').Container:GetChildren() do
if (not child:IsA('UIListLayout')) then
child:Destroy();
end
end
box:FindFirstChild('Box').Container:TweenSize(UDim2.new(1, 0, 0, 0), 'Out', 'Quad', 0.25, true)
end)
end
end
end

local c = box:FindFirstChild('Box').Container:GetChildren()
local ry = (20 * (#c)) - 20

local y = math.clamp((20 * (#c)) - 20, 0, 100)
if ry > 100 then
box:FindFirstChild('Box').Container.ScrollBarThickness = 5;
end

box:FindFirstChild('Box').Container:TweenSize(UDim2.new(1, 0, 0, y), 'Out', 'Quad', 0.25, true)
box:FindFirstChild('Box').Container.CanvasSize = UDim2.new(1, 0, 0, (20 * (#c)) - 20)
end

box:FindFirstChild('Box'):GetPropertyChangedSignal('Text'):connect(function()
if (not busy) then
rebuild(box:FindFirstChild('Box').Text)
end
end);

local function reload(new_list)
list = new_list;
rebuild("")
end
self:Resize();
return reload, box:FindFirstChild('Box');
end

function types:Dropdown(name, options, callback)
local location = options.location or self.flags;
local flag = options.flag or "";
local callback = callback or function() end;
local list = options.list or {};

location[flag] = list[1]
local check = library:Create('Frame', {
BackgroundTransparency = 1;
Size = UDim2.new(1, 0, 0, 25);
BackgroundColor3 = Color3.fromRGB(25, 25, 25);
BorderSizePixel = 0;
LayoutOrder = self:GetOrder();
library:Create('Frame', {
Name = 'dropdown_lbl';
BackgroundTransparency = 0;
BackgroundColor3 = library.options.dropcolor;
Position = UDim2.new(0, 5, 0, 4);
BorderColor3 = library.options.bordercolor;
Size = UDim2.new(1, -10, 0, 20);
library:Create('TextLabel', {
Name = 'Selection';
Size = UDim2.new(1, 0, 1, 0);
Text = list[1];
TextColor3 = library.options.textcolor;
BackgroundTransparency = 1;
Font = library.options.font;
TextSize = library.options.fontsize;
TextStrokeTransparency = library.options.textstroke;
TextStrokeColor3 = library.options.strokecolor;
});
library:Create("TextButton", {
Name = 'drop';
BackgroundTransparency = 1;
Size = UDim2.new(0, 20, 1, 0);
Position = UDim2.new(1, -25, 0, 0);
Text = 'v';
TextColor3 = library.options.textcolor;
Font = library.options.font;
TextSize = library.options.fontsize;
TextStrokeTransparency = library.options.textstroke;
TextStrokeColor3 = library.options.strokecolor;
})
});
Parent = self.container;
});

local button = check:FindFirstChild('dropdown_lbl').drop;
local input;

button.MouseButton1Click:connect(function()
if (input and input.Connected) then
return
end 

check:FindFirstChild('dropdown_lbl'):WaitForChild('Selection').TextColor3 = Color3.fromRGB(60, 60, 60);
check:FindFirstChild('dropdown_lbl'):WaitForChild('Selection').Text = name;
local c = 0;
for i, v in next, list do
c = c + 20;
end

local size = UDim2.new(1, 0, 0, c)

local clampedSize;
local scrollSize = 0;
if size.Y.Offset > 100 then
clampedSize = UDim2.new(1, 0, 0, 100)
scrollSize = 5;
end

local goSize = (clampedSize ~= nil and clampedSize) or size;
local container = library:Create('ScrollingFrame', {
TopImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png';
BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png';
Name = 'DropContainer';
Parent = check:FindFirstChild('dropdown_lbl');
Size = UDim2.new(1, 0, 0, 0);
BackgroundColor3 = library.options.bgcolor;
BorderColor3 = library.options.bordercolor;
Position = UDim2.new(0, 0, 1, 0);
ScrollBarThickness = scrollSize;
CanvasSize = UDim2.new(0, 0, 0, size.Y.Offset);
ZIndex = 5;
ClipsDescendants = true;
library:Create('UIListLayout', {
Name = 'List';
SortOrder = Enum.SortOrder.LayoutOrder
})
})

for i, v in next, list do
local btn = library:Create('TextButton', {
Size = UDim2.new(1, 0, 0, 20);
BackgroundColor3 = library.options.btncolor;
BorderColor3 = library.options.bordercolor;
Text = v;
Font = library.options.font;
TextSize = library.options.fontsize;
LayoutOrder = i;
Parent = container;
ZIndex = 5;
TextColor3 = library.options.textcolor;
TextStrokeTransparency = library.options.textstroke;
TextStrokeColor3 = library.options.strokecolor;
})

btn.MouseButton1Click:connect(function()
check:FindFirstChild('dropdown_lbl'):WaitForChild('Selection').TextColor3 = library.options.textcolor
check:FindFirstChild('dropdown_lbl'):WaitForChild('Selection').Text = btn.Text;

location[flag] = tostring(btn.Text);
callback(location[flag])

game:GetService('Debris'):AddItem(container, 0)
input:disconnect();
end)
end

container:TweenSize(goSize, 'Out', 'Quad', 0.15, true)

local function isInGui(frame)
local mloc = game:GetService('UserInputService'):GetMouseLocation();
local mouse = Vector2.new(mloc.X, mloc.Y - 36);

local x1, x2 = frame.AbsolutePosition.X, frame.AbsolutePosition.X + frame.AbsoluteSize.X;
local y1, y2 = frame.AbsolutePosition.Y, frame.AbsolutePosition.Y + frame.AbsoluteSize.Y;

return (mouse.X >= x1 and mouse.X <= x2) and (mouse.Y >= y1 and mouse.Y <= y2)
end

input = game:GetService('UserInputService').InputBegan:connect(function(a)
if a.UserInputType == Enum.UserInputType.MouseButton1 and (not isInGui(container)) then
check:FindFirstChild('dropdown_lbl'):WaitForChild('Selection').TextColor3 = library.options.textcolor
check:FindFirstChild('dropdown_lbl'):WaitForChild('Selection').Text   = location[flag];

container:TweenSize(UDim2.new(1, 0, 0, 0), 'In', 'Quad', 0.15, true)
wait(0.15)

game:GetService('Debris'):AddItem(container, 0)
input:disconnect();
end
end)
end)

self:Resize();
local function reload(self, array)
options = array;
location[flag] = array[1];
pcall(function()
input:disconnect()
end)
check:WaitForChild('dropdown_lbl').Selection.Text = location[flag]
check:FindFirstChild('dropdown_lbl'):WaitForChild('Selection').TextColor3 = library.options.textcolor
game:GetService('Debris'):AddItem(container, 0)
end

return {
Refresh = reload;
}
end
end

function library:Create(class, data)
local obj = Instance.new(class);
for i, v in next, data do
if i ~= 'Parent' then

if typeof(v) == "Instance" then
v.Parent = obj;
else
obj[i] = v
end
end
end

obj.Parent = data.Parent;
return obj
end

function library:CreateWindow(name, options)
if (not library.container) then
library.container = self:Create("ScreenGui", {
self:Create('Frame', {
Name = 'Container';
Size = UDim2.new(1, -30, 1, 0);
Position = UDim2.new(0, 20, 0, 20);
BackgroundTransparency = 1;
Active = false;
});
Parent = game:GetService("CoreGui");
}):FindFirstChild('Container');
end

if (not library.options) then
library.options = setmetatable(options or {}, {__index = defaults})
end

local window = types.window(name, library.options);
dragger.new(window.object);
return window
end

default = {
topcolor   = Color3.fromRGB(30, 30, 30);
titlecolor = Color3.fromRGB(255, 255, 255);

underlinecolor = "rainbow";
bgcolor= Color3.fromRGB(35, 35, 35);
boxcolor   = Color3.fromRGB(35, 35, 35);
btncolor   = Color3.fromRGB(25, 25, 25);
dropcolor  = Color3.fromRGB(25, 25, 25);
sectncolor = Color3.fromRGB(25, 25, 25);
bordercolor= Color3.fromRGB(60, 60, 60);

font   = Enum.Font.SourceSans;
titlefont  = Enum.Font.Code;

fontsize   = 17;
titlesize  = 18;

textstroke = 1;
titlestroke= 1;

strokecolor= Color3.fromRGB(0, 0, 0);

textcolor  = Color3.fromRGB(255, 255, 255);
titletextcolor = Color3.fromRGB(255, 255, 255);

placeholdercolor = Color3.fromRGB(255, 255, 255);
titlestrokecolor = Color3.fromRGB(0, 0, 0);
}

library.options = setmetatable({}, {__index = default})

spawn(function()
while true do
for i=0, 1, 1 / 300 do  
for _, obj in next, library.rainbowtable do
obj.BackgroundColor3 = Color3.fromHSV(i, 1, 1);
end
wait()
end;
end
end)

local function isreallypressed(bind, inp)
local key = bind
if typeof(key) == "Instance" then
if key.UserInputType == Enum.UserInputType.Keyboard and inp.KeyCode == key.KeyCode then
return true;
elseif tostring(key.UserInputType):find('MouseButton') and inp.UserInputType == key.UserInputType then
return true
end
end
if tostring(key):find'MouseButton1' then
return key == inp.UserInputType
else
return key == inp.KeyCode
end
end

game:GetService("UserInputService").InputBegan:connect(function(input)
if (not library.binding) then
for idx, binds in next, library.binds do
local real_binding = binds.location[idx];
if real_binding and isreallypressed(real_binding, input) then
binds.callback()
end
end
end
end)
end


local highestWeaponDamage = 0
local highestWeaponName = ""
local highestAxeDamage = 0
local highestAxeName = ""
local highestPickaxeDamage = 0
local highestPickaxeName = ""
function getToolDamage(toolname)
local toolInfo = require(game.ReplicatedStorage.TS.tool["tool-meta"])
local toolsInfo = toolInfo.ToolMeta
for i,v in pairs(toolsInfo) do
if i == toolname then
return v["blockHit"].damage
end
end
end

function getWeaponDamage(toolname)
local toolInfo = require(game.ReplicatedStorage.TS.tool["tool-meta"])
local toolsInfo = toolInfo.ToolMeta
for i,v in pairs(toolsInfo) do
if i == toolname then
return v["combat"].baseDamage
end
end
end

function refreshTools()
local tools = game.Players.LocalPlayer.Backpack:getChildren()
for i=1,#tools do
if string.find(tools[i].Name, "Axe") and tools[i]:findFirstChild("axe") then
if getToolDamage(tools[i].Name) >= highestAxeDamage then
highestAxeDamage = getToolDamage(tools[i].Name)
highestAxeName = tools[i].Name
end
end
if string.find(tools[i].Name, "Pickaxe") and tools[i]:findFirstChild("axe") then
if getToolDamage(tools[i].Name) >= highestPickaxeDamage then
highestPickaxeDamage = getToolDamage(tools[i].Name)
highestPickaxeName = tools[i].Name
end
end
if tools[i]:findFirstChild("sword") then
if getWeaponDamage(tools[i].Name) >= highestWeaponDamage then
highestWeaponDamage = getWeaponDamage(tools[i].Name)
highestWeaponName = tools[i].Name
end
end
end
end



local w = library:CreateWindow("Tools")
local t = w:Toggle("Crop Collect Aura", {flag = "cca"})
local t = w:Toggle("Auto Replace Crops", {flag = "arc"})

spawn(function()
while wait() do
if w.flags.cca then
local crops = workspace.Islands[game.Players.LocalPlayer.UserId .. "-island"].Blocks:getChildren()
for i=1,#crops do
if crops[i]:findFirstChild(crops[i].Name) then
if crops[i][crops[i].Name]:findFirstChild("secondsInStage") then
spawn(function()
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - crops[i][crops[i].Name].Root.Position).magnitude <= 20 then
if crops[i][crops[i].Name].stage.Value == #crops[i][crops[i].Name].Root:getChildren()-2 then
local cframeGoal = crops[i][crops[i].Name].Root.CFrame
game.ReplicatedStorage.Remotes.Functions["HARVEST_CROP_REQUEST"]:InvokeServer({model = crops[i][crops[i].Name], player = game.Players.LocalPlayer})
if w.flags.arc then
wait(0.05)
game.ReplicatedStorage.Remotes.Functions["BLOCK_PLACE_REQUEST"]:InvokeServer({blockType = crops[i].Name, cframe = cframeGoal})
end
end
end
end)
end
end
end
end
end
end)

local t = w:Toggle("Click-Loot Chests", {flag = "clc"})
spawn(function()
local mouse = game.Players.LocalPlayer:GetMouse()

mouse.Button1Down:connect(function()
if w.flags.clc then
if not mouse.Target then return end
local chest = mouse.Target
if chest.Parent == nil then return end
if chest.Parent.Parent == nil then return end
if chest.Parent.Parent:findFirstChild("Contents") then  
local a = chest.Parent.Parent.Contents:getChildren()
for i=1,#a do
game.ReplicatedStorage.Remotes.Functions["CHEST_TRANSACTION"]:InvokeServer({chest = chest.Parent.Parent, tool = a[i], action = "withdraw", amount = a[i].Amount.Value})
end
end
end
end)
end)

local t = w:Toggle("Chest-Loot Aura", {flag = "cla"})
spawn(function()
while wait(0.1) do
if w.flags.cla then
local chests = workspace.Islands[game.Players.LocalPlayer.UserId .. "-island"].Blocks:getChildren()
for i=1,#chests do
if chests[i]:findFirstChild(chests[i].Name) then
if chests[i][chests[i].Name]:findFirstChild("Contents") then
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - chests[i][chests[i].Name].Root.Position).magnitude <= 20 then
local a = chests[i][chests[i].Name].Contents:getChildren()
for i=1,#a do
game.ReplicatedStorage.Remotes.Functions["CHEST_TRANSACTION"]:InvokeServer({chest = a[i].Parent.Parent, tool = a[i], action = "withdraw", amount = a[i].Amount.Value})
end
end
end
end
end
end
end
end)


local t = w:Toggle("Steal Dropped Items", {flag = "sdi"})
spawn(function()
while wait(0.1) do
if w.flags.sdi then
local a = workspace.Islands:getChildren()
for i=1,#a do
if a[i]:findFirstChild("Drops") then
local c = a[i].Drops:getChildren()
for y=1,#c do
if c[y].ClassName == "Tool" and c[y]:findFirstChild("HandleDisabled") then  
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - c[y].HandleDisabled.Position).magnitude <= 30 then
game.ReplicatedStorage.Remotes.Functions["TOOL_PICKUP_REQUEST"]:InvokeServer({tool = c[y]})
end
end
end
end
end
end
end
end)

local t = w:Toggle("Quick-Break Blocks", {flag = "qbb"})
spawn(function()
local UIS = game:GetService("UserInputService")
local mouse = game.Players.LocalPlayer:getMouse()
local mousedown = false
spawn(function()
UIS.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
mousedown = true
end
end)
end)
spawn(function()
UIS.InputEnded:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
mousedown = false
end
end)
end)

while wait() do
if w.flags.qbb then
pcall(function()
if not mouse.Target then return end
if not mouse.Target.Parent then return end
if mouse.Target ~= nil and mouse.Target.Parent.Parent ~= nil then
if mouse.Target.Parent.Parent:findFirstChild("BlockType") and mouse.Target.Parent.Parent.Name ~= "Game"  and mousedown == true then
for i=1,10 do
if mouse.Target.Parent ~= nil then
if mouse.Target.Parent.Parent ~= nil then
game.ReplicatedStorage.Remotes.Functions["BLOCK_BREAK_REQUEST"]:InvokeServer({block = mouse.Target.Parent.Parent})
end
end
end
end 
if mouse.Target.Parent:findFirstChild("BlockType") and mouse.Target.Parent.Name ~= "Game" and mousedown == true then
for i=1,10 do
if mouse.Target.Parent ~= nil then
game.ReplicatedStorage.Remotes.Functions["BLOCK_BREAK_REQUEST"]:InvokeServer({block = mouse.Target.Parent})
end
end
end 
end
end)
end
end
end)


w:Button("Reset/Unlock Camera", function()
workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
workspace.CurrentCamera.CameraType = "Custom"
game.Players.LocalPlayer.CameraMinZoomDistance = 0.5
game.Players.LocalPlayer.CameraMaxZoomDistance = 400
game.Players.LocalPlayer.CameraMode = "Classic"
end)


local w2 = library:CreateWindow("Teleports")
w2:Button("Slime portal TP", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(700, 200, -220))
end)
w2:Button("Buffalkor portal TP", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1421, 389, 32))
end)
w2:Button("Hidden slime farm TP", function()
if not workspace:findFirstChild("nicePlatform") then
local a = Instance.new("Part", workspace)
a.Name = "nicePlatform"
a.Anchored = true
a.Size = Vector3.new(10,1,10)
a.Position = Vector3.new(750, 135, -100)
end
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(750, 140, -100))
end)
w2:Button("Hidden buffalkor farm TP", function()
if not workspace:findFirstChild("nicePlatform2") then
local a = Instance.new("Part", workspace)
a.Name = "nicePlatform2"
a.Anchored = true
a.Size = Vector3.new(10,1,10)
a.Position = Vector3.new(1500, 350, 120)
end
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1500, 355, 120))
end)



local w3 = library:CreateWindow("Autofarms")
w3:Section("Mobs")
w3:Dropdown("mobs", {flag = "selectedmobtoautofarm", list = {"slime", "buffalkor"}})

local t = w3:Toggle("Bring mobs", {flag = "bringmobsfarm"})
spawn(function()
while wait() do
if w3.flags.bringmobsfarm == true then
spawn(function()
local a = workspace.Entities:getChildren()
for i=1,#a do
if string.find(a[i].Name, w3.flags.selectedmobtoautofarm) then
a[i]:MoveTo(game.Players.LocalPlayer.Character.Head.Position + Vector3.new(10,0,math.random(-5,5))) 
refreshTools()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:findFirstChild(highestWeaponName))
game.ReplicatedStorage.Remotes.Functions["SWING_SWORD"]:InvokeServer({hitUnit = a[i]})
end
end
end)
end
end
end)


local t = w3:Toggle("TP to mobs", {flag = "gotomobsfarm"})
spawn(function()
while wait() do
local a = workspace.Entities:getChildren()
for i=1,#a do
wait()
if string.find(a[i].Name, w3.flags.selectedmobtoautofarm) then
if w3.flags.gotomobsfarm == true then
if a[i]:findFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(a[i].HumanoidRootPart.Position + Vector3.new(2, -10, 0))
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
workspace.CurrentCamera.CameraSubject = a[i].Humanoid
wait(0.15)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(a[i].HumanoidRootPart.Position + Vector3.new(0, -10, 0))
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
wait(0.15)
end 
else
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end
end
end
end
end)



local t = w3:Toggle("Mob Kill Aura", {flag = "eka"})
spawn(function()
while wait(0.01) do
if w3.flags.eka then
local entity = workspace.Entities:getChildren()
for i=1,#entity do
if entity[i]:findFirstChild("HumanoidRootPart") then
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - entity[i].HumanoidRootPart.Position).magnitude <= 15 then
refreshTools()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:findFirstChild(highestWeaponName))
game.ReplicatedStorage.Remotes.Functions["SWING_SWORD"]:InvokeServer({hitUnit = entity[i]})
end
end
end
end
end
end)


w3:Section("Ores")
local t = w3:Toggle("Tier 2 Farm (ores)", {flag = "t2f"})
spawn(function()
while wait() do
if w3.flags.t2f then
game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
end
local rocks = workspace.WildernessBlocks:getChildren()
for i=1,#rocks do
if w3.flags.t2f then
game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
if rocks[i]:findFirstChild(rocks[i].Name) then
if rocks[i]:findFirstChild(rocks[i].Name):findFirstChild("PrefabType") then
if rocks[i]:findFirstChild(rocks[i].Name):findFirstChild("PrefabType").Value == "rockTier2" then
local hum = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
repeat
wait()
game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
hum.CFrame = rocks[i]:findFirstChild(rocks[i].Name).Root.CFrame + Vector3.new(0,-6,0)
refreshTools()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:findFirstChild(highestPickaxeName))
game.ReplicatedStorage.Remotes.Functions["BLOCK_BREAK_REQUEST"]:InvokeServer({block = rocks[i]:findFirstChild(rocks[i].Name)})
until rocks[i].Parent == nil
end
end
end
end
end
end
end)


w3:Section("Island")
local t = w3:Toggle("Tree Autofarm", {flag = "treeautofarm"})
spawn(function()
while wait(0.1) do
if w3.flags.treeautofarm then
local blocks = workspace.Islands[game.Players.LocalPlayer.UserId .. "-island"].Blocks:getChildren()
for i=1,#blocks do
if w3.flags.treeautofarm then
if string.find(blocks[i].Name, "tree") then
local root = blocks[i]:findFirstChild(blocks[i].Name).Root
local plantCFrame = blocks[i]:findFirstChild(blocks[i].Name).Root.CFrame
repeat
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = root.CFrame + Vector3.new(4,0,0)
refreshTools()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:findFirstChild(highestAxeName))
game.ReplicatedStorage.Remotes.Functions["BLOCK_BREAK_REQUEST"]:InvokeServer({block = blocks[i]:findFirstChild(blocks[i].Name)})
until blocks[i].Parent == nil
if string.find(blocks[i].Name, "Pine") then
print("plant pine for " .. blocks[i].Name)
game.ReplicatedStorage.Remotes.Functions["BLOCK_PLACE_REQUEST"]:InvokeServer({blockType = "saplingPine", cframe = plantCFrame})
elseif string.find(blocks[i].Name, "Birch") then
print("plant birch for " .. blocks[i].Name)
game.ReplicatedStorage.Remotes.Functions["BLOCK_PLACE_REQUEST"]:InvokeServer({blockType = "saplingBirch", cframe = plantCFrame})
elseif string.find(blocks[i].Name, "Maple") then
print("plant maple for " .. blocks[i].Name)
game.ReplicatedStorage.Remotes.Functions["BLOCK_PLACE_REQUEST"]:InvokeServer({blockType = "saplingMaple", cframe = plantCFrame})
else
print("plant normal for " .. blocks[i].Name)
game.ReplicatedStorage.Remotes.Functions["BLOCK_PLACE_REQUEST"]:InvokeServer({blockType = "sapling", cframe = plantCFrame})
end
wait(0.05)
end
end
end
end
end	
end)


w3:Dropdown("ores", {flag = "selectedingottype", list = {"iron", "gold"}})
local t = w3:Toggle("Autosmelt", {flag = "ingotsautofarm"})
spawn(function()
while wait(0.1) do
if w3.flags.ingotsautofarm then
if w3.flags.selectedingottype == "iron" then
function getAmountOfIron()
local bruh = 0
local a = game.Players.LocalPlayer.Backpack:getChildren()
for i=1,#a do
if a[i].Name == "ironOre" then
bruh = bruh+1 
end
end
return bruh
end

local blocks = workspace.Islands[game.Players.LocalPlayer.UserId .. "-island"].Blocks:getChildren()
for i=1,#blocks do
if blocks[i].Name == "smallFurnace" then
if blocks[i]:findFirstChild(blocks[i].Name) then
local oresCooking = blocks[i][blocks[i].Name].WorkerContents:getChildren()
if #oresCooking ~= 3 and getAmountOfIron() ~= 0 then
if blocks[i][blocks[i].Name].Root.Effects.Fire.Fire.Enabled == false then
game.Players.LocalPlayer.Character:MoveTo(blocks[i].Position)
game.ReplicatedStorage.Remotes.Functions["BLOCK_WORKER_DEPOSIT_TOOL_REQUEST"]:InvokeServer({block = blocks[i][blocks[i].Name], amount = 1, toolName = "coal"})
end
repeat
oresCooking = blocks[i][blocks[i].Name].WorkerContents:getChildren()
game.Players.LocalPlayer.Character:MoveTo(blocks[i].Position)
game.ReplicatedStorage.Remotes.Functions["BLOCK_WORKER_DEPOSIT_TOOL_REQUEST"]:InvokeServer({block = blocks[i][blocks[i].Name], amount = 1, toolName = "ironOre"})
until #oresCooking == 3 or getAmountOfIron() == 0
end
for i=1,#oresCooking do
if oresCooking[i].Name == "iron" then
game.Players.LocalPlayer.Character:MoveTo(oresCooking[i].Parent.Parent.Parent.Position)
game.ReplicatedStorage.Remotes.Functions["TOOL_PICKUP_REQUEST"]:InvokeServer({tool = oresCooking[i]})
end
end
end
end
end
end

if w3.flags.selectedingottype == "gold" then
function getAmountOfGold()
local bruh = 0
local a = game.Players.LocalPlayer.Backpack:getChildren()
for i=1,#a do
if a[i].Name == "goldOre" then
bruh = bruh+1 
end
end
return bruh
end

local blocks = workspace.Islands[game.Players.LocalPlayer.UserId .. "-island"].Blocks:getChildren()
for i=1,#blocks do
if blocks[i].Name == "smallFurnace" then
if blocks[i]:findFirstChild(blocks[i].Name) then
local oresCooking = blocks[i][blocks[i].Name].WorkerContents:getChildren()
if #oresCooking ~= 3 and getAmountOfGold() ~= 0 then
if blocks[i][blocks[i].Name].Root.Effects.Fire.Fire.Enabled == false then
game.Players.LocalPlayer.Character:MoveTo(blocks[i].Position)
game.ReplicatedStorage.Remotes.Functions["BLOCK_WORKER_DEPOSIT_TOOL_REQUEST"]:InvokeServer({block = blocks[i][blocks[i].Name], amount = 1, toolName = "coal"})
end
repeat
oresCooking = blocks[i][blocks[i].Name].WorkerContents:getChildren()
game.Players.LocalPlayer.Character:MoveTo(blocks[i].Position)
game.ReplicatedStorage.Remotes.Functions["BLOCK_WORKER_DEPOSIT_TOOL_REQUEST"]:InvokeServer({block = blocks[i][blocks[i].Name], amount = 1, toolName = "goldOre"})
until #oresCooking == 3 or getAmountOfGold() == 0
end
for i=1,#oresCooking do
if oresCooking[i].Name == "gold" then
game.Players.LocalPlayer.Character:MoveTo(oresCooking[i].Parent.Parent.Parent.Position)
game.ReplicatedStorage.Remotes.Functions["TOOL_PICKUP_REQUEST"]:InvokeServer({tool = oresCooking[i]})
end
end
end
end
end
end
end
end
end)


w3:Section("Players")
w3:Button("Invite All", function()
local players = game.Players:getChildren()
for i=1,#players do
if players[i] ~= game.Players.LocalPlayer then
game.ReplicatedStorage.Remotes.Functions["CHANGE_ISLAND_ACCESS_LEVEL"]:InvokeServer({accessLevel = 1, player = players[i]}) 
end
end
end)

w3:Button("Kick All", function()
local players = game.Players:getChildren()
for i=1,#players do
if players[i] ~= game.Players.LocalPlayer then
game.ReplicatedStorage.Remotes.Functions["CHANGE_ISLAND_ACCESS_LEVEL"]:InvokeServer({accessLevel = 0, player = players[i]}) 
end
end
end)


local w4 = library:CreateWindow("Info")
w4:Section("Sky Block Gui v" .. version)
w4:Section("Created by Levi#7059")
w4:Section("LeviTheOtaku @ v3rm")
w4:Section("Toggle GUI with Right CTRL")
