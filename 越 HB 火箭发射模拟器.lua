local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
        Title = "越 HB 脚本<font color='#00FF00'>1.0</font>  ",
        Icon = "rbxassetid://4483362748",
        IconTransparency = 0.5,
        IconThemed = true,
        Author = "作者:HB",
        Folder = "CloudHub",            
    Size = UDim2.fromOffset(100, 100),
        User = {
            Enabled = true,
            Callback = function() print("clicked") end,
            Anonymous = false
        },
    
    -- !  ↓  remove this all, 
    -- !  ↓  if you DON'T need the key system
    KeySystem = { 
        -- ↓ Optional. You can remove it.
        Key = { "1234" },
        
        Note = "请输入你的卡密.卡密1234,
        
        -- ↓ Optional. You can remove it.
        
        
        -- ↓ Optional. You can remove it.
        
        
        -- ↓ Optional. You can remove it.
        SaveKey = false, -- automatically save and load the key.
        
        -- ↓ Optional. You can remove it.
        -- API = {} ← Services. Read about it below ↓
    },
})

Window:EditOpenButton({
    Title = "越 HB脚本",
    Icon = "monitor",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 4,
    Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromHex("FF0000")),
        ColorSequenceKeypoint.new(0.16, Color3.fromHex("FF7F00")),
        ColorSequenceKeypoint.new(0.33, Color3.fromHex("FFFF00")),
        ColorSequenceKeypoint.new(0.5, Color3.fromHex("00FF00")),
        ColorSequenceKeypoint.new(0.66, Color3.fromHex("0000FF")),
        ColorSequenceKeypoint.new(0.83, Color3.fromHex("4B0082")),
        ColorSequenceKeypoint.new(1, Color3.fromHex("9400D3"))
    }),
    Draggable = true,
})
            
Window:Tag({
    Title = "v1.4越 HB",
    Color = Color3.fromHex("#30ff6a")
})

Window:Tag({
        Title = "越 HB版", -- 标签汉化
        Color = Color3.fromHex("#315dff")
    })
    local TimeTag = Window:Tag({
        Title = "火箭发射模拟器",
        Color = Color3.fromHex("#000000")
    })
    
    local Tabs = {
    Main = Window:Section({ Title = "越 HB通用", Opened = true }),
    Settings = Window:Section({ Title = "功能", Opened = true }),
    Utilities = Window:Section({ Title = "越 HB设置", Opened = true })
}

local Tab = Tabs.Main:Tab({
    Title = "通用",
    Icon = "layout-grid", -- optional
    Locked = false,
})

local Slider = Tab:Slider({
    Title = "跳跃",
    Value = {
        Min = 50,
        Max = 200,
        Default = 50,
    },
    Increment = 1,
    Callback = function(value)
        if game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = value
        end
    end
})
-----------------------------------------------------------------------------------------------速度
local Slider = Tab:Slider({
    Title = "速度",
    Value = {
        Min = 16,
        Max = 400,
        Default = 16,
    },
    Increment = 1,
    Callback = function(value)
        if game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = value
        end
    end
})
-----------------------------------------------------------------------------------------------重量        
local Slider = Tab:Slider({
    Title = "重量",
    Value = {
        Min = 0.1,
        Max = 500.0,
        Default = 196.2,
    },
    Step = 0.1,
    Callback = function(value)
        game.Workspace.Gravity = value
    end
})

local Tab = Tabs.Settings:Tab({
    Title = "购买",
    Icon = "layout-grid", -- optional
    Locked = false,
})

local Button = Tab:Button({
    Title = "自动购买火箭",
    Desc = "",
    Locked = false,
    Callback = function(Value)
    buyRocket = state
    if buyRocket then
        while buyRocket do
            for i = 1, 10, 1 do
                game:GetService("ReplicatedStorage").BuyRocket:InvokeServer("Rocket", i)
                wait(1)
            end
        end
    end
	end
})

local Button = Tab:Button({
    Title = "自动购买收集器",
    Desc = "",
    Locked = false,
    Callback = function(Value)
    buyFuel = state
    if buyFuel then
        while buyFuel do
            for i = 1, 12, 1 do
                game:GetService("ReplicatedStorage").BuyFuelScoop:InvokeServer("FuelScoop", i)
                wait(1)
            end
        end
    end
	end
})

local Button = Tab:Button({
    Title = "自动购买背包",
    Desc = "",
    Locked = false,
    Callback = function(Value)
    buyBackpack = state
    if buyBackpack then
        while buyBackpack do
            for i = 1, 13, 1 do
                game:GetService("ReplicatedStorage").BuyItem:InvokeServer("Backpack", i)
                wait(1)
            end
        end
    end
	end
})
Tab:Select() -- Select Tab

local Tab = Window:Tab({
    Title = "功能",
    Icon = "layout-grid", -- optional
    Locked = false,
})


local Toggle = Tab:Toggle({
    Title = "自动收集燃料",
    Value = false,    
    Callback = function(state) 
    isFuelScoopEnabled = ARL while true do wait() if isFuelScoopEnabled then for i, h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "FuelScoop" then h:Activate() end end end end
	end
})

local Button = Tab:Button({
    Title = "登上火箭",
    Desc = "",
    Locked = false,
    Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("BoardRocket"):FireServer()
	end
})

local Button = Tab:Button({
    Title = "将玩家移除位置",
    Desc = "",
    Locked = false,
    Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemovePlayer"):FireServer()
	end
})

local Button = Tab:Button({
    Title = "发射台岛",
    Desc = ",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-123.15931701660156, 2.7371432781219482, 3.491959810256958)
	end
})

local Button = Tab:Button({
    Title = "白云岛",
    Desc = "",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-76.13252258300781, 170.55825805664062, -60.4516716003418)
	end
})

local Button = Tab:Button({
    Title = "浮漂岛",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-66.51714324951172, 720.4866333007812, -5.391753196716309)
	end
})

local Button = Tab:Button({
    Title = "卫星岛",
    Desc = "",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-34.2462043762207, 1429.4990234375, 1.3739361763000488)
	end
})

local Button = Tab:Button({
    Title = "蜜蜂迷宫岛",
    Desc = "",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6.5361199378967285, 3131.249267578125, -29.759048461914062)
	end
})

local Button = Tab:Button({
    Title = "月球拯救岛",
    Desc = "",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7.212917804718018, 5016.341796875, -19.815933227539062)
	end
})

local Button = Tab:Button({
    Title = "暗物质岛",
    Desc = "",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.43186950683594, 6851.94091796875, 7.890637397766113)
	end
})

local Button = Tab:Button({
    Title = "太空岩石岛",
    Desc = "",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49.92888641357422, 8942.955078125, 8.674375534057617)
	end
})

local Button = Tab:Button({
    Title = "零号火星岛",
    Desc = "",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(54.44503402709961, 11270.0927734375, -1.273137092590332)
	end
})

local Button = Tab:Button({
    Title = "太空水晶岛",
    Desc = "",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11.579089164733887, 15295.6318359375, -27.54974365234375)
	end
})

local Button = Tab:Button({
    Title = "月球浆果岛",
    Desc = "",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14.601255416870117, 18410.9609375, 0.9418511986732483)
	end
})

local Button = Tab:Button({
    Title = "铺路实岛",
    Desc = "",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3.272758960723877, 22539.494140625, 63.283935546875)
	end
})

local Button = Tab:Button({
    Title = "流星岛",
    Desc = "",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-45.515689849853516, 27961.560546875, -7.358333110809326)
	end
})

local Button = Tab:Button({
    Title = "升级岛",
    Desc = "",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2.7595248222351074, 33959.98828125, 53.93095397949219)
	end
})
Tab:Select() -- Select Tab