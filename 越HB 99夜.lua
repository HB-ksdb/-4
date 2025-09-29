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
    Title = "越 HB脚本 99夜",
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
        Title = "99夜",
        Color = Color3.fromHex("#000000")
    })

local Tabs = {
    Main = Window:Section({ Title = "光环", Opened = true }),
    Settings = Window:Section({ Title = "脚本", Opened = true }),
    Utilities = Window:Section({ Title = "越 HB设置", Opened = true })
}

local Tab = Tabs.Settings:Tab({
    Title = "收集",
    Icon = "bird", -- optional
    Locked = false,
})

local Button = Tab:Button({
    Title = "传送至篝火/营地",
    Icon = "bell",
    Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 5, 0)
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "左轮手枪",
    Icon = "bell",
    Callback = function()
TeleportToThing("Revolver")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "步枪",
    Icon = "bell",
    Callback = function()
TeleportToThing("Rifle")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "左轮子弹",
    Icon = "bell",
    Callback = function()
TeleportToThing("Revolver Ammo")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "步枪子弹",
    Icon = "bell",
    Callback = function()
TeleportToThing("Rifle Ammo")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "皮革护甲",
    Icon = "bell",
    Callback = function()
TeleportToThing("Leather Body") 
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "铁质护甲",
    Icon = "bell",
    Callback = function()
TeleportToThing("Iron Body")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "尖刺护甲",
    Icon = "bell",
    Callback = function()
TeleportToThing("Thorn Body")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Tab = Tabs.Settings:Tab({
    Title = "材料",
    Icon = "bird", -- optional
    Locked = false,
})

local Button = Tab:Button({
    Title = "螺丝",
    Desc = "价值：一个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Bolt")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "金属板",
    Desc = "价值：两个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Sheet Metal")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "废弃收音机",
    Desc = "价值：两个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Old Radio")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "废弃电风扇",
    Desc = "价值：两个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Broken Fan")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "废弃微波炉",
    Desc = "价值：三个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Broken Microwave")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Tab = Tabs.Settings:Tab({
    Title = "燃料",
    Icon = "bird", -- optional
    Locked = false,
})

local Button = Tab:Button({
    Title = "原木",
    Desc = "价值：一个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Log")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "椅子",
    Desc = "价值：一个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Chair")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "煤块",
    Desc = "价值：两个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Coal")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "汽油桶",
    Desc = "价值：三个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Fuel Canister")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "石油桶",
    Desc = "价值：四个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Oil Barrel")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Tab = Tabs.Settings:Tab({
    Title = "食物",
    Icon = "bird", -- optional
    Locked = false,
})

local Button = Tab:Button({
    Title = "胡萝卜",
    Desc = "价值：一格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Carrot")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "野浆果",
    Desc = "价值：一格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Berry")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "生肉腿",
    Desc = "价值：一格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Morsel")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "生肉排",
    Desc = "价值：一格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Steak")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "熟肉腿",
    Desc = "价值：两格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Cooked Morsel")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "熟肉排",
    Desc = "价值：两格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Cooked Steak")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Tab = Tabs.Settings:Tab({
    Title = "医疗",
    Icon = "bird", -- optional
    Locked = false,
})

local Button = Tab:Button({
    Title = "绷带",
    Icon = "bell",
    Callback = function()
TeleportToThing("Bandage")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Button = Tab:Button({
    Title = "医疗包",
    Icon = "bell",
    Callback = function()
TeleportToThing("MedKit")
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

local Tab = Window:Tab({
    Title = "透视儿童",
    Icon = "bird", -- optional
    Locked = false,
})

local Toggle = Tab:Toggle({
    Title = "透视儿童",
    Icon = "check",
    Callback = function(Value)
AlienX["透视孩子"] = Value
    end
})

local Toggle = Tab:Toggle({
    Title = "透视宝箱",
    Icon = "check",
    Callback = function(Value)
AlienX["透视宝箱"] = Value
    end
})
local Dropdown = Tab:Dropdown({
    Title = "传送至玩家",
    Desc = "选择你要传送到的玩家",
    Values = PlayerList,
    Value = "",
    Callback = function(d)
if Plr[d] and Plr[d].Character and Plr[d].Character:FindFirstChild("HumanoidRootPart") then
          LP.Character:PivotTo(Plr[d].Character.HumanoidRootPart.CFrame)
        end
        WindUI:Notify({
            Title = "HB脚本：",
            Content = "你已选择: "..d,
            Duration = 2
        })
    end
})

local Toggle = Tab:Toggle({
    Title = "玩家发光",
    Icon = "check",
    Callback = function(t)
if t then
        local light = Instance.new("PointLight", LP.Character.Head)
        light.Name = "light"
        light.Range = 9999999
        light.Brightness = 15
       else
        pcall(function()LP.Character.Head.light:remove()end)
      end
    end
})

    Plr.PlayerAdded:Connect(function(a)
        PlayerList = {}
        for a, b in next, Plr:GetPlayers() do
            table.insert(PlayerList, b.Name)
        end
        task.wait(.1)
        C_P:Refresh(PlayerList)
    end)
        Plr.PlayerRemoving:Connect(function(a)
        PlayerList = {}
        for a, b in next, Plr:GetPlayers() do
            table.insert(PlayerList, b.Name)
        end
        task.wait(.1)
        C_P:Refresh(PlayerList)
    end)
        local last1, last2, last3 = 0, 0, 0
    game["Run Service"].Heartbeat:Connect(function()
        local Now = tick()
        if not LP.Character then return end
        if not LP.Character:FindFirstChild("HumanoidRootPart") then return end
        LP.Character.Humanoid.WalkSpeed = WS
        for a, b in next, workspace.Items:GetChildren() do
            if b:GetAttribute(tostring(LP.UserId) .. "Opened") then
                table.insert(BL, b)
                if b:FindFirstChild("BillboardGui") then
                    b.BillboardGui:Destroy()
                end
            end
            if b.Name:match("Chest") and b:IsA("Model") and not table.find(BL, b) and b:FindFirstChild("Main") then
                AddESP(b, "宝箱", tostring(math.floor((LP.Character.HumanoidRootPart.Position - b.Main.Position).Magnitude)), AlienX["透视宝箱"])
            end
        end
        for a, b in next, workspace.Characters:GetChildren() do
            if b:GetAttribute("Lost") and b:GetAttribute("Lost") == false then
                table.insert(BL, b)
                if b:FindFirstChild("BillboardGui") then
                    b.BillboardGui:Destroy()
                end
            end
            if table.find({"Lost Child", "Lost Child1", "Lost Child2", "Lost Child3", "Dino Kid", "kraken kid", "Squid kid", "Koala Kid", "koala Kid", "koala"}, b.Name) and b:FindFirstChild("HumanoidRootPart") and not table.find(BL, b) then
                AddESP(b, "儿童", tostring(math.floor((LP.Character.HumanoidRootPart.Position - b.HumanoidRootPart.Position).Magnitude)), AlienX["透视孩子"])
            end
        end
        if AlienX["杀戮光环"] and Now - last1 >= 1.2 then
            last1 = Now
            if not ({["Old Axe"] = true, ["Good Axe"] = true, ["Spear"] = true, ["Hatchet"] = true, ["Bone Club"] = true})[tool.Name] then return end
            for a, b in next, workspace.Characters:GetChildren() do
              if b:IsA("Model") and b:FindFirstChild("HumanoidRootPart") and b:FindFirstChild("HitRegisters") then
                if (LP.Character.HumanoidRootPart.Position - b.HumanoidRootPart.Position).Magnitude <= 10 then
                  game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ToolDamageObject"):InvokeServer(b, tool, true, LP.Character.HumanoidRootPart.CFrame)
                end
              end
            end
          end
    end)
    
local Tab = Tabs.Utilities:Tab({
    Title = "设置",
    Icon = "bird", -- optional
    Locked = false,
})

local Paragraph = Tab:Paragraph({
    Title = "自定义界面",
    Desc = "个性化您的体验",
    Image = "palette",
    ImageSize = 20,
    Color = "White"
})

local themes = {}
for themeName, _ in pairs(WindUI:GetThemes()) do
    table.insert(themes, themeName)
end
table.sort(themes)

local Dropdown = Tab:Dropdown({
    Title = "主题选择",
    Values = themes,
    Value = "Dark",
    Callback = function(theme)
        WindUI:SetTheme(theme)
        WindUI:Notify({
            Title = "主题应用",
            Content = theme,
            Icon = "palette",
            Duration = 2
        })
    end
})

local Button = Tab:Button({
    Title = "透明度",
    Value = { 
        Min = 0,
        Max = 1,
        Default = 0.2,
    },
    Step = 0.1,
    Callback = function(value)
        Window:ToggleTransparency(tonumber(value) > 0)
        WindUI.TransparencyValue = tonumber(value)
    end
})

local Button = Tab:Button({
    Title = "启用黑色主题",
    Desc = "使用黑色调主题方案",
    Value = true,
    Callback = function(state)
        WindUI:SetTheme(state and "Dark" or "Light")
        themeDropdown:Select(state and "Dark" or "Light")
    end
})

local Button = Tab:Button({
    Title = "创建新主题",
    Icon = "plus",
    Callback = function()
        Window:Dialog({
            Title = "创建主题",
            Content = "此功能很快就会推出",
            Buttons = {
                {
                    Title = "确认",
                    Variant = "Primary"
                }
            }
        })
    end
})

local Button = Tab:Button({
    Title = "配置管理",
    Desc = "保存你的设置",
    Image = "save",
    ImageSize = 20,
    Color = "White"
})

local configName = "default"
local configFile = nil
local MyPlayerData = {
    name = "Player1",
    level = 1,
    inventory = { "sword", "shield", "potion" }
}

local Keybind = Tab:Keybind({
    Title = "配置名称",
    Value = configName,
    Callback = function(value)
        configName = value
    end
})

local ConfigManager = Window.ConfigManager
if ConfigManager then
    ConfigManager:Init(Window)
    
local Toggle = Tab:Toggle({
        Title = "保存配置",
        Icon = "save",
        Variant = "Primary",
        Callback = function()
            configFile = ConfigManager:CreateConfig(configName)
            
            configFile:Register("featureToggle", featureToggle)
            configFile:Register("intensitySlider", intensitySlider)
            configFile:Register("modeDropdown", modeDropdown)
            configFile:Register("themeDropdown", themeDropdown)
            configFile:Register("transparencySlider", transparencySlider)
            
            configFile:Set("playerData", MyPlayerData)
            configFile:Set("lastSave", os.date("%Y-%m-%d %H:%M:%S"))
            
            if configFile:Save() then
                WindUI:Notify({ 
                    Title = "保存配置", 
                    Content = "保存为："..configName,
                    Icon = "check",
                    Duration = 3
                })
            else
                WindUI:Notify({ 
                    Title = "错误", 
                    Content = "保存失败",
                    Icon = "x",
                    Duration = 3
                })
            end
        end
    })

    local Button = Tab:Button({
        Title = "加载配置",
        Icon = "folder",
        Callback = function()
            configFile = ConfigManager:CreateConfig(configName)
            local loadedData = configFile:Load()
            
            if loadedData then
                if loadedData.playerData then
                    MyPlayerData = loadedData.playerData
                end
                
                local lastSave = loadedData.lastSave or "Unknown"
                WindUI:Notify({ 
                    Title = "加载配置", 
                    Content = "正在加载："..configName.."\n上次保存："..lastSave,
                    Icon = "refresh-cw",
                    Duration = 5
                })
                
                local Button = Tab:Button({
                    Title = "玩家数据",
                    Desc = string.format("名字: %s\n等级: %d\n库存: %s", 
                        MyPlayerData.name, 
                        MyPlayerData.level, 
                        table.concat(MyPlayerData.inventory, ", "))
                })
            else
                WindUI:Notify({ 
                    Title = "错误", 
                    Content = "加载失败",
                    Icon = "x",
                    Duration = 3
                })
            end
        end
    })
else
    local Button = Tab:Button({
        Title = "配置管理不可用",
        Desc = "此功能需要配置管理",
        Image = "alert-triangle",
        ImageSize = 20,
        Color = "White"
    })
end


Tab:Select() -- Select Tab