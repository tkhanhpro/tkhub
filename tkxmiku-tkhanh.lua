e("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
		end 
	end
end)
ItemsTab:Toggle("Auto Buy Enhancement",_G.AutoBuyEnchancement,"Auto Buy Enhancement",function(value)
	_G.AutoBuyEnchancement = value
end)
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoBuyEnchancement then
				local args = {
					[1] = "ColorsDealer",
					[2] = "2"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end 
		end
	end)
end)
SettingsTab:Seperator("Setting")
SettingsTab:Toggle("Bring Mob",true,"Bring Mob",function(value)
	_G.BringMonster = value
end)
SettingsTab:Toggle("Fast Attack",true,"Fast Attack",function(value)
	_G.FastAttack = value
end)
local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		if _G.FastAttack then
			pcall(function()
				CameraShaker:Stop()
				y.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
				y.activeController.hitboxMagnitude = 200
				y.activeController.active = false
				y.activeController.timeToNextBlock = 0
				y.activeController.focusStart = 0
				y.activeController.increment = 1 + 1/math.huge-1
				y.activeController.blocking = false
				y.activeController.attacking = false
				y.activeController.humanoid.AutoRotate = true
			end)
		end
	end)
end)
spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		if _G.FastAttack == true then
			game.Players.LocalPlayer.Character.Stun.Value = 0
			game.Players.LocalPlayer.Busy.Value = false        
		end
	end)
end)
SettingsTab:Toggle("Anti AFK",true,"Anti AFK",function(value)
	_G.AntiAFK = value
end)
spawn(function()
	while task.wait(.1) do
		pcall(function()
			if _G.AntiAFK then
				game:GetService("Players").localPlayer.Idled:connect(function()
					game:FindService("VirtualUser"):Button2Down(Vector2.new(0,0),game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					task.wait(2)
					game:FindService("VirtualUser"):Button2Up(Vector2.new(0,0),game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
				end)
			end
		end)
	end
end)
SettingsTab:Seperator("PvP")
SettingsTab:Toggle("Enabled PvP",_G.EnabledPvP,"Enabled PvP",function(value)
	_G.EnabledPvP = value
	if _G.EnabledPvP == true then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
	else
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UnEnablePvp") 
	end
end)
if World2 then
	CombatTab:Toggle("Auto Bounty",_G.AutoBounty,"Auto Bounty",function(value)
		_G.AutoBounty = value
	end)
	CombatTab:Toggle("Auto Bounty Hop",_G.AutoBountyHop,"Auto Bounty Hop",function(value)
		_G.AutoBountyHop = value
	end)
end
spawn(function()
	while wait() do
		if _G.AutoBounty then
			for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
				if v:IsA("Shirt") then
					v:Destroy()
				end
				if v:IsA("Pants") then
					v:Destroy()
				end
				if v:IsA("Accessory") then
					v:Destroy()
				end
			end
		end
	end
end)
spawn(function()
	pcall(function()
		if _G.AutoBounty then
			while wait() do 
				local playerList = {}
				for i,v in pairs(game:GetService("Players"):GetChildren()) do
					if v.Name ~= game.Players.LocalPlayer.Name then
						table.insert(playerList,v.Name)
					end
				end
				local playerSelected = playerList[math.random(1,#playerList)]
				local WhyMyAss = game:GetService("Players"):FindFirstChild(playerSelected).Character.HumanoidRootPart.CFrame
				repeat task.wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = WhyMyAss* CFrame.new(0,-8,0)
					EquipWeapon(_G.SelectWeaponPlayer)
					AutoHaki()
					game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).RemoteEvent:FireServer("true",WhyMyAss)
					game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).RemoteEvent:FireServer("false",WhyMyAss)
					game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectWeaponPlayer).RemoteFunctionShoot:InvokeServer(WhyMyAss)
					game:GetService'VirtualUser':CaptureController()
					game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
				until _G.AutoBounty == false or game:GetService("Players"):FindFirstChild(playerSelected).Character.Humanoid.Health <= 0
				if _G.AutoBountyHop then
					ServerHop()
				end
			end
		end
	end)
end)
CombatTab:Toggle("Aimbot Gun",_G.Aimbot_Gun,"Aimbot Gun",function(value)
	_G.Aimbot_Gun = value
end)
spawn(function()
	while task.wait() do
		if _G.Aimbot_Gun and game.Players.LocalPlayer.Character:FindFirstChild(SelectWeaponGun) then
			local args = {
				[1] = AimBotSkillPosition,
				[2] = game.Players:FindFirstChild(SelectPlayerGun).Character.HumanoidRootPart
			}
			game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
		end 
	end
end)
CombatTab:Toggle("Aimbot Skill",_G.Aimbot_Skill,"Aimbot Skill",function(value)
	_G.Aimbot_Skill = value
end)
spawn(function()
	pcall(function()
		while task.wait() do
			if _G.Aimbot_Skill and SelectPlayerGun ~= nil and game.Players:FindFirstChild(SelectPlayerGun) then 
				if _G.AimSkill_fov then
					AimBotSkillPosition = game.Players:FindFirstChild(SelectPlayerGun).Character.HumanoidRootPart.Position + game.Players:FindFirstChild(SelectPlayerGun).Character.HumanoidRootPart.Velocity * (_G.Prediction/10)
				else
					AimBotSkillPosition = game.Players:FindFirstChild(SelectPlayerGun).Character.HumanoidRootPart.Position
				end
			end
		end
	end)
end)
local lp = game:GetService('Players').LocalPlayer
local mouse = lp:GetMouse()
mouse.Button1Down:Connect(function()
	if _G.Aimbot_Skill and game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and game.Players:FindFirstChild(SelectPlayerGun) then
		local args = {
			[1] = AimBotSkillPosition,
			[2] = game.Players:FindFirstChild(SelectPlayerGun).Character.HumanoidRootPart
		}
		game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).RemoteEvent:FireServer(unpack(args))
		local args = {
			[1] = AimBotSkillPosition
		}
		game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).RemoteFunction:InvokeServer(unpack(args))
	end 
end)
CombatTab:Toggle("Prediction",0.165,"Prediction",function(value)
	_G.Prediction = value
end)
CombatTab:Toggle("Show FOV",_G.AimSkill_fov,"Show FOV",function(value)
	_G.AimSkill_fov = value
end)
local rawmetatable = getrawmetatable(game)
local calling_script = nil
local caller = nil
local namecall_method = nil
local namecall = rawmetatable.__namecall
setreadonly(rawmetatable, false)
rawmetatable.__namecall = newcclosure(function(...) 
	local method = getnamecallmethod()
	local arguments = {...}
	local isCallingScript = checkcaller()
	if isCallingScript and (method == "FireServer" or method == "InvokeServer") then
		if arguments[1] == "RemoteEvent" then
			if arguments[2] == "true" or arguments[2] ==  "false" then
				if _G.Aimbot_Skill then
					arguments[3] = AimBotSkillPosition
					return namecall(unpack(arguments))
				end
			end
		end
		if arguments[1] == "getInventoryWeapons" or arguments[1] == "GunJump" or arguments[1] == "Punch" then
			return {}
		end
	end
	return namecall(...)
end)
local FOV = Drawing.new("Circle")
FOV.Color = Color3.fromRGB(255,0,0)
FOV.Visible = false
FOV.Radius = 80
FOV.Transparency = .5
FOV.NumSides = 1000
FOV.Filled = false
FOV.Thickness = 0
spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		if _G.AimSkill_fov then
			FOV.Visible = true
			FOV.Position = game:GetService("UserInputService"):GetMouseLocation()
		else
			FOV.Visible = false
		end
	end)
end)
local PlayerListGun = CombatTab:Dropdown("Select Player Gun",playerList,_G.SelectPlayerGun,"Select Player Gun",function(value)
	_G.SelectPlayerGun = value
end)
CombatTab:Button("Refresh Player Gun",function()
	PlayerListGun:Clear()
	for i,v in pairs(game.Players:GetChildren()) do  
		PlayerListGun:Add(v.Name)
	end
end)
CombatTab:Toggle("Spectate Player",_G.SpecPlayerGun,"Spectate Player",function(value)
	_G.SpecPlayerGun = value
	if _G.SpecPlayerGun then
		game:GetService("Workspace").Camera.CameraSubject = game.Players:FindFirstChild(_G.SelectPlayerGun).Character.Humanoid
	else
		game:GetService("Workspace").Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
	end
end)
TeleportTab:Seperator("World")
if World1 then
	TeleportTab:Button("Teleport To Sea 2",function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
	end)
	TeleportTab:Button("Teleport To Sea 3",function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
	end)
elseif World2 then
	TeleportTab:Button("Teleport To Sea 1",function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
	end)
	TeleportTab:Button("Teleport To Sea 3",function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
	end)
elseif World3 then
	TeleportTab:Button("Teleport To Sea 1",function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
	end)
	TeleportTab:Button("Teleport To Sea 2",function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
	end)
end
TeleportTab:Seperator("Island")
if World1 then
	TeleportTab:Dropdown("Select Island",{
		"WindMill Village",
		"Marine Base",
		"Middle Town",
		"Jungle",
		"Pirate Village",
		"Desert",
		"Snow Island",
		"Marine Fortress",
		"Colosseum",
		"Sky Island 1",
		"Sky Island 2",
		"Sky Island 3",
		"Prison",
		"Magma Village",
		"Under Water Island",
		"Fountain City",
		"Upper Yard Entrance"
	},_G.SelectIsland,"Select Island",function(value)
		_G.SelectIsland = value
	end)
	TeleportTab:Toggle("Teleport",_G.TeleportIsland,"Teleport",function(value)
		_G.TeleportIsland = value
		if _G.TeleportIsland == true then
			repeat wait()
				if _G.SelectIsland == "WindMill Village" then
					topos(CFrame.new(979.79895019531, 16.516613006592, 1429.1148681641))
				elseif _G.SelectIsland == "Marine Base" then
					topos(CFrame.new(-2566.4296875, 6.6558532714844, 2045.9960947037))
				elseif _G.SelectIsland == "Middle Town" then
					topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
				elseif _G.SelectIsland == "Jungle" then
					topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
				elseif _G.SelectIsland == "Pirate Village" then
					topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5458984375))
				elseif _G.SelectIsland == "Desert" then
					topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
				elseif _G.SelectIsland == "Snow Island" then
					topos(CFrame.new(1347.8068847656, 104.66806030273, -1319.7370605469))
				elseif _G.SelectIsland == "Marine Fortress" then
					topos(CFrame.new(-4914.8212890625, 20.7790184021, 4285.4418945313))
				elseif _G.SelectIsland == "Colosseum" then
					topos( CFrame.new(-1429.0653076172, 7.2870712280273, -2403.8193359375))
				elseif _G.SelectIsland == "Sky Island 1" then
					topos(CFrame.new(-4869.0244140625, 733.35217285156, -2667.8063964844))
				elseif _G.SelectIsland == "Sky Island 2" then  
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
				elseif _G.SelectIsland == "Sky Island 3" then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
				elseif _G.SelectIsland == "Prison" then
					topos( CFrame.new(4875.330078125, 5.651581287384, 734.85021972656))
				elseif _G.SelectIsland == "Magma Village" then
					topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
				elseif _G.SelectIsland == "Under Water Island" then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.779687881469, 1819.7841796875))
				elseif _G.SelectIsland == "Fountain City" then
					topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
				elseif _G.SelectIsland == "Upper Yard Entrance" then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-13231.24609375, 429.06351470947, -7749.1489257813))
				end
			until not _G.TeleportIsland
		end
		StopTween(_G.TeleportIsland)
	end)
end
if World2 then
	TeleportTab:Dropdown("Select Island",{
		"The Cafe",
		"Frist Spot",
		"Dark Area",
		"Flamingo Mansion",
		"Flamingo Room",
		"Green Zone",
		"Factory",
		"Colossuim",
		"Zombie Island",
		"Two Snow Mountain",
		"Hot and Cold",
		"Cursed Ship",
		"Forgotten Island",
		"Ussop Island",
		"Mini Sky Island"
	},_G.SelectIsland,"Select Island",function(value)
		_G.SelectIsland = value
	end)
	TeleportTab:Toggle("Teleport",_G.TeleportIsland,"Teleport",function(value)
		_G.TeleportIsland = value
		if _G.TeleportIsland == true then
			repeat wait()
				if _G.SelectIsland == "The Cafe" then
					topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
				elseif _G.SelectIsland == "Frist Spot" then
					topos(CFrame.new(-541.07506561279, 313.94641113281, -282.94256591797))
				elseif _G.SelectIsland == "Dark Area" then
					topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
				elseif _G.SelectIsland == "Flamingo Mansion" then
					topos(CFrame.new(-483.73309326172, 332.0383605957, 595.32720947266))
				elseif _G.SelectIsland == "Flamingo Room" then
					topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
				elseif _G.SelectIsland == "Green Zone" then
					topos( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
				elseif _G.SelectIsland == "Factory" then
					topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
				elseif _G.SelectIsland == "Colossuim" then
					topos( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
				elseif _G.SelectIsland == "Zombie Island" then
					topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
				elseif _G.SelectIsland == "Two Snow Mountain" then
					topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6142578125))
				elseif _G.SelectIsland == "Hot and Cold" then
					topos(CFrame.new(-5506.2373046875, 15.557706832886, -5078.1337890625))
				elseif _G.SelectIsland == "Cursed Ship" then
					topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
				elseif _G.SelectIsland == "Forgotten Island" then
					topos(CFrame.new(-3032.7641601563, 239.17462158203, -10378.0859375))
				elseif _G.SelectIsland == "Ussop Island" then
					topos(CFrame.new(4816.8618164063, 8.0499887466431, 2863.8193359375))
				elseif _G.SelectIsland == "Mini Sky Island" then
					topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
				end
			until not _G.TeleportIsland
		end
		StopTween(_G.TeleportIsland)
	end)
end
if World3 then
	TeleportTab:Dropdown("Select Island",{
		"Port Town",
		"Hydra Island",
		"Mansion",
		"Castle On The Sea",
		"Great Tree",
		"Candy Island",
		"Icecream Island",
		"Cake Loch",
		"Chocolate Island",
		"Peanut Island",
		"Tiki Outpost"
	},_G.SelectIsland,"Select Island",function(value)
		_G.SelectIsland = value
	end)
	TeleportTab:Toggle("Teleport",_G.TeleportIsland,"Teleport",function(value)
		_G.TeleportIsland = value
		if _G.TeleportIsland == true then
			repeat wait()
				if _G.SelectIsland == "Port Town" then
					topos(CFrame.new(-290.4248046875, 24.07953453063965, 5325.07568359375))
				elseif _G.SelectIsland == "Hydra Island" then
					topos(CFrame.new(5749.7861328125, 611.9736938476562, -276.2497863769531))
				elseif _G.SelectIsland == "Mansion" then
					topos(CFrame.new(-12548.998046875, 337.1683654785156, -7500.447265625))
				elseif _G.SelectIsland == "Castle On The Sea" then
					topos(CFrame.new(-5496.65576171875, 313.7943410873413, -2855.71240234375))
				elseif _G.SelectIsland == "Great Tree" then
					topos(CFrame.new(28282.5703125, 30.920513153076172, 2365.896240234375))
				elseif _G.SelectIsland == "Candy Island" then
					topos(CFrame.new(-1050.0537109375, 13.432239532470703, -14445.1435546875))
				elseif _G.SelectIsland == "Icecream Island" then
					topos(CFrame.new(-840.4584350585938, 65.84549713134766, -10903.4013671875))
				elseif _G.SelectIsland == "Cake Loch" then
					topos(CFrame.new(-1977.4578857421875, 36.31522750854492, -12020.078125))
				elseif _G.SelectIsland == "Chocolate Island" then
					topos(CFrame.new(80.237060546875, 77.69961547851562, -12626.7783203125))
				elseif _G.SelectIsland == "Peanut Island" then
					topos(CFrame.new(-2121.0869140625, 37.81772994995117, -10390.2109375))
				elseif _G.SelectIsland == "Tiki Outpost" then
					topos(CFrame.new(-16221.38671875, 9.0863618850708, 475.9859313964844))
				end
			until not _G.TeleportIsland
		end
		StopTween(_G.TeleportIsland)
	end)
end
TeleportTab:Seperator("Misc")
TeleportTab:Button("Teleport to Gear",function()
	topos(game:GetService("Workspace").Map.SkyTrial.Model.FinishPart.CFrame)
end)
TeleportTab:Toggle("Teleport To Fruit",_G.TeleporttoFruit,"Teleport To Fruit",function(value)
	_G.TeleporttoFruit = value
end)
spawn(function()
	while wait(.1) do
		if _G.TeleporttoFruit then
			pcall(function()
				for i,v in pairs(game.Workspace:GetChildren()) do
					if string.find(v.Name, "Fruit") then
						topos(v.Handle.CFrame)
					end
				end
			end)
		end
	end
end)
EspTab:Seperator("Esp")
EspTab:Toggle("ESP Player",false,"ESP Player",function(value)
	_G.ESPPlayer = value
	UpdatePlayerChams()
end)
EspTab:Toggle("ESP Chest",false,"ESP Chest",function(value)
	_G.ChestESP = value
	UpdateChestChams() 
end)
EspTab:Toggle("ESP DevilFruit",false,"ESP DevilFruit",function(value)
	_G.DevilFruitESP = value
	UpdateDevilChams() 
end)
EspTab:Toggle("ESP Flower",false,"ESP Flower",function(value)
	_G.FlowerESP = value
	UpdateFlowerChams() 
end)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if _G.ESPPlayer then
				if v.Character ~= nil and v.Character.HumanoidRootPart ~= nil then
					if not v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
						local BillboardGui = Instance.new('BillboardGui',v.Character.Head)
						BillboardGui.Active = true
						BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
						BillboardGui.Adornee = v.Character.Head
						BillboardGui.Name = "NameEsp"..v.Name
						BillboardGui.AlwaysOnTop = true
						BillboardGui.LightInfluence = 0
						BillboardGui.Size = UDim2.new(0, 200, 0, 50)
						BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
						local TextLabel = Instance.new('TextLabel',BillboardGui)
						TextLabel.BackgroundTransparency = 1
						TextLabel.Size = UDim2.new(0, 200, 0, 50)
						TextLabel.Text = v.Name.." \n"..math.round((v.Character.Head.Position - game.Players.LocalPlayer.Character.Head.Position).Magnitude/3).." Distance\nHealth "..math.round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth).." %"
						TextLabel.TextColor3 = Color3.new(1, 1, 1)
						TextLabel.TextSize = 14
						TextLabel.TextStrokeTransparency = 0.5
						TextLabel.TextWrapped = true
					else
						v.Character.Head['NameEsp'..v.Name].TextLabel.Text = v.Name.." \n"..math.round((v.Character.Head.Position - game.Players.LocalPlayer.Character.Head.Position).Magnitude/3).." Distance\nHealth "..math.round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth).." %"
					end
				end
			else
				if v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
					v.Character.Head:FindFirstChild('NameEsp'..v.Name):Destroy()
				end
			end
		end)
	end
end
function UpdateChestChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name,"Chest") then
				if _G.ChestESP then
					if string.find(v.Name,"Chest") then
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = "GothamBold"
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextColor3 = Color3.fromRGB(0, 255, 0)
							name.BackgroundTransparency = 1
							if v.Name == "Chest1" then
								name.Text = "Bronze Chest \n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude/3).." Distance"
							end
							if v.Name == "Chest2" then
								name.Text = "Gold Chest \n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude/3).." Distance"
							end
							if v.Name == "Chest3" then
								name.Text = "Diamond Chest \n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude/3).." Distance"
							end
						else
							if v.Name == "Chest1" then
								v['NameEsp'..Number].TextLabel.Text = "Bronze Chest \n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude/3).." Distance"
							end
							if v.Name == "Chest2" then
								v['NameEsp'..Number].TextLabel.Text = "Gold Chest \n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude/3).." Distance"
							end
							if v.Name == "Chest3" then
								v['NameEsp'..Number].TextLabel.Text = "Diamond Chest \n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude/3).." Distance"
							end
						end
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
						v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = "GothamBold"
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						name.BackgroundTransparency = 1
						name.Text = (v.Name ..' \n'.. math.round((v.Handle.Position - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude/3) ..' Distance')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. math.round((v.Handle.Position - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude/3) ..' Distance')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
end
function UpdateFlowerChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then 
					if not v:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = "GothamBold"
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextColor3 = Color3.fromRGB(255, 174, 0)
						name.BackgroundTransparency = 1
						if v.Name == "Flower1" then 
							name.Text = ("Blue Flower" ..' \n'.. math.round((v.Position - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" ..' \n'.. math.round((v.Position - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						if v.Name == "Flower1" then 
							v['NameEsp'..Number].TextLabel.Text = ("Blue Flower" ..' \n'.. math.round((v.Position - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude/3) ..' Distance')
							v['NameEsp'..Number].TextLabel.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							v['NameEsp'..Number].TextLabel.Text = ("Red Flower" ..' \n'.. math.round((v.Position - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude/3) ..' Distance')
							v['NameEsp'..Number].TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
						v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end   
		end)
	end
end
spawn(function()
	while true do
		wait(1)
		pcall(function()
			if _G.ESPPlayer then
				UpdatePlayerChams()
			end
			if _G.ChestESP then
				UpdateChestChams() 
			end
			if _G.DevilFruitESP then
				UpdateDevilChams() 
			end
			if _G.FlowerESP then
				UpdateFlowerChams() 
			end
		end)
	end
end)
LocalPlayerTab:Seperator("Player")
local Health = LocalPlayerTab:Slider("Health",1,100,30,function(value)
	_G.Health = value
end)
local Distance = LocalPlayerTab:Slider("Distance",1,100,30,function(value)
	_G.Distance = value
end)
LocalPlayerTab:Toggle("Auto Farm Player",_G.AutoFarmPlayer,"Auto Farm Player",function(value)
	_G.AutoFarmPlayer = value
	StopTween(_G.AutoFarmPlayer)
end)
spawn(function()
	while wait() do
		if _G.AutoFarmPlayer then
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
					if v.Name ~= game.Players.LocalPlayer.Name then
						if v.Humanoid.Health > 0 and v.Humanoid.Health <= (v.Humanoid.MaxHealth * _G.Health / 100) then
							repeat task.wait()
								AutoHaki()
								EquipWeapon(_G.SelectWeaponPlayer)
								topos(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
								game:GetService("VirtualUser"):CaptureController()
								game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
							until not _G.AutoFarmPlayer or v.Humanoid.Health <= 0 or not v.Parent 
						end
					end
				end
			end)
		end
	end
end)
LocalPlayerTab:Toggle("Infinite Ability",true,"Infinite Ability",function(value)
	InfAbility = value
	if value == false then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
	end
end)
spawn(function()
	while wait(.1) do
		if InfAbility then
			InfAb()
		end
	end
end)
LocalPlayerTab:Toggle("Infinite Obversation Range",_G.InfObRange,"Infinite Obversation Range",function(value)
	_G.InfObRange = value
	local VS = game.VirtualUser
	game:GetService("RunService").Stepped:connect(function()
		if _G.InfObRange then
			pcall(function()
				game:GetService("Players").LocalPlayer.VisionRadius.Value = "Inf"
				VS.CaptureController()
				VS.ClickButton1(Vector2.new(18e4, math.huge))
			end)
		end
	end)
end)
LocalPlayerTab:Toggle("Infinite Geppo",_G.InfGeppo,"Infinite Geppo",function(value)
	_G.InfGeppo = value
end)
spawn(function()
	while wait() do
		pcall(function()
			if _G.InfGeppo then
				for i,v in next, getgc() do
					if game:GetService("Players").LocalPlayer.Character.Geppo then
						if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Geppo then
							for l,y in next, getupvalues(v) do
								if tostring(l) == "9" then
									setupvalue(v,l,0)
								end
							end
						end
					end
				end
			end
		end)
	end
end)
LocalPlayerTab:Toggle("Infinite Soru",_G.InfSoru,"Infinite Soru",function(value)
	_G.InfSoru = value
end)
spawn(function()
	while wait() do
		pcall(function()
			if _G.InfSoru and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil  then
				for i,v in next, getgc() do
					if game:GetService("Players").LocalPlayer.Character.Soru then
						if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
							for l,y in next, getupvalues(v) do
								if typeof(y) == "table" then
									if y.LastUse then
										y.LastUse = 0
									end
								end
							end
						end
					end
				end
			end
		end)
	end
end)
LocalPlayerTab:Toggle("Walk On Water",true,"Walk On Water",function(value)
	_G.WalkWater = value
	if _G.WalkWater == true then
		game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
	else
		game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
	end
end)
LocalPlayerTab:Toggle("No Clip",_G.NoClip,"No Clip",function(value)
	_G.NoClip = value
end)
game:GetService("RunService").Stepped:Connect(function()
	if _G.NoClip then
		for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false    
			end
		end
	end
end)
LocalPlayerTab:Toggle("Fly",_G.Fly,"Fly",function(value)
	_G.Fly = value
end)
spawn(function()
	while wait() do
		pcall(function()
			if _G.Fly then
				fly()
			else
				NOFLY()
			end
		end)
	end
end)
function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end
local VV = game:service'VirtualUser'
FlyGui = Instance.new("ScreenGui")
FlyGui.Name = "FlyGui"
FlyGui.Parent = game.CoreGui
local T = FlyGui:FindFirstChild("TextLabel") or Instance.new("TextLabel")
T.Size = UDim2.new(0,100,0,100)
T.Position = UDim2.new(0.05, 0, 0.75,0)
T.BackgroundTransparency = 1
T.TextSize = 25
T.TextColor3 = Color3.new(0, 1, 0)
T.Text = "Press G to toggle fly"
local Players = game:service'Players'
function fly()
	FLYING = true
	local BG = Instance.new('BodyGyro')
	local BV = Instance.new('BodyVelocity')
	BG.P = 9e4
	BG.Parent = getRoot(game.Players.LocalPlayer.Character)
	BV.Parent = getRoot(game.Players.LocalPlayer.Character)
	BV.Velocity = Vector3.new(0,0,0)
	BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	task.spawn(function()
		repeat wait()
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").PlatformStand = true
		until not _G.Fly
		game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").PlatformStand = false
	end)
	BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
	BG.cframe = getRoot(game.Players.LocalPlayer.Character).CFrame
	task.spawn(function()
		repeat task.wait()
			local cframe = getRoot(game.Players.LocalPlayer.Character).CFrame
			local camCF = workspace.CurrentCamera.CoordinateFrame
			BG.cframe = CFrame.new(cframe.p, Vector3.new(camCF.p.x, cframe.y,camCF.p.z))
		until not _G.Fly
	end)
	local bambam = Instance.new("BodyThrust")
	bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
	bambam.Force = Vector3.new(1000,0,1000)
	bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
	local bambam2 = Instance.new("BodyThrust")
	bambam2.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
	bambam2.Force = Vector3.new(500,0,0)
	bambam2.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
	repeat task.wait()
		local velo = Vector3.new(0,0,0)
		if keys.w then
			velo = velo+workspace.CurrentCamera.CFrame.lookVector
		end
		if keys.a then
			velo = velo-workspace.CurrentCamera.CFrame.rightVector
		end
		if keys.s then
			velo = velo-workspace.CurrentCamera.CFrame.lookVector*-1
		end
		if keys.d then
			velo = velo+workspace.CurrentCamera.CFrame.rightVector
		end
		velo = ((velo*keys.shift and 200) or (velo*keys.shift and 0) or (velo*100))/1
		if keys.space then
			velo = velo+workspace.CurrentCamera.CFrame.lookVector*0.5+Vector3.new(0,keys.shift and 100 or 50,0)
		end
		if keys.ctrl then
			velo = velo+workspace.CurrentCamera.CFrame.lookVector*-0.5+Vector3.new(0,keys.shift and -100 or -50,0)
		end
		BV.Velocity = velo
	until not _G.Fly
	BG:Destroy()
	BV:Destroy()
	bambam:Destroy()
	bambam2:Destroy()
end
function NOFLY()
	FLYING = false
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").PlatformStand = false
end
keys = {a = false,d = false,w = false,s = false,space = false,ctrl = false,shift=false}
uis.InputBegan:connect(function(key)
	if key.KeyCode == Enum.KeyCode.G then
		_G.Fly = not _G.Fly
	elseif key.KeyCode == Enum.KeyCode.W then
		keys.w = true
	elseif key.KeyCode == Enum.KeyCode.S then
		keys.s = true
	elseif key.KeyCode == Enum.KeyCode.A then
		keys.a = true
	elseif key.KeyCode == Enum.KeyCode.D then
		keys.d = true
	elseif key.KeyCode == Enum.KeyCode.Space then
		keys.space = true
	elseif key.KeyCode == Enum.KeyCode.LeftControl then
		keys.ctrl = true
	elseif key.KeyCode == Enum.KeyCode.LeftShift then
		keys.shift = true
	end
end)
uis.InputEnded:connect(function(key)
	if key.KeyCode == Enum.KeyCode.W then
		keys.w = false
	elseif key.KeyCode == Enum.KeyCode.S then
		keys.s = false
	elseif key.KeyCode == Enum.KeyCode.A then
		keys.a = false
	elseif key.KeyCode == Enum.KeyCode.D then
		keys.d = false
	elseif key.KeyCode == Enum.KeyCode.Space then
		keys.space = false
	elseif key.KeyCode == Enum.KeyCode.LeftControl then
		keys.ctrl = false
	elseif key.KeyCode == Enum.KeyCode.LeftShift then
		keys.shift = false
	end
end)
LocalPlayerTab:Toggle("Auto Rejoin",_G.AutoRejoin,"Auto Rejoin",function(value)
	_G.AutoRejoin = value
end)
spawn(function()
	while wait() do 
		if _G.AutoRejoin then
			getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
				if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
					game:GetService("TeleportService"):Teleport(game.PlaceId)
				end
			end)
		end
	end
end)
LocalPlayerTab:Seperator("Misc")
LocalPlayerTab:Button("Redeem All Code",function()
	CodeList = {"Sub2Fer999","Enyu_is_Pro","Magicbus","JCWK","Starcodeheo","Bluxxy","fudd10_v2","FUDD10","BIGNEWS","THEGREATACE","SUB2GAMERROBOT_EXP1","StrawHatMaine","SUB2OFFICIALNOOBIE","SUB2NOOBMASTER123","Sub2Daigrock","Axiore","TantaiGaming","STRAWHATMAINE"}
	for i,v in pairs(CodeList) do
		game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v)
	end
end)
LocalPlayerTab:Button("Hop Server + Lower Player",function()
	ServerHop()
end)
LocalPlayerTab:Button("Server Hop",function()
	ServerHop()
end)
function ServerHop()
	local PlaceID = game.PlaceId
	local AllIDs = {}
	local foundAnything = ""
	local actualHour = os.date("!*t").hour
	local Deleted = false
	local File = pcall(function()
		AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
	end)
	if not File then
		table.insert(AllIDs, actualHour)
		writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
	end
	function TPReturner()
		local Site;
		if foundAnything == "" then
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
		else
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
		end
		local ID = ""
		if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
			foundAnything = Site.nextPageCursor
		end
		local num = 0;
		for i,v in pairs(Site.data) do
			local Possible = true
			ID = v.id
			if tonumber(v.maxPlayers) > tonumber(v.playing) then
				for _,Existing in pairs(AllIDs) do
					if num ~= 0 then
						if ID == tostring(Existing) then
							Possible = false
						end
					else
						if tonumber(actualHour) ~= tonumber(Existing) then
							local delFile = pcall(function()
								delfile("NotSameServers.json")
								AllIDs = {}
								table.insert(AllIDs, actualHour)
							end)
						end
					end
					num = num + 1
				end
				if Possible == true then
					table.insert(AllIDs, ID)
					wait()
					pcall(function()
						writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
					end)
					wait(4)
				end
			end
		end
	end
	while wait() do
		TPReturner()
	end
end
LocalPlayerTab:Button("Rejoin",function()
	game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
end)
LocalPlayerTab:Button("Teleport Tool",function()
	local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
	if tool then
		tool.Parent = game.Players.LocalPlayer.Character
		tool.Handle.Orientation = game.Players.LocalPlayer.Character.HumanoidRootPart.Orientation
		tool.Handle.Position = game:GetService("Players").LocalPlayer:GetMouse().Hit.p
	end
end)
LocalPlayerTab:Button("Tween NoClip",function()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v:IsA("Part") then
			v.CanCollide = false
		end
	end
end)
ShopTab:Seperator("Abilities")
ShopTab:Button("Buy Geppo (Skywalk)",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
end)
ShopTab:Button("Buy Buso Haki (Armament)",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
end)
ShopTab:Button("Buy Soru (Teleport)",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
end)
ShopTab:Button("Buy Observation haki (Ken)",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
end)
ShopTab:Seperator("Fighting Style")
ShopTab:Button("Black Leg",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end)
ShopTab:Button("Electro",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end)
ShopTab:Button("Fishman Karate",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end)
ShopTab:Button("Dragon Claw",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end)
ShopTab:Button("Superhuman",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end)
ShopTab:Button("Death Step",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
end)
ShopTab:Button("Sharkman Karate",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
end)
ShopTab:Button("Electric Claw",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
end)
ShopTab:Button("Dragon Talon",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end)
ShopTab:Button("Godhuman",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
end)
ShopTab:Seperator("Sword")
ShopTab:Button("Cutlass",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
end)
ShopTab:Button("Katana",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
end)
ShopTab:Button("Iron Mace",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
end)
ShopTab:Button("Duel Katana",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
end)
ShopTab:Button("Triple Katana", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
end)
ShopTab:Button("Pipe",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
end)
ShopTab:Button("Dual Headed Blade",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
end)
ShopTab:Button("Bisento",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
end)
ShopTab:Button("Soul Cane",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
end)
ShopTab:Seperator("Gun")
ShopTab:Button("Slingshot",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
end)
ShopTab:Button("Musket",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
end)
ShopTab:Button("Flintlock",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
end)
ShopTab:Button("Refined Flintlock",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
end)
ShopTab:Button("Cannon",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
end)
ShopTab:Button("Kabucha",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
end)
ShopTab:Button("Bizarre Rifle",function()
	local args = {
		[1] = "Ectoplasm",
		[2] = "Buy",
		[3] = 1
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
ShopTab:Seperator("Accessory")
ShopTab:Button("Black Cape",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
end)
ShopTab:Button("Swordsman Hat",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
end)
ShopTab:Button("Tomoe Ring",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
end)
ShopTab:Button("Black Spikey Coat",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Spikey Coat")
end)
ShopTab:Seperator("Race")
ShopTab:Button("Race Ghoul",function()
	local args = {
		[1] = "Ectoplasm",
		[2] = "BuyCheck",
		[3] = 4
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	local args = {
		[1] = "Ectoplasm",
		[2] = "Change",
		[3] = 4
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
ShopTab:Button("Race Cyborg",function()
	local args = {
		[1] = "CyborgTrainer",
		[2] = "Buy"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
ShopTab:Seperator("Misc")
ShopTab:Button("Reset Stats (Refund)",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end)
ShopTab:Button("Random Fruit (3M Beli)",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
end)
ShopTab:Button("Reroll Race (950 Gems)",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
end)
FruitTab:Seperator("Sniper")
FruitTab:Toggle("Auto Buy Random Fruit",_G.AutoBuyRandomFruit,"Auto Buy Random Fruit",function(value)
	_G.AutoBuyRandomFruit = value
end)
spawn(function()
	pcall(function()
		while wait(.1) do
			if _G.AutoBuyRandomFruit then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
			end 
		end
	end)
end)
FruitTab:Button("Random Fruit",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
end)
FruitTab:Button("DevilFruit Shop",function()
	local args = {
		[1] = "GetFruits"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
end)
FruitTab:Seperator("Inventory")
FruitTab:Button("Fruit Inventory",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
end)
FruitTab:Button("Bring All Fruit",function()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if string.find(v.Name, "Fruit") then
			v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		end
	end
end)
MiscTab:Seperator("Team")
MiscTab:Button("Join Pirates Team",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
end)
MiscTab:Button("Join Marines Team",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
end)
MiscTab:Seperator("Misc")
MiscTab:Button("Redeem All Code",function()
	FunctionRedeemCode("EXP_5B")
	FunctionRedeemCode("RESET_5B")
	FunctionRedeemCode("UPD16")
	FunctionRedeemCode("POINTSRESET")        
	FunctionRedeemCode("Stat Refund")
	FunctionRedeemCode("SUB2GAMERROBOT_EXP1")
	FunctionRedeemCode("GAMERROBOT_2XEXP")
	FunctionRedeemCode("SUB2GAMERROBOT_RESET1")
	FunctionRedeemCode("GAMER_ROBOT_1M")
	FunctionRedeemCode("TY_FOR_WATCHING")
	FunctionRedeemCode("ADMINGIVEAWAY")
	FunctionRedeemCode("SUBGAMERROBOT")
	FunctionRedeemCode("KITTGAMING")
	FunctionRedeemCode("UPD16")
	FunctionRedeemCode("SUB2OFFICIALNOOBIE")
	FunctionRedeemCode("FUDD10")
	FunctionRedeemCode("BIGNEWS")
	FunctionRedeemCode("THEGREATACE")
	FunctionRedeemCode("SUB2NOOBMASTER123")
	FunctionRedeemCode("SUB2DAIGROCK")
	FunctionRedeemCode("AXIORE")
	FunctionRedeemCode("TANTAIGAMING")
	FunctionRedeemCode("STRAWHATMAINE")
	FunctionRedeemCode("2XEXPFROMTEACTSBLOX")
	FunctionRedeemCode("2KLIKES")
	FunctionRedeemCode("JCWK")
	FunctionRedeemCode("5KLIKES")
	FunctionRedeemCode("9KLIKES")
	FunctionRedeemCode("40KLIKESOMG")
	FunctionRedeemCode("40LIKESCODE")
	FunctionRedeemCode("RESETHERE")
	FunctionRedeemCode("50KLIKESOMG")
	FunctionRedeemCode("TEACTSBLOX")
	FunctionRedeemCode("15KLIKES")
	FunctionRedeemCode("20KLIKES")
	FunctionRedeemCode("30KLIKES")
	FunctionRedeemCode("35KLIKES!")
	FunctionRedeemCode("UPDATE0.5")
	FunctionRedeemCode("TEACTSBLOX")
	FunctionRedeemCode("K1TK5BLOX")
	FunctionRedeemCode("codeTemporary")
end)
function FunctionRedeemCode(code)
	game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(code)
end
MiscTab:Button("FPS Boost",function()
	local decalsyeeted = true
	local g = game
	local w = g.Workspace
	local l = g.Lighting
	local t = w.Terrain
	t.WaterWaveSize = 0
	t.WaterWaveSpeed = 0
	t.WaterReflectance = 0
	t.WaterTransparency = 0
	l.GlobalShadows = false
	l.FogEnd = 9e9
	l.Brightness = 0
	settings().Rendering.QualityLevel = "Level01"
	for i, v in pairs(g:GetDescendants()) do
		if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
			v.Enabled = false
		elseif v:IsA("MeshPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
			v.TextureID = 10385902758728957
		end
	end
	for i, e in pairs(l:GetChildren()) do
		if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
			e.Enabled = false
		end
	end
end)
MiscTab:Button("Redeem All Code X2 Exp",function()
	local datatable = {
		"GAMERROBOT1M",
		"SUBGAMERROBOT",
		"SUB2GAMERROBOT_EXP1",
		"1MLIKES_RESET",
		"GAMER_ROBOT_1M",
		"Sub2Fer999",
		"TY_FOR_WATCHING",
		"NOOB_REFUND",
		"TY_FOR_WATCHING",
		"LIVERESET",
		"ADMINGIVEAWAY",
		"SUB2GAMERROBOT_EXP1",
		"GAMERROBOT1M",
		"kittgaming",
		"SUBAIGAMING",
		"MAGICBUS",
		"JCWK",
		"Starcodeheo",
		"Bluxxy",
		"SUB2FER999",
		"fudd10_v2",
		"FUDD10",
		"BIGNEWS",
		"THEGREATACE",
		"SUB2NOOBMASTER123",
		"SUB2DAIGROCK",
		"Axiore",
		"TantaiGaming",
		"STRAWHATMAINE",
		"Sub2OfficialNoobie"
	}
	for i,v in ipairs(datatable) do
		local args = {
			[1] = v
		}
		game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
	end
end)
MiscTab:Button("Remove Lave",function()
	for i,v in pairs(game.Workspace:GetDescendants()) do
		if string.find(v.Name, "Lava") then   
			v:Destroy()
		end
	end
	for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
		if string.find(v.Name, "Lava") then   
			v:Destroy()
		end
	end
end)
MiscTab:Button("FPS Boost",function()
	for i,v in pairs(game:GetService("Lighting"):GetDescendants()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
			v.Enabled = false
		end
	end
	game:GetService("Workspace").Terrain.WaterWaveSize = 0
	game:GetService("Workspace").Terrain.WaterWaveSpeed = 0
	game:GetService("Workspace").Terrain.WaterReflectance = 0
	game:GetService("Workspace").Terrain.WaterTransparency = 0
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").FogEnd = 9e9
end)
MiscTab:Seperator("Hop")
MiscTab:Button("Hop Server",function()
	ServerHop()
end)
MiscTab:Button("Hop To Lower Server",function()
	HopToSeversLower()
end)
function HopToSeversLower()
	local maxplayers, gamelink, goodserver, data_table = math.huge, "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
	if not _G.FailedServerID then _G.FailedServerID = {} end

	local function hehe()
		local args = {}
		x=0
		for _, v in pairs(game:GetService("HttpService"):JSONDecode(gamelink).data) do
			x = x + 1
			if v.playing ~= nil and maxplayers > tonumber(v.playing) and not table.find(_G.FailedServerID,v.id) then
				table.insert(_G.FailedServerID,v.id)
				table.insert(args,{
					[1] = "teleportToPrivateServer",
					[2] = game.PlaceId,
					[3] = v.id,
					[4] = game.Players:GetChildren()
				})
				goodserver = v.id
			end
		end
		if x <= 0 then
		else
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,goodserver,game.Players.LocalPlayer)
		end
		game:GetService("TeleportService"):TeleportPartyAsync(game.PlaceId,args)
	end
	while wait() do
		hehe()
		if goodserver == nil then
		end
	end
end
MiscTab:Seperator("Others")
MiscTab:Toggle("Join Pirates Team",_G.JoinPirates,"Join Pirates Team",function(value)
	_G.JoinPirates = value
	if _G.JoinPirates == true then
		repeat wait()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
		until _G.JoinPirates == false
	end
end)
MiscTab:Toggle("Join Marines Team",_G.JoinMarines,"Join Marines Team",function(value)
	_G.JoinMarines = value
	if _G.JoinMarines == true then
		repeat wait()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
		until _G.JoinMarines == false
	end
end)
MiscTab:Button("Hop To SwanGlasses",function()
	HopToSwanGlasses()
end)
function HopToSwanGlasses()
	local PlaceID = game.PlaceId
	local AllIDs = {}
	local foundAnything = ""
	local actualHour = os.date("!*t").hour
	local Deleted = false
	local File = pcall(function()
		AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
	end)
	if not File then
		table.insert(AllIDs, actualHour)
		writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
	end
	function TPReturner()
		local Site;
		if foundAnything == "" then
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
		else
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
		end
		local ID = ""
		if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
			foundAnything = Site.nextPageCursor
		end
		local num = 0;
		for i,v in pairs(Site.data) do
			local Possible = true
			ID = v.id
			if tonumber(v.maxPlayers) > tonumber(v.playing) then
				for _,Existing in pairs(AllIDs) do
					if num ~= 0 then
						if ID == tostring(Existing) then
							Possible = false
						end
					else
						if tonumber(actualHour) ~= tonumber(Existing) then
							local delFile = pcall(function()
								delfile("NotSameServers.json")
								AllIDs = {}
								table.insert(AllIDs, actualHour)
							end)
						end
					end
					num = num + 1
				end
				if Possible == true then
					table.insert(AllIDs, ID)
					wait()
					pcall(function()
						writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
					end)
					wait(4)
				end
			end
		end
	end
	
	while wait() do
		TPReturner()
	end
end
MiscTab:Button("Open Devil Shop",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
	game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
end)
MiscTab:Button("Open Inventory",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
	game.Players.localPlayer.PlayerGui.Main.Inventory.Visible = true
end)
MiscTab:Button("Open Title Name",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getTitles")
	game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)
MiscTab:Button("Open Color Haki",function()
	game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)
MiscTab:Seperator("Abilities")
LocalPlayerTab:Toggle("Infinite Energy",_G.InfinitEnergy,"Infinite Energy",function(value)
	InfinitEnergy = value
	originalstam = LocalPlayer.Character.Energy.Value
end)
spawn(function()
	while wait(.1) do
		if InfinitEnergy then
			LocalPlayer.Character.Energy.Value = originalstam
		end
	end
end)
LocalPlayerTab:Toggle("Dodge No Cooldown",_G.DodgeNoCD,"Dodge No Cooldown",function(value)
	_G.DodgeNoCD = value
	NoDodgeCool()
end)
function NoDodgeCool()
	if _G.DodgeNoCD then
		for i,v in next, getgc() do
			if game.Players.LocalPlayer.Character.Dodge then
				if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
					for l,y in next, getupvalues(v) do
						if tostring(l) == "0" then
							setupvalue(v,l,0)
						end
					end
				end
			end
		end
	end
end
LocalPlayerTab:Toggle("Infinite Soru",_G.InfiniteSoru,"Infinite Soru",function(value)
	_G.InfiniteSoru = value
end)
spawn(function()
	while wait(.1) do
		if _G.InfiniteSoru then
			for i,v in pairs(getgc()) do
				if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Soru") and game.Players.LocalPlayer.Character:FindFirstChild("Soru") then
					for i3,v3 in pairs(getupvalues(v)) do
						if tostring(i3) == "3" then
							setupvalue(v,i3,0)
						end
					end
				end
			end
		end
	end
end)
LocalPlayerTab:Toggle("Infinite Gepo",_G.InfGepo,"Infinite Gepo",function(value)
	_G.InfGepo = value
end)
spawn(function()
	while wait(.1) do
		if _G.InfGepo then
			for i,v in pairs(getgc()) do
				if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Geppo") and game.Players.LocalPlayer.Character:FindFirstChild("Geppo") then
					for i3,v3 in pairs(getupvalues(v)) do
						if tostring(i3) == "5" then
							setupvalue(v,i3,0)
						end
					end
				end
			end
		end
	end
end)
MiscTab:Button("Invisible Character",function()
	game.Players.LocalPlayer.Character.LowerTorso:Destroy()
end)
MiscTab:Seperator("Fake")
MiscTab:Textbox("Fake Level",true,function(value)
	game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Text = "Level "..value
end)
MiscTab:Textbox("Fake Beli",true,function(value)
	game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Text = value
end)
MiscTab:Textbox("Fake Bounty",true,function(value)
	game:GetService("Players")["LocalPlayer"].leaderstats["Bounty/Honor"].Value = value
end)
MiscTab:Textbox("Fake Fragment",true,function(value)
	game:GetService("Players")["LocalPlayer"].Data.Fragments.Value = value
end)
MiscTab:Seperator("Troll")
MiscTab:Button("Fly Car",function()
	local car = game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent
	car.Parent.FlyPart.Orientation = Vector3.new(0,car.Parent.PrimaryPart.Orientation.Y,0)
end)
MiscTab:Toggle("Spam Chat",_G.SpamChat,"Spam Chat",function(value)
	_G.SpamChat = value
end)
spawn(function()
	while wait() do
		if _G.SpamChat then
			wait(5)
			local A_1 = "Fai Fao Hub On Top"
			local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
			Event:FireServer(A_1, "All")
		end
	end
end)
MiscTab:Button("Fake KATANA + SUPERHUMAN + OBS V2",function()
	local args = {
		[1] = "BuyBlackLeg"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	local args = {
		[1] = "BlackbeardReward",
		[2] = "DragonClaw",
		[3] = "1"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	local args = {
		[1] = "BlackbeardReward",
		[2] = "DragonClaw",
		[3] = "2"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	local args = {
		[1] = "BuyItem",
		[2] = "Katana"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
end)
MiscTab:Button("Fake CDK + Tushita + Yama",function()
	local args = {
		[1] = "BuyItem",
		[2] = "Yama"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	local args = {
		[1] = "BuyItem",
		[2] = "Tushita"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
MiscTab:Button("Hop To Lower Server",function()
	HopToSeversLower()
end)
MiscTab:Button("Server Hop",function()
	ServerHop()
end)
MiscTab:Seperator("Abilities")
MiscTab:Toggle("Infinite Energy",_G.InfinitEnergy,"Infinite Energy",function(value)
	InfinitEnergy = value
	originalstam = LocalPlayer.Character.Energy.Value
end)
spawn(function()
	while wait(.1) do
		if InfinitEnergy then
			LocalPlayer.Character.Energy.Value = originalstam
		end
	end
end)
MiscTab:Toggle("Dodge No Cooldown",_G.DodgeNoCD,"Dodge No Cooldown",function(value)
	_G.DodgeNoCD = value
	NoDodgeCool()
end)
MiscTab:Toggle("Infinite Soru",_G.InfiniteSoru,"Infinite Soru",function(value)
	_G.InfiniteSoru = value
end)
spawn(function()
	while wait(.1) do
		if _G.InfiniteSoru then
			for i,v in pairs(getgc()) do
				if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Soru") and game.Players.LocalPlayer.Character:FindFirstChild("Soru") then
					for i3,v3 in pairs(getupvalues(v)) do
						if tostring(i3) == "3" then
							setupvalue(v,i3,0)
						end
					end
				end
			end
		end
	end
end)
MiscTab:Toggle("Infinite Gepo",_G.InfGepo,"Infinite Gepo",function(value)
	_G.InfGepo = value
end)
spawn(function()
	while wait(.1) do
		if _G.InfGepo then
			for i,v in pairs(getgc()) do
				if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Geppo") and game.Players.LocalPlayer.Character:FindFirstChild("Geppo") then
					for i3,v3 in pairs(getupvalues(v)) do
						if tostring(i3) == "5" then
							setupvalue(v,i3,0)
						end
					end
				end
			end
		end
	end
end)
MiscTab:Toggle("Walk On Water",true,"Walk On Water",function(value)
	_G.WalkWater = value
	if _G.WalkWater == true then
		game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
	else
		game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
	end
end)
MiscTab:Toggle("No Clip",_G.NoClip,"No Clip",function(value)
	_G.NoClip = value
end)
game:GetService("RunService").Stepped:Connect(function()
	if _G.NoClip then
		for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false    
			end
		end
	end
end)
MiscTab:Toggle("Fly",_G.Fly,"Fly",function(value)
	_G.Fly = value
end)
spawn(function()
	while wait() do
		pcall(function()
			if _G.Fly then
				fly()
			else
				NOFLY()
			end
		end)
	end
end)
function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end
local VV = game:service'VirtualUser'
FlyGui = Instance.new("ScreenGui")
FlyGui.Name = "FlyGui"
FlyGui.Parent = game.CoreGui
local T = FlyGui:FindFirstChild("TextLabel") or Instance.new("TextLabel")
T.Size = UDim2.new(0,100,0,100)
T.Position = UDim2.new(0.05, 0, 0.75,0)
T.BackgroundTransparency = 1
T.TextSize = 25
T.TextColor3 = Color3.new(0, 1, 0)
T.Text = "Press G to toggle fly"
local Players = game:service'Players'
function fly()
	FLYING = true
	local BG = Instance.new('BodyGyro')
	local BV = Instance.new('BodyVelocity')
	BG.P = 9e4
	BG.Parent = getRoot(game.Players.LocalPlayer.Character)
	BV.Parent = getRoot(game.Players.LocalPlayer.Character)
	BV.Velocity = Vector3.new(0,0,0)
	BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	task.spawn(function()
		repeat wait()
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").PlatformStand = true
		until not _G.Fly
		game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").PlatformStand = false
	end)
	BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
	BG.cframe = getRoot(game.Players.LocalPlayer.Character).CFrame
	task.spawn(function()
		repeat task.wait()
			local cframe = getRoot(game.Players.LocalPlayer.Character).CFrame
			local camCF = workspace.CurrentCamera.CoordinateFrame
			BG.cframe = CFrame.new(cframe.p, Vector3.new(camCF.p.x, cframe.y,camCF.p.z))
		until not _G.Fly
	end)
	local bambam = Instance.new("BodyThrust")
	bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
	bambam.Force = Vector3.new(1000,0,1000)
	bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
	local bambam2 = Instance.new("BodyThrust")
	bambam2.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
	bambam2.Force = Vector3.new(500,0,0)
	bambam2.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
	repeat task.wait()
		local velo = Vector3.new(0,0,0)
		if keys.w then
			velo = velo+workspace.CurrentCamera.CFrame.lookVector
		end
		if keys.a then
			velo = velo-workspace.CurrentCamera.CFrame.rightVector
		end
		if keys.s then
			velo = velo-workspace.CurrentCamera.CFrame.lookVector*-1
		end
		if keys.d then
			velo = velo+workspace.CurrentCamera.CFrame.rightVector
		end
		velo = ((velo*keys.shift and 200) or (velo*keys.shift and 0) or (velo*100))/1
		if keys.space then
			velo = velo+workspace.CurrentCamera.CFrame.lookVector*0.5+Vector3.new(0,keys.shift and 100 or 50,0)
		end
		if keys.ctrl then
			velo = velo+workspace.CurrentCamera.CFrame.lookVector*-0.5+Vector3.new(0,keys.shift and -100 or -50,0)
		end
		BV.Velocity = velo
	until not _G.Fly
	BG:Destroy()
	BV:Destroy()
	bambam:Destroy()
	bambam2:Destroy()
end
function NOFLY()
	FLYING = false
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").PlatformStand = false
end
keys = {a = false,d = false,w = false,s = false,space = false,ctrl = false,shift=false}
uis.InputBegan:connect(function(key)
	if key.KeyCode == Enum.KeyCode.G then
		_G.Fly = not _G.Fly
	elseif key.KeyCode == Enum.KeyCode.W then
		keys.w = true
	elseif key.KeyCode == Enum.KeyCode.S then
		keys.s = true
	elseif key.KeyCode == Enum.KeyCode.A then
		keys.a = true
	elseif key.KeyCode == Enum.KeyCode.D then
		keys.d = true
	elseif key.KeyCode == Enum.KeyCode.Space then
		keys.space = true
	elseif key.KeyCode == Enum.KeyCode.LeftControl then
		keys.ctrl = true
	elseif key.KeyCode == Enum.KeyCode.LeftShift then
		keys.shift = true
	end
end)
uis.InputEnded:connect(function(key)
	if key.KeyCode == Enum.KeyCode.W then
		keys.w = false
	elseif key.KeyCode == Enum.KeyCode.S then
		keys.s = false
	elseif key.KeyCode == Enum.KeyCode.A then
		keys.a = false
	elseif key.KeyCode == Enum.KeyCode.D then
		keys.d = false
	elseif key.KeyCode == Enum.KeyCode.Space then
		keys.space = false
	elseif key.KeyCode == Enum.KeyCode.LeftControl then
		keys.ctrl = false
	elseif key.KeyCode == Enum.KeyCode.LeftShift then
		keys.shift = false
	end
end)
LocalPlayerTab:Button("Server Hop",function()
	ServerHop()
end)
LocalPlayerTab:Button("Rejoin Server",function()
	game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
end)
print("Script Loaded!")
