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
        Key = { "25ytgcjNB", "25ytgcjNB" },
        
        Note = "请输入你的卡密.没卡密加群1055870765",
        
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
        Title = "正在更新",
        Color = Color3.fromHex("#000000")
    })

-----------------------------------------------------------------------------------------------公告
local Tab = Window:Tab({
    Title = "公告",
    Icon = "layout-grid",
    Locked = false,
})

local Paragraph = Tab:Paragraph({
    Title = "欢迎使用 越 HB脚本",
    Desc = "QQ群 1055870765",
    Image = "rbxassetid://73478000258877",
    ImageSize = 42,
    Thumbnail = "rbxassetid://79087575647853",
    ThumbnailSize = 120,
})
-----------------------------------------------------------------------------------------------通用    
local Tabs = {
    Main = Window:Section({ Title = "越 HB通用", Opened = true }),
    Settings = Window:Section({ Title = "脚本", Opened = true }),
    Utilities = Window:Section({ Title = "越 HB设置", Opened = true })
}

local Tab = Tabs.Main:Tab({
    Title = "越 HB通用",
    Icon = "layout-grid",
    Locked = false,
})
-----------------------------------------------------------------------------------------------跳跃
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
-----------------------------------------------------------------------------------------------飞行
local Button = Tab:Button({
    Title = "飞行v1",
    Desc = "飞行",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/mciklw/mciklwscript/refs/heads/main/flyvthree"))()
    end
})
-----------------------------------------------------------------------------------------------子追
local Button = Tab:Button({
    Title = "子追穿墙",
    Desc = "子追",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fcsdsss/games/refs/heads/main/Silent%20aim/1.1"))()
    end
})
-----------------------------------------------------------------------------------------------隐身
local Button = Tab:Button({
    Title = "隐身自己",
    Desc = "别人看不到",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Yungengxin/roblox/main/yinshen"))()
    end
})
-----------------------------------------------------------------------------------------------透视
local Button = Tab:Button({
    Title = "透视",
    Desc = "91",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP.lua"))()
    end
})
-----------------------------------------------------------------------------------------------越快越慢
local Button = Tab:Button({
    Title = "跑的越快就越慢",
    Desc = "继续跑🤫",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/7fLqezjn"))()
    end
})
-----------------------------------------------------------------------------------------------防甩飞
local Button = Tab:Button({
    Title = "防甩飞",
    Desc = "别人甩不掉🤫",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ChinaQY/Scripts/Main/AntiFling.lua"))()
    end
})
-----------------------------------------------------------------------------------------------撸关R15
local Button = Tab:Button({
    Title = "撸关R15",
    Desc = "15",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
    end
})
-----------------------------------------------------------------------------------------------撸关R6
local Button = Tab:Button({
    Title = "撸关R6",
    Desc = "6",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
    end
})

Window:SelectTab(2) -- Number of Tab
-----------------------------------------------------------------------------------------------其他脚本
local Tab = Tabs.Main:Tab({
    Title = "其他脚本",
    Icon = "layout-grid",
    Locked = false,
})
-----------------------------------------------------------------------------------------------xk脚本
local Button = Tab:Button({
    Title = "XK脚本",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet(('https://github.com/devslopo/DVES/raw/main/XK%20Hub')))()
    end
})

Window:SelectTab(2) -- Number of Tab

-----------------------------------------------------------------------------------------------自然灾害
local Tab = Tabs.Settings:Tab({
    Title = "自然灾害",
    Icon = "layout-grid",
    Locked = false,
})

local Section = Tab:Section({ 
    Title = "自然灾害",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "黑洞",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Super-ring-Parts-V6-28581"))()
    end
})

Window:SelectTab(2) -- Number of Tab

-----------------------------------------------------------------------------------------------被遗弃
local Tab = Tabs.Settings:Tab({
    Title = "被遗弃",
    Icon = "layout-grid",
    Locked = false,
})

local Section = Tab:Section({ 
    Title = "被遗弃",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "被遗弃XK",
    Desc = "无卡中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet(('https://github.com/devslopo/DVES/raw/main/XK%20Hub')))()
    end
})

Window:SelectTab(2) -- Number of Tab
-----------------------------------------------------------------------------------------------战争大亨
local Tab = Tabs.Settings:Tab({
    Title = "战争大亨",
    Icon = "layout-grid",
    Locked = false,
})

local Section = Tab:Section({ 
    Title = "战争大亨",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "战争大亨XK",
    Desc = "无卡中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet(('https://github.com/devslopo/DVES/raw/main/XK%20Hub')))()
    end
})

Window:SelectTab(2) -- Number of Tab
-----------------------------------------------------------------------------------------------最强战场
local Tab = Tabs.Settings:Tab({
    Title = "最强战场",
    Icon = "layout-grid",
    Locked = false,
})

local Section = Tab:Section({ 
    Title = "最坚强战场",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "最强战场无限侧闪",
    Desc = "无卡英文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/10tempest01/tempest-hub/refs/heads/main/Launcher.lua"))()
    end
})

local Button = Tab:Button({
    Title = "最强战场丢垃圾桶",
    Desc = "无卡英文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gycgchgyfytdttr/shenqin/refs/heads/main/V1.0.0.txt"))()
    end
})

Window:SelectTab(2) -- Number of Tab
-----------------------------------------------------------------------------------------------DOORS
local Tab = Tabs.Settings:Tab({
    Title = "DOORS",
    Icon = "door-open",
    Locked = false,
})

local Section = Tab:Section({ 
    Title = "DOORS",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "DOORS",
    Desc = "无卡中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rbxluau/Roblox/main/ScriptHub.lua"))()
    end
})

local Button = Tab:Button({
    Title = "DOORSXK",
    Desc = "无卡中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet(('https://github.com/devslopo/DVES/raw/main/XK%20Hub')))()
    end
})

Window:SelectTab(2) -- Number of Tab
-----------------------------------------------------------------------------------------------墨水游戏
local Tab = Tabs.Settings:Tab({
    Title = "墨水游戏",
    Icon = "layout-grid",
    Locked = false,
})

local Section = Tab:Section({ 
    Title = "墨水游戏",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "墨水游戏",
    Desc = "无卡英文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ScripterVaz/InkGameAzure/main/Protected_7974105512464815.lua.txt"))()
    end
})

Window:SelectTab(2) -- Number of Tab
-----------------------------------------------------------------------------------------------死铁轨
local Tab = Tabs.Settings:Tab({
    Title = "死铁轨",
    Icon = "layout-grid",
    Locked = false,
})

local Section = Tab:Section({ 
    Title = "死铁轨",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "死铁轨",
    Desc = "无卡中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iopjklbnmsss/SansHubScript/refs/heads/main/SansHub"))()
    end
})

Window:SelectTab(2) -- Number of Tab
-----------------------------------------------------------------------------------------------森林99夜
local Tab = Tabs.Settings:Tab({
    Title = "林森99夜",
    Icon = "layout-grid",
    Locked = false,
})

local Section = Tab:Section({ 
    Title = "森林中的99夜",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "林森99夜",
    Desc = "无卡中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet(('https://github.com/devslopo/DVES/raw/main/XK%20Hub')))()
    end
})

local Button = Tab:Button({
    Title = "林森99夜",
    Desc = "无卡中文 推荐",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NEHUB2/NE/refs/heads/main/855.lua"))()
    end
})

Window:SelectTab(2) -- Number of Tab
-----------------------------------------------------------------------------------------------刀刃球
local Tab = Tabs.Settings:Tab({
    Title = "刀刃球",
    Icon = "layout-grid",
    Locked = false,
})

local Section = Tab:Section({ 
    Title = "刀刃球",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "刀刃球",
    Desc = "无卡英文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()
    end
})

local Button = Tab:Button({
    Title = "刀刃球",
    Desc = "无卡中文 推荐",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rbxluau/script-hub/main/loader.lua"))()
    end
})

local Button = Tab:Button({
    Title = "刀刃球红⭕️",
    Desc = "无卡中文 推荐",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/autoparrybest"))()
    end
})

Window:SelectTab(2) -- Number of Tab
-----------------------------------------------------------------------------------------------偷走脑红
local Tab = Tabs.Settings:Tab({
    Title = "偷走脑红",
    Icon = "layout-grid",
    Locked = false,
})

local Section = Tab:Section({ 
    Title = "偷走脑红",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "偷走脑红",
    Desc = "无卡英文 推荐",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Brinxhub12/brinx-hub-comebac1/refs/heads/main/brinx%20come%20back"))();
    end
})

Window:SelectTab(2) -- Number of Tab
-----------------------------------------------------------------------------------------------火箭发射模拟器
local Tab = Tabs.Settings:Tab({
    Title = "火箭发射模拟器",
    Icon = "layout-grid",
    Locked = false,
})

local Section = Tab:Section({ 
    Title = "火箭发射模拟器",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "火箭发射模拟器禁漫",
    Desc = "无卡中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/anlushanjinchangantangwanle/refs/heads/main/jmjmjmjmjmjm114514.txt"))()
    end
})

Window:SelectTab(2) -- Number of Tab
-----------------------------------------------------------------------------------------------力量传奇
local Tab = Tabs.Settings:Tab({
    Title = "力量传奇",
    Icon = "layout-grid",
    Locked = false,
})

local Section = Tab:Section({ 
    Title = "力量传奇",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "力量传奇自动吃蛋",
    Desc = "无卡中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.github.com/114514541883484/Zephyr-wave/main/agreement.lua"))()
    end
})

Window:SelectTab(2) -- Number of Tab
-----------------------------------------------------------------------------------------------伐木大享
local Tab = Tabs.Settings:Tab({
    Title = "伐木大享",
    Icon = "layout-grid",
    Locked = false,
})

local Section = Tab:Section({ 
    Title = "伐木大享A",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "伐木大享AXE",
    Desc = "无卡英文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/NOOBARMYSCRIPTER/NOOBARMYSCRIPTER/main/AXE%20LOOP%20SCRIPT"), true))()
    end
})

Window:SelectTab(2) -- Number of Tab
-----------------------------------------------------------------------------------------------