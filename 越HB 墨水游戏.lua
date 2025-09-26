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
        Key = { "1234", "25ytgcjNB" },
        
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

-----------------------------------------------------------------------------------------------墨水功能
local Tab = Window:Tab({
    Title = "墨水功能",
    Icon = "layout-grid",
    Locked = false,
})

local Toggle = Tab:Toggle({
    Title = "透视躲藏者",
    Value = false,    
    Callback = function(state) 
                hiderESPEnabled = state
        if state then
            ESP.AddFolder("HiderESPFolder")
            for _, player in pairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player:GetAttribute("IsHider") then
                    ESP.AddESP("HiderESPFolder", "躲藏者 " .. player.Name, player.Character, Color3.new(0, 0, 1))
                end
            end
            
            -- 监听新玩家加入
            Players.PlayerAdded:Connect(function(player)
                if hiderESPEnabled and player:GetAttribute("IsHider") then
                    ESP.AddESP("HiderESPFolder", "躲藏者 " .. player.Name, player.Character, Color3.new(0, 0, 1))
                end
            end)
        else
            ESP.Clear("HiderESPFolder")
        end
    end
})


local Toggle = Tab:Toggle({
    Title = "透视搜查者",
    Value = false,    
    Callback = function(state) 
                hunterESPEnabled = state
        if state then
            ESP.AddFolder("HunterESPFolder")
            for _, player in pairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player:GetAttribute("IsHunter") then
                    ESP.AddESP("HunterESPFolder", "搜查者 " .. player.Name, player.Character, Color3.new(1, 0, 0))
                end
            end
            
            -- 监听新玩家加入
            Players.PlayerAdded:Connect(function(player)
                if hunterESPEnabled and player:GetAttribute("IsHunter") then
                    ESP.AddESP("HunterESPFolder", "搜查者 " .. player.Name, player.Character, Color3.new(1, 0, 0))
                end
            end)
        else
            ESP.Clear("HunterESPFolder")
        end
    end
})


local Toggle = Tab:Toggle({
    Title = "透视真假玻璃",
    Value = false,    
    Callback = function(state) 
                glassESPEnabled = state
        if state then
            ESP.AddFolder("GlassESPFolder")
            for _, v in next, workspace.GlassBridge.GlassHolder:GetChildren() do
                if v.Name:find("ClonedPanel") then
                    for _, panelChild in next, v:GetChildren() do
                        for _, glassPart in next, panelChild:GetChildren() do
                            if glassPart.Name == "glasspart" and glassPart:FindFirstChild("TouchInterest") then
                                ESP.AddESP("GlassESPFolder", "假玻璃", glassPart, Color3.new(0, 1, 0))
                            end
                        end
                    end
                end
            end
        else
            ESP.Clear("GlassESPFolder")
        end
    end
})


local Toggle = Tab:Toggle({
    Title = "ESP玻璃",
    Value = false,    
    Callback = function(state) 
                pcall(function()
            local GlassHolder = workspace.GlassBridge.GlassHolder
            for _, PanelPair in ipairs(GlassHolder:GetChildren()) do
                for _, Panel in ipairs(PanelPair:GetChildren()) do
                    local GlassPart = Panel:FindFirstChild("glasspart")
                    if GlassPart then
                        if state then
                            local Color = GlassPart:GetAttribute("exploitingisevil") and Color3.fromRGB(248, 87, 87) or Color3.fromRGB(28, 235, 87)
                            GlassPart.Color = Color
                            GlassPart.Transparency = 0
                            GlassPart.Material = Enum.Material.Neon
                        else
                            GlassPart.Color = Color3.fromRGB(106, 106, 106)
                            GlassPart.Transparency = 0.45
                            GlassPart.Material = Enum.Material.SmoothPlastic
                        end
                    end
                end
            end
        end)
    end
})


