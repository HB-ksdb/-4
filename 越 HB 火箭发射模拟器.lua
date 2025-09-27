local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
        Title = "越 HB<font color='#00FF00'>1.5</font>",
        Icon = "rbxassetid://4483362748",
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
        Background = "rbxassetid://96291371536118"
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
    Title = "v1.5越 HB",
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

