local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
        Title = "越 HB<font color='#00FF00'>1.5</font>",
        Icon = "rbxassetid://81944629903864",
        IconTransparency = 0.5,
        IconThemed = true,
        Author = "作者:HB",
        Folder = "CloudHub",
        Size = UDim2.fromOffset(400, 300),
        Transparent = true,
        Theme = "Light",
        User = {
            Enabled = true,
            Callback = function() print("clicked") end,
            Anonymous = false
        },
        SideBarWidth = 200,
        ScrollBarEnabled = true,
        Background = "rbxassetid://4155801252"
    })
    

Window:EditOpenButton({
    Title = "越 HB脚本极速传奇",
    Icon = "monitor",
    CornerRadius = UDim.new(0, 16),
    StrokeThickness = 2,
    Color = openButtonColor,
    Draggable = true,
})

Window:Tag({
    Title = "v1.5越 HB",
    Color = Color3.fromHex("#30ff6a")
})

Window:Tag({
        Title = "越 HB版", -- 标签汉化
        Color = Color3.fromHex("#315dff")
    })
    local TimeTag = Window:Tag({
        Title = "极速传奇",
        Color = Color3.fromHex("#000000")
    })

local Tabs = {
    Main = Window:Section({ Title = "通用", Opened = true }),
    gn = Window:Section({ Title = "功能", Opened = true }),    
}

local TabHandles = {
    Q = Tabs.Main:Tab({ Title = "自动功能", Icon = "layout-grid" }),
    W = Tabs.Main:Tab({ Title = "购买功能", Icon = "layout-grid" }),
    E = Tabs.Main:Tab({ Title = "传送功能", Icon = "layout-grid" }),
    R = Tabs.Main:Tab({ Title = "", Icon = "layout-grid" }),
    T = Tabs.Main:Tab({ Title = "", Icon = "layout-grid" }),
    Y = Tabs.Main:Tab({ Title = "", Icon = "layout-grid" }),
    U = Tabs.Main:Tab({ Title = "", Icon = "layout-grid" }),    
}

Button = TabHandles.Q:Button({
    Title = "获取所有宝箱",
    Desc = "",
    Locked = false,
    Callback = function()
            local positions = {
                CFrame.new(2495.49, 20.49, -2118.23),
                CFrame.new(2232.05, 315.47, 1018.47),
                CFrame.new(-1577.40, 102.88, 5676.84),
                CFrame.new(2085.65, 168.23, 12881.00),
                CFrame.new(-535.64, 3.70, 425.56),
            }
            
            for _, pos in ipairs(positions) do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
                wait(0.1)
            end
        end
})

local Button = TabHandles.Q:Button({
    Title = "全部开自动刷经验，刷很快！！！",
    Desc = "个性化您的体验",
    Image = "palette",
    ImageSize = 20,
    Color = "White"
})


Toggle = TabHandles.Q:Toggle({
    Title = "自动刷经验",
    Desc = "",
    Locked = false,
    Callback = function(Value)
		autoXP = Value
		while autoXP do
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
			wait()
		end	
    end
})

Toggle = TabHandles.Q:Toggle({
    Title = "自动刷经验",
    Desc = "",
    Locked = false,
    Callback = function(Value)
		autoXP = Value
		while autoXP do
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
			wait()
		end	
    end
})

Toggle = TabHandles.Q:Toggle({
    Title = "自动刷经验",
    Desc = "",
    Locked = false,
    Callback = function(Value)
		autoXP = Value
		while autoXP do
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
			wait()
		end	
    end
})

Toggle = TabHandles.Q:Toggle({
    Title = "自动刷经验",
    Desc = "",
    Locked = false,
    Callback = function(Value)
		autoXP = Value
		while autoXP do
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
			wait()
		end	
    end
})

Toggle = TabHandles.Q:Toggle({
    Title = "自动刷经验",
    Desc = "",
    Locked = false,
    Callback = function(Value)
		autoXP = Value
		while autoXP do
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
			wait()
		end	
    end
})

Toggle = TabHandles.Q:Toggle({
    Title = "自动刷经验",
    Desc = "",
    Locked = false,
    Callback = function(Value)
		autoXP = Value
		while autoXP do
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
			wait()
		end	
    end
})

Toggle = TabHandles.Q:Toggle({
    Title = "自动刷水晶",
    Desc = "",
    Locked = false,
    Callback = function(Value)
		autoCrystal = Value
		while autoCrystal do
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
			wait()
		end
    end
})

Toggle = TabHandles.Q:Toggle({
    Title = "自动重生",
    Desc = "",
    Locked = false,
    Callback = function(Value)
		autoRebirth = Value
		while autoRebirth do
			game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
			wait(10)
		end
    end
})

Toggle = TabHandles.Q:Toggle({
    Title = "吸全部环",
    Desc = "",
    Locked = false,
    Callback = function(hoops)
    Interstellar.hoop = hoops
    if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
        while Interstellar.hoop do
            for i, hoops in ipairs(workspace.Hoops:GetChildren()) do
                if hoops.Name == "Hoop" then
                hoops.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                wait()
                end
            end
        end
    end
 end
})

Toggle = TabHandles.Q:Toggle({
    Title = "获得所有通行证",
    Desc = "",
    Locked = false,
    Callback = function()
    for i, v in ipairs(game:GetService("ReplicatedStorage").gamepassIds:GetChildren()) do
        v.Parent = game.Players.LocalPlayer.ownedGamepasses
    end 
 end
})

Toggle = TabHandles.W:Toggle({
    Title = "红球 x50",
    Desc = "",
    Locked = false,
    Callback = function(orb)
    Interstellar.getorb = orb
    spawn(function()
        while Interstellar.getorb do wait()
            pcall(function()
                game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Red Orb", Interstellar.area)
            end)
        end
    end)
 end
})

Toggle = TabHandles.W:Toggle({
    Title = "蓝球 x50",
    Desc = "",
    Locked = false,
    Callback = function(orb)
    Interstellar.getorb = orb
    spawn(function()
        while Interstellar.getorb do wait()
            pcall(function()
                game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", Interstellar.area)
            end)
        end
    end)
 end
})

Toggle = TabHandles.W:Toggle({
    Title = "橙球 x50",
    Desc = "",
    Locked = false,
    Callback = function(orb)
    Interstellar.getorb = orb
    spawn(function()
        while Interstellar.getorb do wait()
            pcall(function()
                game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", Interstellar.area)
            end)
        end
    end)
 end
})

Toggle = TabHandles.W:Toggle({
    Title = "黄球 x50",
    Desc = "",
    Locked = false,
    Callback = function(orb)
    Interstellar.getorb = orb
    spawn(function()
        while Interstellar.getorb do wait()
            pcall(function()
                game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", Interstellar.area)
            end)
        end
    end)
 end
})

Toggle = TabHandles.W:Toggle({
    Title = "宝石球 x50",
    Desc = "",
    Locked = false,
    Callback = function(orb)
    Interstellar.getorb = orb
    spawn(function()
        while Interstellar.getorb do
            pcall(function()
                game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", Interstellar.area)
            end)
        end
    end)
 end
})

Button = TabHandles.:Button({
    Title = "城市",
    Desc = "",
    Locked = false,
    Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-559.2, -7.45058e-08, 417.4)
            
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})                        
            
 end
})

Button = TabHandles.:Button({
    Title = "雪城",
    Desc = "",
    Locked = false,
    Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-858.358, 0.5, 2170.35)
            
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})                        
            
 end
})

Button = TabHandles.:Button({
    Title = "岩浆城",
    Desc = "",
    Locked = false,
    Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1707.25, 0.550008, 4331.05)
            
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})                        
            
 end
})

Button = TabHandles.:Button({
    Title = "传奇公路",
    Desc = "",
    Locked = false,
    Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3594.68, 214.804, 7274.56)
            
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})                        
            
 end
})

Button = TabHandles.:Button({
    Title = "沙漠赛跑(城市)",
    Desc = "",
    Locked = false,
    Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(58.8, 1.007, -8684.72)
            
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})                        
            
 end
})

Button = TabHandles.:Button({
    Title = "岩浆种族(城市)",
    Desc = "",
    Locked = false,
    Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1013.4, 1.007, -10997)
            
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})                        
            
 end
})

Button = TabHandles.:Button({
    Title = "草原赛跑(城市)",
    Desc = "",
    Locked = false,
    Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1687.65, 1.007, -5943.91)
            
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})                        
            
 end
})

Button = TabHandles.:Button({
    Title = "欧米茄水晶(传奇公路)",
    Desc = "",
    Locked = false,
    Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4530.78, 75.31, 6405.20)
            
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})                        
            
 end
})