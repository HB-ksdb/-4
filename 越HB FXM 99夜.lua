local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
        Title = "HB FXM<font color='#00FF00'>1.5</font>",
        Icon = "rbxassetid://1279310654146347060",
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
        Background = "rbxassetid://4155801252"
    })
    
local Tabs = {
    Main = Window:Section({ Title = "信息", Opened = true }),
    gn = Window:Section({ Title = "功能", Opened = true }),    
}

local TabHandles = {
    xx = Tabs.Main:Tab({ Title = "信息", Icon = "layout-grid" }),    
    gn = Tabs.gn:Tab({ Title = "光环功能", Icon = "layout-grid" }),
    wpgn = Tabs.gn:Tab({ Title = "物品功能", Icon = "layout-grid" }),
    tsgn = Tabs.gn:Tab({ Title = "透视功能", Icon = "layout-grid" }),
    fzgn = Tabs.gn:Tab({ Title = "辅助功能", Icon = "layout-grid" }),    
}

hookfunction(getnamecallmethod, function()
  return
end)
for i, v in pairs({request, loadstring, base64.decode}) do
  if isfunctionhooked(v) or not isfunctionhooked(getnamecallmethod) then
    return
  end
end
local HttpService = game:GetService("HttpService")
local Plr = game:GetService("Players")
local LP = Plr.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ClientModule = require(LP:WaitForChild("PlayerScripts"):WaitForChild("Client"))
local EatRemote = ClientModule and ClientModule.Events and ClientModule.Events.RequestConsumeItem
getgenv().WS = LP.Character.Humanoid.WalkSpeed

local AlienX = {
      ["杀戮光环"] = false,
      ["自动砍树"] = false,
      ["自动进食"] = false,
      ["透视孩子"] = false,
      ["透视宝箱"] = false
    }

    local BL = {}
    local ClientModule = require(LP:WaitForChild("PlayerScripts"):WaitForChild("Client"))
    local EatRemote = ClientModule and ClientModule.Events and ClientModule.Events.RequestConsumeItem
    local function AddESP(part, txt1, txt2, enabled)
      local BG = part:FindFirstChild("BillboardGui")
      if not BG then
        local bg = Instance.new("BillboardGui")
        bg.Adornee = part
        bg.Parent = part
        bg.Size = UDim2.new(0, 100, 0, 100)
        bg.StudsOffset = Vector3.new(0, 3, 0)
        bg.AlwaysOnTop = true
        local TL = Instance.new("TextLabel", bg)
        TL.Text = txt1 .. "\n" .. txt2 .. "m"
        TL.Size = UDim2.new(1, 0, 0, 40)
        TL.Position = UDim2.new(0, 0, 0, 0)
        TL.BackgroundTransparency = 1
        TL.TextColor3 = Color3.new(1, 1, 1)
        TL.TextStrokeTransparency = 0.3
        TL.Font = Enum.Font.GothamBold
        TL.TextSize = 14
        local Img = Instance.new("ImageLabel", bg)
        Img.Position = UDim2.new(0, 20, 0, 40)
        Img.Size = UDim2.new(0, 60, 0, 60)
        Img.Image = part.Name:match("Chest") and "rbxassetid://108829629233834" or ""
        Img.BackgroundTransparency = 1


      else
        local bg = BG
        bg.TextLabel.Text = txt1 .. "\n" .. txt2 .. "m"
        bg.Enabled = enabled
      end
    end

TabHandles.gn:Toggle({
    Title = "杀戮光环",
    Desc = "自动打怪和动物",
    Icon = "check",
    Value = false,
    Callback = function(Value)
AlienX["杀戮光环"] = Value
    end
})

TabHandles.gn:Toggle({
    Title = "自动砍树",
    Icon = "check",
    Value = false,
    Callback = function(Value)
AlienX["自动砍树"] = Value
    end
})

TabHandles.gn:Toggle({
    Title = "自动进食",
    Desc = "自动吃东西，在范围内有食物的话",
    Icon = "check",
    Value = false,
    Callback = function(Value)
AlienX["自动进食"] = Value
    end
})

TabHandles.gn:Toggle({
    Title = "瞬时互动",
    Desc = "与物品互动无冷却",
    Icon = "check",
    Value = false,
    Callback = function(Value)
if Value then
        if not connection then
          connection = game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
            prompt.HoldDuration = 0
          end)
        end
       else
        if connection then
          connection:Disconnect()
        end
      end
    end
})

local function TeleportToThing(thing)
    -- 安全获取本地玩家角色部件
    local LP = game.Players.LocalPlayer
    local character = LP.Character or LP.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
    -- 遍历场景寻找目标物品
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("Model") and obj.Name == thing then
            local part = obj.PrimaryPart or obj:FindFirstChildWhichIsA("BasePart")
            if part then
                -- 将玩家传送到目标物品位置（保留原始高度偏移）
                humanoidRootPart.CFrame = part.CFrame * CFrame.new(0, 2, 0)
                return true  -- 成功传送后退出
            end
        end
    end
    return false  -- 未找到目标
end

    local function tryEatFood(food)
      if not EatRemote then warn("🚫 No EatRemote") return end
      if not ReplicatedStorage:FindFirstChild("TempStorage") then warn("🚫 No TempStorage") return end
      WindUI:Notify({Title = "Rb脚本中心：", Content = "正在吃..." .. food.Name, Duration = 5})
      food.Parent = ReplicatedStorage.TempStorage
      local success, result = pcall(function()
        return EatRemote:InvokeServer(food)
      end)
      if success and result and result.Success then
        WindUI:Notify({Title = "Rb脚本中心：", Content = "进食成功" .. food.Name, Duration = 5})
        return
       else
        WindUI:Notify({Title = "Rb脚本中心：", Content = "进食失败", Duration = 5})
        return
      end
    end
    local PlayerList = {}
    for a, b in next, Plr:GetPlayers() do
      table.insert(PlayerList, b.Name)
    end

TabHandles.wpgn:Button({
    Title = "传送至篝火/营地",
    Icon = "bell",
    Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 5, 0)
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Paragraph({
    Title = "传送至物品",
    Desc = "点击下方按钮即可将你传送至对应物品位置\n小心地图上的敌对生物",
})

TabHandles.wpgn:Paragraph({
    Title = "武器与防具"
})

TabHandles.wpgn:Button({
    Title = "左轮手枪",
    Icon = "bell",
    Callback = function()
TeleportToThing("Revolver")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "步枪",
    Icon = "bell",
    Callback = function()
TeleportToThing("Rifle")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "左轮子弹",
    Icon = "bell",
    Callback = function()
TeleportToThing("Revolver Ammo")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "步枪子弹",
    Icon = "bell",
    Callback = function()
TeleportToThing("Rifle Ammo")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "皮革护甲",
    Icon = "bell",
    Callback = function()
TeleportToThing("Leather Body") 
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "铁质护甲",
    Icon = "bell",
    Callback = function()
TeleportToThing("Iron Body")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "尖刺护甲",
    Icon = "bell",
    Callback = function()
TeleportToThing("Thorn Body")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Paragraph({
    Title = "废料"
})


TabHandles.wpgn:Button({
    Title = "螺丝",
    Desc = "价值：一个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Bolt")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "金属板",
    Desc = "价值：两个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Sheet Metal")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "废弃收音机",
    Desc = "价值：两个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Old Radio")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "废弃电风扇",
    Desc = "价值：两个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Broken Fan")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "废弃微波炉",
    Desc = "价值：三个废料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Broken Microwave")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Paragraph({
    Title = "燃料"
})


TabHandles.wpgn:Button({
    Title = "原木",
    Desc = "价值：一个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Log")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "椅子",
    Desc = "价值：一个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Chair")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "煤块",
    Desc = "价值：两个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Coal")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "汽油桶",
    Desc = "价值：三个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Fuel Canister")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "石油桶",
    Desc = "价值：四个燃料",
    Icon = "bell",
    Callback = function()
TeleportToThing("Oil Barrel")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Paragraph({
    Title = "食物"
})


TabHandles.wpgn:Button({
    Title = "胡萝卜",
    Desc = "价值：一格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Carrot")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "野浆果",
    Desc = "价值：一格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Berry")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "生肉腿",
    Desc = "价值：一格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Morsel")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "生肉排",
    Desc = "价值：一格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Steak")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "熟肉腿",
    Desc = "价值：两格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Cooked Morsel")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "熟肉排",
    Desc = "价值：两格饱食",
    Icon = "bell",
    Callback = function()
TeleportToThing("Cooked Steak")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Paragraph({
    Title = "医疗"
})


TabHandles.wpgn:Button({
    Title = "绷带",
    Icon = "bell",
    Callback = function()
TeleportToThing("Bandage")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.wpgn:Button({
    Title = "医疗包",
    Icon = "bell",
    Callback = function()
TeleportToThing("MedKit")
        WindUI:Notify({
            Title = "HB FXM脚本：",
            Content = "已传送至物品位置，若没有传送则为物品未刷新",
            Icon = "bell",
            Duration = 3
        })
    end
})

TabHandles.tsgn:Toggle({
    Title = "透视儿童",
    Icon = "check",
    Callback = function(Value)
AlienX["透视孩子"] = Value
    end
})

TabHandles.tsgn:Toggle({
    Title = "透视宝箱",
    Icon = "check",
    Callback = function(Value)
AlienX["透视宝箱"] = Value
    end
})

local csDropdown = TabHandles.fzgn:Dropdown({
    Title = "传送至玩家",
    Desc = "选择你要传送到的玩家",
    Values = PlayerList,
    Value = "",
    Callback = function(d)
if Plr[d] and Plr[d].Character and Plr[d].Character:FindFirstChild("HumanoidRootPart") then
          LP.Character:PivotTo(Plr[d].Character.HumanoidRootPart.CFrame)
        end
        WindUI:Notify({
            Title = "HB脚本中心：",
            Content = "你已选择: "..d,
            Duration = 2
        })
    end
})

TabHandles.fzgn:Toggle({
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