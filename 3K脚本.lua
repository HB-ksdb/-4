local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

WindUI:Popup({
    Title = "3K脚本欢迎你",
    Icon = "info",
    Content = "3K脚本Q群746820543",
    Buttons = {
        {
            Title = "关闭",
            Callback = function() end,
            Variant = "Tertiary",
        },
        {
            Title = "启动",
            Icon = "arrow-right",
            Callback = function() end,
            Variant = "Primary",
        }
    }
})


local Window = WindUI:CreateWindow({
        Title = "3K 脚本<font color='#00FF00'>1.0</font> / ohio",
        Icon = "rbxassetid://4483362748",
        IconTransparency = 0.5,
        IconThemed = true,
        Author = "作者:3K",
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
        Background = "rbxassetid://103506480252017"
    })    
        
Window:Tag({
    Title = "v1.1.4",
    Color = Color3.fromHex("#30ff6a")
})

Window:Tag({
        Title = "公益版", -- 标签汉化
        Color = Color3.fromHex("#315dff")
    })
    local TimeTag = Window:Tag({
        Title = "持续更新",
        Color = Color3.fromHex("#000000")
    })


WindUI:Notify({
    Title = "3K脚本通知",
    Content = "3K脚本，禁止倒卖否则死浮木😡😡😡",
    Duration = 10, -- 10 seconds
    Icon = "bird",
})


local Tab = Window:Tab({
    Title = "3K公告",
    Icon = "layout-grid",
    Locked = false,
})

local Paragraph = Tab:Paragraph({
    Title = "欢迎使用 3K脚本",
    Desc = "QQ群 746820543",
    Image = "rbxassetid://81583956354615",
    ImageSize = 42,
    Thumbnail = "rbxassetid://103506480252017",
    ThumbnailSize = 120,
})

local Paragraph = Tab:Paragraph({
    Title = "欢迎使用 3K脚本",
    Desc = "QQ群 746820543",    
    Thumbnail = "rbxassetid://103506480252017",
    ThumbnailSize = 0,
})

local Tabs = {
    Main = Window:Section({ Title = "通用", Opened = true }),
    Settings = Window:Section({ Title = "脚本执行", Opened = true }),
    Utilities = Window:Section({ Title = "设置", Opened = true })
}

local Tab = Tabs.Main:Tab({
    Title = "3K通用",
    Icon = "layout-grid",
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

local Slider = Tab:Slider({
    Title = "移速",
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
        
local Slider = Tab:Slider({
    Title = "重力",
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

local Button = Tab:Button({
    Title = "飞行v3",
    Desc = "飞行",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/mciklw/mciklwscript/refs/heads/main/flyvthree"))()
    end
})

local Button = Tab:Button({
    Title = "子追",
    Desc = "子追",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fcsdsss/games/refs/heads/main/Silent%20aim/1.1"))()
    end
})

local Button = Tab:Button({
    Title = "隐身",
    Desc = "别人看不到",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Yungengxin/roblox/main/yinshen"))()
    end
})

local Button = Tab:Button({
    Title = "FE假延迟",
    Desc = "假延迟",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RENZXW/RENZXW-SCRIPTS/main/fakeLAGRENZXW.txt"))()
    end
})

local Button = Tab:Button({
    Title = "黑客后门v6",
    Desc = "后门v6",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v6x/source.lua"))()
    end
})

Window:SelectTab(2) -- Number of Tab


local Tab = Tabs.Settings:Tab({
    Title = "被遗弃",
    Icon = "layout-grid",
    Locked = false,
})

local Paragraph = Tab:Paragraph({
    Title = "脚本",
    Desc = "被遗弃",
    Thumbnail = "rbxassetid://98451503406596",
    ThumbnailSize = 200,
})

local Section = Tab:Section({ 
    Title = "被遗弃",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "被遗弃XK",
    Desc = "无卡密中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet(('https://github.com/devslopo/DVES/raw/main/XK%20Hub')))()
    end
})

Window:SelectTab(2) -- Number of Tab

local Tab = Tabs.Settings:Tab({
    Title = "战争大亨",
    Icon = "layout-grid",
    Locked = false,
})

local Paragraph = Tab:Paragraph({
    Title = "脚本",
    Desc = "战争大亨",
    Thumbnail = "rbxassetid://86989609828708",
    ThumbnailSize = 200,
})

local Section = Tab:Section({ 
    Title = "战争大亨",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "战争大亨XK",
    Desc = "无卡密中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet(('https://github.com/devslopo/DVES/raw/main/XK%20Hub')))()
    end
})

Window:SelectTab(2) -- Number of Tab

local Tab = Tabs.Settings:Tab({
    Title = "最强战场",
    Icon = "layout-grid",
    Locked = false,
})

local Paragraph = Tab:Paragraph({
    Title = "脚本",
    Desc = "最强战场",
    Thumbnail = "rbxassetid://90567602122435",
    ThumbnailSize = 200,
})

local Section = Tab:Section({ 
    Title = "最坚强战场",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "最强战场无限侧闪",
    Desc = "无卡密英文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/10tempest01/tempest-hub/refs/heads/main/Launcher.lua"))()
    end
})

local Button = Tab:Button({
    Title = "最强战场丢垃圾桶",
    Desc = "无卡密英文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gycgchgyfytdttr/shenqin/refs/heads/main/V1.0.0.txt"))()
    end
})

Window:SelectTab(2) -- Number of Tab

local Tab = Tabs.Settings:Tab({
    Title = "DOORS",
    Icon = "door-open",
    Locked = false,
})

local Paragraph = Tab:Paragraph({
    Title = "脚本",
    Desc = "DOORS",
    Thumbnail = "rbxassetid://116737898904419",
    ThumbnailSize = 200,
})

local Section = Tab:Section({ 
    Title = "DOORS🇨🇳",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "DOORS",
    Desc = "无卡密中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rbxluau/Roblox/main/ScriptHub.lua"))()
    end
})

local Button = Tab:Button({
    Title = "DOORSXK",
    Desc = "无卡密中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet(('https://github.com/devslopo/DVES/raw/main/XK%20Hub')))()
    end
})

Window:SelectTab(2) -- Number of Tab

local Tab = Tabs.Settings:Tab({
    Title = "墨水游戏",
    Icon = "layout-grid",
    Locked = false,
})

local Paragraph = Tab:Paragraph({
    Title = "脚本",
    Desc = "墨水游戏",
    Thumbnail = "rbxassetid://111009664738456",
    ThumbnailSize = 200,
})

local Section = Tab:Section({ 
    Title = "墨水游戏",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "墨水游戏",
    Desc = "无卡密英文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ScripterVaz/InkGameAzure/main/Protected_7974105512464815.lua.txt"))()
    end
})

Window:SelectTab(2) -- Number of Tab

local Tab = Tabs.Settings:Tab({
    Title = "死铁轨",
    Icon = "layout-grid",
    Locked = false,
})

local Paragraph = Tab:Paragraph({
    Title = "脚本",
    Desc = "死铁轨",
    Thumbnail = "rbxassetid://78717005349835",
    ThumbnailSize = 200,
})

local Section = Tab:Section({ 
    Title = "死铁轨",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "死铁轨",
    Desc = "无卡密中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iopjklbnmsss/SansHubScript/refs/heads/main/SansHub"))()
    end
})

Window:SelectTab(2) -- Number of Tab

local Tab = Tabs.Settings:Tab({
    Title = "林森99夜",
    Icon = "layout-grid",
    Locked = false,
})

local Paragraph = Tab:Paragraph({
    Title = "脚本",
    Desc = "森林中的99夜",
    Thumbnail = "rbxassetid://108669954666414",
    ThumbnailSize = 200,
})

local Section = Tab:Section({ 
    Title = "森林中的99夜",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "林森99夜",
    Desc = "无卡密中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet(('https://github.com/devslopo/DVES/raw/main/XK%20Hub')))()
    end
})

local Button = Tab:Button({
    Title = "林森99夜",
    Desc = "无卡密中文 推荐",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NEHUB2/NE/refs/heads/main/855.lua"))()
    end
})

Window:SelectTab(2) -- Number of Tab

local Tab = Tabs.Settings:Tab({
    Title = "刀刃球",
    Icon = "layout-grid",
    Locked = false,
})

local Paragraph = Tab:Paragraph({
    Title = "脚本",
    Desc = "刀刃球",
    Thumbnail = "rbxassetid://134175772855538",
    ThumbnailSize = 200,
})

local Section = Tab:Section({ 
    Title = "刀刃球",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "刀刃球",
    Desc = "无卡密英文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()
    end
})

local Button = Tab:Button({
    Title = "刀刃球",
    Desc = "无卡密中文 推荐",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rbxluau/script-hub/main/loader.lua"))()
    end
})

local Button = Tab:Button({
    Title = "刀刃球红⭕️",
    Desc = "无卡密中文 推荐",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/autoparrybest"))()
    end
})

Window:SelectTab(2) -- Number of Tab

local Tab = Tabs.Settings:Tab({
    Title = "偷走脑红",
    Icon = "layout-grid",
    Locked = false,
})

local Paragraph = Tab:Paragraph({
    Title = "脚本",
    Desc = "偷走脑红",
    Thumbnail = "rbxassetid://97153288574176",
    ThumbnailSize = 200,
})

local Section = Tab:Section({ 
    Title = "偷走脑红",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "偷走脑红",
    Desc = "无卡密英文 推荐",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Brinxhub12/brinx-hub-comebac1/refs/heads/main/brinx%20come%20back"))();
    end
})

Window:SelectTab(2) -- Number of Tab

local Tab = Tabs.Utilities:Tab({
    Title = "设置",
    Icon = "settings",
    Locked = false,
})

Window:SelectTab(2) -- Number of Tab
