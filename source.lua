

--tabs
local plrTab = Window:MakeTab({
	Name = "player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local crdTab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--sections
local plrSection = plrTab:AddSection({
	Name = "Player"
})

local crdSection = crdTab:AddSection({
	Name = "Credits"
})

--player things

plrSection:AddSlider({
    Name = "Walkspeed",
    Min = 16,
    Max = 500,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Walkspeed",
    Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value // now working

    end    
})

plrSection:AddSlider({
    Name = "JumpPower",
    Min = 16,
    Max = 500,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "JumpBoost",
    Callback = function(Value)
             game.Players.LocalPlayer.Character.Humanoid.JumpBoost = Value // now working

    end    
})


PlrSection:AddButton({
	Name = "kick all players",
	Callback = function()
      		player:kick("you bee kicked nigga hahahaha ban and report: "..player.name)
  	end    
})

PlrSection:AddButton({
	Name = "kick certian player gui",
	Callback = function()
      		player:kick("1"..player.name)
  	end    
})

-- credits things
crdSection:AddLabel("script dev: xsp#9138 - couldnt do it wit out him")
crdSection:AddLabel("owner: inotdoggystyke")
crdSection:AddLabel("credits to: bananahub, deepthrought")
