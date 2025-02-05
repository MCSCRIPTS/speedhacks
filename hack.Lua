local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Player", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

Tab:AddSlider({
	Name = "Walkspeed",
	Min = 0,
	Max = 500,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		print(Value)
      game.Players.LocalPlayer.Character:SetAttribute("SpeedMultiplier", Value)
    end,
})

Tab:AddSlider({
	Name = "DashLenght",
	Min = 0,
	Max = 500,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "bananas",
	Callback = function(Value)
		print(Value)
      game.Players.LocalPlayer.Character:SetAttribute("DashLength", Value)
   end,
})

Tab:AddSlider({
	Name = "JumpPower",
	Min = 0,
	Max = 500,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "bananas",
	Callback = function(Value)
		print(Value)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end,  
})

Tab:AddBind({
	Name = "Bind",
	Default = Enum.KeyCode.I,
	Hold = false,
	Callback = function()
		print("press")
	end    
})

Dropdown:Set("dropdown option")

Tab:AddDropdown({
	Name = "Dropdown",
	Default = "1",
	Options = {"1", "2"},
	Callback = function(Value)
		print(Value)
	end    
})

Tab:AddButton({
	Name = "Button!",
	Callback = function(OrionLib:Destroy())
      		print("button pressed")
  	end    
})

OrionLib:Init()