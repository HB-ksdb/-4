local LS = {
    playernamedied = "",
    dropdown = {},
    LoopTeleport = false,
}

local speeds = 5
local nowe = false
local tpwalking = false
local speaker = game:GetService("Players").LocalPlayer
local heartbeat = game:GetService("RunService").Heartbeat

local function updatespeed(char, hum)
	if nowe == true then
		tpwalking = false
		heartbeat:Wait()
		task.wait(.1)
		heartbeat:Wait()

		for i = 1, speeds do
			spawn(function()
				tpwalking = true

				while tpwalking and heartbeat:Wait() and char and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						char:TranslateBy(hum.MoveDirection)
					end
				end
			end)
		end
	end
end

speaker.CharacterAdded:Connect(function(char)
	local char = speaker.Character
	if char then
		task.wait(0.7)
		char.Humanoid.PlatformStand = false
		char.Animate.Disabled = false
	end
end)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("StarterGui")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage  = game:GetService("ReplicatedStorage")
local HumRootPart = game.Players.LocalPlayer.Character.Humanoid
local ProximityPromptService = game:GetService("ProximityPromptService")
local VirtualUser = game:GetService("VirtualUser")
local Lighting = game:GetService("Lighting")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local tpwalkingspeed = false
local hb = RunService.Heartbeat
local speed = 1
getgenv().HitboxSize = 15
getgenv().HitboxTransparency = 0.9

getgenv().HitboxStatus = false
getgenv().TeamCheck = false

function shuaxinlb(zji)
    LS.dropdown = {}
    if zji == true then
        for _, player in pairs(game.Players:GetPlayers()) do
            table.insert(LS.dropdown, player.Name)
        end
    else
        local lp = game.Players.LocalPlayer
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= lp then
                table.insert(LS.dropdown, player.Name)
            end
        end
    end
end
shuaxinlb(true)
local success, library = pcall(function()
    return loadstring(game:HttpGet("https://github.com/AURORA666Script/ui/raw/refs/heads/main/Best.lua"))()
end)

if not success then
    Notification("星际虚影", "UI加载失败", 3)
    return
end
--
local window = library:new("星际虚影 | 战争大亨 | "..identifyexecutor())
--
local Page1 = window:Tab("主要功能",'16060333448')
local Main = Page1:section("主要",false)
local Teleport = Page1:section("传送",false)

local Page2 = window:Tab("主要功能",'16060333448')
local Player = Page2:section("人物",false)
local Hitbox = Page2:section("范围",false)

local Page3 = window:Tab("其他功能",'16060333448')
local Fly = Page3:section("飞行",false)

local Page4 = window:Tab("选择功能",'16060333448')
local Select = Page4:section("Dropdown",false)

Main:Toggle("弹窗循环", "", false, function()
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    
    while state do
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= Players.LocalPlayer then
                local args = {
                    [1] = "StarterCase",
                    [2] = 1e20,
                    [3] = player
                }
    
                ReplicatedStorage:WaitForChild("Attachments System"):WaitForChild("CamoCaseGift"):FireServer(unpack(args))
            end
        end
        wait(0)
    end
end)

Main:Toggle("自动救人", "", false, function()
    local RunService = game:GetService("RunService")
    local CollectionService = game:GetService("CollectionService")

    local REVIVE_PROMPT_TAG = "RevivePromptTag"

    for _, prompt in ipairs(workspace:GetDescendants()) do
        if prompt.Name == "RevivePrompt" then
            CollectionService:AddTag(prompt, REVIVE_PROMPT_TAG)
        end
    end

    workspace.DescendantAdded:Connect(function(descendant)
        if descendant.Name == "RevivePrompt" then
            CollectionService:AddTag(descendant, REVIVE_PROMPT_TAG)
        end
    end)

    local function triggerPrompt(prompt)
        if prompt.Parent then
            fireproximityprompt(prompt)
        end
    end

    while true do
        local tagged = CollectionService:GetTagged(REVIVE_PROMPT_TAG)
        for _, prompt in ipairs(tagged) do
            coroutine.wrap(triggerPrompt)(prompt)
        end
        wait()
    end
end)


Main:Button("无后座快速射击",function()
local replicationstorage = game.ReplicatedStorage
    for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
      if v.Name == "Auto" then
        v.Value = true
      end
      if v.Name == "RecoilControl" then
        v.Value = 0
      end
      if v.Name == "MaxSpread" then
        v.Value = 0
      end
      if v.Name == "ReloadTime" then
        v.Value = 0
      end
      if v.Name == "FireRate" then
        v.Value = 0.05
      end
      if v.Name == "Crit" then
        v.Value = 20
      end
    end
end)

Main:Toggle("子弹追踪", "silent", false, function(silent)
        if silent then
        local CurrentCamera = workspace.CurrentCamera
local Players = game.Players
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
function ClosestPlayer()
    local MaxDist, Closest = math.huge
    for I,V in pairs(Players.GetPlayers(Players)) do
        if V == LocalPlayer then continue end
        if V.Team == LocalPlayer then continue end
        if not V.Character then continue end
    local Head = V.Character.FindFirstChild(V.Character, "Head")
        if not Head then continue end
        local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Head.Position)
        if not Vis then continue end
        local MousePos, TheirPos = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2), Vector2.new(Pos.X, Pos.Y)
        local Dist = (TheirPos - MousePos).Magnitude
        if Dist < MaxDist then
            MaxDist = Dist
            Closest = V
        end
    end
    return Closest
end
local MT = getrawmetatable(game)
local OldNC = MT.__namecall
local OldIDX = MT.__index
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
    local Args, Method = {...}, getnamecallmethod()
    if Method == "FindPartOnRayWithIgnoreList" and not checkcaller() then
        local CP = ClosestPlayer()
        if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, "Head") then
            Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character.Head.Position - CurrentCamera.CFrame.Position).Unit * 1000)
            return OldNC(self, unpack(Args))
        end
    end
    return OldNC(self, ...)
end)
MT.__index = newcclosure(function(self, K)
    if K == "Clips" then
        return workspace.Map
    end
    return OldIDX(self, K)
end)
setreadonly(MT, true)
    else
        local CurrentCamera = workspace.CurrentCamera
local Players = game.Players
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
function ClosestPlayer()
    local MaxDist, Closest = math.huge
    for I,V in pairs(Players.GetPlayers(Players)) do
        if V == LocalPlayer then continue end
        if V.Team == LocalPlayer then continue end
        if not V.Character then continue end
        local Head = V.Character.FindFirstChild(V.Character, "Head")
        if not Head then continue end
        local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Head.Position)
        if not Vis then continue end
        local MousePos, TheirPos = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 0, workspace.CurrentCamera.ViewportSize.Y / 0), Vector2.new(Pos.X, Pos.Y)
        local Dist = (TheirPos - MousePos).Magnitude
        if Dist < MaxDist then
            MaxDist = Dist
            Closest = V
        end
    end
    return Closest
end
local MT = getrawmetatable(game)
local OldNC = MT.__namecall
local OldIDX = MT.__index
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
    local Args, Method = {...}, getnamecallmethod()
    if Method == "FindPartOnRayWithIgnoreList" and not checkcaller() then
        local CP = ClosestPlayer()
        if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, "Head") then
            Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character.Head.Position - CurrentCamera.CFrame.Position).Unit * 1000)
            return OldNC(self, unpack(Args))
        end
    end
    return OldNC(self, ...)
end)
MT.__index = newcclosure(function(self, K)
    if K == "Clips" then
        return workspace.Map
    end
    return OldIDX(self, K)
end)
setreadonly(MT, true)
    end
end)

Main:Button("删除所有门", function()
    for _, v in pairs(Workspace.Tycoon.Tycoons:GetChildren()) do
        for _, y in pairs(v.PurchasedObjects:GetChildren()) do
            if y.Name:find("Door") or y.Name:find("Gate") then y:destroy() end
        end
    end
end)

Main:Toggle("获取所有玩家背包", "GetBackPack", false, function(state)
    if state then
        while state do
            for i,v in pairs(game.Players:GetChildren()) do
                wait()
                for i,b in pairs(v.Backpack:GetChildren()) do
                    b.Parent = game.Players.LocalPlayer.Backpack
                    wait()
                end
            end
        end
    end
end)

Main:Button("全图杀人(需要火箭筒才能用)", function()
    local argsTemplate = {
    [1] = Vector3.new(),
    [2] = Vector3.new(0, 1, 0),
    [3] = game:GetService("Players").LocalPlayer.Character.RPG,
    [4] = game:GetService("Players").LocalPlayer.Character.RPG,
    [7] = "zxcvbnm4189Rocket2"
}

local localPlayer = game:GetService("Players").LocalPlayer
local localPlayerTeam = localPlayer.Team

while true do
    local players = game:GetService("Players"):GetPlayers()
    local localPlayerPosition = localPlayer.Character.HumanoidRootPart.Position
    local upwardVector = Vector3.new(0, 1, 0)
    local targetPosition = localPlayerPosition + upwardVector * 1000

    for _, player in ipairs(players) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("Torso") then
            local args = table.clone(argsTemplate)
            args[1] = targetPosition
            args[5] = player.Character.Torso

            game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
        end

        if player ~= localPlayer and player.Team ~= localPlayerTeam then
            local playerTeamName = player.Team and player.Team.Name
            if playerTeamName then
                local shield = workspace:WaitForChild("Tycoon"):WaitForChild("Tycoons"):FindFirstChild(playerTeamName)
                if shield then
                    shield = shield:FindFirstChild("PurchasedObjects")
                    if shield then
                        shield = shield:FindFirstChild("Base Shield")
                        if shield then
                            shield = shield:FindFirstChild("Shield")
                            if shield then
                                shield = shield:FindFirstChild("Shield4")
                                if shield then
                                    local args = table.clone(argsTemplate)
                                    args[1] = targetPosition
                                    args[5] = shield

                                    game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    wait(0)
end
end)

Main:Button("一键占领旗帜", function()
local oldpos=lp.Character.HumanoidRootPart.CFrame
local tycoon
for i,c in next,workspace.Tycoon.Tycoons:GetChildren() do
    if c:FindFirstChild("Owner") and c.Owner.Value ==lp then
       tycoon=c.Name
    end
    end

    if tostring( workspace["Game Systems"].CapturePoint['Captured Team'].Value)~=tycoon then
        repeat game:GetService("RunService").Stepped:wait()
    
            tp(CFrame.new(70.7639999, 44.887001, 189)+Vector3.new(0,5,0))   
           until tostring( workspace["Game Systems"].CapturePoint['Captured Team'].Value)==tycoon
    end
wait(12)
tp(oldpos)
end)

Main:Button("无限子弹(king team制作)", function()
local lp = game.Players.LocalPlayer

for i, v in next, lp.Backpack:GetDescendants() do
    if v.Name == 'Settings' then
        local success, settingsModule = pcall(require, v)
        if success then
            settingsModule.Ammo = math.huge
        else
            warn("无法要求设置: " .. tostring(settingsModule))
        end
    end
end
end)

Main:Button("无限子弹", function()
    local player = game.Players.LocalPlayer
    local backpack = player.Backpack
    
    local function modifyGun(gun)
        if gun then
            gun.Ammo = 999999999999999
            gun.Mode = "Auto"
            gun.FireModes.Auto = true
            gun.FireRate = 9999999999999999
            gun.DamageMultiplier = 1000000000
            gun.Distance = 1000000000
            
            gun.VRecoil = {0, 0}
            gun.HRecoil = {0, 0}
            gun.RecoilPunch = 0
            gun.VPunchBase = 0
            gun.HPunchBase = 0
            gun.DPunchBase = 0
            gun.MinRecoilPower = 0
            gun.MaxRecoilPower = 0
            
            gun.BSpeed = 100000000
            
            gun.BDrop = 0
            
            gun.MinSpread = 0
            gun.MaxSpread = 0
        end
    end
    
    for _, tool in ipairs(backpack:GetChildren()) do
        local settingsModule = tool:FindFirstChild("ACS_Modulo") and tool["ACS_Modulo"]:FindFirstChild("Variaveis") and tool["ACS_Modulo"]["Variaveis"]:FindFirstChild("Settings")
        if settingsModule then
            local success, gun = pcall(require, settingsModule)
            if success then
                modifyGun(gun)
            else
                warn("Failed to modify gun: " .. tostring(gun))
            end
        end
    end
end)

Main:Button("爆炸狙", function()
    local player = game.Players.LocalPlayer
    local backpack = player.Backpack
    
    for _, tool in ipairs(backpack:GetChildren()) do
        local settingsModule = tool:FindFirstChild("ACS_Modulo") and tool["ACS_Modulo"]:FindFirstChild("Variaveis") and tool["ACS_Modulo"]["Variaveis"]:FindFirstChild("Settings")
        if settingsModule then
            local gun = require(settingsModule)
            
            if gun["Bullets"] then
                gun["Bullets"] = 1
            end
            
            if gun["Ammo"] then
                gun["Ammo"] = 5000000
            end
            
            if gun["Mode"] then
                gun["Mode"] = "Auto"
            end
            
            if gun["FireModes"] and gun["FireModes"]["Auto"] ~= nil then
                gun["FireModes"]["Auto"] = true
            end
            
            if gun["FireRate"] then
                gun["FireRate"] = 1000000000
            end
            
            if gun["DamageMultiplier"] then
                gun["DamageMultiplier"] = 1000000000
            end
            
            if gun["Distance"] then
                gun["Distance"] = 1000000000
            end
            
            if gun["VRecoil"] then
                gun["VRecoil"] = {0, 0}
            end
            
            if gun["HRecoil"] then
                gun["HRecoil"] = {0, 0}
            end
            
            if gun["RecoilPunch"] then
                gun["RecoilPunch"] = 0
            end
            
            if gun["VPunchBase"] then
                gun["VPunchBase"] = 0
            end
            
            if gun["HPunchBase"] then
                gun["HPunchBase"] = 0
            end
            
            if gun["DPunchBase"] then
                gun["DPunchBase"] = 0
            end
            
            if gun["MinRecoilPower"] then
                gun["MinRecoilPower"] = 0
            end
            
            if gun["MaxRecoilPower"] then
                gun["MaxRecoilPower"] = 0
            end
    
            if gun["BSpeed"] then
                gun["BSpeed"] = 100000000
            end
            
            if gun["BDrop"] then
                gun["BDrop"] = 0
            end
    
            if gun["MinSpread"] then
                gun["MinSpread"] = 0
            end
            
            if gun["MaxSpread"] then
                gun["MaxSpread"] = 0
            end
        end
    end
end)

Main:Toggle("自动修电箱", "", false, function()
    if state then
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        while state do
            for _, room in pairs(workspace.Rooms:GetChildren()) do
                local interactables = room:FindFirstChild("Interactables")
                
                if interactables then
                    for _, generator in pairs(interactables:GetChildren()) do
                        if generator.Name == "Generator" and generator:FindFirstChild("Fixed") and generator:FindFirstChild("RemoteFunction") and generator:FindFirstChild("RemoteEvent") then
                            local proximityPrompt = generator.ProxyPart:FindFirstChild("ProximityPrompt")
                            
                            generator.RemoteFunction:InvokeServer()

                            local distance = (character.PrimaryPart.Position - generator.ProxyPart.Position).Magnitude

                            if distance <= proximityPrompt.MaxActivationDistance and generator.Fixed.Value < 100 then
                                local args = {
                                    [1] = true
                                }
                                generator.RemoteEvent:FireServer(unpack(args))
                            end
                        elseif generator.Name == "EncounterGenerator" and generator:FindFirstChild("Fixed") and generator:FindFirstChild("RemoteFunction") and generator:FindFirstChild("RemoteEvent") then
                            local proximityPrompt = generator.ProxyPart:FindFirstChild("ProximityPrompt")
                            
                            generator.RemoteFunction:InvokeServer()

                            local distance = (character.PrimaryPart.Position - generator.ProxyPart.Position).Magnitude

                            if distance <= proximityPrompt.MaxActivationDistance and generator.Fixed.Value < 100 then
                                local args = {
                                    [1] = true
                                }
                                generator.RemoteEvent:FireServer(unpack(args))
                            end
                        end
                    end
                end
            end
            wait(0)
        end
    end
end)

Main:Button("车辆货箱",function()
    for _,v in pairs(Workspace.Beams:GetChildren()) do
         if(v.Name:find("Airdrop_")) then Player.Character.HumanoidRootPart.CFrame = v.CFrame; end;
     end;
end)

Main:Button("隔空投送",function()
    for _, v in pairs(Workspace.Beams:GetChildren()) do
        if(v.Name:find("Warehouse")) then
            Player.Character.HumanoidRootPart.CFrame = Workspace.Beams[v.Name].CFrame;
            break
        end;
    end;
end)

Main:Button("防暴盾牌", function()
    ReplicatedStorage.BulletFireSystem.GunReload:destroy()
    local gunReload = Instance.new("Part")
    gunReload.Name = "GunReload"
    gunReload.Parent = ReplicatedStorage.BulletFireSystem
    while true do
        wait(0)
        for _, v in pairs(Player.Character:GetChildren()) do
            if v.ClassName == "Tool" then v.ACS_Modulo.Variaveis.Ammo.Value = 9999 end
        end
    end
end)

Main:Button("删除视觉盔甲和头盔", function()
    local character = game.Players.LocalPlayer.Character
    for _, child in pairs(character:GetChildren()) do
        if child.ClassName == "Accessory" then
            child:Destroy()
        elseif child:IsA("BasePart") then
            if child.Name:find("Armor") then
                child.Mesh:Destroy()
            elseif child.Name:find("Helmet") then
                child:Destroy()
            end
        end
    end
end)

Teleport:Button("传送到空投", function()
    local Folder = workspace["Game Systems"] local player = game.Players.LocalPlayer.Character.HumanoidRootPart for _, Child in ipairs(Folder:GetDescendants()) do if Child.Name:match("Airdrop_") then player.CFrame = Child.MainPart.CFrame end end
end)

Teleport:Dropdown("基地传送","Dropdown",{"Alpha","Bravo","Charlie","Delta","Echo", "Foxtrot", "Golf","Hotel","Kilo", "Lima", "Omega", "Romeo","Sierra","Tango","Victor","Zulu"}, function(Value)
game:GetService("Players").LocalPlayer.Character:MoveTo(workspace.Tycoon.TycoonFloor[Value].Position)
end)

Teleport:Button("传送自己的基地", function()
    game:GetService("Players").LocalPlayer.Character:MoveTo(workspace.Tycoon.Tycoons[game:GetService("Players").LocalPlayer.leaderstats.Team.Value].Essentials.Spawn.Position)
end)

Teleport:Button("酒店基地",function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(2853, 48, -1282)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.2)
pl.CFrame = location
end)

Teleport:Button("传送旗帜", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(73.22032928466797, 47.9999885559082, 191.06993103027344)
end)

Teleport:Button("传送油桶1", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9.748652458190918, 48.662540435791016, 700.2245483398438)
end)

Teleport:Button("传送油桶2", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(76.48243713378906, 105.25657653808594, -2062.3896484375)
end)

Teleport:Button("传送油桶3", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-28.840208053588867, 49.34040069580078, -416.9921569824219)
end)

Teleport:Button("传送油桶4", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(69.48390197753906, 105.25657653808594, 3434.9033203125)
end)

Player:Slider("FPS", 'Sliderflag', 300, 300, 100000, false,function(Value)
    setfpscap(Value)
end)

Player:Slider('相机焦距上限', 'ZOOOOOM OUT',  128, 128, 200000,false, function(Value)
    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = Value
end)

Player:Slider('相机焦距（正常70）', 'Sliderflag', 70, 0.1, 250, false, function(v)
        game.Workspace.CurrentCamera.FieldOfView = v
end)

Player:Textbox("漂移加速", "", "输入数字", function(Value)
    if tonumber(Value) then
        speed = tonumber(Value)
        tpwalkingspeed = true
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character and character:FindFirstChildWhichIsA("Humanoid")
        
        if humanoid then
            RunService:UnbindFromRenderStep("TPWalk")

            RunService:BindToRenderStep("TPWalk", Enum.RenderPriority.Character.Value, function(delta)
                if tpwalkingspeed and character and humanoid and humanoid.Parent then
                    if humanoid.MoveDirection.Magnitude > 0 then
                        character:TranslateBy(humanoid.MoveDirection * speed * delta * 10)
                    end
                end
            end)
        end
    else
        print("Invalid input. Please enter a number.")
    end
end)

Player:Button("点击即可漂移加速关闭",function()
    tpwalkingspeed = false
    RunService:UnbindFromRenderStep("TPWalk")
end)

Player:Slider('跳跃', 'JumpPowerSlider', 50, 50, 10000,false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end)

Hitbox:Toggle("范围模型开启", "HitboxStatus", false, function(state)
	getgenv().HitboxStatus = state
    game:GetService('RunService').RenderStepped:connect(function()
		if HitboxStatus == true and TeamCheck == false then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
						v.Character.HumanoidRootPart.Transparency = HitboxTransparency
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		elseif HitboxStatus == true and TeamCheck == true then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if game:GetService('Players').LocalPlayer.Team ~= v.Team then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
						v.Character.HumanoidRootPart.Transparency = HitboxTransparency
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		else
		    for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(2,2,1)
						v.Character.HumanoidRootPart.Transparency = 1
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
						v.Character.HumanoidRootPart.Material = "Plastic"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		end
	end)
end)

Hitbox:Textbox("模型范围大小", "HitboxSize", "输入", function(value)
    getgenv().HitboxSize = value
end)

Hitbox:Toggle("区分队伍开启", "TeamCheck", false, function(state)
    getgenv().TeamCheck = state
    ESP_SETTINGS.Teamcheck = true
end)

Hitbox:Textbox("模型范围透明度（调0更好区分队伍）", "HitboxTransparency", "输入", function(value)
    getgenv().HitboxTransparency = number
end)


Fly:Toggle("飞行", "ArceusX Fly", false, function(Value)
	local char = speaker.Character
	if not char or not char.Humanoid then
		return
	end

	local hum = char.Humanoid
	if nowe == true then
		nowe = false

		hum:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		hum:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)	
	else
		nowe = true
		updatespeed(char, hum)

		char.Animate.Disabled = true
		for i,v in next, hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end

		hum:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		hum:ChangeState(Enum.HumanoidStateType.Swimming)
	end
    
    local function CheckRig()
        if speaker.Character and speaker.Character:FindFirstChild("Torso") then
                return speaker.Character.Torso
        elseif speaker.Character and speaker.Character:FindFirstChild("LowerTorso") then
                return speaker.Character.LowerTorso
        end
    end


	local UpperTorso = CheckRig()
	local flying = true
	local deb = true
	local ctrl = {f = 0, b = 0, l = 0, r = 0}
	local lastctrl = {f = 0, b = 0, l = 0, r = 0}
	local maxspeed = 50
	local speed = 0

	local bg = Instance.new("BodyGyro", UpperTorso)
	bg.P = 9e4
	bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
	bg.cframe = UpperTorso.CFrame

	local bv = Instance.new("BodyVelocity", UpperTorso)
	bv.velocity = Vector3.new(0,0.1,0)
	bv.maxForce = Vector3.new(9e9, 9e9, 9e9)

	if nowe == true then
		hum.PlatformStand = true
	end

	while nowe == true or hum.Health == 0 do
		task.wait()

		if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
			speed = speed+.5+(speed/maxspeed)
			if speed > maxspeed then
				speed = maxspeed
			end
		elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
			speed = speed-1
			if speed < 0 then
				speed = 0
			end
		end
		if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
			bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
		elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
			bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
		else
			bv.velocity = Vector3.new(0,0,0)
		end

		bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
	end

	ctrl = {f = 0, b = 0, l = 0, r = 0}
	lastctrl = {f = 0, b = 0, l = 0, r = 0}
	speed = 0
	bg:Destroy()
	bv:Destroy()

	hum.PlatformStand = false
	char.Animate.Disabled = false
	tpwalking = false
end, false)

Fly:Button("速度 + 1", function()
	local char = speaker.Character
	if char and char.Humanoid then
		local hum = char.Humanoid
		speeds = speeds + 1
		updatespeed(char, hum)
		end
end)

Fly:Button("速度 - 1", function()
	local char = speaker.Character
	if char and char.Humanoid then
		local hum = char.Humanoid
		if speeds > 1 then
			speeds = speeds - 1
			updatespeed(char, hum)
		end
    end
end)

Fly:Button("上升", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
end)

Fly:Button("下降", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
end)

local Players = Select:Dropdown("选择玩家名字已开始下面的功能", 'Dropdown', LS.dropdown, function(v)
    LS.playernamedied = v
end)

Select:Button("重置玩家名字", function()
    shuaxinlb(true)
    Players:SetOptions(LS.dropdown)
end)

Select:Toggle("锁定传送", 'ToggleTeleport', false, function(state)
    if state then
        LS.LoopTeleport = true
        while LS.LoopTeleport do
            local HumRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
            local tp_player = game.Players:FindFirstChild(LS.playernamedied)
            if tp_player and tp_player.Character and tp_player.Character.HumanoidRootPart then
                HumRoot.CFrame = tp_player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
            end
            wait()
        end
        Notify("LSTM Archive", "已开启循环传送", "rbxassetid://", 5)
    else
        LS.LoopTeleport = false
        Notify("LSTM Archive", "已停止循环传送", "rbxassetid://", 5)
    end
end)

Select:Toggle("循环传送玩家过来", "TeleportLoop", false, function(state)
    if state then
        LS.LoopTeleport = true
        while LS.LoopTeleport do
            local HumRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
            local tp_player = game.Players:FindFirstChild(LS.playernamedied)
            if tp_player and tp_player.Character and tp_player.Character.HumanoidRootPart then
                tp_player.Character.HumanoidRootPart.CFrame = HumRoot.CFrame + Vector3.new(0, 3, 0)
                Notify("LSTM Archive", "已传送过来", "rbxassetid://", 5)
            end
            wait()
        end
    else
        LS.LoopTeleport = false
    end
end)

Select:Toggle("吸全部玩家", "Tp all", false, function(state)
    if state then
        while state do
            for i, v in next, game:GetService('Players'):GetPlayers() do
                if v.Name ~= game:GetService('Players').LocalPlayer.Name then 
                    local localPlayerPosition = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position
                    local direction = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector
                    local newPosition = localPlayerPosition + direction * 3
                    v.Character.HumanoidRootPart.CFrame = CFrame.new(newPosition, localPlayerPosition + direction * 4)
                    wait()
                end
            end
        end
    end
end)

Select:Toggle("查看玩家", 'Toggleflag', false, function(state)
    if state then
        game:GetService('Workspace').CurrentCamera.CameraSubject =
            game:GetService('Players'):FindFirstChild(LS.playernamedied).Character.Humanoid
        Notify("LSTM Archive", "已打开查看玩家", "rbxassetid://", 5)
    else
        local lp = game.Players.LocalPlayer
        game:GetService('Workspace').CurrentCamera.CameraSubject = lp.Character.Humanoid
        Notify("LSTM Archive", "已关闭查看玩家", "rbxassetid://", 5)
    end
end)

Select:Toggle("循环甩飞", "AutoFling",false, function(t)
if LS.playernamedied == nil then
 elseif LS.playernamedied ~= nil then
getgenv().autofling = t
spawn(function()
while autofling do wait()
pcall(function()
local Targets = {LS.playernamedied}

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local AllBool = false

local GetPlayer = function(Name)
    Name = Name:lower()
    if Name == "all" or Name == "others" then
        AllBool = true
        return
    elseif Name == "random" then
        local GetPlayers = Players:GetPlayers()
        if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
        return GetPlayers[math.random(#GetPlayers)]
    elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
        for _,x in next, Players:GetPlayers() do
            if x ~= Player then
                if x.Name:lower():match("^"..Name) then
                    return x;
                elseif x.DisplayName:lower():match("^"..Name) then
                    return x;
                end
            end
        end
    else
        return
    end
end

local Message = function(_Title, _Text, Time)
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
end

local SkidFling = function(TargetPlayer)
    local Character = Player.Character
    local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Humanoid and Humanoid.RootPart

    local TCharacter = TargetPlayer.Character
    local THumanoid
    local TRootPart
    local THead
    local Accessory
    local Handle

    if TCharacter:FindFirstChildOfClass("Humanoid") then
        THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
    end
    if THumanoid and THumanoid.RootPart then
        TRootPart = THumanoid.RootPart
    end
    if TCharacter:FindFirstChild("Head") then
        THead = TCharacter.Head
    end
    if TCharacter:FindFirstChildOfClass("Accessory") then
        Accessory = TCharacter:FindFirstChildOfClass("Accessory")
    end
    if Accessoy and Accessory:FindFirstChild("Handle") then
        Handle = Accessory.Handle
    end

    if Character and Humanoid and RootPart then
        if RootPart.Velocity.Magnitude < 50 then
            getgenv().OldPos = RootPart.CFrame
        end
        if THumanoid and THumanoid.Sit and not AllBool then
            return Message("Error❌", "LSTM Archive", 5)
        end
        if THead then
            workspace.CurrentCamera.CameraSubject = THead
        elseif not THead and Handle then
            workspace.CurrentCamera.CameraSubject = Handle
        elseif THumanoid and TRootPart then
            workspace.CurrentCamera.CameraSubject = THumanoid
        end
        if not TCharacter:FindFirstChildWhichIsA("BasePart") then
            return
        end

        local FPos = function(BasePart, Pos, Ang)
            RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
            Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
            RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
            RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
        end

        local SFBasePart = function(BasePart)
            local TimeToWait = 2
            local Time = tick()
            local Angle = 0

            repeat
                if RootPart and THumanoid then
                    if BasePart.Velocity.Magnitude < 50 then
                        Angle = Angle + 100

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()
                    else
                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()
                    end
                else
                    break
                end
            until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
        end

        workspace.FallenPartsDestroyHeight = 0/0

        local BV = Instance.new("BodyVelocity")
        BV.Name = "EpixVel"
        BV.Parent = RootPart
        BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
        BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)

        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)

        if TRootPart and THead then
            if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
                SFBasePart(THead)
            else
                SFBasePart(TRootPart)
            end
        elseif TRootPart and not THead then
            SFBasePart(TRootPart)
        elseif not TRootPart and THead then
            SFBasePart(THead)
        elseif not TRootPart and not THead and Accessory and Handle then
            SFBasePart(Handle)
        else
            return Message("已开/关", "LSTM Archive", 5)
        end

        BV:Destroy()
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        workspace.CurrentCamera.CameraSubject = Humanoid

        repeat
            RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
            Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
            Humanoid:ChangeState("GettingUp")
            table.foreach(Character:GetChildren(), function(_, x)
                if x:IsA("BasePart") then
                    x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
                end
            end)
            task.wait()
        until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
        workspace.FallenPartsDestroyHeight = getgenv().FPDH
    else
        return Message("玩家消失", "已停止", 5)
    end
end

if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end

if AllBool then
    for _,x in next, Players:GetPlayers() do
        SkidFling(x)
    end
end

for _,x in next, Targets do
    if GetPlayer(x) and GetPlayer(x) ~= Player then
        if GetPlayer(x).UserId ~= 1414978355 then
            local TPlayer = GetPlayer(x)
            if TPlayer then
                SkidFling(TPlayer)
            end
        else
            Message("检测到玩家消失", "已停止", 5)
        end
    elseif not GetPlayer(x) and not AllBool then
        Message("未获取到玩家或工具", "已停止", 5)
    end
end
end)
end
end)
end
end)

Select:Toggle("自瞄选择目标", "Aimbot", false, function(Aimbot)
    if Aimbot then
        while Aimbot do
            local Cam = workspace.CurrentCamera
            local targetPlayer = game.Players:FindFirstChild(LS.playernamedied)
            local target = targetPlayer and targetPlayer.Character and targetPlayer.Character.HumanoidRootPart
            if target and Cam then
                local lookVector = (target.Position - Cam.CFrame.Position).unit
                local newCFrame = CFrame.new(Cam.CFrame.Position, Cam.CFrame.Position + lookVector)
                Cam.CFrame = newCFrame
                wait()
            else
                break
            end
        end
    end
end)
