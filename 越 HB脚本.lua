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
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/mciklw/mciklwscript/refs/heads/main/flyvthree"))()
    end
})
-----------------------------------------------------------------------------------------------子追
local Button = Tab:Button({
    Title = "子追穿墙",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fcsdsss/games/refs/heads/main/Silent%20aim/1.1"))()
    end
})
-----------------------------------------------------------------------------------------------隐身
local Button = Tab:Button({
    Title = "隐身自己",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Yungengxin/roblox/main/yinshen"))()
    end
})
-----------------------------------------------------------------------------------------------透视
local Button = Tab:Button({
    Title = "透视",
    Desc = "",
    Locked = false,
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP.lua"))()
    end
})
-----------------------------------------------------------------------------------------------越快越慢
local Button = Tab:Button({
    Title = "跑的越快就越慢",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/7fLqezjn"))()
    end
})
-----------------------------------------------------------------------------------------------防甩飞
local Button = Tab:Button({
    Title = "防甩飞",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ChinaQY/Scripts/Main/AntiFling.lua"))()
    end
})
-----------------------------------------------------------------------------------------------撸关R15
local Button = Tab:Button({
    Title = "撸关R15",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
    end
})
-----------------------------------------------------------------------------------------------撸关R6
local Button = Tab:Button({
    Title = "撸关R6",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
    end
})
-----------------------------------------------------------------------------------------------甩飞
local Button = Tab:Button({
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
windowNameLabel.Text = "甩人脚本"
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
    Desc = "点击加载",
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
    Desc = "点击加载",
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