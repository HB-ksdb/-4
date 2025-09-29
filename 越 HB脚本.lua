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

local Paragraph = Tab:Paragraph({
    Title = "您的用户名ID：",
    Desc = "" .. game:GetService("Players").LocalPlayer.UserId .. "",
    Buttons = {{
        Title = "复制您的用户名ID",
        Icon = "copy",
        Variant = "Primary",
        Callback = function()

            setclipboard(game:GetService("Players").LocalPlayer.UserId)

            local Sound = Instance.new("Sound", game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://2865227271"
            Sound:Play()
            WindUI:Notify({
                Title = "HB脚本中心---提示：",
                Content = "已成功复制！",
                Icon = "bell",
                IconThemed = true, -- automatic color icon to theme 
                Duration = 5
            })

        end,
        Icon = "bird"
    }}
})

local Paragraph = Tab:Paragraph({
    Title = "您所在的服务器名称：",
    Desc = "" .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. "",
    Buttons = {{
        Title = "复制您所在的服务器名称",
        Icon = "copy",
        Variant = "Primary",
        Callback = function()

            setclipboard(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)

            local Sound = Instance.new("Sound", game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://2865227271"
            Sound:Play()
            WindUI:Notify({
                Title = "HB脚本中心---提示：",
                Content = "已成功复制！",
                Icon = "bell",
                IconThemed = true, -- automatic color icon to theme 
                Duration = 5
            })

        end,
        Icon = "bird"
    }}
})

local Paragraph = Tab:Paragraph({
    Title = "您的账号注册时间（天）：",
    Desc = "" .. game:GetService("Players").LocalPlayer.AccountAge .. "",
    Buttons = {{
        Title = "复制您的注册时间",
        Icon = "copy",
        Variant = "Primary",
        Callback = function()

            setclipboard(game:GetService("Players").LocalPlayer.AccountAge)

            local Sound = Instance.new("Sound", game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://2865227271"
            Sound:Play()
            WindUI:Notify({
                Title = "HB脚本中心---提示：",
                Content = "已成功复制！",
                Icon = "bell",
                IconThemed = true, -- automatic color icon to theme 
                Duration = 5
            })

        end,
        Icon = "bird"
    }}
})

local Paragraph = Tab:Paragraph({
    Title = "您的注入器：",
    Desc = "" .. identifyexecutor() .. "",
    Image = "rbxassetid://129287693322764",
    ImageSize = 42, -- default 30
    Thumbnail = "rbxassetid://114457723265156",
    ThumbnailSize = 120, -- Thumbnail height
    Buttons = {{
        Title = "测试您注入器的UNC",
        Variant = "Primary",
        Callback = function()
            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()

            local Sound = Instance.new("Sound", game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://2865227271"
            Sound:Play()
            WindUI:Notify({
                Title = "HB脚本中心---提示：",
                Content = "已成功执行，请在控制台查看UNC！",
                Icon = "bell",
                IconThemed = true, -- automatic color icon to theme 
                Duration = 5
            })

        end,
        Icon = "bird"
    }}
})

-----------------------------------------------------------------------------------------------通用    
local Tabs = {
    Main = Window:Section({ Title = "通用", Opened = true }),
    gn = Window:Section({ Title = "脚本", Opened = true }),    
}

local TabHandles = {
    Elements = Tabs.Main:Tab({ Title = "自定义UI", Icon = "layout-grid" }),
    YI = Tabs.Main:Tab({ Title = "功能通用", Icon = "layout-grid" }),
    ER = Tabs.Main:Tab({ Title = "透视功能", Icon = "layout-grid" }),
    gn = Tabs.gn:Tab({ Title = "越 HB", Icon = "layout-grid" }),
    ESPgn = Tabs.gn:Tab({ Title = "自然灾害", Icon = "layout-grid" }),
    pbgn = Tabs.gn:Tab({ Title = "被遗弃", Icon = "layout-grid" }),
    tzgn = Tabs.gn:Tab({ Title = "最坚强战场", Icon = "layout-grid" }),
    fzgn = Tabs.gn:Tab({ Title = "死铁轨", Icon = "layout-grid" }),
    A = Tabs.gn:Tab({ Title = "森林99夜", Icon = "layout-grid" }),
    B = Tabs.gn:Tab({ Title = "刀刃球", Icon = "layout-grid" }),
    C = Tabs.gn:Tab({ Title = "偷走脑红", Icon = "layout-grid" }),
    D = Tabs.gn:Tab({ Title = "火箭发射模拟器", Icon = "layout-grid" }),
    E = Tabs.gn:Tab({ Title = "力量传奇", Icon = "layout-grid" }),
    F = Tabs.gn:Tab({ Title = "代木大享", Icon = "layout-grid" }),
    G = Tabs.gn:Tab({ Title = "巴掌模拟器", Icon = "layout-grid" }),       
}

-----------------------------------------------------------------------------------------------跳跃
Slider = TabHandles.YI:Slider({
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
Slider = TabHandles.YI:Slider({
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
Slider = TabHandles.YI:Slider({
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
Button =TabHandles.YI:Button({
    Title = "飞行v1",
    Desc = "",
    Locked = false,
    Callback = function()
        local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)

up.Name = "上"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "上"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000

down.Name = "下"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "下"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "fly"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "越 HB脚本"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true

closebutton.Name = "Close"
closebutton.Parent = main.Frame
closebutton.BackgroundColor3 = Color3.fromRGB(225, 25, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 28)
closebutton.Text = "关闭"
closebutton.TextSize = 30
closebutton.Position =  UDim2.new(0, 0, -1, 27)

mini.Name = "minimize"
mini.Parent = main.Frame
mini.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini.Font = "SourceSans"
mini.Size = UDim2.new(0, 45, 0, 28)
mini.Text = "T"
mini.TextSize = 30
mini.Position = UDim2.new(0, 44, -1, 27)

mini2.Name = "minimize2"
mini2.Parent = main.Frame
mini2.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini2.Font = "SourceSans"
mini2.Size = UDim2.new(0, 45, 0, 28)
mini2.Text = "T"
mini2.TextSize = 30
mini2.Position = UDim2.new(0, 44, -1, 57)
mini2.Visible = false

speeds = 1

local speaker = game:GetService("Players").LocalPlayer

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

nowe = false

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "越 HB飞行";
	Text = "lnjection succeeded";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 5;

Frame.Active = true -- main = gui
Frame.Draggable = true

onof.MouseButton1Down:connect(function()

	if nowe == true then
		nowe = false

		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else 
		nowe = true



		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local Char = game.Players.LocalPlayer.Character
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

		for i,v in next, Hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end
		
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end


	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



		local plr = game.Players.LocalPlayer
		local torso = plr.Character.Torso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", torso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = torso.CFrame
		local bv = Instance.new("BodyVelocity", torso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			game:GetService("RunService").RenderStepped:Wait()

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
			--	game.Players.LocalPlayer.Character.Animate.Disabled = true
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false




	else
		local plr = game.Players.LocalPlayer
		local UpperTorso = plr.Character.UpperTorso
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
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()

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
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false



	end





end)

local tis

up.MouseButton1Down:connect(function()
	tis = up.MouseEnter:connect(function()
		while tis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
		end
	end)
end)

up.MouseLeave:connect(function()
	if tis then
		tis:Disconnect()
		tis = nil
	end
end)

local dis

down.MouseButton1Down:connect(function()
	dis = down.MouseEnter:connect(function()
		while dis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
		end
	end)
end)

down.MouseLeave:connect(function()
	if dis then
		dis:Disconnect()
		dis = nil
	end
end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false

end)


plus.MouseButton1Down:connect(function()
	speeds = speeds + 1
	speed.Text = speeds
	if nowe == true then


		tpwalking = false
		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
	end
end)
mine.MouseButton1Down:connect(function()
	if speeds == 1 then
		speed.Text = 'flyno1'
		wait(1)
		speed.Text = speeds
	else
		speeds = speeds - 1
		speed.Text = speeds
		if nowe == true then
			tpwalking = false
			for i = 1, speeds do
				spawn(function()

					local hb = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end

				end)
			end
		end
	end
end)

closebutton.MouseButton1Click:Connect(function()
	main:Destroy()
end)

mini.MouseButton1Click:Connect(function()
	up.Visible = false
	down.Visible = false
	onof.Visible = false
	plus.Visible = false
	speed.Visible = false
	mine.Visible = false
	mini.Visible = false
	mini2.Visible = true
	main.Frame.BackgroundTransparency = 1
	closebutton.Position =  UDim2.new(0, 0, -1, 57)
end)

mini2.MouseButton1Click:Connect(function()
	up.Visible = true
	down.Visible = true
	onof.Visible = true
	plus.Visible = true
	speed.Visible = true
	mine.Visible = true
	mini.Visible = true
	mini2.Visible = false
	main.Frame.BackgroundTransparency = 0 
	closebutton.Position =  UDim2.new(0, 0, -1, 27)
end)

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()

WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})
    end
})
-----------------------------------------------------------------------------------------------子追
Button = TabHandles.YI:Slider({
    Title = "子追穿墙",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fcsdsss/games/refs/heads/main/Silent%20aim/1.1"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
    WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})
    end
})
-----------------------------------------------------------------------------------------------隐身
local Button = TabHandles.YI:Button({
    Title = "隐身自己",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Yungengxin/roblox/main/yinshen"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
    WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})
    end
})

Toggle = TabHandles.YI:Toggle({
    Title = "透视骨骼",
    Value = false,    
    Callback = function(state) 
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Blissful4992/ESPs/main/UniversalSkeleton.lua"))()
local Skeletons = {}
for _, Player in next, game.Players:GetChildren() do
	table.insert(Skeletons, Library:NewSkeleton(Player, true));
end
game.Players.PlayerAdded:Connect(function(Player)
	table.insert(Skeletons, Library:NewSkeleton(Player, true));
end) 
    end
})

-----------------------------------------------------------------------------------------------越快越慢
Button = TabHandles.YI:Button({
    Title = "跑的越快就越慢",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/7fLqezjn"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
        WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})
    end
})
-----------------------------------------------------------------------------------------------防甩飞
Button = TabHandles.YI:Button({
    Title = "防甩飞",
    Desc = "",
    Locked = false,
    Callback = function()
        local Services = setmetatable({}, {__index = function(Self, Index)
local NewService = game.GetService(game, Index)
if NewService then
Self[Index] = NewService
end
return NewService
end})

local LocalPlayer = Services.Players.LocalPlayer

local function PlayerAdded(Player)
   local Detected = false
   local Character;
   local PrimaryPart;

   local function CharacterAdded(NewCharacter)
       Character = NewCharacter
       repeat
           wait()
           PrimaryPart = NewCharacter:FindFirstChild("HumanoidRootPart")
       until PrimaryPart
       Detected = false
   end

   CharacterAdded(Player.Character or Player.CharacterAdded:Wait())
   Player.CharacterAdded:Connect(CharacterAdded)
   Services.RunService.Heartbeat:Connect(function()
       if (Character and Character:IsDescendantOf(workspace)) and (PrimaryPart and PrimaryPart:IsDescendantOf(Character)) then
           if PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 or PrimaryPart.AssemblyLinearVelocity.Magnitude > 100 then
               if Detected == false then
                   game.StarterGui:SetCore("ChatMakeSystemMessage", {
                       Text = "Fling Exploit Detected Player : "..tostring(Player);
                       Color = Color3.fromRGB(255, 200, 0);
                   })
               end
               Detected = true
               for i,v in ipairs(Character:GetDescendants()) do
                   if v:IsA("BasePart") then
                       v.CanCollide = false
                       v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                       v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                       v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
                   end
               end
               PrimaryPart.CanCollide = false
               PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
               PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
               PrimaryPart.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
           end
       end
   end)
end

for i,v in ipairs(Services.Players:GetPlayers()) do
   if v ~= LocalPlayer then
       PlayerAdded(v)
   end
end
Services.Players.PlayerAdded:Connect(PlayerAdded)

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()

WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})
    end
})
-----------------------------------------------------------------------------------------------撸关R15
Button = TabHandles.YI:Button({
    Title = "撸关R15",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
    WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})
        
    end
})
-----------------------------------------------------------------------------------------------撸关R6
Button = TabHandles.YI:Button({
    Title = "撸关R6",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
    WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})
        
    end
})
-----------------------------------------------------------------------------------------------甩飞
Button = TabHandles.YI:Button({
    Title = "甩飞",
    Desc = "",
    Locked = false,
    Callback = function()
        local ultimateFling = Instance.new("ScreenGui")
local drag = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local windowNameFrame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local windowNameLabel = Instance.new("TextLabel")
local closeButton = Instance.new("TextButton")
local mainFrame = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local buttonsFrame = Instance.new("Frame")
local toggleButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local rotSpeedLabel = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local rotSpeedTextbox = Instance.new("TextBox")
local flySpeedLabel = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local flySpeedTextbox = Instance.new("TextBox")
local UICorner_7 = Instance.new("UICorner")
local notificationsFrame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local notificationTemplate = Instance.new("TextLabel")
local teleportersFrame = Instance.new("Frame")
local teleportingLabel = Instance.new("TextLabel")
local UICorner_8 = Instance.new("UICorner")
local tpingTextbox = Instance.new("TextBox")

ultimateFling.Name = "ultimateFling"
ultimateFling.Parent = game:GetService("CoreGui")
ultimateFling.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ultimateFling.ResetOnSpawn = false

drag.Name = "drag"
drag.Parent = ultimateFling
drag.Active = true
drag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
drag.BackgroundTransparency = 1.000
drag.Draggable = true
drag.Position = UDim2.new(0.5, -150, 0.5, -67)
drag.Selectable = true
drag.Size = UDim2.new(0, 300, 0, 135)

UICorner.Parent = drag

windowNameFrame.Name = "windowNameFrame"
windowNameFrame.Parent = drag
windowNameFrame.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
windowNameFrame.Size = UDim2.new(1, 0, 0, 30)

UICorner_2.Parent = windowNameFrame

windowNameLabel.Name = "windowNameLabel"
windowNameLabel.Parent = windowNameFrame
windowNameLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
windowNameLabel.BackgroundTransparency = 1.000
windowNameLabel.BorderSizePixel = 0
windowNameLabel.Size = UDim2.new(1, 0, 0, 20)
windowNameLabel.Font = Enum.Font.SourceSans
windowNameLabel.Text = "越 HB甩人脚本"
windowNameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
windowNameLabel.TextSize = 20.000

closeButton.Name = "closeButton"
closeButton.Parent = windowNameLabel
closeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundTransparency = 1.000
closeButton.BorderSizePixel = 0
closeButton.Position = UDim2.new(1, -20, 0, 0)
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Font = Enum.Font.SourceSans
closeButton.Text = "×"
closeButton.TextColor3 = Color3.fromRGB(255, 0, 0)
closeButton.TextSize = 20.000

mainFrame.Name = "mainFrame"
mainFrame.Parent = drag
mainFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
mainFrame.Position = UDim2.new(0, 0, 0, 20)
mainFrame.Size = UDim2.new(1, 0, 1, -20)

UICorner_3.Parent = mainFrame

buttonsFrame.Name = "buttonsFrame"
buttonsFrame.Parent = mainFrame
buttonsFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
buttonsFrame.BackgroundTransparency = 0.500
buttonsFrame.Size = UDim2.new(0, 110, 1, 0)

toggleButton.Name = "toggleButton"
toggleButton.Parent = buttonsFrame
toggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.BackgroundTransparency = 0.800
toggleButton.BorderSizePixel = 0
toggleButton.Position = UDim2.new(0, 5, 0, 5)
toggleButton.Size = UDim2.new(0, 100, 0, 25)
toggleButton.Font = Enum.Font.SourceSans
toggleButton.Text = "开始甩人"
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.TextSize = 20.000

UICorner_4.Parent = toggleButton

rotSpeedLabel.Name = "rotSpeedLabel"
rotSpeedLabel.Parent = buttonsFrame
rotSpeedLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rotSpeedLabel.BackgroundTransparency = 0.800
rotSpeedLabel.Position = UDim2.new(0, 5, 0, 35)
rotSpeedLabel.Size = UDim2.new(0, 100, 0, 35)
rotSpeedLabel.Font = Enum.Font.SourceSans
rotSpeedLabel.Text = "旋转速度"
rotSpeedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
rotSpeedLabel.TextSize = 14.000
rotSpeedLabel.TextYAlignment = Enum.TextYAlignment.Top

UICorner_5.Parent = rotSpeedLabel

rotSpeedTextbox.Name = "rotSpeedTextbox"
rotSpeedTextbox.Parent = rotSpeedLabel
rotSpeedTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rotSpeedTextbox.BackgroundTransparency = 1.000
rotSpeedTextbox.Position = UDim2.new(0, 0, 0, 13)
rotSpeedTextbox.Size = UDim2.new(1, 0, 1, -13)
rotSpeedTextbox.ClearTextOnFocus = false
rotSpeedTextbox.Font = Enum.Font.SourceSans
rotSpeedTextbox.Text = "10000"
rotSpeedTextbox.TextColor3 = Color3.fromRGB(0, 255, 0)
rotSpeedTextbox.TextSize = 16.000

flySpeedLabel.Name = "flySpeedLabel"
flySpeedLabel.Parent = buttonsFrame
flySpeedLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
flySpeedLabel.BackgroundTransparency = 0.800
flySpeedLabel.Position = UDim2.new(0, 5, 0, 75)
flySpeedLabel.Size = UDim2.new(0, 100, 0, 35)
flySpeedLabel.Font = Enum.Font.SourceSans
flySpeedLabel.Text = "飞行速度"
flySpeedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
flySpeedLabel.TextSize = 14.000
flySpeedLabel.TextYAlignment = Enum.TextYAlignment.Top

UICorner_6.Parent = flySpeedLabel

flySpeedTextbox.Name = "flySpeedTextbox"
flySpeedTextbox.Parent = flySpeedLabel
flySpeedTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
flySpeedTextbox.BackgroundTransparency = 1.000
flySpeedTextbox.Position = UDim2.new(0, 0, 0, 13)
flySpeedTextbox.Size = UDim2.new(1, 0, 1, -13)
flySpeedTextbox.ClearTextOnFocus = false
flySpeedTextbox.Font = Enum.Font.SourceSans
flySpeedTextbox.Text = "1"
flySpeedTextbox.TextColor3 = Color3.fromRGB(0, 255, 0)
flySpeedTextbox.TextSize = 16.000

UICorner_7.Parent = buttonsFrame

notificationsFrame.Name = "notificationsFrame"
notificationsFrame.Parent = mainFrame
notificationsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
notificationsFrame.BackgroundTransparency = 1.000
notificationsFrame.ClipsDescendants = true
notificationsFrame.Position = UDim2.new(0, 110, 0, 45)
notificationsFrame.Size = UDim2.new(1, -110, 1, -45)
UIListLayout.Parent = notificationsFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom

notificationTemplate.Name = "notificationTemplate"
notificationTemplate.Parent = notificationsFrame
notificationTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
notificationTemplate.BackgroundTransparency = 1.000
notificationTemplate.ClipsDescendants = true
notificationTemplate.Size = UDim2.new(1, 0, 0, 20)
notificationTemplate.Visible = false
notificationTemplate.Font = Enum.Font.SourceSans
notificationTemplate.Text = ""
notificationTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
notificationTemplate.TextSize = 19.000
notificationTemplate.TextWrapped = true

teleportersFrame.Name = "teleportersFrame"
teleportersFrame.Parent = mainFrame
teleportersFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
teleportersFrame.BackgroundTransparency = 1.000
teleportersFrame.ClipsDescendants = true
teleportersFrame.Position = UDim2.new(0, 110, 0, 0)
teleportersFrame.Size = UDim2.new(1, -110, 0, 45)

teleportingLabel.Name = "teleportingLabel"
teleportingLabel.Parent = teleportersFrame
teleportingLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
teleportingLabel.BackgroundTransparency = 0.800
teleportingLabel.Position = UDim2.new(0, 5, 0, 5)
teleportingLabel.Size = UDim2.new(1, -10, 1, -10)
teleportingLabel.Font = Enum.Font.SourceSans
teleportingLabel.Text = "传送甩人延迟(0=禁用)"
teleportingLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
teleportingLabel.TextSize = 14.000
teleportingLabel.TextYAlignment = Enum.TextYAlignment.Top

UICorner_8.Parent = teleportingLabel

tpingTextbox.Name = "tpingTextbox"
tpingTextbox.Parent = teleportingLabel
tpingTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tpingTextbox.BackgroundTransparency = 1.000
tpingTextbox.Position = UDim2.new(0, 0, 0, 13)
tpingTextbox.Size = UDim2.new(1, 0, 1, -13)
tpingTextbox.ClearTextOnFocus = false
tpingTextbox.Font = Enum.Font.SourceSans
tpingTextbox.Text = "0"
tpingTextbox.TextColor3 = Color3.fromRGB(0, 255, 0)
tpingTextbox.TextSize = 16.000

local function align(Part0, Part1)
	Part0.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
	local att1 = Instance.new("Attachment")
	att1.Orientation = Vector3.new(0, 0, 0)
	att1.Position = Vector3.new(0, 0, 0)
	att1.Archivable = true
	local att0 = att1:Clone()

	local ap = Instance.new("AlignPosition", att0)
	ap.ApplyAtCenterOfMass = true
	ap.MaxForce = 9e9
	ap.MaxVelocity = 9e9
	ap.ReactionForceEnabled = false
	ap.Responsiveness = 200
	ap.RigidityEnabled = false

	ap.Attachment1 = att1
	ap.Attachment0 = att0

	att1.Parent = Part1
	att0.Parent = Part0
end

local rs = game:GetService("RunService")

local function notify(msg)
	spawn(function()
		local label = notificationTemplate:Clone()
		label.Text = msg
		label.Parent = notificationsFrame
		label.Size = UDim2.new(1, 0, 0, 0)
		label.Visible = true
		local siz = 0
		while rs.Stepped:Wait() and label and label.Parent and (siz < 20) do
			siz += 1
			label.Size = UDim2.new(1, 0, 0, siz)
		end
		if label and label.Parent then
			wait(15)
			while rs.Stepped:Wait() and label and label.Parent and (label.TextTransparency < 1) do
				label.TextTransparency += 0.1
			end
			if label and label.Parent then
				label:Destroy()
			end
		end
	end)
end

local plrs = game:GetService("Players")
local lp = plrs.LocalPlayer
local mouse = lp:GetMouse()
local ws = game:GetService("Workspace")
local c = nil

local function resReq()
	local nm = Instance.new("Model")
	local nh = Instance.new("Humanoid", nm)
	nh.Health = 100
	lp.Character = nm
	nh.Health = 0
	nh:Destroy()
	nm:Destroy()
end

local parts = {}

ws.DescendantRemoving:Connect(function(des)
	if table.find(parts, des) then
		local desn = des.Name
		wait()
		if c and c.Parent then
			notify("丢失的部位: " .. desn)
		end
	end
end)

toggleButton.MouseButton1Click:Connect(function()
	if c and c.Parent then
		resReq()
		lp.Character = c
		notify("正在重生")
	else
		notify("加载中")
		c = lp.Character
		if not (c and c.Parent) then
			notify("错误：找不到角色")
			return nil
		end
		local hum = c:FindFirstChildOfClass("Humanoid")
		if not (hum and hum.Parent) then
			notify("错误：找不到人物")
			return nil
		end
		if hum.Health == 0 then
			notify("错误：人物血量为0")
			return nil
		end
		resReq()
		lp.Character = c
		wait(5.1)
		if not (c and c.Parent) then
			notify("错误：角色已重置")
			return nil
		end
		if not (hum and hum.Parent) then
			notify("错误：人物已重置")
			return nil
		end
		if hum.Health == 0 then
			notify("错误：人物已死亡")
			return nil
		end
		c:BreakJoints()
		hum.Health = 0
		wait()
		if not (c and c.Parent) then
			notify("错误：角色已重置")
			return nil
		end
		parts = {}
		for i, v in pairs(c:GetDescendants()) do
			if v and v.Parent and v:IsA("BasePart") then
				if v.CanCollide then
					table.insert(parts, v)
				else
					v.Velocity = Vector3.new(0, -1000, 0)
				end
			end
		end
		local hrp = Instance.new("Part", c)
		hrp.Name = "hrp"
		hrp.Anchored = true
		hrp.Transparency = 1
		pcall(function()
			hrp.CFrame = parts[1].CFrame
		end)
		ws.CurrentCamera.CameraSubject = hrp
		for i, v in pairs(parts) do
			if v and v.Parent then
				align(v, hrp)
			end
		end
		spawn(function()
			local currentp = nil
			spawn(function()
				while rs.Stepped:Wait() and c and c.Parent and hrp and hrp.Parent do
					if currentp and currentp.Parent then
						local c1 = currentp.Character
						if c1 and c1.Parent then
							local hed1 = c1:FindFirstChild("Head") or c1:FindFirstChild("Torso") or c1:FindFirstChild("HumanoidRootPart") or c1:FindFirstChildWhichIsA("BasePart")
							if hed1 then
								hrp.CFrame = hed1.CFrame
							end
						end
					end
				end
			end)
			while rs.Heartbeat:Wait() and c and c.Parent and hrp and hrp.Parent do
				local delay = tonumber(tpingTextbox.Text)
				if (not delay) or (delay < 0) then
					delay = 0
				end
				if delay == 0 then
					currentp = false
				else
					wait(delay)
					delay = tonumber(tpingTextbox.Text)
					if (not delay) or (delay < 0) then
						delay = 0
					end
					if c and c.Parent and hrp and hrp.Parent and (delay ~= 0) then
						local getp = plrs:GetPlayers()
						local i1 = false
						for i, v in pairs(getp) do
							if (v == currentp) and (v ~= lp) then
								i1 = i
							end
						end
						if (not i1) then
							i1 = 1
						end
						local function nextp()
							if i1 == #getp then
								i1 = 1
							else
								i1 += 1
							end
							currentp = getp[i1]
						end
						local c1 = nil
						while wait() and not (c1 and c1.Parent) do
							nextp()
							if currentp == lp then
								nextp()
							end
							c1 = currentp.Character
						end
					end
				end
			end
		end)

		spawn(function()
			while c and c.Parent and rs.Heartbeat:Wait() do
				for i, v in pairs(parts) do
					if v and v.Parent then
						v.Velocity = Vector3.new(0, -25.05, 0)
						local s = tonumber(rotSpeedTextbox.Text)
						v.RotVelocity = Vector3.new(s, s, s)
					end
				end
			end
		end)

		spawn(function()
			while rs.Stepped:Wait() and c and c.Parent do
				for i, v in pairs(parts) do
					if v and v.Parent then
						v.CanCollide = false
					end
				end
			end
		end)

		spawn(function()
			local ctrlf = {
				["w"] = false,
				["a"] = false,
				["s"] = false,
				["d"] = false
			}
			mouse.KeyDown:Connect(function(key)
				key = key:lower()
				if ctrlf[key] ~= nil then
					ctrlf[key] = true
				end
			end)
			mouse.KeyUp:Connect(function(key)
				key = key:lower()
				if ctrlf[key] ~= nil then
					ctrlf[key] = false
				end
			end)
			while rs.RenderStepped:Wait() and c and c.Parent do
				if hrp and hrp.Parent then
					local flyspeed = tonumber(flySpeedTextbox.Text)
					local fb = ((ctrlf["w"] and flyspeed) or 0) + ((ctrlf["s"] and -flyspeed) or 0)
					local lr = ((ctrlf["a"] and -flyspeed) or 0) + ((ctrlf["d"] and flyspeed) or 0)
					local camcf = ws.CurrentCamera.CFrame
					local caX, caY, caZ, ca1, ca2, ca3, ca4, ca5, ca6, ca7, ca8, ca9 = camcf:GetComponents()
					local flycf = hrp.CFrame
					flycf = CFrame.new(flycf.X, flycf.Y, flycf.Z, ca1, ca2, ca3, ca4, ca5, ca6, ca7, ca8, ca9)
					flycf += camcf.lookVector * fb
					flycf += camcf.rightVector * lr
					hrp.CFrame = flycf
				end
			end
			
			local c1 = lp.Character
			if c1 and c1.Parent then
				notify("完成")
			end
			
			if toggleButton and toggleButton.Parent then
				toggleButton.Text = "开始甩人"
			end
		end)
		
		if toggleButton and toggleButton.Parent then
			toggleButton.Text = "结束甩人"
		end
		
		notify("完成")
	end
end)

closeButton.MouseButton1Click:Connect(function()
	if c and c.Parent then
		resReq()
	end
	ultimateFling:Destroy()
end)

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()

WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})

    end
})
-----------------------------------------------------------------------------------------------穿墙
Button = TabHandles.YI:Button({
    Title = "穿墙",
    Desc = "",
    Locked = false,
    Callback = function()
        local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local Noclip = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local StatusPF = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local Plr = Players.LocalPlayer
local Clipon = false

Noclip.Name = "越 HB穿墙"
Noclip.Parent = game.CoreGui

BG.Name = "BG"
BG.Parent = Noclip
BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BG.BorderSizePixel = 2
BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
BG.Size = UDim2.new(0, 210, 0, 127)
BG.Active = true
BG.Draggable = true

Title.Name = "Title"
Title.Parent = BG
Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Title.BorderSizePixel = 2
Title.Size = UDim2.new(0, 210, 0, 33)
Title.Font = Enum.Font.Highway
Title.Text = "越 HB穿墙"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.FontSize = Enum.FontSize.Size32
Title.TextSize = 30
Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Title.TextStrokeTransparency = 0

Toggle.Parent = BG
Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.BorderSizePixel = 2
Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
Toggle.Size = UDim2.new(0, 146, 0, 36)
Toggle.Font = Enum.Font.Highway
Toggle.FontSize = Enum.FontSize.Size28
Toggle.Text = "开启"
Toggle.TextColor3 = Color3.new(1, 1, 1)
Toggle.TextSize = 25
Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.TextStrokeTransparency = 0

StatusPF.Name = "StatusPF"
StatusPF.Parent = BG
StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
StatusPF.BackgroundTransparency = 1
StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)
StatusPF.Size = UDim2.new(0, 56, 0, 20)
StatusPF.Font = Enum.Font.Highway
StatusPF.FontSize = Enum.FontSize.Size24
StatusPF.Text = "状态:"
StatusPF.TextColor3 = Color3.new(1, 1, 1)
StatusPF.TextSize = 20
StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
StatusPF.TextStrokeTransparency = 0
StatusPF.TextWrapped = true

Status.Name = "状态"
Status.Parent = BG
Status.BackgroundColor3 = Color3.new(1, 1, 1)
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)
Status.Size = UDim2.new(0, 56, 0, 20)
Status.Font = Enum.Font.Highway
Status.FontSize = Enum.FontSize.Size14
Status.Text = "关闭"
Status.TextColor3 = Color3.new(0.666667, 0, 0)
Status.TextScaled = true
Status.TextSize = 14
Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Status.TextWrapped = true
Status.TextXAlignment = Enum.TextXAlignment.Left

Credit.Name = "Credit"
Credit.Parent = BG
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0.195238099, 0, 0.866141737, 0)
Credit.Size = UDim2.new(0, 128, 0, 17)
Credit.Font = Enum.Font.SourceSans
Credit.FontSize = Enum.FontSize.Size18
Credit.Text = "越 HB穿墙"
Credit.TextColor3 = Color3.new(1, 1, 1)
Credit.TextSize = 16
Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Credit.TextStrokeTransparency = 0
Credit.TextWrapped = true

Toggle.MouseButton1Click:connect(function()
	if Status.Text == "关闭" then
		Clipon = true
		Status.Text = "开启"
		Status.TextColor3 = Color3.new(0,185,0)
		Stepped = game:GetService("RunService").Stepped:Connect(function()
			if not Clipon == false then
				for a, b in pairs(Workspace:GetChildren()) do
                if b.Name == Plr.Name then
                for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                if v:IsA("BasePart") then
                v.CanCollide = false
                end end end end
			else
				Stepped:Disconnect()
			end
		end)
	elseif Status.Text == "关闭" then
		Clipon = false
		Status.Text = "开启"
		Status.TextColor3 = Color3.new(170,0,0)
	end
end)

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()

WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})

    end
})

Button = TabHandles.YI:Button({
    Title = "飞车",
    Desc = "",
    Locked = false,
    Callback = function()
            local Speed = 100

	-- Gui to Lua
	-- Version: 3.2
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	-- Instances:

	local ScreenGui = Instance.new("ScreenGui")
	local W = Instance.new("TextButton")
	local S = Instance.new("TextButton")
	local A = Instance.new("TextButton")
	local D = Instance.new("TextButton")
	local Fly = Instance.new("TextButton")
	local unfly = Instance.new("TextButton")
	local StopFly = Instance.new("TextButton")

	--Properties:

	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	unfly.Name = "上"
	unfly.Parent = ScreenGui
	unfly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	unfly.Position = UDim2.new(0.694387913, 0, 0.181818187, 0)
	unfly.Size = UDim2.new(0, 72, 0, 50)
	unfly.Font = Enum.Font.SourceSans
	unfly.Text = "停止飞行"
	unfly.TextColor3 = Color3.fromRGB(127, 34, 548)
	unfly.TextScaled = true
	unfly.TextSize = 14.000
	unfly.TextWrapped = 
		unfly.MouseButton1Down:Connect(function()
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
	end)

	StopFly.Name = "关闭飞行"
	StopFly.Parent = ScreenGui
	StopFly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	StopFly.Position = UDim2.new(0.695689976, 0, 0.0213903747, 0)
	StopFly.Size = UDim2.new(0, 71, 0, 50)
	StopFly.Font = Enum.Font.SourceSans
	StopFly.Text = "关闭飞行"
	StopFly.TextColor3 = Color3.fromRGB(170, 0, 255)
	StopFly.TextScaled = true
	StopFly.TextSize = 14.000
	StopFly.TextWrapped = true
	StopFly.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = true
	end)

	Fly.Name = "开启飞车"
	Fly.Parent = ScreenGui
	Fly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Fly.Position = UDim2.new(0.588797748, 0, 0.0213903747, 0)
	Fly.Size = UDim2.new(0, 66, 0, 50)
	Fly.Font = Enum.Font.SourceSans
	Fly.Text = "飞行"
	Fly.TextColor3 = Color3.fromRGB(170, 0, 127)
	Fly.TextScaled = true
	Fly.TextSize = 14.000
	Fly.TextWrapped = true
	Fly.MouseButton1Down:Connect(function()
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	end)

	W.Name = "W"
	W.Parent = ScreenGui
	W.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	W.Position = UDim2.new(0.161668837, 0, 0.601604283, 0)
	W.Size = UDim2.new(0, 58, 0, 50)
	W.Font = Enum.Font.SourceSans
	W.Text = "↑"
	W.TextColor3 = Color3.fromRGB(226, 226, 526)
	W.TextScaled = true
	W.TextSize = 5.000
	W.TextWrapped = true
	W.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = false
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
		wait(.1)
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 50000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed
	end)


	S.Name = "S"
	S.Parent = ScreenGui
	S.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	S.Position = UDim2.new(0.161668837, 0, 0.735294104, 0)
	S.Size = UDim2.new(0, 58, 0, 50)
	S.Font = Enum.Font.SourceSans
	S.Text = "↓"
	S.TextColor3 = Color3.fromRGB(255, 255, 255)
	S.TextScaled = true
	S.TextSize = 14.000
	S.TextWrapped = true
	S.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = false
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
		wait(.1)
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed
	end)

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
	
	WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})
	
    end
})

Button = TabHandles.YI:Button({
    Title = "爬墙",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})

Button = TabHandles.YI:Button({
    Title = "动作",
    Desc = "",
    Locked = false,
    Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/Zj4NnKs6"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
       
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})       
       
    end
})

getgenv().ESPEnabled = false
getgenv().ShowBox = false
getgenv().ShowHealth = false
getgenv().ShowName = false
getgenv().ShowDistance = false
getgenv().ShowTracer = false
getgenv().TeamCheck = false
getgenv().ShowSkeleton = false
getgenv().ShowRadar = false
getgenv().ShowPlayerCount = false
getgenv().ShowWeapon = false
getgenv().ShowFOV = false
getgenv().OutOfViewArrows = false
getgenv().Chams = false

getgenv().TracerColor = Color3.new(1, 0, 0)
getgenv().SkeletonColor = Color3.new(0.2, 0.8, 1)
getgenv().BoxColor = Color3.new(1, 1, 1)
getgenv().HealthBarColor = Color3.new(0, 1, 0)
getgenv().HealthTextColor = Color3.new(1, 1, 1)
getgenv().NameColor = Color3.new(1, 1, 1)
getgenv().DistanceColor = Color3.new(1, 1, 0)
getgenv().WeaponColor = Color3.new(1, 0.5, 0)
getgenv().ArrowColor = Color3.new(1, 0, 0)
getgenv().FOVColor = Color3.new(1, 1, 1)
getgenv().ChamsColor = Color3.new(1, 0, 0)

getgenv().BoxThickness = 1
getgenv().TracerThickness = 1
getgenv().SkeletonThickness = 2
getgenv().FOVRadius = 100
getgenv().ArrowSize = 15

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

local function getGradientColor(time)
    local r = math.sin(time * 2) * 0.5 + 0.5
    local g = math.sin(time * 3) * 0.5 + 0.5
    local b = math.sin(time * 4) * 0.5 + 0.5
    return Color3.new(r, g, b)
end

local playerCountText = Drawing.new("Text")
playerCountText.Visible = false
playerCountText.Color = Color3.new(1, 1, 1)
playerCountText.Size = 20
playerCountText.Font = Drawing.Fonts.Monospace
playerCountText.Outline = true
playerCountText.OutlineColor = Color3.new(0, 0, 0)
playerCountText.Position = Vector2.new(Camera.ViewportSize.X / 2, 10)

local fovCircle = Drawing.new("Circle")
fovCircle.Visible = false
fovCircle.Color = getgenv().FOVColor
fovCircle.Thickness = 1
fovCircle.Filled = false
fovCircle.Radius = getgenv().FOVRadius
fovCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

local function updatePlayerCount()
    local playerCount = #Players:GetPlayers()
    playerCountText.Text = "在线玩家: " .. playerCount
    playerCountText.Visible = getgenv().ESPEnabled and getgenv().ShowPlayerCount

    local time = tick()
    playerCountText.Color = getGradientColor(time)
end

local function updateFOV()
    fovCircle.Visible = getgenv().ShowFOV
    fovCircle.Color = getgenv().FOVColor
    fovCircle.Radius = getgenv().FOVRadius
    fovCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
end

local ESPComponents = {}

local function createESP(player)
    local box = Drawing.new("Square")
    box.Visible = false
    box.Color = getgenv().BoxColor
    box.Thickness = getgenv().BoxThickness
    box.Filled = false

    local healthBar = Drawing.new("Square")
    healthBar.Visible = false
    healthBar.Color = getgenv().HealthBarColor
    healthBar.Thickness = 1
    healthBar.Filled = true

    local healthBarBackground = Drawing.new("Square")
    healthBarBackground.Visible = false
    healthBarBackground.Color = Color3.new(0, 0, 0)
    healthBarBackground.Transparency = 0.5
    healthBarBackground.Thickness = 1
    healthBarBackground.Filled = true

    local healthBarBorder = Drawing.new("Square")
    healthBarBorder.Visible = false
    healthBarBorder.Color = Color3.new(1, 1, 1)
    healthBarBorder.Thickness = 1
    healthBarBorder.Filled = false

    local healthText = Drawing.new("Text")
    healthText.Visible = false
    healthText.Color = getgenv().HealthTextColor
    healthText.Size = 14
    healthText.Font = Drawing.Fonts.Monospace
    healthText.Outline = true
    healthText.OutlineColor = Color3.new(0, 0, 0)

    local nameText = Drawing.new("Text")
    nameText.Visible = false
    nameText.Color = getgenv().NameColor
    nameText.Size = 16
    nameText.Font = Drawing.Fonts.Monospace
    nameText.Outline = true
    nameText.OutlineColor = Color3.new(0, 0, 0)

    local distanceText = Drawing.new("Text")
    distanceText.Visible = false
    distanceText.Color = getgenv().DistanceColor
    distanceText.Size = 14
    distanceText.Font = Drawing.Fonts.Monospace
    distanceText.Outline = true
    distanceText.OutlineColor = Color3.new(0, 0, 0)

    local weaponText = Drawing.new("Text")
    weaponText.Visible = false
    weaponText.Color = getgenv().WeaponColor
    weaponText.Size = 14
    weaponText.Font = Drawing.Fonts.Monospace
    weaponText.Outline = true
    weaponText.OutlineColor = Color3.new(0, 0, 0)

    local tracer = Drawing.new("Line")
    tracer.Visible = false
    tracer.Color = getgenv().TracerColor
    tracer.Thickness = getgenv().TracerThickness

    local arrow = Drawing.new("Triangle")
    arrow.Visible = false
    arrow.Color = getgenv().ArrowColor
    arrow.Filled = true
    arrow.Thickness = 1

    local skeletonLines = {}
    local skeletonPoints = {}

    local function createSkeleton()
        for i = 1, 15 do
            skeletonLines[i] = Drawing.new("Line")
            skeletonLines[i].Visible = false
            skeletonLines[i].Color = getgenv().SkeletonColor
            skeletonLines[i].Thickness = getgenv().SkeletonThickness
        end

        skeletonPoints["Head"] = Drawing.new("Circle")
        skeletonPoints["Head"].Visible = false
        skeletonPoints["Head"].Color = Color3.new(1, 0.5, 0)
        skeletonPoints["Head"].Thickness = 2
        skeletonPoints["Head"].Filled = true
        skeletonPoints["Head"].Radius = 4
    end

    createSkeleton()

    local lastHealth = 100
    local healthChangeTime = 0
    local smoothHealth = 100

    ESPComponents[player] = {
        box = box,
        healthBar = healthBar,
        healthBarBackground = healthBarBackground,
        healthBarBorder = healthBarBorder,
        healthText = healthText,
        nameText = nameText,
        distanceText = distanceText,
        weaponText = weaponText,
        tracer = tracer,
        arrow = arrow,
        skeletonLines = skeletonLines,
        skeletonPoints = skeletonPoints
    }

    RunService.RenderStepped:Connect(function()
        if not getgenv().ESPEnabled or not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") or not player.Character:FindFirstChild("Humanoid") or player == LocalPlayer then
            box.Visible = false
            healthBar.Visible = false
            healthBarBackground.Visible = false
            healthBarBorder.Visible = false
            healthText.Visible = false
            nameText.Visible = false
            distanceText.Visible = false
            weaponText.Visible = false
            tracer.Visible = false
            arrow.Visible = false
            for _, line in pairs(skeletonLines) do
                line.Visible = false
            end
            for _, point in pairs(skeletonPoints) do
                point.Visible = false
            end
            return
        end

        if getgenv().TeamCheck and player.Team == LocalPlayer.Team then
            box.Visible = false
            healthBar.Visible = false
            healthBarBackground.Visible = false
            healthBarBorder.Visible = false
            healthText.Visible = false
            nameText.Visible = false
            distanceText.Visible = false
            weaponText.Visible = false
            tracer.Visible = false
            arrow.Visible = false
            for _, line in pairs(skeletonLines) do
                line.Visible = false
            end
            for _, point in pairs(skeletonPoints) do
                point.Visible = false
            end
            return
        end

        local character = player.Character
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        local humanoid = character:FindFirstChild("Humanoid")

        if rootPart and humanoid and humanoid.Health > 0 then
            local rootPos, onScreen = Camera:WorldToViewportPoint(rootPart.Position)
            local headPos, _ = Camera:WorldToViewportPoint(rootPart.Position + Vector3.new(0, 3, 0))
            local legPos, _ = Camera:WorldToViewportPoint(rootPart.Position - Vector3.new(0, 3, 0))

            local weaponName = "无武器"
            for _, tool in ipairs(character:GetChildren()) do
                if tool:IsA("Tool") then
                    weaponName = tool.Name
                    break
                end
            end

            if getgenv().ShowBox and onScreen then
                box.Size = Vector2.new(1000 / rootPos.Z, headPos.Y - legPos.Y)
                box.Position = Vector2.new(rootPos.X - box.Size.X / 2, rootPos.Y - box.Size.Y / 2)
                box.Visible = true
                box.Color = getgenv().BoxColor
                box.Thickness = getgenv().BoxThickness
            else
                box.Visible = false
            end

            if getgenv().ShowHealth and onScreen then
                local healthPercentage = humanoid.Health / humanoid.MaxHealth
                local barWidth = 50
                local barHeight = 5
                local barX = headPos.X - barWidth / 2
                local barY = headPos.Y - 20

                healthBarBackground.Size = Vector2.new(barWidth, barHeight)
                healthBarBackground.Position = Vector2.new(barX, barY)
                healthBarBackground.Visible = true

                healthBarBorder.Size = Vector2.new(barWidth, barHeight)
                healthBarBorder.Position = Vector2.new(barX, barY)
                healthBarBorder.Visible = true

                smoothHealth = smoothHealth + (humanoid.Health - smoothHealth) * 0.1
                local smoothHealthPercentage = smoothHealth / humanoid.MaxHealth

                healthBar.Size = Vector2.new(barWidth * smoothHealthPercentage, barHeight)
                healthBar.Position = Vector2.new(barX, barY)

                if smoothHealthPercentage >= 0.8 then
                    healthBar.Color = Color3.new(0, 1, 0)
                elseif smoothHealthPercentage >= 0.5 then
                    healthBar.Color = Color3.new(1, 1, 0)
                elseif smoothHealthPercentage >= 0.2 then
                    healthBar.Color = Color3.new(1, 0.5, 0)
                else
                    healthBar.Color = Color3.new(1, 0, 0)
                end

                healthBar.Visible = true

                if humanoid.Health ~= lastHealth then
                    healthChangeTime = tick()
                    lastHealth = humanoid.Health
                end

                if tick() - healthChangeTime < 0.5 then
                    healthBar.Color = Color3.new(1, 0, 0)
                end

                healthText.Position = Vector2.new(barX + barWidth + 5, barY - 5)
                healthText.Text = math.floor(humanoid.Health) .. "/" .. math.floor(humanoid.MaxHealth)
                healthText.Visible = true
            else
                healthBar.Visible = false
                healthBarBackground.Visible = false
                healthBarBorder.Visible = false
                healthText.Visible = false
            end

            if getgenv().ShowName and onScreen then
                nameText.Position = Vector2.new(headPos.X, headPos.Y - 35)
                nameText.Text = player.Name
                nameText.Visible = true

                if getgenv().ShowDistance then
                    local distance = (LocalPlayer.Character.HumanoidRootPart.Position - rootPart.Position).Magnitude
                    distanceText.Position = Vector2.new(headPos.X, headPos.Y + 10)
                    distanceText.Text = math.floor(distance) .. "m"
                    distanceText.Visible = true
                else
                    distanceText.Visible = false
                end
                
                if getgenv().ShowWeapon then
                    weaponText.Position = Vector2.new(headPos.X, headPos.Y - 50)
                    weaponText.Text = weaponName
                    weaponText.Visible = true
                else
                    weaponText.Visible = false
                end
            else
                nameText.Visible = false
                distanceText.Visible = false
                weaponText.Visible = false
            end

            if getgenv().ShowTracer then
                local head = character:FindFirstChild("Head")
                if head then
                    local headPos, onScreen = Camera:WorldToViewportPoint(head.Position)
                    if onScreen then
                        tracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
                        tracer.To = Vector2.new(headPos.X, headPos.Y)
                        tracer.Visible = true
                        tracer.Color = getgenv().TracerColor
                        tracer.Thickness = getgenv().TracerThickness
                        
                        local distance = (LocalPlayer.Character.HumanoidRootPart.Position - rootPart.Position).Magnitude
                        if distance < 20 then
                            tracer.Color = Color3.new(0, 1, 0)
                        elseif distance < 50 then
                            tracer.Color = Color3.new(1, 1, 0) 
                        else
                            tracer.Color = getgenv().TracerColor 
                        end
                    else
                        tracer.Visible = false
                    end
                else
                    tracer.Visible = false
                end
            else
                tracer.Visible = false
            end

            if getgenv().OutOfViewArrows and not onScreen then
                local direction = (rootPart.Position - Camera.CFrame.Position).Unit
                local dotProduct = Camera.CFrame.RightVector:Dot(direction)
                local crossProduct = Camera.CFrame.RightVector:Cross(direction)
                
                local screenPosition = Vector2.new(
                    Camera.ViewportSize.X / 2 + dotProduct * Camera.ViewportSize.X / 3,
                    Camera.ViewportSize.Y / 2 - crossProduct.Y * Camera.ViewportSize.Y / 3
                )
                
                screenPosition = Vector2.new(
                    math.clamp(screenPosition.X, getgenv().ArrowSize, Camera.ViewportSize.X - getgenv().ArrowSize),
                    math.clamp(screenPosition.Y, getgenv().ArrowSize, Camera.ViewportSize.Y - getgenv().ArrowSize)
                )
                
                local angle = math.atan2(screenPosition.Y - Camera.ViewportSize.Y / 2, screenPosition.X - Camera.ViewportSize.X / 2)
                
                arrow.PointA = screenPosition
                arrow.PointB = Vector2.new(
                    screenPosition.X - getgenv().ArrowSize * math.cos(angle - 0.5),
                    screenPosition.Y - getgenv().ArrowSize * math.sin(angle - 0.5)
                )
                arrow.PointC = Vector2.new(
                    screenPosition.X - getgenv().ArrowSize * math.cos(angle + 0.5),
                    screenPosition.Y - getgenv().ArrowSize * math.sin(angle + 0.5)
                )
                
                arrow.Color = getgenv().ArrowColor
                arrow.Visible = true
            else
                arrow.Visible = false
            end

            if getgenv().ShowSkeleton and onScreen then
                local head = character:FindFirstChild("Head")
                local torso = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")
                local leftArm = character:FindFirstChild("Left Arm") or character:FindFirstChild("LeftUpperArm")
                local rightArm = character:FindFirstChild("Right Arm") or character:FindFirstChild("RightUpperArm")
                local leftLeg = character:FindFirstChild("Left Leg") or character:FindFirstChild("LeftUpperLeg")
                local rightLeg = character:FindFirstChild("Right Leg") or character:FindFirstChild("RightUpperLeg")
                
                if head and torso and leftArm and rightArm and leftLeg and rightLeg then
                    local headPos = Camera:WorldToViewportPoint(head.Position)
                    local torsoPos = Camera:WorldToViewportPoint(torso.Position)
                    local leftArmPos = Camera:WorldToViewportPoint(leftArm.Position)
                    local rightArmPos = Camera:WorldToViewportPoint(rightArm.Position)
                    local leftLegPos = Camera:WorldToViewportPoint(leftLeg.Position)
                    local rightLegPos = Camera:WorldToViewportPoint(rightLeg.Position)

                    skeletonPoints["Head"].Position = Vector2.new(headPos.X, headPos.Y)
                    skeletonPoints["Head"].Visible = true

                    skeletonLines[1].From = Vector2.new(headPos.X, headPos.Y)
                    skeletonLines[1].To = Vector2.new(torsoPos.X, torsoPos.Y) 
                    skeletonLines[1].Visible = true

                    skeletonLines[2].From = Vector2.new(torsoPos.X, torsoPos.Y)
                    skeletonLines[2].To = Vector2.new(leftArmPos.X, leftArmPos.Y)
                    skeletonLines[2].Visible = true

                    skeletonLines[3].From = Vector2.new(torsoPos.X, torsoPos.Y)
                    skeletonLines[3].To = Vector2.new(rightArmPos.X, rightArmPos.Y)
                    skeletonLines[3].Visible = true

                    skeletonLines[4].From = Vector2.new(torsoPos.X, torsoPos.Y)
                    skeletonLines[4].To = Vector2.new(leftLegPos.X, leftLegPos.Y)
                    skeletonLines[4].Visible = true

                    skeletonLines[5].From = Vector2.new(torsoPos.X, torsoPos.Y)
                    skeletonLines[5].To = Vector2.new(rightLegPos.X, rightLegPos.Y)
                    skeletonLines[5].Visible = true
                    
                    if character:FindFirstChild("LeftLowerArm") then
                        local leftLowerArmPos = Camera:WorldToViewportPoint(character.LeftLowerArm.Position)
                        skeletonLines[6].From = Vector2.new(leftArmPos.X, leftArmPos.Y)
                        skeletonLines[6].To = Vector2.new(leftLowerArmPos.X, leftLowerArmPos.Y)
                        skeletonLines[6].Visible = true
                    end

                    if character:FindFirstChild("RightLowerArm") then
                        local rightLowerArmPos = Camera:WorldToViewportPoint(character.RightLowerArm.Position)
                        skeletonLines[7].From = Vector2.new(rightArmPos.X, rightArmPos.Y)
                        skeletonLines[7].To = Vector2.new(rightLowerArmPos.X, rightLowerArmPos.Y)
                        skeletonLines[7].Visible = true
                    end

                    if character:FindFirstChild("LeftLowerLeg") then
                        local leftLowerLegPos = Camera:WorldToViewportPoint(character.LeftLowerLeg.Position)
                        skeletonLines[8].From = Vector2.new(leftLegPos.X, leftLegPos.Y)
                        skeletonLines[8].To = Vector2.new(leftLowerLegPos.X, leftLowerLegPos.Y)
                        skeletonLines[8].Visible = true
                    end

                    if character:FindFirstChild("RightLowerLeg") then
                        local rightLowerLegPos = Camera:WorldToViewportPoint(character.RightLowerLeg.Position)
                        skeletonLines[9].From = Vector2.new(rightLegPos.X, rightLegPos.Y)
                        skeletonLines[9].To = Vector2.new(rightLowerLegPos.X, rightLowerLegPos.Y)
                        skeletonLines[9].Visible = true
                    end
                else
                    for _, line in pairs(skeletonLines) do
                        line.Visible = false
                    end
                    for _, point in pairs(skeletonPoints) do
                        point.Visible = false
                    end
                end
            else
                for _, line in pairs(skeletonLines) do
                    line.Visible = false
                end
                for _, point in pairs(skeletonPoints) do
                    point.Visible = false
                end
            end
        else
            box.Visible = false
            healthBar.Visible = false
            healthBarBackground.Visible = false
            healthBarBorder.Visible = false
            healthText.Visible = false
            nameText.Visible = false
            distanceText.Visible = false
            weaponText.Visible = false
            tracer.Visible = false
            arrow.Visible = false
            for _, line in pairs(skeletonLines) do
                line.Visible = false
            end
            for _, point in pairs(skeletonPoints) do
                point.Visible = false
            end
        end
    end)
end

local radar = Drawing.new("Circle")
radar.Visible = false
radar.Color = Color3.new(1, 1, 1)
radar.Thickness = 2
radar.Filled = false
radar.Radius = 100
radar.Position = Vector2.new(Camera.ViewportSize.X - 120, 120)

local radarCenter = Drawing.new("Circle")
radarCenter.Visible = false
radarCenter.Color = Color3.new(1, 1, 1)
radarCenter.Thickness = 2
radarCenter.Filled = true
radarCenter.Radius = 3
radarCenter.Position = radar.Position

local radarDirection = Drawing.new("Line")
radarDirection.Visible = false
radarDirection.Color = Color3.new(1, 1, 1)
radarDirection.Thickness = 2

local radarGridLines = {}
for i = 1, 4 do
    radarGridLines[i] = Drawing.new("Line")
    radarGridLines[i].Visible = false
    radarGridLines[i].Color = Color3.new(0.5, 0.5, 0.5)
    radarGridLines[i].Thickness = 1
end

local radarRangeText = Drawing.new("Text")
radarRangeText.Visible = false
radarRangeText.Color = Color3.new(1, 1, 1)
radarRangeText.Size = 14
radarRangeText.Font = Drawing.Fonts.Monospace
radarRangeText.Outline = true
radarRangeText.OutlineColor = Color3.new(0, 0, 0)
radarRangeText.Text = "100m"

local radarPlayers = {}

local function updateRadar()
    if not getgenv().ShowRadar then
        radar.Visible = false
        radarCenter.Visible = false
        radarDirection.Visible = false
        radarRangeText.Visible = false
        
        for _, line in pairs(radarGridLines) do
            line.Visible = false
        end
        
        for _, player in pairs(radarPlayers) do
            if player.dot then player.dot.Visible = false end
            if player.direction then player.direction.Visible = false end
            if player.name then player.name.Visible = false end
        end
        return
    end

    radar.Visible = true
    radarCenter.Visible = true
    radarDirection.Visible = true
    radarRangeText.Visible = true
    
    radarRangeText.Position = Vector2.new(radar.Position.X, radar.Position.Y + radar.Radius + 5)
    
    for i = 1, 4 do
        local angle = (i-1) * math.pi / 2
        radarGridLines[i].From = radar.Position
        radarGridLines[i].To = Vector2.new(
            radar.Position.X + math.cos(angle) * radar.Radius,
            radar.Position.Y + math.sin(angle) * radar.Radius
        )
        radarGridLines[i].Visible = true
    end
    
    radarDirection.From = radar.Position
    radarDirection.To = Vector2.new(radar.Position.X, radar.Position.Y - radar.Radius)

    for _, player in pairs(Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player ~= LocalPlayer then
            local rootPart = player.Character.HumanoidRootPart
            local relativePosition = rootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position
            
            local radarX = radar.Position.X + (relativePosition.X / 10)
            local radarY = radar.Position.Y + (relativePosition.Z / 10)
            
            local distanceFromCenter = math.sqrt((radarX - radar.Position.X)^2 + (radarY - radar.Position.Y)^2)
            
            if distanceFromCenter > radar.Radius then
                local angle = math.atan2(radarY - radar.Position.Y, radarX - radar.Position.X)
                radarX = radar.Position.X + math.cos(angle) * radar.Radius
                radarY = radar.Position.Y + math.sin(angle) * radar.Radius
            end
            
            if not radarPlayers[player] then
                radarPlayers[player] = {
                    dot = Drawing.new("Circle"),
                    direction = Drawing.new("Line"),
                    name = Drawing.new("Text")
                }
                
                radarPlayers[player].dot.Thickness = 1
                radarPlayers[player].dot.Filled = true
                radarPlayers[player].dot.Radius = 4
                
                radarPlayers[player].direction.Thickness = 2
                radarPlayers[player].direction.Visible = true
                
                radarPlayers[player].name.Size = 12
                radarPlayers[player].name.Font = Drawing.Fonts.Monospace
                radarPlayers[player].name.Outline = true
                radarPlayers[player].name.OutlineColor = Color3.new(0, 0, 0)
            end
            
            if player.Team == LocalPlayer.Team then
                radarPlayers[player].dot.Color = Color3.new(0, 1, 0)  
                radarPlayers[player].direction.Color = Color3.new(0, 0.8, 0)
                radarPlayers[player].name.Color = Color3.new(0, 1, 0)
            else
                radarPlayers[player].dot.Color = Color3.new(1, 0, 0) 
                radarPlayers[player].direction.Color = Color3.new(1, 0, 0)
                radarPlayers[player].name.Color = Color3.new(1, 0, 0)
            end
            
            radarPlayers[player].dot.Position = Vector2.new(radarX, radarY)
            radarPlayers[player].dot.Visible = true
            
            local lookVector = rootPart.CFrame.LookVector
            local directionLength = 10
            radarPlayers[player].direction.From = Vector2.new(radarX, radarY)
            radarPlayers[player].direction.To = Vector2.new(
                radarX + lookVector.X * directionLength,
                radarY + lookVector.Z * directionLength
            )
            
            radarPlayers[player].name.Position = Vector2.new(radarX, radarY - 15)
            radarPlayers[player].name.Text = player.Name
            radarPlayers[player].name.Visible = distanceFromCenter <= radar.Radius
        elseif radarPlayers[player] then
            radarPlayers[player].dot.Visible = false
            radarPlayers[player].direction.Visible = false
            radarPlayers[player].name.Visible = false
        end
    end
    
    for player, components in pairs(radarPlayers) do
        if not Players:FindFirstChild(player.Name) then
            components.dot.Visible = false
            components.direction.Visible = false
            components.name.Visible = false
            radarPlayers[player] = nil
        end
    end
end

RunService.RenderStepped:Connect(updateRadar)
RunService.RenderStepped:Connect(updatePlayerCount)
RunService.RenderStepped:Connect(updateFOV)

for _, player in pairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        createESP(player)
    end
end

Players.PlayerAdded:Connect(function(player)
    if player ~= LocalPlayer then
        createESP(player)
    end
end)

Players.PlayerRemoving:Connect(function(player)
    if ESPComponents[player] then
        for _, component in pairs(ESPComponents[player]) do
            if typeof(component) == "table" then
                for _, drawing in pairs(component) do
                    drawing:Remove()
                end
            else
                component:Remove()
            end
        end
        ESPComponents[player] = nil
    end
end)

Toggle = TabHandles.ER:Toggle({
    Title = "透视开启", 
    Value = false, 
    Callback = function(Value)
        getgenv().ESPEnabled = Value
    end
})

Toggle = TabHandles.ER:Toggle({
    Title = "模型透视", 
    Value = false, 
    Callback = function(Value)
        getgenv().ShowSkeleton = Value
    end
})

Toggle = TabHandles.ER:Toggle({
    Title = "方框透视", 
    Value = false, 
    Callback = function(Value)
        getgenv().ShowBox = Value
    end
})



Toggle = TabHandles.ER:Toggle({
    Title = "射线透视", 
    Value = false, 
    Callback = function(Value)
        getgenv().ShowTracer = Value
    end
})

Toggle = TabHandles.ER:Toggle({
    Title = "名字透视", 
    Value = false, 
    Callback = function(Value)
        getgenv().ShowName = Value
    end
})


Button = TabHandles.gn:Button({
    Title = "DOORS",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HB-ksdb/-4/main/%E8%B6%8A%20HB%20DOORS.lua"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})
    end
})                

Button = TabHandles.gn:Button({
    Title = "火箭发射模拟器",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HB-ksdb/-4/main/%E8%B6%8A%20HB%20%E7%81%AB%E7%AE%AD%E5%8F%91%E5%B0%84%E6%A8%A1%E6%8B%9F%E5%99%A8.lua"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})

Button = TabHandles.gn:Button({
    Title = "环山军区",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HB-ksdb/-4/main/%E8%B6%8A%20HB%E7%8E%AF%E5%B1%B1%E5%86%9B%E5%8C%BA.lua"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})

Button = TabHandles.gn:Button({
    Title = "墨水游戏",
    Desc = "",
    Locked = false,
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/HB-ksdb/-4/main/%E8%B6%8AHB%20%E5%A2%A8%E6%B0%B4%E6%B8%B8%E6%88%8F.lua"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})
-----------------------------------------------------------------------------------------------自然灾害
Button = TabHandles.ESPgn:Button({
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
    Desc = "点击加载",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Super-ring-Parts-V6-28581"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})
-----------------------------------------------------------------------------------------------被遗弃
Button = TabHandles.pbgn:Button({
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

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})
-----------------------------------------------------------------------------------------------最强战场
local Section = Tab:Section({ 
    Title = "最坚强战场",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

Button = TabHandles.tzgn:Button({
    Title = "最强战场无限侧闪",
    Desc = "无卡英文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/10tempest01/tempest-hub/refs/heads/main/Launcher.lua"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()

WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
    end
})

Button = TabHandles.tzgn:Button({
    Title = "最强战场隐身道具",
    Desc = "无卡",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})
-----------------------------------------------------------------------------------------------死铁轨
local Section = Tab:Section({ 
    Title = "死铁轨",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

Button = TabHandles.fzgn:Button({
    Title = "死铁轨",
    Desc = "无卡中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iopjklbnmsss/SansHubScript/refs/heads/main/SansHub"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})
-----------------------------------------------------------------------------------------------森林99夜
Button = TabHandles.A:Button({
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

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})

Button = TabHandles.B:Button({
    Title = "林森99夜",
    Desc = "无卡中文 推荐",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NEHUB2/NE/refs/heads/main/855.lua"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})
-----------------------------------------------------------------------------------------------刀刃球
Button = TabHandles.B:Button({
    Title = "刀刃球",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Button = Tab:Button({
    Title = "刀刃球",
    Desc = "无卡中文 推荐",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rbxluau/script-hub/main/loader.lua"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})

Button = TabHandles.B:Button({
    Title = "刀刃球红⭕️",
    Desc = "无卡中文 推荐",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/autoparrybest"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})
-----------------------------------------------------------------------------------------------偷走脑红
local Section = Tab:Section({ 
    Title = "偷走脑红",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

Button = TabHandles.C:Button({
    Title = "偷走脑红",
    Desc = "无卡英文 推荐",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Brinxhub12/brinx-hub-comebac1/refs/heads/main/brinx%20come%20back"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})
-----------------------------------------------------------------------------------------------火箭发射模拟器
local Section = Tab:Section({ 
    Title = "火箭发射模拟器",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

Button = TabHandles.D:Button({
    Title = "火箭发射模拟器",
    Desc = "无卡中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/anlushanjinchangantangwanle/refs/heads/main/jmjmjmjmjmjm114514.txt"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})
-----------------------------------------------------------------------------------------------力量传奇
local Section = Tab:Section({ 
    Title = "力量传奇",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

Button = TabHandles.E:Button({
    Title = "力量传奇吃蛋",
    Desc = "无卡中文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.github.com/114514541883484/Zephyr-wave/main/agreement.lua"))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})
-----------------------------------------------------------------------------------------------伐木大享
local Section = Tab:Section({ 
    Title = "伐木大享",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

Button = TabHandles.F:Button({
    Title = "伐木大享AXE",
    Desc = "无卡英文",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/NOOBARMYSCRIPTER/NOOBARMYSCRIPTER/main/AXE%20LOOP%20SCRIPT"), true))()

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()
        
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})        
        
    end
})
-----------------------------------------------------------------------------------------------打巴掌
local Tab = Tabs.Settings:Tab({
    Title = "打巴掌正在更新",
    Icon = "layout-grid",
    Locked = false,
})

Button = TabHandles.G:Button({
    Title = "打巴掌光环",
    Desc = "",
    Locked = false,
    Callback = function()
        function isSpawned(player)
   if workspace:FindFirstChild(player.Name) and player.Character:FindFirstChild("HumanoidRootPart") then
       return true
   else
       return false
   end
end

while wait() do
   for i, v in pairs(game.Players:GetPlayers()) do
       if isSpawned(v) and v ~= game.Players.LocalPlayer and not v.Character.Head:FindFirstChild("UnoReverseCard") then
           if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
               game:GetService("ReplicatedStorage").b:FireServer(v.Character["Right Arm"])
               wait(0.1)
           end
       end
   end
end
    end
})

            Window:Dialog({
                Title = "HB脚本中心",
                Content = "温馨提示：请勿点击多次，\n否则会造成游戏卡顿!",
                Icon = "bell",
                Buttons = {{
                    Title = "确定",
                    Variant = "Primary",
                    Callback = function()
                        print("ok")
                    end
                }}
            })
            loadstring(game:HttpGet "https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/unc")()

WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 3, -- 3 seconds
    Icon = "layout-grid",
})

Paragraph = TabHandles.Elements:Paragraph({
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

Dropdown = TabHandles.Elements:Dropdown({
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

Button = TabHandles.Elements:Button({
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

Button = TabHandles.Elements:Button({
    Title = "启用黑色主题",
    Desc = "使用黑色调主题方案",
    Value = true,
    Callback = function(state)
        WindUI:SetTheme(state and "Dark" or "Light")
        themeDropdown:Select(state and "Dark" or "Light")
    end
})

Button = TabHandles.Elements:Button({
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

Button = TabHandles.Elements:Button({
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

Keybind = TabHandles.Elements:Keybind({
    Title = "配置名称",
    Value = configName,
    Callback = function(value)
        configName = value
    end
})

local ConfigManager = Window.ConfigManager
if ConfigManager then
    ConfigManager:Init(Window)
    
Toggle = TabHandles.Elements:Toggle({
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

    Button = TabHandles.Elements:Button({
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
                
                Button = TabHandles.Elements:Button({
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
    Button = TabHandles.Elements:Button({
        Title = "配置管理不可用",
        Desc = "此功能需要配置管理",
        Image = "alert-triangle",
        ImageSize = 20,
        Color = "White"
    })
end
