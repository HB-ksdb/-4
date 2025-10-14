local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

        WindUI:Popup({
            Title = "👑尊贵的"..game.Players.LocalPlayer.DisplayName.."用户",
            Icon = "info",
            Content = "欢迎使用HB FXM脚本",
            Buttons = {
                {
                    Title = "取消",
                    Callback = function() end,
                    Variant = "Tertiary",
                },
                {
                    Title = "执行",
                    Icon = "arrow-right",
                    Callback = function() 
                        DDZX = true 
                    end,
                    Variant = "Primary",
                }   
            }
        })

        repeat
            wait()
        until DDZX
       

local Window = WindUI:CreateWindow({
        Title = " 越 HB<font color='#00FF00'>最强战场</font>",
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
        Background = "rbxassetid://96291371536118"
    })
    

Window:EditOpenButton({
    Title = "越 HB脚本",
    Icon = "monitor",
    CornerRadius = UDim.new(0, 16),
    StrokeThickness = 2,
    Color = openButtonColor,
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
        Title = "最强战场",
        Color = Color3.fromHex("#000000")
    })

local Tabs = {
    Main = Window:Section({ Title = "请选择脚本", Opened = true }), 
}

local TabHandles = {
    Q = Tabs.Main:Tab({ Title = "", Icon = "layout-grid" }),
}

Button = TabHandles.Q:Button({
    Title = "HB FXM",
    Desc = "",
    Locked = false,
    Callback = function()
    
local player = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")

-- Tạo ScreenGui
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.ResetOnSpawn = false

-- Tạo Intro Label
local introLabel = Instance.new("TextLabel")
introLabel.Parent = screenGui
introLabel.Size = UDim2.new(1, 0, 1, 0)
introLabel.BackgroundTransparency = 1
introLabel.Text = "欢迎使用越HB FXM 饿狼技能1+2"
introLabel.TextColor3 = Color3.new(2, 2, 1)
introLabel.TextScaled = true
introLabel.Font = Enum.Font.SourceSansBold

-- Tạo fade out Tween cho intro
task.delay(5, function()
	local fadeTween = TweenService:Create(introLabel, TweenInfo.new(1), {
		TextTransparency = 1
	})
	fadeTween:Play()
	fadeTween.Completed:Wait()
	introLabel:Destroy()
end)

-- Tạo nút chính, đợi 6s để intro biến mất
task.delay(6, function()
	local button = Instance.new("TextButton")
	button.Parent = screenGui
	button.Size = UDim2.new(0, 50, 0, 50)
	button.Position = UDim2.new(0.5, -100, 0.8, 0)
	button.Text = "越HB FXM"
	button.BackgroundColor3 = Color3.fromRGB(80, 80, 255)
	button.TextColor3 = Color3.new(1, 1, 1)
	button.TextScaled = true
	button.Active = true
	button.Draggable = true

	-- Biến phát hiện kéo
	local dragging = false
	local dragStartPos = nil
	local dragThreshold = 10
	local pressTime = 0

	button.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragStartPos = input.Position
			dragging = false
			pressTime = tick()
		end
	end)

	button.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then
			if dragStartPos and (input.Position - dragStartPos).Magnitude > dragThreshold then
				dragging = true
			end
		end
	end)

	button.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
			local holdDuration = tick() - pressTime

			if not dragging and holdDuration < 1 then
				-- === KÍCH HOẠT CHIÊU ===

				-- Flowing Water
				local args1 = {
					[1] = {
						["Tool"] = player.Backpack:FindFirstChild("Flowing Water"),
						["Goal"] = "Console Move"
					}
				}
				player.Character.Communicate:FireServer(unpack(args1))

				task.wait(2.15)

				local char = player.Character
				if not char or not char:FindFirstChild("HumanoidRootPart") then return end
				local hrp = char.HumanoidRootPart

				local forward = hrp.CFrame.LookVector.Unit
				local distance = 20
				local duration = 0.1
				local goalPos = hrp.Position + forward * distance
				local tween = TweenService:Create(hrp, TweenInfo.new(duration), {
					CFrame = CFrame.new(goalPos, goalPos + forward)
				})
				tween:Play()
				tween.Completed:Wait()

				hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(180), 0)

				-- Lethal Whirlwind Stream
-- Script generated by SimpleSpy - credits to exx#9394
local args = {
    [1] = {
        ["Tool"] = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Lethal Whirlwind Stream"),
        ["Goal"] = "Console Move"
    }
}

game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))
			end

			dragStartPos = nil
			dragging = false
		end
	end)
end)

WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 1, -- 3 seconds
    Icon = "layout-grid",
})                        
            
 end
})

Button = TabHandles.Q:Button({
    Title = "最强战场隐身道具",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()
            
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 1, -- 3 seconds
    Icon = "layout-grid",
})                        
            
 end
})

Button = TabHandles.Q:Button({
    Title = "最强战场自动躲避平a",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IdkRandomUsernameok/PublicAssets/refs/heads/main/Releases/MUI.lua"))()
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 1, -- 3 seconds
    Icon = "layout-grid",
})                        
            
 end
})

Button = TabHandles.:Button({
    Title = "最强战场无限侧闪",
    Desc = "",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/10tempest01/tempest-hub/refs/heads/main/Launcher.lua"))()
            
WindUI:Notify({
    Title = "通知",
    Content = "加载成功",
    Duration = 1, -- 3 seconds
    Icon = "layout-grid",
})                        
            
 end
})