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
            Title = " HB FXM脚本",
            Icon = "sword",
            CornerRadius = UDim.new(0, 16),
            StrokeThickness = 2,
            Color = ColorSequence.new(Color3.fromHex("FF0F7B"), Color3.fromHex("F89B29")),
            Draggable = true
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
    Title = "林森99夜",
    Desc = "无卡中文",
    Locked = false,
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/HB-ksdb/-4/main/%E8%B6%8AHB%20FXM%2099%E5%A4%9C.lua"))()
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 1, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})

Button = TabHandles.Q:Button({
    Title = "林森99夜",
    Desc = "无卡中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NEHUB2/NE/refs/heads/main/855.lua"))()

WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 1, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})

Button = TabHandles.Q:Button({
    Title = "越HB99夜",
    Desc = "",
    Locked = false,
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/HB-ksdb/-4/main/%E8%B6%8AHB%20FXM%2099%E5%A4%9C.lua",true))()
            
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 1, -- 3 seconds
    Icon = "layout-grid",
})                        
            
 end
})