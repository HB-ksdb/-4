local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
        Title = "3K 脚本<font color='#00FF00'>1.0</font> / ",
        Icon = "rbxassetid://4483362748",
        IconTransparency = 0.5,
        IconThemed = true,
        Author = "作者:3K",
        Folder = "CloudHub",    
    -- ↓ This all is Optional. You can remove it.
    Size = UDim2.fromOffset(400, 300),
        Transparent = true,
        Theme = "Light",
        User = {
            Enabled = true,
            Callback = function() print("clicked") end,
            Anonymous = false
        },
    
    -- ↓ Optional. You can remove it.
    --[[ You can set 'rbxassetid://' or video to Background.
        'rbxassetid://':
            Background = "rbxassetid://", -- rbxassetid
        Video:
            Background = "video:YOUR-RAW-LINK-TO-VIDEO.webm", -- video 
    --]]
    
    -- ↓ Optional. You can remove it.
    User = {
        Enabled = true,
        Anonymous = true,
        Callback = function()
            print("clicked")
        end,
    },
    
    -- !  ↓  remove this all, 
    -- !  ↓  if you DON'T need the key system
    KeySystem = { 
        -- ↓ Optional. You can remove it.
        Key = { "1234", "5678" },
        
        Note = "请输入你的卡密.",
        
        -- ↓ Optional. You can remove it.
        Thumbnail = {
            Image = "rbxassetid://114457723265156",
            Title = "Thumbnail",
        },
        
        -- ↓ Optional. You can remove it.
        URL = "YOUR LINK TO GET KEY (Discord, Linkvertise, Pastebin, etc.)",
        
        -- ↓ Optional. You can remove it.
        SaveKey = false, -- automatically save and load the key.
        
        -- ↓ Optional. You can remove it.
        -- API = {} ← Services. Read about it below ↓
    },
})
    
local Tab = Window:Tab({
    Title = "公告",
    Icon = "bird",
    Locked = false,
})

MainTab:Paragraph({
        Title = "感谢3K用户的支持",
        Desc = "当前服务器ID: " .. game.PlaceId, -- 显示服务器ID
    })
    
    MainTab:Paragraph({
        Title = "您的注入器",
        Desc = ": " .. identifyexecutor(), -- 显示注入器ID
    })
end

local Paragraph = Tab:Paragraph({
    Title = "欢迎使用 3K脚本",
    Desc = "QQ群满了 746820543 QQ群1059482635",    
    Thumbnail = "rbxassetid://103506480252017",
    ThumbnailSize = 0,
})

local Tabs = {
    Main = Window:Section({ Title = "功能区", Opened = true }),
    Settings = Window:Section({ Title = "收集", Opened = true }),
    Utilities = Window:Section({ Title = "材料", Opened = true })
}

local Dropdown = Tabs.Main:Tab({
    Title = "木头",
    Values = { "Category A", "Category B", "Category C" },
    Value = { "Category A" },
    Multi = true,
    AllowNone = true,
    Callback = function(option) 
        print("Categories selected: " .. game:GetService("HttpService"):JSONEncode(option)) 
    end
})