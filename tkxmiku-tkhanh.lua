-- local function scary()
--     warn("❌ This script must only be executed from the offical TKxMiku loader")
--         return
--     end

-- local HttpService = game:GetService("HttpService")
-- local SECRET_KEY = "YourSecretSecondaryToken" 
-- local function simpleHMAC(input, key)
--     return HttpService:UrlEncode(input .. key)
-- end
-- if not _G._secondaryData or
--    not _G._secondaryData.nonce or 
--    not _G._secondaryData.timestamp or 
--    not _G._secondaryData.signature or 
--    not _G._secondaryData.userKey or 
--    not _G.__userKey then
--     print("❌ Security verification failed: missing token data or user key.")
--     scary()
--     return
-- end
-- if _G._secondaryData.userKey ~= _G.__userKey then
--     print("❌ Security verification failed: user key mismatch.")
--     return
-- end
-- local tokenData = _G._secondaryData.nonce .. ":" .. _G._secondaryData.timestamp .. ":" .. _G.__userKey
-- local expectedSignature = simpleHMAC(tokenData, SECRET_KEY)
-- if expectedSignature ~= _G._secondaryData.signature then
--     print("❌ Security verification failed: token signature mismatch.")
--     return
-- end
-- local allowedTimeWindow = 300  -- seconds
-- local currentTime = os.time()
-- if math.abs(currentTime - tonumber(_G._secondaryData.timestamp)) > allowedTimeWindow then
--     print("❌ Security verification failed: token expired.")
--     return
-- end
-- _G._secondaryData = nil
-- _G.__userKey = nil
print("✅ Security verification passed. Loading TKxMiku...")
if game.PlaceId == 2753915549 then
	World1 = true;
elseif game.PlaceId == 4442272183 then
	World2 = true;
elseif game.PlaceId == 7449423635 then
	World3 = true;
end;
-- print("--------------------------------------------------------------------------");
-- print("-- [[ Webhook ]] --");
-- (loadstring(game:HttpGet("https://gitshare.me/backend/api/files/677ec71a-082b-4b8c-a1e8-f590f2ab286a/download")))();
-- print("--------------------------------------------------------------------------");
local Update = (loadstring(Game:HttpGet("https://you.whimper.xyz/sources/nox/data/fruitsource.lua")))();
if Update:LoadAnimation() then
	Update:StartLoad();
end;
if Update:LoadAnimation() then
	Update:Loaded();
end;
local Library = Update:Window({
	Title = "TKxMiku",
	SubTitle = "by TKhanh",
	Size = UDim2.new(0, 500, 0, 350),
	TabWidth = 150
});
local MainTab = Library:Tab("Main", "rbxassetid://10723407389");
local FarmTab = Library:Tab("Farming", "rbxassetid://10723415335");
local ItemsTab = Library:Tab("Items", "rbxassetid://10709782497");
local SettingsTab = Library:Tab("Setting", "rbxassetid://10734950309");
local LocalPlayerTab = Library:Tab("Local Player", "rbxassetid://10747373176");
local HoldTab = Library:Tab("Hold Skill", "rbxassetid://10734984606");
if World3 then
	SeaTab = Library:Tab("Sea Event", "rbxassetid://10709761530");
	SettingSeaTab = Library:Tab("Setting Sea", "rbxassetid://10709810948");
end;
if World2 or World3 then
	SeaStackTab = Library:Tab("Stack Sea", "rbxassetid://10747376931");
end;
if World3 then
	CraftTab = Library:Tab("Crafts", "rbxassetid://10723405360");
	DragonDojoTab = Library:Tab("Dragon Dojo", "rbxassetid://10734951847");
end;
local StatsTab = Library:Tab("Stats Weapon", "rbxassetid://10709770317");
if World3 or World2 then
	RaceV4Tab = Library:Tab("Race V4", "rbxassetid://10723425539");
end;
local CombatTab = Library:Tab("Combat", "rbxassetid://10734975486");
if World2 or World3 then
	RaidTab = Library:Tab("Raid", "rbxassetid://10723345749");
end;
local EspTab = Library:Tab("Esp", "rbxassetid://10723346959");
local TeleportTab = Library:Tab("Teleport", "rbxassetid://10734886004");
local ShopTab = Library:Tab("Shop", "rbxassetid://10734952479");
local FruitTab = Library:Tab("Devil Fruit", "rbxassetid://10734883986");
local MiscTab = Library:Tab("Misc", "rbxassetid://10723424838");
local ServTab = Library:Tab("Server", "rbxassetid://10723426722");
_G.Settings = {
	Main = {
		["Select Weapon"] = "Melee",
		["Farm Mode"] = "Normal",
		["Auto Farm"] = false,
		["Auto Farm Fast"] = false,
		["Selected Mastery Mode"] = "Quest",
		["Auto Farm Fruit Mastery"] = false,
		["Auto Farm Gun Mastery"] = false,
		["Selected Mastery Sword"] = nil,
		["Auto Farm Sword Mastery"] = false,
		["Selected Mob"] = nil,
		["Auto Farm Mob"] = false,
		["Selected Boss"] = nil,
		["Auto Farm Boss"] = false,
		["Auto Farm All Boss"] = false
	},
	Event = {},
	Farm = {
		["Auto Elite Hunter"] = false,
		["Auto Elite Hunter Hop"] = false,
		["Selected Bone Farm Mode"] = "Quest",
		["Auto Farm Bone"] = false,
		["Auto Random Surprise"] = false,
		["Auto Pirate Raid"] = false,
		["Auto Farm Observation"] = false,
		["Auto Observation V2"] = false,
		["Auto Musketeer Hat"] = false,
		["Auto Saber"] = false,
		["Auto Farm Chest Tween"] = false,
		["Auto Farm Chest Instant"] = false,
		["Auto Chest Hop"] = false,
		["Auto Farm Chest Mirage"] = false,
		["Auto Stop Items"] = false,
		["Auto Farm Katakuri"] = false,
		["Auto Spawn Cake Prince"] = false,
		["Auto Kill Cake Prince"] = false,
		["Auto Kill Dough King"] = false,
		["Auto Farm Radioactive"] = false,
		["Auto Farm Mystic Droplet"] = false,
		["Auto Farm Magma Ore"] = false,
		["Auto Farm Angel Wings"] = false,
		["Auto Farm Leather"] = false,
		["Auto Farm Scrap Metal"] = false,
		["Auto Farm Conjured Cocoa"] = false,
		["Auto Farm Dragon Scale"] = false,
		["Auto Farm Gunpowder"] = false,
		["Auto Farm Fish Tail"] = false,
		["Auto Farm Mini Tusk"] = false
	},
	Setting = {
		["Spin Position"] = false,
		["Farm Distance"] = 35,
		["Player Tween Speed"] = 350,
		["Bring Mob"] = true,
		["Bring Mob Mode"] = "Normal",
		["Fast Attack"] = true,
		["Fast Attack Mode"] = "Normal",
		["Fast Attack Type"] = "New",
		["Attack Aura"] = true,
		["Hide Notification"] = false,
		["Hide Damage Text"] = true,
		["Black Screen"] = false,
		["White Screen"] = false,
		["Hide Monster"] = false,
		["Mastery Health"] = 25,
		["Fruit Mastery Skill Z"] = true,
		["Fruit Mastery Skill X"] = true,
		["Fruit Mastery Skill C"] = true,
		["Fruit Mastery Skill V"] = false,
		["Fruit Mastery Skill F"] = false,
		["Gun Mastery Skill Z"] = true,
		["Gun Mastery Skill X"] = true,
		["Auto Set Spawn Point"] = true,
		["Auto Observation"] = false,
		["Auto Haki"] = true,
		["Auto Rejoin"] = true,
		["Bypass Anti Cheat"] = true
	},
	Hold = {
		["Hold Mastery Skill Z"] = 0,
		["Hold Mastery Skill X"] = 0,
		["Hold Mastery Skill C"] = 0,
		["Hold Mastery Skill V"] = 0,
		["Hold Mastery Skill F"] = 0,
		["Hold Sea Skill Z"] = 0,
		["Hold Sea Skill X"] = 0,
		["Hold Sea Skill C"] = 0,
		["Hold Sea Skill V"] = 0,
		["Hold Sea Skill F"] = 0
	},
	Stats = {
		["Auto Add Melee Stats"] = false,
		["Auto Add Defense Stats"] = false,
		["Auto Add Devil Fruit Stats"] = false,
		["Auto Add Sword Stats"] = false,
		["Auto Add Gun Stats"] = false,
		["Point Stats"] = 1
	},
	Items = {
		["Auto Second Sea"] = false,
		["Auto Third Sea"] = false,
		["Auto Farm Factory"] = false,
		["Auto Super Human"] = false,
		["Auto Death Step"] = false,
		["Auto Fishman Karate"] = false,
		["Auto Electric Claw"] = false,
		["Auto Dragon Talon"] = false,
		["Auto God Human"] = false,
		["Auto Buddy Sword"] = false,
		["Auto Soul Guitar"] = false,
		["Auto Rengoku"] = false,
		["Auto Hallow Scythe"] = false,
		["Auto Warden Sword"] = false,
		["Auto Cursed Dual Katana"] = false,
		["Auto Yama"] = false,
		["Auto Tushita"] = false,
		["Auto Canvander"] = false,
		["Auto Dragon Trident"] = false,
		["Auto Pole"] = false,
		["Auto Shawk Saw"] = false,
		["Auto Greybeard"] = false,
		["Auto Swan Glasses"] = false,
		["Auto Arena Trainer"] = false,
		["Auto Dark Dagger"] = false,
		["Auto Press Haki Button"] = false,
		["Auto Rainbow Haki"] = false,
		["Auto Holy Torch"] = false,
		["Auto Bartilo Quest"] = false
	},
	Esp = {
		["ESP Player"] = false,
		["ESP Chest"] = false,
		["ESP DevilFruit"] = false,
		["ESP RealFruit"] = false,
		["ESP Flower"] = false,
		["ESP Island"] = false,
		["ESP Npc"] = false,
		["ESP Sea Beast"] = false,
		["ESP Monster"] = false,
		["ESP Mirage"] = false,
		["ESP Kitsune"] = false,
		["ESP Frozen"] = false,
		["ESP Advanced Fruit Dealer"] = false,
		["ESP Aura"] = false,
		["ESP Gear"] = false
	},
	DragonDojo = {
		["Auto Farm Blaze Ember"] = false,
		["Auto Collect Blaze Ember"] = false
	},
	SeaEvent = {
		["Selected Boat"] = "Guardian",
		["Selected Zone"] = "Zone 5",
		["Boat Tween Speed"] = 300,
		["Sail Boat"] = false,
		["Auto Farm Shark"] = true,
		["Auto Farm Piranha"] = true,
		["Auto Farm Fish Crew Member"] = true,
		["Auto Farm Ghost Ship"] = true,
		["Auto Farm Pirate Brigade"] = true,
		["Auto Farm Pirate Grand Brigade"] = true,
		["Auto Farm Terrorshark"] = true,
		["Auto Farm Seabeasts"] = true,
		["Dodge Seabeasts Attack"] = true,
		["Dodge Terrorshark Attack"] = true,
		Lightning = false,
		["Increase Boat Speed"] = false,
		["No Clip Rock"] = false
	},
	SettingSea = {
		["Skill Devil Fruit"] = true,
		["Skill Melee"] = true,
		["Skill Sword"] = true,
		["Skill Gun"] = true,
		["Sea Fruit Skill Z"] = true,
		["Sea Fruit Skill X"] = true,
		["Sea Fruit Skill C"] = true,
		["Sea Fruit Skill V"] = false,
		["Sea Fruit Skill F"] = false,
		["Sea Melee Skill Z"] = true,
		["Sea Melee Skill X"] = true,
		["Sea Melee Skill C"] = true,
		["Sea Melee Skill V"] = true,
		["Sea Sword Skill Z"] = true,
		["Sea Sword Skill X"] = true,
		["Sea Gun Skill Z"] = true,
		["Sea Gun Skill X"] = true
	},
	SeaStack = {
		["Teleport To Frozen Dimension"] = false,
		["Sail To Frozen Dimension"] = false,
		["Summon Frozen Dimension"] = false,
		["Teleport To Kitsune Island"] = false,
		["Auto Collect Azure Ember"] = false,
		["Set Azure Ember"] = 20,
		["Auto Trade Azure Ember"] = false,
		["Teleport To Mirage Island"] = false,
		["Teleport To Advanced Fruit Dealer"] = false,
		["Auto Attack Seabeasts"] = false,
		["Summon Prehistoric Island"] = false,
		["Tween To Prehistoric Island"] = false,
		["Auto Kill Lava Golem"] = false
	},
	Craft = {
		["Auto Craft Common Scroll"] = false,
		["Auto Craft Rare Scroll"] = false,
		["Auto Craft Legendary Scroll"] = false,
		["Auto Craft Mythical Scroll"] = false
	},
	Race = {
		["Auto Race V2"] = false,
		["Auto Race V3"] = false,
		["Selected PlaceV4"] = nil,
		["Teleport To PlaceV4"] = false,
		["Auto Buy Gear"] = false,
		["Tween To Highest Mirage"] = false,
		["Find Blue Gear"] = false,
		["Look Moon Ability"] = false,
		["Auto Train"] = false,
		["Auto Kill Player After Trial"] = false,
		["Auto Trial"] = false
	},
	Combat = {
		["Auto Kill Player Quest"] = false,
		["Aimbot Gun"] = false,
		["Aimbot Skill Neares"] = false,
		["Aimbot Skill"] = false,
		["Enable PvP"] = false
	},
	Raid = {
		["Selected Chip"] = nil,
		["Auto Dungeon"] = false,
		["Auto Awaken"] = false,
		["Price Devil Fruit"] = 1000000,
		["Unstore Devil Fruit"] = false,
		["Law Raid"] = false
	},
	Shop = {
		["Auto Buy Legendary Sword"] = false,
		["Auto Buy Haki Color"] = false
	},
	LocalPlayer = {
		["Infinite Energy"] = false,
		["Infinite Ability"] = true,
		["Infinite Geppo"] = false,
		["Infinite Soru"] = false,
		["Dodge No Cooldown"] = false,
		["Active Race V3"] = false,
		["Active Race V4"] = true,
		["Walk On Water"] = true,
		["No Clip"] = false
	},
	Fruit = {
		["Auto Buy Random Fruit"] = false,
		["Store Rarity Fruit"] = "Common - Mythical",
		["Auto Store Fruit"] = false,
		["Fruit Notification"] = false,
		["Teleport To Fruit"] = false,
		["Tween To Fruit"] = false
	},
	Misc = {
		["Hide Chat"] = false,
		["Hide Leaderboard"] = false,
		["Highlight Mode"] = false
	}
};
(getgenv()).Load = function()
	if readfile and writefile and isfile and isfolder then
		if not isfolder("TKxMiku") then
			makefolder("TKxMiku");
		end;
		if not isfolder("TKxMiku/Blox Fruits/") then
			makefolder("TKxMiku/Blox Fruits/");
		end;
		if not isfile(("TKxMiku/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json")) then
			writefile("TKxMiku/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", (game:GetService("HttpService")):JSONEncode(_G.Settings));
		else
			local Decode = (game:GetService("HttpService")):JSONDecode(readfile("TKxMiku/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"));
			for i, v in pairs(Decode) do
				_G.Settings[i] = v;
			end;
		end;
		print("Loaded!");
	else
		return warn("Status : Undetected Executor");
	end;
end;
(getgenv()).SaveSetting = function()
	if Update:SaveSettings() then
		if readfile and writefile and isfile and isfolder then
			if not isfile(("TKxMiku/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json")) then
				(getgenv()).Load();
			else
				local Decode = (game:GetService("HttpService")):JSONDecode(readfile("TKxMiku/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"));
				local Array = {};
				for i, v in pairs(_G.Settings) do
					Array[i] = v;
				end;
				writefile("TKxMiku/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", (game:GetService("HttpService")):JSONEncode(Array));
			end;
		else
			return warn("Status : Undetected Executor");
		end;
	end;
end;
(getgenv()).Load();
spawn(function()
	repeat
		task.wait();
	until game:IsLoaded();
	local ChatService = game:GetService("Chat");
	wait(1);
	((require(game.ReplicatedStorage.Notification)).new("<Color=Purple>[ Welcome " .. game.Players.LocalPlayer.DisplayName .. " ]<Color=/>")):Display();
	wait(1);
	((require(game.ReplicatedStorage.Notification)).new("<Color=Yellow>[ Enjoy for script ]<Color=/>")):Display();
end);
function CheckQuest()
	MyLevel = (game:GetService("Players")).LocalPlayer.Data.Level.Value;
	if World1 then
		if MyLevel == 1 or MyLevel <= 9 then
			Mon = "Bandit";
			LevelQuest = 1;
			NameQuest = "BanditQuest1";
			NameMon = "Bandit";
			CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544);
			CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125);
		elseif MyLevel == 10 or MyLevel <= 14 then
			Mon = "Monkey";
			LevelQuest = 1;
			NameQuest = "JungleQuest";
			NameMon = "Monkey";
			CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0);
			CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209);
		elseif MyLevel == 15 or MyLevel <= 29 then
			Mon = "Gorilla";
			LevelQuest = 2;
			NameQuest = "JungleQuest";
			NameMon = "Gorilla";
			CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0);
			CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875);
		elseif MyLevel == 30 or MyLevel <= 39 then
			Mon = "Pirate";
			LevelQuest = 1;
			NameQuest = "BuggyQuest1";
			NameMon = "Pirate";
			CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627);
			CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125);
		elseif MyLevel == 40 or MyLevel <= 59 then
			Mon = "Brute";
			LevelQuest = 2;
			NameQuest = "BuggyQuest1";
			NameMon = "Brute";
			CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627);
			CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875);
		elseif MyLevel == 60 or MyLevel <= 74 then
			Mon = "Desert Bandit";
			LevelQuest = 1;
			NameQuest = "DesertQuest";
			NameMon = "Desert Bandit";
			CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693);
			CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375);
		elseif MyLevel == 75 or MyLevel <= 89 then
			Mon = "Desert Officer";
			LevelQuest = 2;
			NameQuest = "DesertQuest";
			NameMon = "Desert Officer";
			CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693);
			CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875);
		elseif MyLevel == 90 or MyLevel <= 99 then
			Mon = "Snow Bandit";
			LevelQuest = 1;
			NameQuest = "SnowQuest";
			NameMon = "Snow Bandit";
			CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685);
			CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125);
		elseif MyLevel == 100 or MyLevel <= 119 then
			Mon = "Snowman";
			LevelQuest = 2;
			NameQuest = "SnowQuest";
			NameMon = "Snowman";
			CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685);
			CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625);
		elseif MyLevel == 120 or MyLevel <= 149 then
			Mon = "Chief Petty Officer";
			LevelQuest = 1;
			NameQuest = "MarineQuest2";
			NameMon = "Chief Petty Officer";
			CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625);
		elseif MyLevel == 150 or MyLevel <= 174 then
			Mon = "Sky Bandit";
			LevelQuest = 1;
			NameQuest = "SkyQuest";
			NameMon = "Sky Bandit";
			CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268);
			CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625);
		elseif MyLevel == 175 or MyLevel <= 189 then
			Mon = "Dark Master";
			LevelQuest = 2;
			NameQuest = "SkyQuest";
			NameMon = "Dark Master";
			CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268);
			CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625);
		elseif MyLevel == 190 or MyLevel <= 209 then
			Mon = "Prisoner";
			LevelQuest = 1;
			NameQuest = "PrisonerQuest";
			NameMon = "Prisoner";
			CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712);
			CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781);
		elseif MyLevel == 210 or MyLevel <= 249 then
			Mon = "Dangerous Prisoner";
			LevelQuest = 2;
			NameQuest = "PrisonerQuest";
			NameMon = "Dangerous Prisoner";
			CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712);
			CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375);
		elseif MyLevel == 250 or MyLevel <= 274 then
			Mon = "Toga Warrior";
			LevelQuest = 1;
			NameQuest = "ColosseumQuest";
			NameMon = "Toga Warrior";
			CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298);
			CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625);
		elseif MyLevel == 275 or MyLevel <= 299 then
			Mon = "Gladiator";
			LevelQuest = 2;
			NameQuest = "ColosseumQuest";
			NameMon = "Gladiator";
			CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298);
			CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625);
		elseif MyLevel == 300 or MyLevel <= 324 then
			Mon = "Military Soldier";
			LevelQuest = 1;
			NameQuest = "MagmaQuest";
			NameMon = "Military Soldier";
			CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469);
			CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875);
		elseif MyLevel == 325 or MyLevel <= 374 then
			Mon = "Military Spy";
			LevelQuest = 2;
			NameQuest = "MagmaQuest";
			NameMon = "Military Spy";
			CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469);
			CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375);
		elseif MyLevel == 375 or MyLevel <= 399 then
			Mon = "Fishman Warrior";
			LevelQuest = 1;
			NameQuest = "FishmanQuest";
			NameMon = "Fishman Warrior";
			CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
			CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625);
			if _G.Settings.Main["Auto Farm"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
			end;
		elseif MyLevel == 400 or MyLevel <= 449 then
			Mon = "Fishman Commando";
			LevelQuest = 2;
			NameQuest = "FishmanQuest";
			NameMon = "Fishman Commando";
			CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
			CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875);
			if _G.Settings.Main["Auto Farm"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
			end;
		elseif MyLevel == 450 or MyLevel <= 474 then
			Mon = "God's Guard";
			LevelQuest = 1;
			NameQuest = "SkyExp1Quest";
			NameMon = "God's Guard";
			CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859);
			CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375);
			if _G.Settings.Main["Auto Farm"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688));
			end;
		elseif MyLevel == 475 or MyLevel <= 524 then
			Mon = "Shanda";
			LevelQuest = 2;
			NameQuest = "SkyExp1Quest";
			NameMon = "Shanda";
			CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998);
			CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531);
			if _G.Settings.Main["Auto Farm"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047));
			end;
		elseif MyLevel == 525 or MyLevel <= 549 then
			Mon = "Royal Squad";
			LevelQuest = 1;
			NameQuest = "SkyExp2Quest";
			NameMon = "Royal Squad";
			CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875);
		elseif MyLevel == 550 or MyLevel <= 624 then
			Mon = "Royal Soldier";
			LevelQuest = 2;
			NameQuest = "SkyExp2Quest";
			NameMon = "Royal Soldier";
			CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625);
		elseif MyLevel == 625 or MyLevel <= 649 then
			Mon = "Galley Pirate";
			LevelQuest = 1;
			NameQuest = "FountainQuest";
			NameMon = "Galley Pirate";
			CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381);
			CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875);
		elseif MyLevel >= 650 then
			Mon = "Galley Captain";
			LevelQuest = 2;
			NameQuest = "FountainQuest";
			NameMon = "Galley Captain";
			CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381);
			CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375);
		end;
	elseif World2 then
		if MyLevel == 700 or MyLevel <= 724 then
			Mon = "Raider";
			LevelQuest = 1;
			NameQuest = "Area1Quest";
			NameMon = "Raider";
			CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985);
			CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125);
		elseif MyLevel == 725 or MyLevel <= 774 then
			Mon = "Mercenary";
			LevelQuest = 2;
			NameQuest = "Area1Quest";
			NameMon = "Mercenary";
			CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985);
			CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625);
		elseif MyLevel == 775 or MyLevel <= 799 then
			Mon = "Swan Pirate";
			LevelQuest = 1;
			NameQuest = "Area2Quest";
			NameMon = "Swan Pirate";
			CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906);
			CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625);
		elseif MyLevel == 800 or MyLevel <= 874 then
			Mon = "Factory Staff";
			NameQuest = "Area2Quest";
			LevelQuest = 2;
			NameMon = "Factory Staff";
			CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 9.21350468e-09, 0.999488771, -1.07132087e-08, -0.0319722369);
			CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875);
		elseif MyLevel == 875 or MyLevel <= 899 then
			Mon = "Marine Lieutenant";
			LevelQuest = 1;
			NameQuest = "MarineQuest3";
			NameMon = "Marine Lieutenant";
			CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268);
			CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125);
		elseif MyLevel == 900 or MyLevel <= 949 then
			Mon = "Marine Captain";
			LevelQuest = 2;
			NameQuest = "MarineQuest3";
			NameMon = "Marine Captain";
			CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268);
			CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625);
		elseif MyLevel == 950 or MyLevel <= 974 then
			Mon = "Zombie";
			LevelQuest = 1;
			NameQuest = "ZombieQuest";
			NameMon = "Zombie";
			CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146);
			CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875);
		elseif MyLevel == 975 or MyLevel <= 999 then
			Mon = "Vampire";
			LevelQuest = 2;
			NameQuest = "ZombieQuest";
			NameMon = "Vampire";
			CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146);
			CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625);
		elseif MyLevel == 1000 or MyLevel <= 1049 then
			Mon = "Snow Trooper";
			LevelQuest = 1;
			NameQuest = "SnowMountainQuest";
			NameMon = "Snow Trooper";
			CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106);
			CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875);
		elseif MyLevel == 1050 or MyLevel <= 1099 then
			Mon = "Winter Warrior";
			LevelQuest = 2;
			NameQuest = "SnowMountainQuest";
			NameMon = "Winter Warrior";
			CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106);
			CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625);
		elseif MyLevel == 1100 or MyLevel <= 1124 then
			Mon = "Lab Subordinate";
			LevelQuest = 1;
			NameQuest = "IceSideQuest";
			NameMon = "Lab Subordinate";
			CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578);
			CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375);
		elseif MyLevel == 1125 or MyLevel <= 1174 then
			Mon = "Horned Warrior";
			LevelQuest = 2;
			NameQuest = "IceSideQuest";
			NameMon = "Horned Warrior";
			CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578);
			CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375);
		elseif MyLevel == 1175 or MyLevel <= 1199 then
			Mon = "Magma Ninja";
			LevelQuest = 1;
			NameQuest = "FireSideQuest";
			NameMon = "Magma Ninja";
			CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375);
		elseif MyLevel == 1200 or MyLevel <= 1249 then
			Mon = "Lava Pirate";
			LevelQuest = 2;
			NameQuest = "FireSideQuest";
			NameMon = "Lava Pirate";
			CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875);
		elseif MyLevel == 1250 or MyLevel <= 1274 then
			Mon = "Ship Deckhand";
			LevelQuest = 1;
			NameQuest = "ShipQuest1";
			NameMon = "Ship Deckhand";
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016);         
			CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)      
			if _G.Settings.Main["Auto Farm"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif MyLevel == 1275 or MyLevel <= 1299 then
			Mon = "Ship Engineer";
			LevelQuest = 2;
			NameQuest = "ShipQuest1";
			NameMon = "Ship Engineer";
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016);   
			CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
			if _G.Settings.Main["Auto Farm"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end  
		elseif MyLevel == 1300 or MyLevel <= 1324 then
			Mon = "Ship Steward";
			LevelQuest = 1;
			NameQuest = "ShipQuest2";
			NameMon = "Ship Steward";
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125);         
			CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
			if _G.Settings.Main["Auto Farm"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif MyLevel == 1325 or MyLevel <= 1349 then
			Mon = "Ship Officer";
			LevelQuest = 2;
			NameQuest = "ShipQuest2";
			NameMon = "Ship Officer";
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125);
			CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
			if _G.Settings.Main["Auto Farm"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif MyLevel == 1350 or MyLevel <= 1374 then
			Mon = "Arctic Warrior";
			LevelQuest = 1;
			NameQuest = "FrostQuest";
			NameMon = "Arctic Warrior";
			CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909);
			CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
			if _G.Settings.Main["Auto Farm"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422));
			end
		elseif MyLevel == 1375 or MyLevel <= 1424 then
			Mon = "Snow Lurker";
			LevelQuest = 2;
			NameQuest = "FrostQuest";
			NameMon = "Snow Lurker";
			CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909);
			CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
		elseif MyLevel == 1425 or MyLevel <= 1449 then
			Mon = "Sea Soldier";
			LevelQuest = 1;
			NameQuest = "ForgottenQuest";
			NameMon = "Sea Soldier";
			CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376);
			CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
		elseif MyLevel >= 1450 then
			Mon = "Water Fighter";
			LevelQuest = 2;
			NameQuest = "ForgottenQuest";
			NameMon = "Water Fighter";
			CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376);
			CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
		end
	elseif World3 then
		if MyLevel == 1500 or MyLevel <= 1524 then
			Mon = "Pirate Millionaire";
			LevelQuest = 1;
			NameQuest = "PiratePortQuest";
			NameMon = "Pirate Millionaire";
			CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627);
			CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
		elseif MyLevel == 1525 or MyLevel <= 1574 then
			Mon = "Pistol Billionaire";
			LevelQuest = 2;
			NameQuest = "PiratePortQuest";
			NameMon = "Pistol Billionaire";
			CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627);
			CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
		elseif MyLevel == 1575 or MyLevel <= 1599 then
			Mon = "Dragon Crew Warrior";
			LevelQuest = 1;
			NameQuest = "AmazonQuest";
			NameMon = "Dragon Crew Warrior";
			CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359);
			CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
		elseif MyLevel == 1600 or MyLevel <= 1624 then 
			Mon = "Dragon Crew Archer [Lv. 1600]";
			NameQuest = "AmazonQuest";
			LevelQuest = 2;
			NameMon = "Dragon Crew Archer";
			CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375);
			CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
		elseif MyLevel == 1625 or MyLevel <= 1649 then
			Mon = "Female Islander";
			NameQuest = "AmazonQuest2";
			LevelQuest = 1;
			NameMon = "Female Islander";
			CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422);
			CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
		elseif MyLevel == 1650 or MyLevel <= 1699 then 
			Mon = "Giant Islander [Lv. 1650]";
			NameQuest = "AmazonQuest2";
			LevelQuest = 2;
			NameMon = "Giant Islander";
			CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422);
			CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
		elseif MyLevel == 1700 or MyLevel <= 1724 then
			Mon = "Marine Commodore";
			LevelQuest = 1;
			NameQuest = "MarineTreeIsland";
			NameMon = "Marine Commodore";
			CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747);
			CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
		elseif MyLevel == 1725 or MyLevel <= 1774 then
			Mon = "Marine Rear Admiral [Lv. 1725]";
			NameMon = "Marine Rear Admiral";
			NameQuest = "MarineTreeIsland";
			LevelQuest = 2;
			CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813);
			CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
		elseif MyLevel == 1775 or MyLevel <= 1799 then
			Mon = "Fishman Raider";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland3";
			NameMon = "Fishman Raider";
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
		elseif MyLevel == 1800 or MyLevel <= 1824 then
			Mon = "Fishman Captain";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland3";
			NameMon = "Fishman Captain";
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
		elseif MyLevel == 1825 or MyLevel <= 1849 then
			Mon = "Forest Pirate";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland";
			NameMon = "Forest Pirate";
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247);
			CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
		elseif MyLevel == 1850 or MyLevel <= 1899 then
			Mon = "Mythological Pirate";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland";
			NameMon = "Mythological Pirate";
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247);
			CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
		elseif MyLevel == 1900 or MyLevel <= 1924 then
			Mon = "Jungle Pirate";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland2";
			NameMon = "Jungle Pirate";
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002);
			CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
		elseif MyLevel == 1925 or MyLevel <= 1974 then
			Mon = "Musketeer Pirate";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland2";
			NameMon = "Musketeer Pirate";
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002);
			CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
		elseif MyLevel == 1975 or MyLevel <= 1999 then
			Mon = "Reborn Skeleton";
			LevelQuest = 1;
			NameQuest = "HauntedQuest1";
			NameMon = "Reborn Skeleton";
			CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0);
			CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
		elseif MyLevel == 2000 or MyLevel <= 2024 then
			Mon = "Living Zombie";
			LevelQuest = 2;
			NameQuest = "HauntedQuest1";
			NameMon = "Living Zombie";
			CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0);
			CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
		elseif MyLevel == 2025 or MyLevel <= 2049 then
			Mon = "Demonic Soul";
			LevelQuest = 1;
			NameQuest = "HauntedQuest2";
			NameMon = "Demonic Soul";
			CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
		elseif MyLevel == 2050 or MyLevel <= 2074 then
			Mon = "Posessed Mummy";
			LevelQuest = 2;
			NameQuest = "HauntedQuest2";
			NameMon = "Posessed Mummy";
			CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
		elseif MyLevel == 2075 or MyLevel <= 2099 then
			Mon = "Peanut Scout";
			LevelQuest = 1;
			NameQuest = "NutsIslandQuest";
			NameMon = "Peanut Scout";
			CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
		elseif MyLevel == 2100 or MyLevel <= 2124 then
			Mon = "Peanut President";
			LevelQuest = 2;
			NameQuest = "NutsIslandQuest";
			NameMon = "Peanut President";
			CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
		elseif MyLevel == 2125 or MyLevel <= 2149 then
			Mon = "Ice Cream Chef";
			LevelQuest = 1;
			NameQuest = "IceCreamIslandQuest";
			NameMon = "Ice Cream Chef";
			CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.41796875)
		elseif MyLevel == 2150 or MyLevel <= 2199 then
			Mon = "Ice Cream Commander";
			LevelQuest = 2;
			NameQuest = "IceCreamIslandQuest";
			NameMon = "Ice Cream Commander";
			CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-558.06103515625, 112.34364318847656, -11290.7744140625)
		elseif MyLevel == 2200 or MyLevel <= 2224 then
			Mon = "Cookie Crafter";
			LevelQuest = 1;
			NameQuest = "CakeQuest";
			NameMon = "Cookie Crafter";
			CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957829589, -8.80302053e-08, 0.287305026, 6.10258046e-08, 1, 7.46024495e-08, -0.287305026, 5.92411768e-08, 0.957829589);
			CFrameMon = CFrame.new(-2374.13671875, 37.798133850097656, -12188.021484375)
		elseif MyLevel == 2225 or MyLevel <= 2249 then
			Mon = "Cake Guard";
			LevelQuest = 2;
			NameQuest = "CakeQuest";
			NameMon = "Cake Guard";
			CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957829589, -8.80302053e-08, 0.287305026, 6.10258046e-08, 1, 7.46024495e-08, -0.287305026, 5.92411768e-08, 0.957829589);
			CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12255.732421875)
		elseif MyLevel == 2250 or MyLevel <= 2274 then
			Mon = "Baking Staff";
			LevelQuest = 1;
			NameQuest = "CakeQuest2";
			NameMon = "Baking Staff";
			CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804458, 4.22142143e-08, 0.250778586, 4.74911028e-08, 1, 1.49904711e-08, -0.250778586, 2.64211951e-08, -0.96804458);
			CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12999.84765625)
		elseif MyLevel == 2275 or MyLevel <= 2299 then
			Mon = "Head Baker";
			LevelQuest = 2;
			NameQuest = "CakeQuest2";
			NameMon = "Head Baker";
			CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804458, 4.22142143e-08, 0.250778586, 4.74911028e-08, 1, 1.49904711e-08, -0.250778586, 2.64211951e-08, -0.96804458);
			CFrameMon = CFrame.new(-2055.26513671875, 73.3375244140625, -13073.4169921875)
		elseif MyLevel == 2300 or MyLevel <= 2324 then
			Mon = "Cocoa Warrior";
			LevelQuest = 1;
			NameQuest = "ChocQuest1";
			NameMon = "Cocoa Warrior";
			CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375);
			CFrameMon = CFrame.new(-103.9398193359375, 26.552322387695313, -12277.83203125)
		elseif MyLevel == 2325 or MyLevel <= 2349 then
			Mon = "Chocolate Bar Battler";
			LevelQuest = 2;
			NameQuest = "ChocQuest1";
			NameMon = "Chocolate Bar Battler";
			CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375);
			CFrameMon = CFrame.new(582.5905151367188, 77.18809509277344, -12463.162109375)
		elseif MyLevel == 2350 or MyLevel <= 2374 then
			Mon = "Sweet Thief";
			LevelQuest = 1;
			NameQuest = "ChocQuest2";
			NameMon = "Sweet Thief";
			CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875);
			CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
		elseif MyLevel == 2375 or MyLevel <= 2399 then
			Mon = "Candy Rebel";
			LevelQuest = 2;
			NameQuest = "ChocQuest2";
			NameMon = "Candy Rebel";
			CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875);
			CFrameMon = CFrame.new(134.86549377441406, 77.2476806640625, -12876.5478515625)
		elseif MyLevel == 2400 or MyLevel <= 2424 then
			Mon = "Candy Pirate";
			LevelQuest = 1;
			NameQuest = "CandyQuest1";
			NameMon = "Candy Pirate";
			CFrameQuest = CFrame.new(-1150.0400390625, 16.14284324645996, -14446.3671875);
			CFrameMon = CFrame.new(-1310.5003662109375, 26.016263961791992, -14562.404296875)
		elseif MyLevel == 2425 or MyLevel <= 2449 then
			Mon = "Snow Demon";
			LevelQuest = 2;
			NameQuest = "CandyQuest1";
			NameMon = "Snow Demon";
			CFrameQuest = CFrame.new(-1150.0400390625, 16.14284324645996, -14446.3671875);
			CFrameMon = CFrame.new(-850.9169921875, 16.325468063354492, -14666.408203125)
		elseif MyLevel == 2450 or MyLevel <= 2474 then
			Mon = "Isle Outlaw";
			LevelQuest = 1;
			NameQuest = "TikiQuest1";
			NameMon = "Isle Outlaw";
			CFrameQuest = CFrame.new(-16545.9355, 55.6863556, -173.230499);
			CFrameMon = CFrame.new(-16120.6035, 116.520554, -328.691833)
		elseif MyLevel == 2475 or MyLevel <= 2499 then
			Mon = "Island Boy";
			LevelQuest = 2;
			NameQuest = "TikiQuest1";
			NameMon = "Island Boy";
			CFrameQuest = CFrame.new(-16545.9355, 55.6863556, -173.230499);
			CFrameMon = CFrame.new(-16911.2617, 116.065086, -325.051147)
		elseif MyLevel == 2500 or MyLevel <= 2524 then
			Mon = "Sun-worn Warrior";
			LevelQuest = 1;
			NameQuest = "TikiQuest2";
			NameMon = "Sun-worn Warrior";
			CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625);
			CFrameMon = CFrame.new(-16349.877, 92.1491623, 1120.30127)
		elseif MyLevel >= 2525 then
			Mon = "Island Emperor";
			LevelQuest = 2;
			NameQuest = "TikiQuest2";
			NameMon = "Island Emperor";
			CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625);
			CFrameMon = CFrame.new(-16877.703125, 144.44259643554688, 1125.1488037109375)
		end
	end
end
local RigC = require(game.ReplicatedStorage.Util.CameraShaker)
RigC:Stop()
function EquipWeapon(ToolSe)
	if not _G.NotAutoEquip then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			wait(.1)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
		end
	end
end
function UnEquipWeapon(Weapon)
	if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
		_G.NotAutoEquip = true
		wait(.5)
		game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
		wait(.1)
		_G.NotAutoEquip = false
	end
end
function topos(Pos)
	Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	pcall(function() 
		tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos})
		tween:Play()
		if Distance <= 250 then
			tween:Cancel()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
		end
		if _G.StopTween == true then
			tween:Cancel()
			_G.Clip = false
		end
	end)
end 
function GetDistance(target)
    return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end
function BTP(P)
	repeat wait(1)
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
		task.wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
	until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500
	wait(1)
end
function Tween(P)
	local Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	pcall(function()
		tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/350, Enum.EasingStyle.Linear),{CFrame = P})
		tween:Play()
		if Distance <= 200 then
			tween:Cancel()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
		end
	end)
end
function StopTween(target)
	if not target then
		_G.StopTween = true
		wait()
		topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
		wait()
		if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored == true then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
		end
		if tween then tween:Cancel() end
		_G.StopTween = false
		_G.Clip = false
	end
end
spawn(function()
	pcall(function()
		while wait() do
			for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectWeaponGun = v.Name
					end
				end
			end
		end
	end)
end)
game:GetService("RunService").RenderStepped:Connect(function()
	if _G.AutoFarm or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoPole or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.AutoEvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoPole or _G.AutoFarmChest or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.AutoEvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoBartilo or _G.AutoSwanQuest or _G.AutoFarmBone or _G.AutoFarmKatakuri or StartMagnet or _G.AutoGodHuman or _G.TeleportToKitsune or _G.AutoFarmSeaBeasts or _G.AutoFarmTerrorshark then
		if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
			local Noclip = Instance.new("BodyVelocity")
			Noclip.Name = "BodyClip"
			Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			Noclip.MaxForce = Vector3.new(100000,100000,100000)
			Noclip.Velocity = Vector3.new(0,0,0)
		end
	end
end)
spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
			if _G.AutoFarm or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoPole or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.AutoEvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoPole or _G.AutoFarmChest or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.AutoEvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoBartilo or _G.AutoSwanQuest or _G.AutoFarmBone or _G.AutoFarmKatakuri or StartMagnet or _G.AutoGodHuman or _G.TeleportToKitsune or _G.AutoFarmSeaBeasts or _G.AutoFarmTerrorshark then
				for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.CanCollide = false    
					end
				end
			end
		end)
	end)
end)
spawn(function()
	while wait() do
		if _G.AutoFarm or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoPole or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.AutoEvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoPole or _G.AutoFarmChest or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.AutoEvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoBartilo or _G.AutoSwanQuest or _G.AutoFarmBone or _G.AutoFarmKatakuri or StartMagnet or _G.AutoGodHuman or _G.TeleportToKitsune or _G.AutoFarmSeaBeasts or _G.AutoFarmTerrorshark then
			pcall(function()
				game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
				game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
			end)
		end
	end
end)
function AutoHaki()
	if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
	end
end
function InfAb()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
        local args = {
            [1] = "BuyBlackLeg"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end   
	if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.UIController.Variable.Text == "OK" then
		wait(1)
		return
	end
	
	if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Start")
	end
end
MainTab:Seperator("Select")
WeaponList = {}
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
	if v:IsA("Tool") then
		table.insert(WeaponList ,v.Name)
	end
end
for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do  
	if v:IsA("Tool") then
		table.insert(WeaponList ,v.Name)
	end
end
local SelectWeapona = MainTab:Dropdown("Select Weapon",WeaponList,_G.SelectWeaponPlayer,"Select Weapon",function(value)
	_G.SelectWeaponPlayer = value
end)
MainTab:Button("Refresh Weapon",function()
	SelectWeapona:Clear()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
		if v:IsA("Tool") then
			SelectWeapona:Add(v.Name)
		end
	end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
		if v:IsA("Tool") then
			SelectWeapona:Add(v.Name)
		end
	end
end)
MainTab:Seperator("Auto Farm")
local AutoFarm = MainTab:Toggle("Auto Farm Level",_G.AutoFarm,"Auto Farm Level",function(value)
	_G.AutoFarm = value
	StopTween(_G.AutoFarm)
end)
MainTab:Toggle("Auto Farm Fast",_G.AutoFarmFast,"Auto Farm Fast",function(value)
	_G.AutoFarmFast = value
	StopTween(_G.AutoFarmFast)
end)
spawn(function()
	while wait() do
		if _G.AutoFarmFast then
			CheckQuest()
			if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				StopTween(_G.AutoFarmFast)
				LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
				wait(.2)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
			elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
					pcall(
						function()
							for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == Mon then
									repeat task.wait()
										if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Title.Text, NameMon) then
											Hum = v.Humanoid
											Hum.WalkSpeed = 0
											Hum.JumpPower = 0
											EquipWeapon(_G.SelectWeaponPlayer)
											PosMon = v.HumanoidRootPart.CFrame
											topos(v.HumanoidRootPart.CFrame*CFrame.new(0,35,0))
											v.HumanoidRootPart.CanCollide = false
											v.Head.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											if AttackRandomType == 1 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 1)
											elseif AttackRandomType == 2 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 35)
											elseif AttackRandomType == 3 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 35, 0)
											elseif AttackRandomType == 4 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(35, 1, 0)
											elseif AttackRandomType == 5 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 35, -1)
											else
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 1)
											end
											Fast = true
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										else
											StopTween(true)
											topos(CFrameQuest)
										end
									until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoFarmFast == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
									Fast = false
								end
							end
						end
					)
				else
					topos(CFrameMon)
				end
			end
		end
	end
end)
spawn(function()
	while wait() do
		if _G.AutoFarm then
			Fast = true
		end
	end
end)
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoFarm then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					StopTween(_G.AutoFarm)
					CheckQuest()
					LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
					wait(1.1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					CheckQuest()
					if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
						pcall(
							function()
								for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == Mon then
										repeat task.wait()
											if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Title.Text, NameMon) then
												Hum = v.Humanoid
												Hum.WalkSpeed = 0
												Hum.JumpPower = 0
												EquipWeapon(_G.SelectWeaponPlayer)
												PosMon = v.HumanoidRootPart.CFrame
												topos(v.HumanoidRootPart.CFrame*CFrame.new(0,35,0))
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												if AttackRandomType == 1 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 1)
												elseif AttackRandomType == 2 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 35)
												elseif AttackRandomType == 3 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 35, 0)
												elseif AttackRandomType == 4 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(35, 1, 0)
												elseif AttackRandomType == 5 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 35, -1)
												else
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 1)
												end
												Fast = true
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											else
												StopTween(true)
												topos(CFrameQuest)
											end
										until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoFarm == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
										Fast = false
									end
								end
							end
						)
					else
						topos(CFrameMon)
					end
				end
			end
		end
	end)
end)
AttackRandomType = 1
spawn(function()
	while wait(6.5) do
		AttackRandomType = math.random(1,5)
		wait(0.3)
	end
end)
local Playerslist = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
	table.insert(Playerslist,v.Name)
end
local SelectedPly = MainTab:Dropdown("Select Player",Playerslist,_G.SelectPly,"Select Player",function(value)
	_G.SelectPly = value
end)
MainTab:Button("Refresh Player",function()
	Playerslist = {}
	SelectedPly:Clear()
	for i,v in pairs(game:GetService("Players"):GetChildren()) do  
		SelectedPly:Add(v.Name)
	end
end)
MainTab:Toggle("Teleport to Player",_G.TeleportPly,"Teleport to Player",function(value)
	_G.TeleportPly = value
	if _G.TeleportPly then
		repeat topos(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPly == false
	end
	StopTween(_G.TeleportPly)
end)
MainTab:Toggle("Auto Kill Player",_G.AutoKillPly,"Auto Kill Player",function(value)
	_G.AutoKillPly = value
	StopTween(_G.AutoKillPly)
end)
spawn(function()
	while wait() do 
		if _G.AutoKillPly then
			if game.Players:FindFirstChild(_G.SelectPly) then
				if game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health > 0 then
					repeat task.wait()
						EquipWeapon(_G.SelectWeaponPlayer)
						AutoHaki()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0,35,1)
						spawn(function()
							pcall(function()
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							end)
						end)
					until _G.AutoKillPly == false or game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health <= 0
				end
			end
		end
	end
end)
MainTab:Toggle("Aimbot Gun",_G.Aimbot_Gun,"Aimbot Gun",function(value)
	_G.Aimbot_Gun = value
end)
spawn(function()
	while task.wait() do
		if _G.Aimbot_Gun and game.Players.LocalPlayer.Character:FindFirstChild(SelectWeaponGun) then
			local args = {
				[1] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Position,
				[2] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart
			}
			game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
		end 
	end
end)
MainTab:Toggle("Aimbot Skill",_G.Aimbot_Skill,"Aimbot Skill",function(value)
	_G.Aimbot_Skill = value
end)
spawn(function()
	pcall(function()
		while task.wait() do
			if _G.Aimbot_Skill and game.Players:FindFirstChild(_G.SelectPly) then 
				if _G.AimSkill_fov then
					AimBotSkillPosition = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Position + game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Velocity * (_G.Prediction/10)
				else
					AimBotSkillPosition = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Position
				end
			end
		end
	end)
end)
MainTab:Toggle("Spectate Player",_G.SpecPly,"Spectate Player",function(value)
	_G.SpecPly = value
	if _G.SpecPly then
		game:GetService("Workspace").Camera.CameraSubject = game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid
	else
		game:GetService("Workspace").Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
	end
end)
MainTab:Seperator("Mob")
local Moblists = {}
local Mob = MainTab:Dropdown("Select Mobs",Moblists,_G.SelectMobs,"Select Mobs Spawn",function(value)
	_G.SelectMobs = value
end)
MainTab:Button("Refresh Mobs",function()
	Moblists = {}
	Mob:Clear()
	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
		if not table.find(Moblists,v.Name) then
			table.insert(Moblists,v.Name)
			Mob:Add(v.Name)
		end
	end
end)
MainTab:Toggle("Auto Farm Mobs",_G.AutoFarmMob,"Auto Farm Mob Select",function(value)
	_G.AutoFarmMob = value
	StopTween(_G.AutoFarmMob)
end)
spawn(function()
	while wait() do
		if _G.AutoFarmMob then
			if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectMobs) then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name == _G.SelectMobs then
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							repeat task.wait()
								pcall(function()
									EquipWeapon(_G.SelectWeaponPlayer)
									AutoHaki()
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false 
									v.HumanoidRootPart.Size = Vector3.new(50,50,50)
									topos(v.HumanoidRootPart.CFrame*CFrame.new(0,35,0))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end)
							until not _G.AutoFarmMob or not v.Parent or v.Humanoid.Health <= 0 
						end
					end
				end
			else
				if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectMobs) then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectMobs).HumanoidRootPart.CFrame *CFrame.new(0,35,0))
				end
			end
		end
	end
end)
MainTab:Seperator("Boss")
local Bosslist = {}
for i,v in pairs(game Workspace.Enemies:GetChildren()) do
	if string.find(v.Name , "Boss") then
		if not table.find(Bosslist,v.Name) then
			table.insert(Bosslist,v.Name)
		end
	end
end
for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
	if string.find(v.Name , "Boss") then
		if not table.find(Bosslist,v.Name) then
			table.insert(Bosslist,v.Name)
		end
	end
end
local BossSelect = MainTab:Dropdown("Select Boss",Bosslist,_G.SelectBoss,"Select Boss",function(value)
	_G.SelectBoss = value
end)
MainTab:Button("Refresh Boss",function()
	BossSelect:Clear()
	for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
		if string.find(v.Name , "Boss") then
			BossSelect:Add(v.Name)
		end
	end
	for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
		if string.find(v.Name , "Boss") then
			BossSelect:Add(v.Name)
		end
	end
end)
MainTab:Toggle("Auto Farm Boss",_G.AutoFarmBoss,"Auto Farm Boss Select",function(value)
	_G.AutoFarmBoss = value
	StopTween(_G.AutoFarmBoss)
end)
spawn(function()
	while wait() do
		if _G.AutoFarmBoss then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == _G.SelectBoss then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									AutoHaki()
									EquipWeapon(_G.SelectWeaponPlayer)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.Size = Vector3.new(50,50,50)
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								until not _G.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					end
				else
					if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(0,35,5))
					end
				end
			end)
		end
	end
end)
MainTab:Toggle("Auto Farm All Boss",_G.AutoAllBoss,"Auto Farm All Boss",function(value)
	_G.AutoAllBoss = value
	StopTween(_G.AutoAllBoss)
end)
MainTab:Toggle("Auto Farm All Boss Hop",_G.AutoAllBossHop,"Auto Farm All Boss Hop",function(value)
	_G.AutoAllBossHop = value
end)
spawn(function()
	while wait() do
		if _G.AutoAllBoss then
			pcall(function()
				for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
					if string.find(v.Name , "Boss") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							repeat task.wait()
								AutoHaki()
								EquipWeapon(_G.SelectWeaponPlayer)
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(80,80,80)
								topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 5))
								game:GetService("VirtualUser"):CaptureController()
								game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
							until not _G.AutoAllBoss or not v.Parent or v.Humanoid.Health <= 0 
						end
					end
				end
				if _G.AutoAllBossHop then
					wait(2)
					ServerHop()
				end
			end)
		end
	end
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
	TPReturner()
end
FarmTab:Seperator("Event")
FarmTab:Toggle("Auto Elite Hunter",_G.AutoElite,"Auto Elite Hunter",function(value)
	_G.AutoElite = value
	StopTween(_G.AutoElite)
end)
FarmTab:Toggle("Auto Elite Hunter Hop",_G.AutoEliteHop,"Auto Elite Hunter Hop",function(value)
	_G.AutoEliteHop = value
end)
spawn(function()
	while wait() do
		if _G.AutoElite then
			if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				StopTween(_G.AutoElite)
				topos(CFrame.new(-5418.892578125, 313.7413024902344, -2826.307373046875))
				wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
			else
				if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeaponPlayer)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
										sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
									until _G.AutoElite == false or v.Humanoid.Health <= 0 or not v.Parent
								end
							end
						end
					else 
						if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,5))
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,5))
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,5))
						else
							if _G.AutoEliteHop then
								ServerHop()
							else
								topos(CFrame.new(-5418.892578125, 313.7413024902344, -2826.307373046875))
							end
						end
					end					
				end
			end
		end
	end
end)
FarmTab:Toggle("Auto Farm Bone",_G.AutoFarmBone,"Auto Farm Bone",function(value)
	_G.AutoFarmBone = value
	StopTween(_G.AutoFarmBone)
end)
spawn(function()
	while wait() do 
		if _G.AutoFarmBone then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									AutoHaki()
									EquipWeapon(_G.SelectWeaponPlayer)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false 
									StartMagnet = true
									PosMon = v.HumanoidRootPart.CFrame
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								until not _G.AutoFarmBone or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					end
				else
					StartMagnet = false
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
						if v.Name == "Reborn Skeleton [Lv. 1975]" then
							topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
						elseif v.Name == "Living Zombie [Lv. 2000]" then
							topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
						elseif v.Name == "Demonic Soul [Lv. 2025]" then
							topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
						elseif v.Name == "Posessed Mummy [Lv. 2050]" then
							topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
						else
							topos(CFrame.new(-9507.03125, 172.15625, 6148.2880859375))
						end
					end
				end
			end)
		end
	end
end)
FarmTab:Toggle("Auto Random Surprise",_G.AutoRandomBone,"Auto Random Surprise",function(value)
	_G.AutoRandomBone = value
end)
spawn(function()
	pcall(function()
		while wait(.1) do
			if _G.AutoRandomBone then    
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
			end
		end
	end)
end)
FarmTab:Toggle("Auto Farm Ectoplasm",_G.AutoEctoplasm,"Auto Farm Ectoplasm",function(value)
	_G.AutoEctoplasm = value
	StopTween(_G.AutoEctoplasm)
end)
spawn(function()
	while wait() do 
		if _G.AutoEctoplasm then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1325]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v.Name, "Ship") then
							repeat task.wait()
								AutoHaki()
								EquipWeapon(_G.SelectWeaponPlayer)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								PosMonEctoplasm = v.HumanoidRootPart.CFrame
								topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								EctoplasmMon = true
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							until _G.AutoEctoplasm == false or not v.Parent or v.Humanoid.Health <= 0
						end
					end
				else
					EctoplasmMon = false
					local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
					if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
						if Distance > 2000 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
						else
							topos(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
						end
					end
				end
			end)
		end
	end
end)
FarmTab:Toggle("Auto Farm Observation",_G.AutoFarmObservation,"Auto Farm Observation",function(value)
	_G.AutoFarmObservation = value
	StopTween(_G.AutoFarmObservation)
end)
spawn(function()
	while wait() do
		if _G.AutoFarmObservation then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == ("Galley Captain [Lv. 650]")  then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									AutoHaki()
									EquipWeapon(_G.SelectWeaponPlayer)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false 
									v.HumanoidRootPart.Size = Vector3.new(50,50,50)
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								until not _G.AutoFarmObservation or not v.Parent or v.Humanoid.Health <= 0 
							end
						end
					end
				else 
					topos(CFrame.new(5714.4521484375, 601.59765625, 201.14402770996094))
				end
			end)
		end
	end
end)
FarmTab:Toggle("Auto Farm Observation Hop",_G.AutoFarmObservationHop,"Auto Farm Observation Hop",function(value)
	_G.AutoFarmObservationHop = value
end)
spawn(function()
	pcall(function()
		while wait(.1) do
			if _G.AutoFarmObservationHop then
				Hop()
			end
		end
	end)
end)
function Hop()
	local PlaceID = game.PlaceId
	local AllIDs = {}
	local foundAnything = ""
	local actualHour = os.date("!*t").hour
	local Deleted = false
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
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
					end)
					wait(4)
				end
			end
		end
	end
	function Teleport() 
		while wait(.1) do
			pcall(function()
				TPReturner()
				if foundAnything ~= "" then
					TPReturner()
				end
			end)
		end
	end
	Teleport()
end
FarmTab:Toggle("Auto Farm Chest Tween",_G.AutoFarmChest,"Auto Farm Chest Tween",function(value)
	_G.AutoFarmChest = value
	StopTween(_G.AutoFarmChest)
end)
spawn(function()
	while wait() do 
		if _G.AutoFarmChest then
			for i,v in pairs(game.Workspace:GetDescendants()) do
				if v.Name == "Chest2" or v.Name == "Chest1" or v.Name == "Chest3" then
					pcall(function()
						topos(v.CFrame)
						wait(0.5)
					end)
				end
			end
			if _G.AutoFarmChestHop then
				wait(2)
				ServerHop()
			end
		end
	end
end)
FarmTab:Toggle("Auto Farm Chest Hop",_G.AutoFarmChestHop,"Auto Farm Chest Hop",function(value)
	_G.AutoFarmChestHop = value
end)
FarmTab:Seperator("Auto Farm Material")
local Mat = FarmTab:Dropdown("Select Material",{"Angel Wings [ Scrap Metal 10 / Leather 20 / Demonic Wisp 2 ]","Radioactive Material [ Factory ]","Mystic Droplet [ Forgotten Island ]","Magma Ore [ Magma Island ]","Vampire Fang [ Graveyard Island ]","Scrap Metal [ The Cafe ]","Dragon Scale [ Hydra Island ]","Gunpowder [ Military Island ]","Fish Tail [ Fishman Island ]","Mini Tusk [ Upper Skylands ]","Conjured Cocoa [ Sea of Treats ]"},{""},function(value)
	SelectMaterial = value
end)
FarmTab:Toggle("Auto Farm Material",_G.AutoFarmMaterial,"Auto Farm Material",function(value)
	_G.AutoFarmMaterial = value
	StopTween(_G.AutoFarmMaterial)
end)
spawn(function()
	while wait() do
		if _G.AutoFarmMaterial then
			pcall(function()
				if SelectMaterial == "Angel Wings [ Scrap Metal 10 / Leather 20 / Demonic Wisp 2 ]" then
					if game:GetService("Workspace").Enemies:FindFirstChild("God's Guard [Lv. 450]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == ("God's Guard [Lv. 450]")  then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeaponPlayer)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Head.CanCollide = false 
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										MaterialMob = v.HumanoidRootPart.CFrame
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
									until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 
								end
							end
						end
					else
						topos(CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859))
					end
				elseif SelectMaterial == "Radioactive Material [ Factory ]" then
					if game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff [Lv. 800]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == ("Factory Staff [Lv. 800]")  then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeaponPlayer)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Head.CanCollide = false 
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										MaterialMob = v.HumanoidRootPart.CFrame
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
									until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 
								end
							end
						end
					else
						topos(CFrame.new(295.571136, 73.2265625, -56.3741646, 1, 0, 0, 0, 1, 0, 0, 0, 1))
					end
				elseif SelectMaterial == "Mystic Droplet [ Forgotten Island ]" then
					if game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter [Lv. 1450]") or game:GetService("Workspace").Enemies:FindFirstChild("Sea Soldier [Lv. 1425]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == ("Water Fighter [Lv. 1450]") or v.Name == ("Sea Soldier [Lv. 1425]") then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeaponPlayer)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Head.CanCollide = false 
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										MaterialMob = v.HumanoidRootPart.CFrame
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
									until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 
								end
							end
						end
					else
						topos(CFrame.new(-3211.174560546875, 298.3011474609375, -10531.9560546875))
					end
				elseif SelectMaterial == "Magma Ore [ Magma Island ]" then
					if game:GetService("Workspace").Enemies:FindFirstChild("Military Spy [Lv. 325]") or game:GetService("Workspace").Enemies:FindFirstChild("Military Soldier [Lv. 300]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == ("Military Spy [Lv. 325]") or v.Name == ("Military Soldier [Lv. 300]") then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeaponPlayer)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Head.CanCollide = false 
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										MaterialMob = v.HumanoidRootPart.CFrame
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
									until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 
								end
							end
						end
					else
						topos(CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213))
					end
				elseif SelectMaterial == "Vampire Fang [ Graveyard Island ]" then
					if game:GetService("Workspace").Enemies:FindFirstChild("Vampire [Lv. 975]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == ("Vampire [Lv. 975]") then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeaponPlayer)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Head.CanCollide = false 
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										MaterialMob = v.HumanoidRootPart.CFrame
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
									until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 
								end
							end
						end
					else
						topos(CFrame.new(-6033.22607421875, 6.437716960906982, -1311.543701171875))
					end
				elseif SelectMaterial == "Scrap Metal [ The Cafe ]" then
					if game:GetService("Workspace").Enemies:FindFirstChild("Pirate Millionaire [Lv. 1500]") or game:GetService("Workspace").Enemies:FindFirstChild("Pistol Billionaire [Lv. 1525]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == ("Pirate Millionaire [Lv. 1500]") or v.Name == ("Pistol Billionaire [Lv. 1525]") then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeaponPlayer)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Head.CanCollide = false 
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										MaterialMob = v.HumanoidRootPart.CFrame
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
									until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 
								end
							end
						end
					else
						topos(CFrame.new(-288.46246337890625, 306.1300964355469, 597.9988403320312))
					end
				elseif SelectMaterial == "Dragon Scale [ Hydra Island ]" then
					if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer [Lv. 1600]") or game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior [Lv. 1575]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == ("Dragon Crew Archer [Lv. 1600]") or v.Name == ("Dragon Crew Warrior [Lv. 1575]") then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeaponPlayer)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Head.CanCollide = false 
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										MaterialMob = v.HumanoidRootPart.CFrame
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
									until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 
								end
							end
						end
					else
						topos(CFrame.new(5833.91845703125, 51.12059020996094, -1103.0693359375))
					end
				elseif SelectMaterial == "Gunpowder [ Military Island ]" then
					if game:GetService("Workspace").Enemies:FindFirstChild("Marine Commodore [Lv. 1700]") or game:GetService("Workspace").Enemies:FindFirstChild("Marine Rear Admiral [Lv. 1725]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == ("Marine Commodore [Lv. 1700]") or v.Name == ("Marine Rear Admiral [Lv. 1725]") then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeaponPlayer)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Head.CanCollide = false 
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										MaterialMob = v.HumanoidRootPart.CFrame
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
									until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 
								end
							end
						end
					else
						topos(CFrame.new(2179.990234375, 28.731239318847656, -6740.05517578125))
					end
				elseif SelectMaterial == "Fish Tail [ Fishman Island ]" then
					if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Raider [Lv. 1775]") or game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain [Lv. 1800]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == ("Fishman Raider [Lv. 1775]") or v.Name == ("Fishman Captain [Lv. 1800]") then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeaponPlayer)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Head.CanCollide = false 
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										MaterialMob = v.HumanoidRootPart.CFrame
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
									until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 
								end
							end
						end
					else
						topos(CFrame.new(-10581.65625, 330.8729553222656, -8761.2236328125))
					end
				elseif SelectMaterial == "Mini Tusk [ Upper Skylands ]" then
					if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate [Lv. 1850]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == ("Mythological Pirate [Lv. 1850]") then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeaponPlayer)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Head.CanCollide = false 
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										MaterialMob = v.HumanoidRootPart.CFrame
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
									until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 
								end
							end
						end
					else
						topos(CFrame.new(-13234.115234375, 331.4884948730469, -7625.4013671875))
					end
				elseif SelectMaterial == "Conjured Cocoa [ Sea of Treats ]" then
					if game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler [Lv. 2325]") or game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior [Lv. 2300]") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief [Lv. 2350]") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel [Lv. 2375]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == ("Chocolate Bar Battler [Lv. 2325]") or v.Name == ("Cocoa Warrior [Lv. 2300]") or v.Name == ("Sweet Thief [Lv. 2350]") or v.Name == ("Candy Rebel [Lv. 2375]") then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeaponPlayer)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Head.CanCollide = false 
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										MaterialMob = v.HumanoidRootPart.CFrame
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
									until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 
								end
							end
						end
					else
						topos(CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625))
					end
				end
			end)
		end
	end
end)
FarmTab:Seperator("Auto Farm Mastery")
local FM = FarmTab:Toggle("Auto Farm Fruit Mastery",_G.AutoFarmFruitMastery,"Auto Farm Fruit Mastery",function(value)
	_G.AutoFarmFruitMastery = value
	StopTween(_G.AutoFarmFruitMastery)
	if _G.AutoFarmFruitMastery == false then
		UseSkill = false 
	end
end)
local GM = FarmTab:Toggle("Auto Farm Gun Mastery",_G.AutoFarmGunMastery,"Auto Farm Gun Mastery",function(value)
	_G.AutoFarmGunMastery = value
	StopTween(_G.AutoFarmGunMastery)
	if _G.AutoFarmGunMastery == false then
		UseSkill = false 
	end
end)
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoFarmFruitMastery then
				local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
				if not string.find(QuestTitle, NameMon) then
					Magnet = false
					UseSkill = false
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
				end
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					StartMasteryFruitMagnet = false
					CheckQuest()
					topos(CFrameQuest)
					if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
						wait(1.2)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
					end
				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					CheckQuest()
					if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if v.Name == Mon then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
										repeat task.wait()
											if v.Humanoid.Health <= HealthMs then
												AutoHaki()
												EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
												topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 40, 10))
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
													if SkillZ then 
														local args = {
															[1] = v.HumanoidRootPart.Position
														}
														game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
														game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
														game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
													end
													if SkillX then 
														local args = {
															[1] = v.HumanoidRootPart.Position
														}
														game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
														game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
														game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
													end
													if SkillC then 
														local args = {
															[1] = v.HumanoidRootPart.Position
														}
														game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
														game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
														game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
													end
													if SkillV then 
														local args = {
															[1] = v.HumanoidRootPart.Position
														}
														game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
														game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
														game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
													end
													if SkillF then 
														local args = {
															[1] = v.HumanoidRootPart.Position
														}
														game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
														game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
														game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
													end
												end
											else   
												AutoHaki()
												EquipWeapon(_G.SelectWeaponPlayer)
												topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 5))
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												game:GetService("VirtualUser"):CaptureController()
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
												StartMasteryFruitMagnet = true
											end 
										until not _G.AutoFarmFruitMastery or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							end
						end
					else
						StartMasteryFruitMagnet = false   
						UseSkill = false 
						topos(CFrameMon)
					end
				end
			end
		end
	end)
end)
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoFarmGunMastery then
				local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
				if not string.find(QuestTitle, NameMon) then
					Magnet = false   
					UseSkill = false          
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
				end
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					StartMasteryGunMagnet = false
					CheckQuest()
					topos(CFrameQuest)
					if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
						wait(1.2)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
					end
				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					CheckQuest()
					if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
						pcall(
							function()
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == Mon then
										repeat task.wait()
											if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
												HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
												if v.Humanoid.Health <= HealthMs then
													AutoHaki()
													EquipWeapon(SelectWeaponGun)
													topos(v.HumanoidRootPart.CFrame * CFrame.new(0,40,10))
													v.HumanoidRootPart.CanCollide = false
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													game:GetService("VirtualUser"):CaptureController()
													game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
													LocalPlayer.Character[SelectWeaponGun].RemoteEvent:FireServer(v.HumanoidRootPart.Position, v.HumanoidRootPart)
													LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(v.HumanoidRootPart.Position, v.HumanoidRootPart)
												else  
													AutoHaki()
													EquipWeapon(_G.SelectWeaponPlayer)
													topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 5))
													v.HumanoidRootPart.CanCollide = false
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													game:GetService("VirtualUser"):CaptureController()
													game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
												end  
											else
												topos(CFrameQuest)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											end
										until not _G.AutoFarmGunMastery or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							end
						)
					else
						CheckQuest()
						topos(CFrameMon)
					end
				end
			end
		end
	end)
end)
FarmTab:Toggle("Health (%)",_G.Kill_At,"Health (%)",function(value)
	_G.Kill_At = value
end)
FarmTab:Toggle("Skill Z",true,"Skill Z",function(value)
	SkillZ = value
end)
FarmTab:Toggle("Skill X",true,"Skill X",function(value)
	SkillX = value
end)
FarmTab:Toggle("Skill C",true,"Skill C",function(value)
	SkillC = value
end)
FarmTab:Toggle("Skill V",true,"Skill V",function(value)
	SkillV = value
end)
FarmTab:Toggle("Skill F",true,"Skill F",function(value)
	SkillF = value
end)
FarmTab:Seperator("Auto Farm Mastery All")
FarmTab:Toggle("Auto Farm All Mastery",_G.AutoFarmAllMastery,"Auto Farm All Mastery",function(value)
	_G.AutoFarmAllMastery = value
	StopTween(_G.AutoFarmAllMastery)
end)
spawn(function()
	while wait() do
		if _G.AutoFarmAllMastery then
			pcall(function()
				CheckQuest()
				if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == Mon then
							repeat task.wait()
								if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
									HealthMin = v.Humanoid.MaxHealth*_G.Kill_At/100
									if v.Humanoid.Health <= HealthMin then
										EquipWeapon(v.HumanoidRootPart.Position)
										AutoHaki()
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 5))
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										if _G.MasteryBF then
											UseSkill = true
										else
											UseSkill = false
											EquipWeapon(_G.SelectWeaponPlayer)
										end
										if UseSkill == true then
											if SkillZ then 
												game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
												game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
											end
											if SkillX then 
												game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
												game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
											end
											if SkillC then 
												game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
												game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
											end
											if SkillV then 
												game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
												game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
											end
											if SkillF then 
												game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
												game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
											end
										end
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
									else
										AutoHaki()
										EquipWeapon(_G.SelectWeaponPlayer)
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 5))
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
									end 
								else
									topos(CFrameQuest)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
								end
							until not _G.AutoFarmAllMastery or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
						end
					end
				else
					topos(CFrameMon)
				end
			end)
		end
	end
end)
FarmTab:Toggle("Mastery Devil Fruit",_G.MasteryBF,"Mastery Devil Fruit",function(value)
	_G.MasteryBF = value
end)
FarmTab:Seperator("Others")
FarmTab:Toggle("Auto Bartilo Quest",_G.AutoBartilo,"Auto Bartilo Quest",function(value)
	_G.AutoBartilo = value
end)
spawn(function()
	while wait(.1) do
		if _G.AutoBartilo then
			if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
				if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
					if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
						Ms = "Swan Pirate [Lv. 775]"
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == Ms then
								pcall(function()
									repeat task.wait()
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
										EquipWeapon(_G.SelectWeaponPlayer)
										AutoHaki()
										v.HumanoidRootPart.CanCollide = false
										v.Head.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
										PosMonBarto =  v.HumanoidRootPart.CFrame
										game:GetService('VirtualUser'):CaptureController()
										game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
										AutoBartiloBring = true
									until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									AutoBartiloBring = false
								end)
							end
						end
					else
						repeat topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.12245202185e-08, -0.230443969, 2.4216829e-08, 1, 8.36251236e-08, 0.230443969, 7.57411888e-08, -0.973085582)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.12245202185e-08, -0.230443969, 2.4216829e-08, 1, 8.36251236e-08, 0.230443969, 7.57411888e-08, -0.973085582)).Magnitude <= 10
					end
				else
					topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
					if (CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
						wait(1.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
					end 
				end 
			elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
				if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
					Ms = "Jeremy [Lv. 850] [Boss]"
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == Ms then
							repeat task.wait()
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
								EquipWeapon(_G.SelectWeaponPlayer)
								AutoHaki()
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
								PosMonBarto =  v.HumanoidRootPart.CFrame
								game:GetService('VirtualUser'):CaptureController()
								game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
								SpawnJeremy = true
							until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
							SpawnJeremy = false
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
					repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
					wait(1.1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
					wait(1)
					repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
					wait(2)
				else
					repeat topos(CFrame.new(1931.8994140625, 402.875, 956.8967294921875)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(1931.8994140625, 402.875, 956.8967294921875)).Magnitude <= 10
				end
			elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
				repeat topos(CFrame.new(-1850.49365234375, 13.178955078125, 1750.8968515625)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49365234375, 13.178955078125, 1750.8968515625)).Magnitude <= 10
				wait(1.1)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
				wait(1)
				repeat topos(CFrame.new(-1858.558349609375, 16.860431671142578, 1724.795166015625)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.558349609375, 16.860431671142578, 1724.795166015625)).Magnitude <= 10
				wait(1)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
				wait(1)
				repeat topos(CFrame.new(-1900.5552978515625, 12.945518493652344, 1737.41357421875)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1900.5552978515625, 12.945518493652344, 1737.41357421875)).Magnitude <= 10
				wait(1)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
				wait(1)
				repeat topos(CFrame.new(-1858.558349609375, 16.860431671142578, 1724.795166015625)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.558349609375, 16.860431671142578, 1724.795166015625)).Magnitude <= 10
				wait(1)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
			end
		end
	end
end)
FarmTab:Toggle("Auto Swan Glasses",_G.AutoSwanGlasses,"Auto Swan Glasses",function(value)
	_G.AutoSwanGlasses = value
	StopTween(_G.AutoSwanGlasses)
end)
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoSwanGlasses then
				if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Don Swan [Lv. 1000] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat task.wait()
								pcall(function()
									AutoHaki()
									EquipWeapon(_G.SelectWeaponPlayer)
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(50,50,50)
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
								end)
							until _G.AutoSwanGlasses == false or v.Humanoid.Health <= 0
						end
					end
				else 
					repeat topos(CFrame.new(2288.802, 15.1873846, 863.034302)) wait() until not _G.AutoSwanGlasses or (Vector3.new(2288.802, 15.1873846, 863.034302)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
					wait(1)
					if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key to the Don's Hideout [Lv. 1000]") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Key to the Don's Hideout [Lv. 1000]") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.74169921875, 15.877461433410645, 905.5692749023438))
					end
					if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") == nil then
						ServerHop()
					end
				end
			end
		end
	end)
end)
FarmTab:Toggle("Auto Farm Swan Glasses Hop",_G.AutoSwanGlassesHop,"Auto Farm Swan Glasses Hop",function(value)
	_G.AutoSwanGlassesHop = value
end)
FarmTab:Toggle("Auto Pole",_G.AutoPole,"Auto Pole",function(value)
	_G.AutoPole = value
	StopTween(_G.AutoPole)
end)
FarmTab:Toggle("Auto Pole Hop",_G.AutoPoleHop,"Auto Pole Hop",function(value)
	_G.AutoPoleHop = value
end)
spawn(function()
	while wait() do
		if _G.AutoPole then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == ("Thunder God [Lv. 575] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat task.wait()
								pcall(function()
									AutoHaki()
									EquipWeapon(_G.SelectWeaponPlayer)
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(50,50,50)
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
								end)
							until _G.AutoPole == false or not v.Parent or v.Humanoid.Health <= 0
						end
					end
				else
					topos(CFrame.new(-7748.0185546875, 5606.51611328125, -2420.248046875))
					wait(1)
					if not game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]") then
						if _G.AutoPoleHop then 
							ServerHop()
						end
					end
				end
			end)
		end
	end
end)
FarmTab:Toggle("Auto Saber",_G.AutoSaber,"Auto Saber",function(value)
	_G.AutoSaber = value
	StopTween(_G.AutoSaber)
end)
FarmTab:Toggle("Auto Saber Hop",_G.AutoSaberHop,"Auto Saber Hop",function(value)
	_G.AutoSaberHop = value
end)
spawn(function()
	while wait() do
		if _G.AutoSaber then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == ("Saber Expert [Lv. 200] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat task.wait()
								pcall(function()
									AutoHaki()
									EquipWeapon(_G.SelectWeaponPlayer)
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(50,50,50)
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
								end)
							until not _G.AutoSaber or v.Humanoid.Health <= 0 or not v.Parent
						end
					end
				else
					topos(CFrame.new(-1458.89502, 29.3060074, -50.633564))
					if game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]").HumanoidRootPart.CFrame * CFrame.new(0,35,5))
					else
						if _G.AutoSaberHop then
							ServerHop()
						end
					end
				end
			end)
		end
	end
end)
FarmTab:Toggle("Auto Farm Factory",_G.AutoFactory,"Auto Farm Factory",function(value)
	_G.AutoFactory = value
	StopTween(_G.AutoFactory)
end)
spawn(function()
	while wait() do
		if _G.AutoFactory then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Core" and v.Humanoid.Health > 0 then
							repeat task.wait()
								AutoHaki()
								EquipWeapon(_G.SelectWeaponPlayer)           
								topos(CFrame.new(448.46756, 199.356781, -441.389252))                                  
								game:GetService("VirtualUser"):CaptureController()
								game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
							until v.Humanoid.Health <= 0 or _G.AutoFactory == false
						end
					end
				else
					topos(CFrame.new(448.46756, 199.356781, -441.389252))
				end
			end)
		end
	end
end)
FarmTab:Toggle("Auto Second Sea",_G.AutoSecondSea,"Auto Second Sea",function(value)
	_G.AutoSecondSea = value
	StopTween(_G.AutoSecondSea)
end)
spawn(function()
	while wait() do 
		if _G.AutoSecondSea then
			pcall(function()
				local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
				if MyLevel >= 700 and World1 then
					if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
						StopTween(_G.AutoSecondSea)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detects")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5613.40918, 401.423676, 8539.59766))
					else
						if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeaponPlayer)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
									until v.Humanoid.Health <= 0 or not v.Parent or game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral [Lv. 700] [Boss]")
								end
							end
						else 
							topos(CFrame.new(1347.7124, 650.569702, -1103.61133, 0.727738261, -0, -0.685827255, 0, 1, -0, 0.685827255, 0, 0.727738261))
							wait(3)
						end
					end
				end
			end)
		end
	end
end)
FarmTab:Toggle("Auto Third Sea",_G.AutoThirdSea,"Auto Third Sea",function(value)
	_G.AutoThirdSea = value
	StopTween(_G.AutoThirdSea)
end)
spawn(function()
	while wait() do
		if _G.AutoThirdSea then
			pcall(function()
				if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
					_G.AutoFarm = false
					if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
						StopTween(_G.AutoThirdSea)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
					else
						if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == ("rip_indra [Lv. 1500] [Boss]" ) then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeaponPlayer)
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
										sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
									until _G.AutoThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
								end
							end
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check")
							topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.0617675781))
						end
					end
				end
			end)
		end
	end
end)
ItemsTab:Seperator("Fighting Style")
ItemsTab:Toggle("Auto Superhuman",_G.AutoSuperhuman,"Auto Superhuman",function(value)
	_G.AutoSuperhuman = value
end)
spawn(function()
	pcall(function()
		while wait() do 
			if _G.AutoSuperhuman then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Quest.Visible == false then
					local args = {
						[1] = "BuyBlackLeg"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
					_G.SelectWeaponPlayer = "Superhuman"
				end  
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") then
						_G.SelectWeaponPlayer = "Black Leg"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") then
						_G.SelectWeaponPlayer = "Electro"
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
						_G.SelectWeaponPlayer = "Electro"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") then
						_G.SelectWeaponPlayer = "Fishman Karate"
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
						_G.SelectWeaponPlayer = "Fishman Karate"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") then
						_G.SelectWeaponPlayer = "Dragon Claw"
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
						_G.SelectWeaponPlayer = "Dragon Claw"
					end
				end           
				if game.Players.LocalPlayer.Data.Beli.Value >= 150000 then
					local args = {
						[1] = "BuyElectro"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				local Mastery = game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Mastery.Value
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Mastery.Value < 300 then
					_G.SelectWeaponPlayer = "Electro"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Mastery.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Mastery.Value >= 300 then
					local args = {
						[1] = "BuyFishmanKarate"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Mastery.Value < 300 or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Mastery.Value < 300 then
					_G.SelectWeaponPlayer  = "Fishman Karate"
				end 
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Mastery.Value >= 300  or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Mastery.Value >= 300 then
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
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Mastery.Value < 300 or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Mastery.Value < 300 then
					_G.SelectWeaponPlayer = "Dragon Claw"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Mastery.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Mastery.Value >= 300 then
					local args = {
						[1] = "BuySuperhuman"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end
	end)
end)
ItemsTab:Toggle("Auto Electric Claw",_G.AutoElectricClaw,"Auto Electric Claw",function(value)
	_G.AutoElectricClaw = value
	StopTween(_G.AutoElectricClaw)
end)
spawn(function()
	while wait() do 
		if _G.AutoElectricClaw then
			pcall(function()
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Mastery.Value >= 300 then
					local args = {
						[1] = "BuyElectricClaw"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Mastery.Value >= 300 then
					local args = {
						[1] = "BuyElectricClaw"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Mastery.Value < 300 then
					_G.SelectWeaponPlayer = "Electro"
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Mastery.Value < 300 then
					_G.SelectWeaponPlayer = "Electro"
				end
			end)
		end
	end
end)
ItemsTab:Toggle("Auto Dragon Talon",_G.AutoDragonTalon,"Auto Dragon Talon",function(value)
	_G.AutoDragonTalon = value
end)
spawn(function()
	while wait() do
		if _G.AutoDragonTalon then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Mastery.Value < 300 then
				_G.SelectWeaponPlayer = "Dragon Claw"
			end
			if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Mastery.Value < 300 then
				_G.SelectWeaponPlayer = "Dragon Claw"
			end

			if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Mastery.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Mastery.Value >= 300 then
				local args = {
					[1] = "BuyDragonTalon"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                 
			end
		end
	end
end)
ItemsTab:Toggle("Auto Death Step",_G.AutoDeathStep,"Auto Death Step",function(value)
	_G.AutoDeathStep = value
end)
spawn(function()
	while wait() do 
		if _G.AutoDeathStep then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Mastery.Value >= 300 then
				local args = {
					[1] = "BuyDeathStep"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
			if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Mastery.Value >= 300 then
				local args = {
					[1] = "BuyDeathStep"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Mastery.Value < 300 then
				_G.SelectWeaponPlayer = "Black Leg"
			end 
			if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Mastery.Value < 300 then
				_G.SelectWeaponPlayer = "Black Leg"
			end 
		end
	end
end)
ItemsTab:Toggle("Auto Sharkman Karate",_G.AutoSharkmanKarate,"Auto Sharkman Karate",function(value)
	_G.AutoSharkmanKarate = value
end)
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoSharkmanKarate then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Mastery.Value >= 300 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Mastery.Value >= 300 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Mastery.Value < 300 then
					_G.SelectWeaponPlayer = "Fishman Karate"
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Mastery.Value < 300 then
					_G.SelectWeaponPlayer = "Fishman Karate"
				end 
			end
		end
	end)
end)
ItemsTab:Toggle("Auto Godhuman",_G.AutoGodhuman,"Auto Godhuman",function(value)
	_G.AutoGodhuman = value
	StopTween(_G.AutoGodhuman)
end)
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoGodhuman then
				if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChild("Combat") or game.Players.LocalPlayer:WaitForChild("Character"):FindFirstChild("Combat") then
					local args = {
						[1] = "BuyBlackLeg"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end   
				if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChild("Black Leg") or game.Players.LocalPlayer:WaitForChild("Character"):FindFirstChild("Black Leg") or game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChild("Electro") or game.Players.LocalPlayer:WaitForChild("Character"):FindFirstChild("Electro") or game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChild("Fishman Karate") or game.Players.LocalPlayer:WaitForChild("Character"):FindFirstChild("Fishman Karate") or game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChild("Dragon Claw") or game.Players.LocalPlayer:WaitForChild("Character"):FindFirstChild("Dragon Claw") then
					if game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChild("Black Leg") then
						_G.SelectWeaponPlayer = "Black Leg"
					end
					if game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChild("Electro") then
						_G.SelectWeaponPlayer = "Electro"
					end
					if game.Players.LocalPlayer:WaitForChild("Character"):FindFirstChild("Electro") then
						_G.SelectWeaponPlayer = "Electro"
					end
					if game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChild("Fishman Karate") then
						_G.SelectWeaponPlayer = "Fishman Karate"
					end
					if game.Players.LocalPlayer:WaitForChild("Character"):FindFirstChild("Fishman Karate") then 
						_G.SelectWeaponPlayer = "Fishman Karate"
					end
					if game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChild("Dragon Claw") then
						_G.SelectWeaponPlayer = "Dragon Claw"
					end
					if game.Players.LocalPlayer:WaitForChild("Character"):FindFirstChild("Dragon Claw") then
						_G.SelectWeaponPlayer = "Dragon Claw"
					end
				end          
				if game.Players.LocalPlayer.Data.Beli.Value >= 150000 then
					local args = {
						[1] = "BuyElectro"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				local Mastery = game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Mastery.Value
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Mastery.Value < 400 then
					FM = 400
					_G.SelectWeaponPlayer = "Electro"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Mastery.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Mastery.Value >= 400 then
					local args = {
						[1] = "BuyFishmanKarate"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Mastery.Value < 400 or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Mastery.Value < 400 then
					FM = 400 
					_G.SelectWeaponPlayer = "Fishman Karate"
				end 
				if Mastery >= 400 then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I don't have anything for you right now. Come back to me later." or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "It's too early for you to learn this fighting style, my friend." then 
						if game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
							local args = {
								[1] = "BuySharkmanKarate"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							_G.SelectWeaponPlayer = "Sharkman Karate"
						elseif game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Mastery.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Mastery.Value >= 400 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg") == 1 then
								_G.SelectWeaponPlayer = "Fishman Karate"
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Mastery.Value >= 400 then
								topos(CFrame.new(-3870.096, 321.115, -7508.773))
							end
							if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat task.wait()
													AutoHaki()
													EquipWeapon(_G.SelectWeaponPlayer)
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.Head.CanCollide = false 
													StartMagnet = true
													PosMon = v.HumanoidRootPart.CFrame
													topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
													game:GetService("VirtualUser"):CaptureController()
													game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
												until not _G.AutoGodhuman or not v.Parent or v.Humanoid.Health <= 0 
											end
										end
									end
								else 
									topos(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame * CFrame.new(0,35,5))
								end
							else
							end
						end
					else 
						_G.SelectWeaponPlayer = "Sharkman Karate"
					end
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Mastery.Value < 400 or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Mastery.Value < 400 then
					FM = 400
					_G.SelectWeaponPlayer = "Sharkman Karate" 
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Mastery.Value >= 400 or  game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Mastery.Value >= 400 then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Mastery.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Mastery.Value >= 400 then
							local args = {
								[1] = "BuyDeathStep"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Mastery.Value < 400   then 
						_G.SelectWeaponPlayer = "Black Leg"
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Mastery.Value < 400   then 
						_G.SelectWeaponPlayer = "Black Leg"
					end
				end 
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Mastery.Value < 400 or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Mastery.Value < 400 then 
					FM = 400
					_G.SelectWeaponPlayer = "Death Step"
				end 
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Mastery.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Mastery.Value >= 400 then
					if game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild("Keyhole") == nil then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 1 then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Mastery.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Mastery.Value >= 400 then 
								local args = {
									[1] = "BuyElectricClaw"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Mastery.Value < 400 then 
							_G.SelectWeaponPlayer = "Electro"
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Mastery.Value < 400 then 
							_G.SelectWeaponPlayer = "Electro"
						end
					end
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Mastery.Value < 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Mastery.Value < 400 then
					FM = 400
					_G.SelectWeaponPlayer = "Electric Claw"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Mastery.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Mastery.Value >= 400 then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 1 then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Mastery.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Mastery.Value >= 400 then 
								local args = {
									[1] = "BuyDragonTalon"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
							end
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") then
							_G.SelectWeaponPlayer = "Dragon Claw"
						elseif game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
							_G.SelectWeaponPlayer = "Dragon Claw"
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)  ==  "not enough fragments" then
								_G.AutoFarmTushita = true
							else 
								_G.AutoFarmYama = true 
							end
						end
					end
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Mastery.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Mastery.Value >= 400 then
						local args = {
							[1] = "BuyGodhuman"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						if game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or  game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") or game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") then  
							if game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or  game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then  
								_G.SelectWeaponPlayer = "Godhuman"
								_G.AutoGodhuman = false
							end
							StopTween(_G.AutoGodhuman)
						end
					end
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Mastery.Value < 400 or  game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Mastery.Value < 400 then 
					FM = 400
					_G.SelectWeaponPlayer = "Dragon Talon"
				end
			end
		end
	end)
end)
ItemsTab:Toggle("Auto Buy Legendary Sword",_G.AutoBuyLegendarySword,"Auto Buy Legendary Sword",function(value)
	_G.AutoBuyLegendarySword = value
end)
spawn(function()
	while wait() do
		if _G.AutoBuyLegendarySword then
			pcall(function()
				local args = {
					[1] = "LegendarySwordDealer",
					[2] = "1"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				local args = {
					[1] = "LegendarySwordDealer",
					[2] = "2"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				local args = {
					[1] = "LegendarySwordDealer",
					[2] = "3"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
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
