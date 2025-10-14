local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

        WindUI:Popup({
            Title = "👑尊贵的"..game.Players.LocalPlayer.DisplayName.."用户",
            Icon = "info",
            Content = "欢迎使用HB FXM脚本",
            Buttons = {
                {
                    Title = "取消",
                    Callback = function() end,
                    Variant = "Tertiary",
                },
                {
                    Title = "执行",
                    Icon = "arrow-right",
                    Callback = function() 
                        DDZX = true 
                    end,
                    Variant = "Primary",
                }   
            }
        })

        repeat
            wait()
        until DDZX
       

local Window = WindUI:CreateWindow({
        Title = " 越 HB<font color='#00FF00'>请选择脚本</font>",
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
    Title = "请选择脚本",
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


local Tabs = {
    Main = Window:Section({ Title = "请选择脚本", Opened = true }),
}

local TabHandles = {
    Q = Tabs.Main:Tab({ Title = "", Icon = "layout-grid" }),
}

Button = TabHandles.Q:Button({
    Title = "火箭发射模拟器",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/anlushanjinchangantangwanle/refs/heads/main/jmjmjmjmjmjm114514.txt"))()
            
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 1, -- 3 seconds
    Icon = "layout-grid",
})                        
            
 end
})

Button = TabHandles.Q:Button({
    Title = "越HB火箭发射模拟器",
    Desc = "",
    Locked = false,
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/HB-ksdb/-4/main/%E8%B6%8A%20HB%20%E7%81%AB%E7%AE%AD%E5%8F%91%E5%B0%84%E6%A8%A1%E6%8B%9F%E5%99%A8.lua",true))()
            
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 1, -- 3 seconds
    Icon = "layout-grid",
})                        
            
 end
})