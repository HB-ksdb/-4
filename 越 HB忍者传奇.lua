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
        Title = "正在更新",
        Color = Color3.fromHex("#000000")
    })

local Tabs = {
    Main = Window:Section({ Title = "通用", Opened = true }),
    gn = Window:Section({ Title = "功能", Opened = true }),    
}

local TabHandles = {
    Q = Tabs.Main:Tab({ Title = "金币篡改", Icon = "layout-grid" }),
    W = Tabs.Main:Tab({ Title = "自动功能", Icon = "layout-grid" }),
    E = Tabs.gn:Tab({ Title = "杀戮功能", Icon = "layout-grid" }),
    R = Tabs.gn:Tab({ Title = "辅助功能", Icon = "layout-grid" }),
    T = Tabs.gn:Tab({ Title = "宠物功能", Icon = "layout-grid" }),
    Y = Tabs.gn:Tab({ Title = "Boss", Icon = "layout-grid" }),        
}

Button = TabHandles.Q:Button({
    Title = "初始化第一步",
    Desc = "",
    Locked = false,
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("zenMasterEvent"):FireServer("convertGems", -9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
end
})

Button = TabHandles.Q:Button({
    Title = "初始化第二步",
    Desc = "",
    Locked = false,
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("elementMasteryEvent"):FireServer("Shadow Charge")
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
end
})

        local isLooping = false
        local lastInputValue = 0
        
Input = TabHandles.Q:Input({
    Title = "输入数字上传数据",
    Desc = "",
    Placeholder = "请输入数字",
    Callback = function(I)
        local num = tonumber(I)
                if num and num > 0 then
                    lastInputValue = num
                    game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("zenMasterEvent"):FireServer("convertGems", num)
              end
end
})

Toggle = TabHandles.Q:Toggle({
    Title = "循环上传",    
    Callback = function(Value)        
        endisLooping = Value
                if isLooping then
                    spawn(function()
                        while isLooping and lastInputValue > 0 do
                            game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("zenMasterEvent"):FireServer("convertGems", lastInputValue)
                            wait(0.5)
                        end
                    end)
                 end
              end
            })


Toggle = TabHandles.W:Toggle({
    Title = "力量自动锻炼",
    Desc = "",
    Locked = false,
    Callback = function(Value)
        Jump = Value 
    
    spawn(function()
        while Jump do 
            local args = {[1] = "rep"}
            
            local muscleEvent = game:GetService("Players").LocalPlayer:FindFirstChild("muscleEvent")
            if muscleEvent then
                muscleEvent:FireServer(unpack(args))
            end
            wait(0.1) 
        end
    end)
end
})              

Toggle = TabHandles.W:Toggle({
    Title = "自动挥刀",
    Desc = "",
    Locked = false,
    Callback = function(AlineX)
        getgenv().AutoSwing = AlineX
        if AlineX then AutoFunctions.doSwing() end
end
})                      

Toggle = TabHandles.W:Toggle({
    Title = "自动售卖",
    Desc = "",
    Locked = false,
    Callback = function(AlineX)
        getgenv().AutoSell = AlineX
        if AlineX then AutoFunctions.doSell() end
end
})

Toggle = TabHandles.W:Toggle({
    Title = "自动升级",
    Desc = "",
    Locked = false,
    Callback = function(AlineX)
        getgenv().AutoR = AlineX
        if AlineX then AutoFunctions.doR() end
end
})

Toggle = TabHandles.W:Toggle({
    Title = "自动称号",
    Desc = "",
    Locked = false,
    Callback = function(AlineX)
        getgenv().AutoB = AlineX
        if AlineX then AutoFunctions.doB() end
end
})

Toggle = TabHandles.W:Toggle({
    Title = "自动买刀",
    Desc = "",
    Locked = false,
    Callback = function(AlineX)
        getgenv().AutoS = AlineX
        if AlineX then AutoFunctions.doS() end
end
})

Toggle = TabHandles.W:Toggle({
    Title = "自动吸气",
    Desc = "",
    Locked = false,
    Callback = function(AlineX)
        getgenv().AutoC = AlineX
        if AlineX then AutoFunctions.doC() end
end
})

local Dropdown = TabHandles.E:Dropdown({
     Title = "排除杀戮的玩家(多选)", 
     Values = PlayerList, 
     Value = {}, 
     Multi = true, 
     AllowNone = true, 
     Callback = function(d) 
      getgenv().C_NPlayers = d or {} 
    end
   })
        

local Dropdown = TabHandles.E:Dropdown({
     Title = "选择杀戮的玩家(多选)", 
     Values = PlayerList, 
     Value = {}, 
     Multi = true, 
     AllowNone = true, 
     Callback = function(d) 
      getgenv().KillPlayers = d or {} 
    end
   })
                    
Toggle = TabHandles.E:Toggle({
    Title = "开始杀戮",
    Desc = "",
    Locked = false,
    Callback = function(value)
        getgenv().KillEnabled = value
            if value then
                killTaskHandle = task.spawn(function()
                    local SpinSpeed = 5
                    local Height = 1
                    local Radius = 4
                    
                    while getgenv().KillEnabled do
                        for _, playerName in pairs(getgenv().KillPlayers) do
                            local player = Plr:FindFirstChild(playerName)
                            if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                                LP.Character.HumanoidRootPart.CFrame = CFrame.new(
                                    player.Character.HumanoidRootPart.Position + 
                                    Vector3.new(
                                        math.sin(tick() * SpinSpeed * math.pi) * Radius, 
                                        Height, 
                                        math.cos(tick() * SpinSpeed * math.pi) * Radius
                                    ),
                                    player.Character.HumanoidRootPart.Position
                                )
                                
                                workspace.Gravity = 0
                                
                                task.wait()
                                if LP.Character:WaitForChild("HumanoidRootPart") then
                                    if LP.Character:FindFirstChildOfClass("Tool") then
                                        LP.ninjaEvent:FireServer("swingKatana")
                                    else
                                        for _, tool in pairs(LP.Backpack:GetChildren()) do
                                            if tool.ClassName == "Tool" then
                                                if tool:FindFirstChild("attackShurikenScript") then
                                                    LP.Character.Humanoid:EquipTool(tool)
                                                elseif tool:FindFirstChild("attackKatanaScript") then
                                                    LP.Character.Humanoid:EquipTool(tool)
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        task.wait()
                    end
                    workspace.Gravity = 196.2
                end)
            else
                if killTaskHandle then
                    task.cancel(killTaskHandle)
                end
                workspace.Gravity = 196.2
            end
        end
})
        
Toggle = TabHandles.E:Toggle({
    Title = "全体杀戮",
    Desc = "",
    Locked = false,
    Callback = function(value)
        getgenv().MassKillEnabled = value
            if value then
                massKillTaskHandle = task.spawn(function()
                    local SpinSpeed = 5
                    local Height = 1
                    local Radius = 4
                    
                    while getgenv().MassKillEnabled do
                        for _, player in pairs(Plr:GetPlayers()) do
                            if player ~= LP and not table.find(getgenv().C_NPlayers, player.Name) then
                                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                                    LP.Character.HumanoidRootPart.CFrame = CFrame.new(
                                        player.Character.HumanoidRootPart.Position + 
                                        Vector3.new(
                                            math.sin(tick() * SpinSpeed * math.pi) * Radius, 
                                            Height, 
                                            math.cos(tick() * SpinSpeed * math.pi) * Radius
                                        ),
                                        player.Character.HumanoidRootPart.Position
                                    )
                                    
                                    workspace.Gravity = 0
                                    
                                    task.wait()
                                    if LP.Character:WaitForChild("HumanoidRootPart") then
                                        if LP.Character:FindFirstChildOfClass("Tool") then
                                            LP.ninjaEvent:FireServer("swingKatana")
                                        else
                                            for _, tool in pairs(LP.Backpack:GetChildren()) do
                                                if tool.ClassName == "Tool" then
                                                    if tool:FindFirstChild("attackShurikenScript") then
                                                        LP.Character.Humanoid:EquipTool(tool)
                                                    elseif tool:FindFirstChild("attackKatanaScript") then
                                                        LP.Character.Humanoid:EquipTool(tool)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        task.wait()
                    end
                    workspace.Gravity = 196.2
                end)
            else
                if massKillTaskHandle then
                    task.cancel(massKillTaskHandle)
                end
                workspace.Gravity = 196.2
            end
        end
})

Button = TabHandles.E:Button({
    Title = "刷新玩家列表",
    Callback = function()
        excludeTargetsDropdown:Refresh(PlayerList)
        killTargetsDropdown:Refresh(PlayerList)
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})

Input = TabHandles.R:Input({
    Title = "修改连跳",
    Placeholder = "输入连跳次数",
    Callback = function(Value)
      game.Players.LocalPlayer.multiJumpCount.Value = tonumber(Value)
            end
        })


Button = TabHandles.R:Button({
    Title = "解锁所有岛屿",        
    Callback = function()
                local positions = {
                CFrame.new(26, 766, -114),
                CFrame.new(247, 2013, 347),
                CFrame.new(162, 4047, 13),
                CFrame.new(200, 5656, 13),
                CFrame.new(200, 9284, 13),
                CFrame.new(200, 13679, 13),
                CFrame.new(200, 17686, 13),
                CFrame.new(200, 24069, 13),
                CFrame.new(197, 28256, 7),
                CFrame.new(197, 33206, 7),
                CFrame.new(197, 39317, 7),
                CFrame.new(197, 46010, 7),
                CFrame.new(197, 52607, 7),
                CFrame.new(197, 59594, 7),
                CFrame.new(197, 66668, 7),
                CFrame.new(197, 70270, 7),
                CFrame.new(197, 74442, 7),
                CFrame.new(197, 79746, 7),
                CFrame.new(197, 83198, 7),
                CFrame.new(197, 91245, 7)
            }
            
            for _, pos in ipairs(positions) do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
                wait(0.1)
            end
            
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})              
                  
    end
})

Button = TabHandles.R:Button({
    Title = "获取所有宝箱",
    Callback = function()
            local playerHead = game.Players.LocalPlayer.Character.Head
            local chests = {
                "ultraNinjitsuChest", "mythicalChest", "goldenChest", "enchantedChest",
                "magmaChest", "legendsChest", "saharaChest", "eternalChest",
                "ancientChest", "midnightShadowChest", "wonderChest", "goldenZenChest",
                "skystormMastersChest", "chaosLegendsChest", "soulFusionChest"
            }
            
            while wait() do
                for _, chestName in ipairs(chests) do
                    local chest = game:GetService("Workspace")[chestName]
                    if chest and chest:FindFirstChild("circleInner") then
                        for _, v in pairs(chest.circleInner:GetDescendants()) do
                            if v.Name == "TouchInterest" and v.Parent then
                                firetouchinterest(playerHead, v.Parent, 0)
                                wait()
                                firetouchinterest(playerHead, v.Parent, 1)
                            end
                        end
                    end
                end
            end
            
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})                    
                                    
        end
})

        Dropdown = TabHandles.T:Dropdown({
            Title = "选择抽奖机", 
            Values = eggs,
            Value = "",
            Callback = function(selectedEgg)
                selectegg = selectedEgg
            end
        })

        Toggle = TabHandles.T:Toggle({
            Title = "自动购买", 
            Value = false,
            Callback = function(open)
                getgenv().openegg = open
                while getgenv().openegg do
                    wait()
                    local A_1 = "openCrystal"
                    local A_2 = selectegg
                    local Event = game:GetService("ReplicatedStorage").rEvents.openCrystalRemote
                    Event:InvokeServer(A_1, A_2)
                end
            end
        })

Toggle = TabHandles.Y:Toggle({
    Title = "普通Boss",
    Desc = "",
    Locked = false,
    Callback = function(AlineX)
            getgenv().AutoBo = AlineX
            if AlineX then
                AutoFunctions.doBo()
            end        
end
})

Toggle = TabHandles.Y:Toggle({
    Title = "永恒Boss",
    Desc = "",
    Locked = false,
    Callback = function(AlineX)
            getgenv().AutoBo1 = AlineX
            if AlineX then
                AutoFunctions.doBo1()
            end        
end
})

Toggle = TabHandles.Y:Toggle({
    Title = "岩浆Boss",
    Desc = "",
    Locked = false,
    Callback = function(AlineX)
            getgenv().AutoBo2 = AlineX
            if AlineX then
                AutoFunctions.doBo2()
            end        
end
})                                                  