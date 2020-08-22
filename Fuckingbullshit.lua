-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local FirstFrame = Instance.new("Frame")
local Rainbowshit = Instance.new("Frame")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Main.Position = UDim2.new(0.293333322, 0, 0.251489848, 0)
Main.Size = UDim2.new(0, 410, 0, 22)

FirstFrame.Name = "FirstFrame"
FirstFrame.Parent = Main
FirstFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
FirstFrame.Position = UDim2.new(0, 0, 1.02664685, 0)
FirstFrame.Size = UDim2.new(0, 410, 0, 341)

Rainbowshit.Name = "Rainbowshit"
Rainbowshit.Parent = Main
Rainbowshit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Rainbowshit.Position = UDim2.new(0, 0, 0.965517521, 0)
Rainbowshit.Size = UDim2.new(0, 410, 0, 2)

-- Scripts:

local function KBRD_fake_script() -- Rainbowshit.LocalScript 
	local script = Instance.new('LocalScript', Rainbowshit)

	function zigzag(X)
		return math.acos(math.cos(X * math.pi)) / math.pi
	end
	
	counter = 0
	
	while wait(0.1) do
		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter), 1, 1)
	 
		counter = counter + 0.01
	end
end
coroutine.wrap(KBRD_fake_script)()
