
local id = game.PlaceId if id == 2753915549 then World1 = true; elseif id == 4442272183 then World2 = true; elseif id == 7449423635 then World3 = true; else game:Shutdown() end;

do -- Team Script
	repeat 
		ChooseTeam = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ChooseTeam",true)
		UIController = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("UIController",true)
		if UIController and ChooseTeam then
			if ChooseTeam.Visible then
				for i,v in pairs(getgc()) do
					if type(v) == "function" and getfenv(v).script == UIController then
						local constant = getconstants(v)
						pcall(function()
							if constant[1] == "Pirates" and #constant == 1 then
								v(shared.Team or "Pirates")
							end
						end)
					end
				end
			end
		end
		wait(1)
	until game.Players.LocalPlayer.Team
	repeat wait() until game.Players.LocalPlayer.Character
end

local SettingsGameData = {}

xpcall(function()
	if not isfolder("apsara scripts/ID/"..game.GameId) then
		if syn then
			makefolder("apsara scripts/ID/"..game.GameId)
			writefile("apsara scripts/ID/"..game.GameId.."/"..game.Players.LocalPlayer.Name..".lua", game:GetService("HttpService"):JSONEncode(SettingsGameData));
		else
			makefolder("apsara scripts")
			makefolder("apsara scripts/ID")
			makefolder("apsara scripts/ID/"..game.GameId)
			writefile("apsara scripts/ID/"..game.GameId.."/"..game.Players.LocalPlayer.Name..".lua", game:GetService("HttpService"):JSONEncode(SettingsGameData));
		end
	end
	SettingsGameData = game:GetService("HttpService"):JSONDecode(readfile("apsara scripts/ID/"..game.GameId.."/"..game.Players.LocalPlayer.Name..".lua"));
end,function()
end)

Selected_Weapons = SettingsGameData["Selected_Weapons"]
SelectFastAttackMode = SettingsGameData["SelectFastAttackMode"]
Fast_Attack = SettingsGameData["Fast_Attack"]
NewFastAttack = SettingsGameData["NewFastAttack"]

FarmLv = SettingsGameData["FarmLv"]
Double_Quest = SettingsGameData["Double_Quest"]
Fast_Farm_Mode = SettingsGameData["Fast_Farm_Mode"]
Auto_New_World = SettingsGameData["Auto_New_World"]
Auto_Third_Sea = SettingsGameData["Auto_Third_Sea"]

Select_Bosses = SettingsGameData["Select_Bosses"]
Auto_Boss_Select = SettingsGameData["Auto_Boss_Select"]
Auto_Quest_Bosses = SettingsGameData["Auto_Quest_Bosses"]

Auto_Superhuman = SettingsGameData["Auto_Superhuman"]
Auto_Electric_Claw = SettingsGameData["Auto_Electric_Claw"]
Auto_Death_Step = SettingsGameData["Auto_Death_Step"]
Auto_Sharkman_Karate = SettingsGameData["Auto_Sharkman_Karate"]
Auto_Dragon_Talon = SettingsGameData["Auto_Dragon_Talon"]
Auto_Godhuman = SettingsGameData["Auto_Godhuman"]
Sanguineart = SettingsGameData["Sanguineart"]

Auto_All_Sword_Mastery = SettingsGameData["Auto_All_Sword_Mastery"]
Auto_Farm_DF_Mastery = SettingsGameData["Auto_Farm_DF_Mastery"]
Auto_Farm_Gun_Mastery = SettingsGameData["Auto_Farm_Gun_Mastery"]
Mob_Kill = SettingsGameData["Mob_Kill"]

Skill_Z = SettingsGameData["Skill_Z"]
Skill_X = SettingsGameData["Skill_X"]
Skill_C = SettingsGameData["Skill_C"]
Skill_V = SettingsGameData["Skill_V"]
Skill_F = SettingsGameData["Skill_F"]

Auto_Stats_Kaitun = SettingsGameData["Auto_Stats_Kaitun"]
Melee_Stats = SettingsGameData["Melee_Stats"]
Defense_Stats = SettingsGameData["Defense_Stats"]
Sword_Stats = SettingsGameData["Sword_Stats"]
Gun_Stats = SettingsGameData["Gun_Stats"]
Devil_Stats = SettingsGameData["Devil_Stats"]

Auto_Saber = SettingsGameData["Auto_Saber"]
Auto_Pole = SettingsGameData["Auto_Pole"]
Auto_Pole_Hop = SettingsGameData["Auto_Pole_Hop"]
Auto_Franky = SettingsGameData["Auto_Franky"]
Auto_Franky_Hop = SettingsGameData["Auto_Franky_Hop"]
Auto_Factory_Farm = SettingsGameData["Auto_Factory_Farm"]
Auto_Factory_Farm_Hop = SettingsGameData["Auto_Factory_Farm_Hop"]
Auto_Dark_Coat = SettingsGameData["Auto_Dark_Coat"]
Auto_Dark_Coat_Hop = SettingsGameData["Auto_Dark_Coat_Hop"]
Auto_Swan_Glasses = SettingsGameData["Auto_Swan_Glasses"]
Auto_Swan_Glasses_Hop = SettingsGameData["Auto_Swan_Glasses_Hop"]

Auto_Buy_Law_Chip = SettingsGameData["Auto_Buy_Law_Chip"]
Auto_Start_Law_Dungeon = SettingsGameData["Auto_Start_Law_Dungeon"]
Auto_Kill_Law = SettingsGameData["Auto_Kill_Law"]

Auto_Find_Full_Moon = SettingsGameData["Auto_Find_Full_Moon"]
GrabChestMysticIsland = SettingsGameData["GrabChestMysticIsland"]
Auto_Mirage_Island = SettingsGameData["Auto_Mirage_Island"]
Auto_Mirage_Island_Hop = SettingsGameData["Auto_Mirage_Island_Hop"]

Auto_Buddy_Sword = SettingsGameData["Auto_Buddy_Sword"]
Auto_Buddy_Sword_Hop = SettingsGameData["Auto_Buddy_Sword_Hop"]

Auto_Farm_Boss_Hallow = SettingsGameData["Auto_Farm_Boss_Hallow"]
Auto_Farm_Boss_Hallow_Hop = SettingsGameData["Auto_Farm_Boss_Hallow_Hop"]

Auto_Farm_Elite_Hunter = SettingsGameData["Auto_Farm_Elite_Hunter"]
Auto_Farm_Elite_Hunter_Hop = SettingsGameData["Auto_Farm_Elite_Hunter_Hop"]
Stop_God_Chalice = SettingsGameData["Stop_God_Chalice"]

Auto_Cavender = SettingsGameData["Auto_Cavender"]
Auto_Cavender_Hop = SettingsGameData["Auto_Cavender_Hop"]

Auto_Dark_Dagger = SettingsGameData["Auto_Dark_Dagger"]
Auto_Dark_Dagger_Hop = SettingsGameData["Auto_Dark_Dagger_Hop"]

Auto_TwinHooks = SettingsGameData["Auto_TwinHooks"]
Auto_TwinHooks_Hop = SettingsGameData["Auto_TwinHooks_Hop"]

Auto_Serpent_Bow = SettingsGameData["Auto_Serpent_Bow"]
Auto_Serpent_Bow_Hop = SettingsGameData["Auto_Serpent_Bow_Hop"]

AutoObservation = SettingsGameData["AutoObservation"]
AutoObservation_Hop = SettingsGameData["AutoObservation_Hop"]

Auto_Cake_Prince = SettingsGameData["Auto_Cake_Prince"]
Farm_Bone = SettingsGameData["Farm_Bone"]
Auto_Ectoplasm = SettingsGameData["Auto_Ectoplasm"]
Auto_Bartilo_Quest = SettingsGameData["Auto_Bartilo_Quest"]
Auto_Rengoku = SettingsGameData["Auto_Rengoku"]
Auto_Holy_Torch = SettingsGameData["Auto_Holy_Torch"]
PirateRaid = SettingsGameData["PirateRaid"]
Auto_Rainbow_Haki = SettingsGameData["Auto_Rainbow_Haki"]

AutoTushita = SettingsGameData["AutoTushita"] 
AutoTushitaHop = SettingsGameData["AutoTushitaHop"] 

AutoYama = SettingsGameData["AutoYama"] 
AutoYamaHOP = SettingsGameData["AutoYamaHOP"] 

Auto_Musketeer_Hat = SettingsGameData["Auto_Musketeer_Hat"]
Auto_Observation_V2 = SettingsGameData["Auto_Observation_V2"]
Auto_Dough_V2 = SettingsGameData["Auto_Dough_V2"]
Auto_Quest_Soul_Guitar = SettingsGameData["Auto_Quest_Soul_Guitar"]
Yama_Quest = SettingsGameData["Yama_Quest"]
Get_Cursed = SettingsGameData["Get_Cursed"]

Auto_Buy_Legendary_Sword = SettingsGameData["Auto_Buy_Legendary_Sword"]
Auto_Buy_Legendary_Sword_Hop = SettingsGameData["Auto_Buy_Legendary_Sword_Hop"]
Auto_Buy_Enchanment_Haki = SettingsGameData["Auto_Buy_Enchanment_Haki"]
Auto_Buy_Enchanment_Haki_Hop = SettingsGameData["Auto_Buy_Enchanment_Haki_Hop"]

Mink_Evo = SettingsGameData["Mink_Evo"]
Human_Evo = SettingsGameData["Human_Evo"]
Skypiea_Evo = SettingsGameData["Skypiea_Evo"]

Terrorshark = SettingsGameData["Terrorshark"]
TerrorsharkHop = SettingsGameData["TerrorsharkHop"]
Auto_SeaBeast_Ship = SettingsGameData["Auto_SeaBeast_Ship"]
Auto_Kill_Leviathan = SettingsGameData["Auto_Kill_Leviathan"]
Auto_Frozen_Dimension = SettingsGameData["Auto_Frozen_Dimension"]

Select_Raids = SettingsGameData["Select_Raids"]
Auto_Raids = SettingsGameData["Auto_Raids"]
Kill_Aura = SettingsGameData["Kill_Aura"]
Auto_Next_Island = SettingsGameData["Auto_Next_Island"]
Auto_Awakened = SettingsGameData["Auto_Awakened"]

Auto_Random_DF = SettingsGameData["Auto_Random_DF"]
Method_Bring = SettingsGameData["Method_Bring"]
Bring_Fruits = SettingsGameData["Bring_Fruits"]
Auto_Store_Fruits = SettingsGameData["Auto_Store_Fruits"]
SelectDevilFruits = SettingsGameData["SelectDevilFruits"]
Auto_Buy_DF_Sniper = SettingsGameData["Auto_Buy_DF_Sniper"]
Auto_Random_Bone = SettingsGameData["Auto_Random_Bone"]
Distance_Auto_Farm = SettingsGameData["Distance_Auto_Farm"]
Bypass_Teleport = SettingsGameData["Bypass_Teleport"]
Auto_Ken = SettingsGameData["Auto_Ken"]
Delete_Effect = SettingsGameData["Delete_Effect"]
WalkOnWater = SettingsGameData["WalkOnWater"]
White_Screen = SettingsGameData["White_Screen"]

local Save = function()

	SettingsGameData["Selected_Weapons"] = Selected_Weapons
	SettingsGameData["SelectFastAttackMode"] = SelectFastAttackMode
	SettingsGameData["Fast_Attack"] = Fast_Attack
	SettingsGameData["NewFastAttack"] = NewFastAttack

	SettingsGameData["FarmLv"] = FarmLv
	SettingsGameData["Double_Quest"] = Double_Quest
	SettingsGameData["Fast_Farm_Mode"] = Fast_Farm_Mode
	SettingsGameData["Auto_New_World"] = Auto_New_World
	SettingsGameData["Auto_Third_Sea"] = Auto_Third_Sea

	SettingsGameData["Select_Bosses"] = Select_Bosses or ""
	SettingsGameData["Auto_Boss_Select"] = Auto_Boss_Select
	SettingsGameData["Auto_Quest_Bosses"] = Auto_Quest_Bosses

	SettingsGameData["Auto_Superhuman"] = Auto_Superhuman
	SettingsGameData["Auto_Electric_Claw"] = Auto_Electric_Claw
	SettingsGameData["Auto_Death_Step"] = Auto_Death_Step
	SettingsGameData["Auto_Sharkman_Karate"] = Auto_Sharkman_Karate
	SettingsGameData["Auto_Dragon_Talon"] = Auto_Dragon_Talon
	SettingsGameData["Auto_Godhuman"] = Auto_Godhuman
	SettingsGameData["Sanguineart"] = Sanguineart

	SettingsGameData["Auto_All_Sword_Mastery"] = Auto_All_Sword_Mastery
	SettingsGameData["Auto_Farm_DF_Mastery"] = Auto_Farm_DF_Mastery
	SettingsGameData["Auto_Farm_Gun_Mastery"] = Auto_Farm_Gun_Mastery
	SettingsGameData["Mob_Kill"] = Mob_Kill or 25

	SettingsGameData["Skill_Z"] = Skill_Z
	SettingsGameData["Skill_X"] = Skill_X
	SettingsGameData["Skill_C"] = Skill_C
	SettingsGameData["Skill_V"] = Skill_V
	SettingsGameData["Skill_F"] = Skill_F

	SettingsGameData["Auto_Stats_Kaitun"] = Auto_Stats_Kaitun
	SettingsGameData["Melee_Stats"] = Melee_Stats
	SettingsGameData["Defense_Stats"] = Defense_Stats
	SettingsGameData["Sword_Stats"] = Sword_Stats
	SettingsGameData["Gun_Stats"] = Gun_Stats
	SettingsGameData["Devil_Stats"] = Devil_Stats

	SettingsGameData["Auto_Saber"] = Auto_Saber
	SettingsGameData["Auto_Pole"] = Auto_Pole
	SettingsGameData["Auto_Franky"] = Auto_Franky
	SettingsGameData["Auto_Factory_Farm"] = Auto_Factory_Farm
	SettingsGameData["Auto_Factory_Farm_Hop"] = Auto_Factory_Farm_Hop
	SettingsGameData["Auto_Dark_Coat"] = Auto_Dark_Coat
	SettingsGameData["Auto_Dark_Coat_Hop"] = Auto_Dark_Coat_Hop
	SettingsGameData["Auto_Swan_Glasses"] = Auto_Swan_Glasses
	SettingsGameData["Auto_Swan_Glasses_Hop"] = Auto_Swan_Glasses_Hop

	SettingsGameData["Auto_Buy_Law_Chip"] = Auto_Buy_Law_Chip
	SettingsGameData["Auto_Start_Law_Dungeon"] = Auto_Start_Law_Dungeon
	SettingsGameData["Auto_Kill_Law"] = Auto_Kill_Law

	SettingsGameData["Auto_Find_Full_Moon"] = Auto_Find_Full_Moon
	SettingsGameData["GrabChestMysticIsland"] = GrabChestMysticIsland
	SettingsGameData["Auto_Mirage_Island"] = Auto_Mirage_Island
	SettingsGameData["Auto_Mirage_Island_Hop"] = Auto_Mirage_Island_Hop

	SettingsGameData["Auto_Buddy_Sword"] = Auto_Buddy_Sword
	SettingsGameData["Auto_Buddy_Sword_Hop"] = Auto_Buddy_Sword_Hop

	SettingsGameData["Auto_Farm_Boss_Hallow"] = Auto_Farm_Boss_Hallow
	SettingsGameData["Auto_Farm_Boss_Hallow_Hop"] = Auto_Farm_Boss_Hallow_Hop

	SettingsGameData["Auto_Farm_Elite_Hunter"] = Auto_Farm_Elite_Hunter
	SettingsGameData["Auto_Farm_Elite_Hunter_Hop"] = Auto_Farm_Elite_Hunter_Hop
	SettingsGameData["Stop_God_Chalice"] = Stop_God_Chalice

	SettingsGameData["Auto_Cavender"] = Auto_Cavender
	SettingsGameData["Auto_Cavender_Hop"] = Auto_Cavender_Hop

	SettingsGameData["Auto_Dark_Dagger"] = Auto_Dark_Dagger
	SettingsGameData["Auto_Dark_Dagger_Hop"] = Auto_Dark_Dagger_Hop

	SettingsGameData["Auto_TwinHooks"] = Auto_TwinHooks
	SettingsGameData["Auto_TwinHooks_Hop"] = Auto_TwinHooks_Hop

	SettingsGameData["Auto_Serpent_Bow"] = Auto_Serpent_Bow
	SettingsGameData["Auto_Serpent_Bow_Hop"] = Auto_Serpent_Bow_Hop

	SettingsGameData["AutoObservation"] = AutoObservation
	SettingsGameData["AutoObservation_Hop"] = AutoObservation_Hop

	SettingsGameData["Auto_Cake_Prince"] = Auto_Cake_Prince
	SettingsGameData["Farm_Bone"] = Farm_Bone
	SettingsGameData["Auto_Ectoplasm"] = Auto_Ectoplasm

	SettingsGameData["Auto_Bartilo_Quest"] = Auto_Bartilo_Quest
	SettingsGameData["Auto_Rengoku"] = Auto_Rengoku
	SettingsGameData["Auto_Holy_Torch"] = Auto_Holy_Torch
	SettingsGameData["PirateRaid"] = PirateRaid
	SettingsGameData["Auto_Rainbow_Haki"] = Auto_Rainbow_Haki

	SettingsGameData["AutoTushita"]  = AutoTushita
	SettingsGameData["AutoTushitaHop"] = AutoTushitaHop

	SettingsGameData["AutoYama"] = AutoYama
	SettingsGameData["AutoYama"] = AutoYamaHOP

	SettingsGameData["Auto_Musketeer_Hat"] = Auto_Musketeer_Hat
	SettingsGameData["Auto_Observation_V2"] = Auto_Observation_V2
	SettingsGameData["Auto_Dough_V2"] = Auto_Dough_V2
	SettingsGameData["Auto_Quest_Soul_Guitar"] = Auto_Quest_Soul_Guitar
	SettingsGameData["Tushita_Quest"] = Tushita_Quest
	SettingsGameData["Yama_Quest"] = Yama_Quest
	SettingsGameData["Get_Cursed"] = Get_Cursed

	SettingsGameData["Auto_Buy_Legendary_Sword"] = Auto_Buy_Legendary_Sword
	SettingsGameData["Auto_Buy_Legendary_Sword_Hop"] = Auto_Buy_Legendary_Sword_Hop
	SettingsGameData["Auto_Buy_Enchanment_Haki"] = Auto_Buy_Enchanment_Haki
	SettingsGameData["Auto_Buy_Enchanment_Haki_Hop"] = Auto_Buy_Enchanment_Haki_Hop

	SettingsGameData["Mink_Evo"] = Mink_Evo
	SettingsGameData["Human_Evo"] = Human_Evo
	SettingsGameData["Skypiea_Evo"] = Skypiea_Evo

	SettingsGameData["Terrorshark"] = Terrorshark
	SettingsGameData["TerrorsharkHop"] = TerrorsharkHop
	SettingsGameData["Auto_SeaBeast_Ship"] = Auto_SeaBeast_Ship
	SettingsGameData["Auto_Kill_Leviathan"] = Auto_Kill_Leviathan
	SettingsGameData["Auto_Frozen_Dimension"] = Auto_Frozen_Dimension

	SettingsGameData["Select_Raids"] = Select_Raids or ""
	SettingsGameData["Auto_Raids"] = Auto_Raids
	SettingsGameData["Kill_Aura"] = Kill_Aura
	SettingsGameData["Auto_Next_Island"] = Auto_Next_Island
	SettingsGameData["Auto_Awakened"] = Auto_Awakened

	SettingsGameData["Auto_Random_DF"] = Auto_Random_DF
	SettingsGameData["Method_Bring"] = Method_Bring or ""
	SettingsGameData["Bring_Fruits"] = Bring_Fruits
	SettingsGameData["Auto_Store_Fruits"] = Auto_Store_Fruits
	SettingsGameData["SelectDevilFruits"] = SelectDevilFruits or ""
	SettingsGameData["Auto_Buy_DF_Sniper"] = Auto_Buy_DF_Sniper

	SettingsGameData["Auto_Random_Bone"] = Auto_Random_Bone
	SettingsGameData["Distance_Auto_Farm"] = Distance_Auto_Farm or 35
	SettingsGameData["Bypass_Teleport"] = Bypass_Teleport
	SettingsGameData["Auto_Ken"] = Auto_Ken
	SettingsGameData["Delete_Effect"] = Delete_Effect
	SettingsGameData["WalkOnWater"] = WalkOnWater
	SettingsGameData["White_Screen"] = White_Screen


	if syn then
		makefolder("apsara scripts/ID/"..game.GameId)
	else
		makefolder("apsara scripts")
		makefolder("apsara scripts/ID")
		makefolder("apsara scripts/ID/"..game.GameId)
	end
	writefile("apsara scripts/ID/"..game.GameId.."/"..game.Players.LocalPlayer.Name..".lua", game:GetService("HttpService"):JSONEncode(SettingsGameData));
end

-- [[ Marco Luraph For Fix Lags ]]
if not LPH_OBFUSCATED then
	LPH_JIT_MAX = (function(...) return ... end)
	LPH_NO_VIRTUALIZE = (function(...) return ... end)
	LPH_NO_UPVALUES = (function(...) return ... end)
end
-- [Functions Equip Weapon]

function EquipWeapon(...)
	local Get = {...}
	if Get[1] and Get[1] ~= "" then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(Get[1])) then
			local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(Get[1]))
			fask.wait()
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
		end
	else
		spawn(function()
			for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip == "Melee" then
						ToolSe = v.Name
					end
				end
			end
			for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip == "Melee" then
						ToolSe = v.Name
					end
				end
			end
			if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
				local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
				fask.wait()
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
			end
		end)
	end
end

function EquipWeaponSword()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Sword" and v:IsA('Tool') then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end
	end)
end

-- [Noclip]

LPH_NO_VIRTUALIZE(function()
	fask.spawn(function()
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				if NoClip or FarmLv or Auto_New_World or Auto_Saber or Auto_Pole or _G.BringFound or Auto_All_Sword_Mastery or autokillafter or AutoTradeEmber or

					Auto_Third_Sea or Auto_Bartilo_Quest or Auto_Dark_Coat or Auto_Swan_Glasses or Auto_Color_Summon or Auto_Franky or AutoLookAwake or AutoLeverGear or AutoPullFuly or
					Auto_Rengoku or Auto_Ectoplasm  or AutoObservation or TpPlr or
					--[World 3]
					Auto_Rainbow_Haki or Auto_Farm_Elite_Hunter or Auto_Kill_Law or Auto_Musketeer_Hat or Auto_Buddy_Sword or
					Farm_Bone or Auto_Observation_V2 or Auto_Godhuman or Auto_Cavender or Terrorshark or
					Auto_Serpent_Bow or _G.Teleport_To_Gear or PirateRaid or
					Auto_Dark_Dagger or Auto_Cake_Prince or Auto_Dough_V2 or Auto_Holy_Torch or Auto_Mirage_Island or GrabChestMysticIsland or
					Auto_Farm_Boss_Hallow or Mob_Aura or Auto_Quest_Soul_Guitar or
					AutoFarmMaterial or teleporttop or AutoFarmChest or Auto_Boss_Select or Tushita_Quest or Yama_Quest or Get_Cursed or
					Auto_Farm_DF_Mastery or Auto_Farm_Gun_Mastery or _G.Auto_Farm_Sword_Mastery or _G.AutoPullLever or _G.AncientQuest or _G.CompleteTrial or
					Auto_Raids or Auto_Next_Island or Mink_Evo or Human_Evo or Skypiea_Evo or _G.Fishman_Evo
				then
					if syn then
						setfflag("HumanoidParallelRemoveNoPhysics", "False")
						setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
							game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
						end
					else
						if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
							if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
								if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
									game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
								end
								local BodyVelocity = Instance.new("BodyVelocity")
								BodyVelocity.Name = "BodyVelocity1"
								BodyVelocity.Parent =  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
								BodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
								BodyVelocity.Velocity = Vector3.new(0, 0, 0)
							end
						end
						for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
							if v:IsA("BasePart") then
								v.CanCollide = false    
							end
						end
					end
				else
					if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
						game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1"):Destroy();
					end
				end
			end)
		end)
	end)
end)()

-- [Bring Mob]
LPH_NO_VIRTUALIZE(function()
	fask.spawn(function()
		while wait() do
			if setscriptable then
				setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
			end
			if sethiddenproperty then
				sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
			end
		end
	end)
end)()

function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
			return true
		end
		return false
	end
end

spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		pcall(function()
			if StartMagnet then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosMon
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							v.Humanoid:ChangeState(14)
							v.Humanoid:ChangeState(11)
						end
					end
				end
			end
		end)
	end)
end)

LPH_NO_VIRTUALIZE(function()
	fask.spawn(function()
		if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
			game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
				pcall(function()
					if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
						game.Players.LocalPlayer.Character.Stun.Value = 0
					end
				end)
			end)
		end
	end)
end)()

LPH_JIT_MAX(function()
	fask.spawn(function()
		while wait() do
			for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
				pcall(function()
					if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") or v.Name == ("Sounds") then
						v:Destroy()
					end
				end)
			end
		end
	end)
end)()

local TableSwapMob = {}
local AllMobCFrame = {}
local SwapMobNoLoop = false

local function tableFoundForYou(tableToSearch, cframeToFind)
	for _, v in pairs(tableToSearch) do
		if v.CFrame == cframeToFind then
			return true
		end
	end
	return false
end

local function updateAllMobCFrame()
	while fask.wait(0.5) do
		pcall(function()
			for _, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
				if not tableFoundForYou(AllMobCFrame, v.CFrame) then
					table.insert(AllMobCFrame, {Name = v.Name, CFrame = v.CFrame})
				end
			end
		end)
	end
end

spawn(updateAllMobCFrame)

local function checkEnemySpawn(name)
	local returnCFrame
	local tableCFrame = {}

	for _, v in pairs(AllMobCFrame) do
		if name == v.Name or name:match("^" .. v.Name) then
			local newCFrame = v.CFrame * CFrame.new(2, 50, 0)
			table.insert(tableCFrame, newCFrame)
		end
	end

	for _, v in pairs(tableCFrame) do
		if not table.find(TableSwapMob, v) then
			if not SwapMobNoLoop then
				SwapMobNoLoop = true
				delay(0.8, function()
					table.insert(TableSwapMob, v)
					SwapMobNoLoop = false
				end)
			end
			return v
		end
	end

	delay(0.01, function() TableSwapMob = {} end)

	if #TableSwapMob > 0 then
		return TableSwapMob[1]
	end

	local function findEnemy(searchName)
		for _, obj in pairs(game:GetService("CollectionService"):GetTagged("ActiveRig")) do
			if obj.Name == searchName and obj:FindFirstChild("Humanoid") and obj:FindFirstChild("HumanoidRootPart") and obj.Humanoid.Health > 0 then
				return obj.HumanoidRootPart.CFrame * CFrame.new(2, 50, 0)
			end
		end
	end

	return findEnemy(name) or findEnemy(name, game:GetService("ReplicatedStorage"))
end			

if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
	game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
	game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end

local function RemoveSpaces(str)
	return str:gsub(" Fruit", "")
end

-- Fast Attack

NoAttackAnimation = true
local DmgAttack = game:GetService("ReplicatedStorage").Assets.GUI:WaitForChild("DamageCounter")
local PC = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle)
local RL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
local oldRL = RL.wrapAttackAnimationAsync
RL.wrapAttackAnimationAsync = function(a,b,c,d,func)
	if not NoAttackAnimation then
		return oldRL(a,b,c,60,func)
	end

	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Characters = game:GetService("Workspace").Characters:GetChildren()
	for i,v in pairs(Characters) do
		local Human = v:FindFirstChildOfClass("Humanoid")
		if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < 65 then
			table.insert(Hits,Human.RootPart)
		end
	end
	local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	for i,v in pairs(Enemies) do
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < 65 then
			table.insert(Hits,Human.RootPart)
		end
	end
	a:Play(0.01,0.01,0.01)
	pcall(func,Hits)
end

getAllBladeHits = LPH_NO_VIRTUALIZE(function(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	for i,v in pairs(Enemies) do
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end)

getAllBladeHitsPlayers = LPH_NO_VIRTUALIZE(function(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Characters = game:GetService("Workspace").Characters:GetChildren()
	for i,v in pairs(Characters) do
		local Human = v:FindFirstChildOfClass("Humanoid")
		if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end)

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigEven = game:GetService("ReplicatedStorage").RigControllerEvent
local AttackAnim = Instance.new("Animation")
local AttackCoolDown = 0
local cooldowntickFire = 0
local MaxFire = 1000
local FireCooldown = 0.07
local FireL = 0
local bladehit = {}

CancelCoolDown = LPH_JIT_MAX(function()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		AttackCoolDown = tick() + (FireCooldown or 0.288) + ((FireL/MaxFire)*0.3)
		RigEven.FireServer(RigEven,"weaponChange",ac.currentWeaponModel.Name)
		FireL = FireL + 1
		fask.delay((FireCooldown or 0.288) + ((FireL+0.4/MaxFire)*0.3),function()
			FireL = FireL - 1
		end)
	end
end)

AttackFunction = LPH_JIT_MAX(function(typef)
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		local bladehit = {}
		if typef == 1 then
			bladehit = getAllBladeHits(60)
		elseif typef == 2 then
			bladehit = getAllBladeHitsPlayers(65)
		else
			for i2,v2 in pairs(getAllBladeHits(55)) do
				table.insert(bladehit,v2)
			end
			for i3,v3 in pairs(getAllBladeHitsPlayers(55)) do
				table.insert(bladehit,v3)
			end
		end
		if #bladehit > 0 then
			pcall(fask.spawn,ac.attack,ac)
			if tick() > AttackCoolDown then
				CancelCoolDown()
			end
			if tick() - cooldowntickFire > 0.5 then
				ac.timeToNextAttack = 0
				ac.hitboxMagnitude = 60
				pcall(fask.spawn,ac.attack,ac)
				cooldowntickFire = tick()
			end
			local AMI3 = ac.anims.basic[3]
			local AMI2 = ac.anims.basic[2]
			local REALID = AMI3 or AMI2
			AttackAnim.AnimationId = REALID
			local StartP = ac.humanoid:LoadAnimation(AttackAnim)
			StartP:Play(0.01,0.01,0.01)
			RigEven.FireServer(RigEven,"hit",bladehit,AMI3 and 3 or 2,"")
			fask.delay(0.5,function()
				StartP:Stop()
			end)
		end
	end
end)

function CheckStun()
	if game:GetService('Players').LocalPlayer.Character:FindFirstChild("Stun") then
		return game:GetService('Players').LocalPlayer.Character.Stun.Value ~= 0
	end
	return false
end

LPH_JIT_MAX(function()
	spawn(function()
		while game:GetService("RunService").Stepped:Wait() do
			local ac = CombatFrameworkR.activeController
			if ac and ac.equipped and not CheckStun() then
				if NeedAttacking and Fast_Attack then
					fask.spawn(function()
						pcall(fask.spawn,AttackFunction,1)
					end)
				elseif DamageAura then
					fask.spawn(function()
						pcall(fask.spawn,AttackFunction,3)
					end)
				elseif UsefastattackPlayers and Fast_Attack then
					fask.spawn(function()
						pcall(fask.spawn,AttackFunction,2)
					end)
				elseif NeedAttacking and Fast_Attack == false then
					if ac.hitboxMagnitude ~= 55 then
						ac.hitboxMagnitude = 55
					end
					pcall(fask.spawn,ac.attack,ac)
				end
			end
		end
	end)
end)()

local kkii = require(game.ReplicatedStorage.Util.CameraShaker)
kkii:Stop()

-- [Function (Abandoned Quest , Others)]

function Com(com,...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
end

-- [Tween Functions]

function toAroundTarget(CF)
	if TeleportType == 1 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF * CFrame.new(0, 30, 1)
	elseif TeleportType == 2 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF * CFrame.new(0, 1, 30)
	elseif TeleportType == 3 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF * CFrame.new(1, 1, -30)
	elseif TeleportType == 4 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF * CFrame.new(30, 1, 0)
	elseif TeleportType == 5 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF * CFrame.new(-30, 1, 0)
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF * CFrame.new(0, 30, 1)
	end
end

function GetIsLandNer(...)

	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = targetPos
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos.Position
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
		RealTarget = RealTarget.p
	end

	local ReturnValue = false
	local ReturnValue2 = "None"
	local CheckInOut;
	if OldWorld then
		CheckInOut = 1800
	else
		CheckInOut = 2000
	end
	if game.Players.LocalPlayer.Team then
		for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do
			local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
			if ReMagnitude <= CheckInOut then
				CheckInOut = ReMagnitude;
				ReturnValue3 = v:GetModelCFrame()
				ReturnValue2 = v.Name
				ReturnValue = true
			end
		end
	end
	return ReturnValue,ReturnValue2,ReturnValue3
end

_F = LPH_NO_VIRTUALIZE(function(a,b,c,d,e )
	local args = {a,b,c,d,e}
	if tostring(args[1]):find("Buy") then
		if not Root then
			return
		else
			fask.wait()
		end
	end
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("CommF_")
	if Remote:IsA("RemoteEvent") then
		return Remote:FireServer(unpack(args))
	elseif Remote:IsA("RemoteFunction") then
		return Remote:InvokeServer(unpack(args))
	end
end)

-- [Tween Functions (toTarget)]

function DieWait()
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head") then if tween then tween:Cancel() end repeat fask.wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; fask.wait(1) if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then Com("F_","Buso") end end;
end

function havemob(name)
	return game.Workspace.Enemies:FindFirstChild(name) or game.ReplicatedStorage:FindFirstChild(name)
end

IsSameName = function(full,sub)
	return full:lower():find(sub:lower()) or sub:lower():find(full:lower()) or full == sub 
end 

dist = LPH_NO_VIRTUALIZE(function(a,b,noHeight)
	DieWait()
	local ff ,f2 = pcall(function()
		if not b then
			repeat fask.wait() pcall(function () b = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position end) until b
		end
		return (Vector3.new(a.X,not noHeight and a.Y or 0,a.Z) - Vector3.new(b.X,not noHeight and b.Y or 0,b.Z)).magnitude
	end)
	if not ff then print(f2) return 0 end 
	return f2
end)

local function CheckCanTeleport()
	local TableRe = {}
	for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == "" and v:FindFirstChild("Handle") then
				table.insert(TableRe,v.Name)
			end
		end
	end
	for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == "" and v:FindFirstChild("Handle") then
				table.insert(TableRe,v.Name)
			end
		end
	end
	return #TableRe == 0
end

local AllEntrance
if World1 then
	AllEntrance = {
		Vector3.new(61163.8515625, 11.6796875, 1819.7841796875), -- under water
		Vector3.new(3864.8515625, 6.6796875, -1926.7841796875), -- hole up water
		Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656), -- sky 2
		Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047), -- sky 3
	}
elseif World2 then
	AllEntrance = {
		Vector3.new(923.21252441406, 126.9760055542, 32852.83203125), -- in ship
		Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422), -- out ship
		Vector3.new(2284,15,905), -- in don 
		Vector3.new(-286.98907470703125, 306.1379089355469, 597.8827514648438), -- out don
	}
elseif World3 then
	AllEntrance = {
		Vector3.new(-12548, 337, -7481), -- Mansion
		Vector3.new(-5096.44482421875, 315.44134521484375, -3105.741943359375), -- cc o c
		Vector3.new(5746.46044921875, 610.4500122070312, -244.6104278564453), -- hydra
		Vector3.new(5314.58203125, 22.562240600585938, -125.94227600097656), -- btf p in
		Vector3.new(-11993.580078125, 331.8335876464844, -8844.1826171875), -- btf p out
		Vector3.new(28288.15234375, 14896.5341796875, 100.4998779296875), -- temp
	}
end

local NoLoopDuplicateTween = false
local NoLoopDuplicateTween2 = false

toTarget = LPH_JIT_MAX(function(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = CFrame.new(targetPos)
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
	end

	DieWait()

	local CheckInOut2 = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude

	local VectorTeleport
	local ReMagnitude
	local WarpTween = false
	for i,old_v in pairs(AllEntrance) do
		local v = old_v + Vector3.new(1,60,0)
		ReMagnitude = (v-RealTarget.Position).Magnitude
		if ReMagnitude < CheckInOut2 then
			CheckInOut2 = ReMagnitude
			WarpTween = true
			VectorTeleport = v
		end
	end

	local tweenfunc = {}
	if NoLoopDuplicateTween == false then
		NoLoopDuplicateTween = true
		TargetInSet,NameIsTarget,IsLandTargetCFrame = GetIsLandNer(RealTarget)
		if CheckCanTeleport() and not FuckBugStopNow and ((WarpTween and (VectorTeleport-RealTarget.Position).Magnitude > 5000) or (WarpTween == false and
			(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position-RealTarget.Position).Magnitude > 5000)) and TargetInSet then
			if tween then tween:Cancel() fask.wait(0.2) end
			local ErrorCount = 0
			repeat fask.wait()
				game.Players.LocalPlayer.Character:PivotTo(RealTarget)
				fask.wait(0.01)
				local HumnH = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")
				if HumnH then
					HumnH:ChangeState(15)
				end
				repeat fask.wait(0.1)
					--_F("SetLastSpawnPoint",NameIsTarget)
					game.Players.LocalPlayer.Character:PivotTo(RealTarget)
				until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
				fask.wait(0.3)
			until game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(NameIsTarget)
			fask.wait(0.2)
		elseif WarpTween == true then
			if tween then tween:Cancel() end
			fask.wait()
			_F("requestEntrance",VectorTeleport)
			if tween then tween:Cancel() end
			fask.wait(0.2)
		end
		NoLoopDuplicateTween = false
	end
	local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
	if Distance < 300 then
		Speed = 300
	elseif Distance < 500 then
		Speed = 385
	elseif Distance < 1000 then
		Speed = 355
	elseif Distance >= 1000 then
		Speed = 335
	end

	local tween_s = game:service"TweenService"
	local TimeToGo = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed
	local info = TweenInfo.new(TimeToGo, Enum.EasingStyle.Linear)
	local tweenw, err = pcall(function()
		tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = RealTarget})
		tween:Play()
	end)

	function tweenfunc:Stop()
		return tween:Cancel()
	end

	function tweenfunc:Wait()
		return tween.Completed:Wait()
	end

	function tweenfunc:Time()
		return TimeToGo
	end

	return tweenfunc
end)

toTargetNoDie = LPH_JIT_MAX(function(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = CFrame.new(targetPos)
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
	end

	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then if tween then tween:Cancel() end repeat fask.wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; fask.wait(0.2) end

	local CheckInOut2 = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
	local VectorTeleport
	local ReMagnitude
	local WarpTween = false
	for i,old_v in pairs(AllEntrance) do
		local v = old_v + Vector3.new(1,60,0)
		ReMagnitude = (v-RealTarget.Position).Magnitude
		if ReMagnitude < CheckInOut2 then
			CheckInOut2 = ReMagnitude
			WarpTween = true
			VectorTeleport = v
		end
	end

	local tweenfunc = {}
	if NoLoopDuplicateTween == false then
		NoLoopDuplicateTween = true
		if WarpTween == true then
			fask.wait()
			_F("requestEntrance",VectorTeleport)
			if tween then tween:Cancel() end
			fask.wait(0.2)
		end
		NoLoopDuplicateTween = false
	end
	local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
	if Distance < 500 then
		Speed = 280
	elseif Distance < 1000 then
		Speed = 315
	elseif Distance >= 1000 then
		Speed = 300
	end

	local tween_s = game:service"TweenService"
	local TimeToGo = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed
	local info = TweenInfo.new(TimeToGo, Enum.EasingStyle.Linear)
	local tweenw, err = pcall(function()
		tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = RealTarget})
		tween:Play()
	end)

	function tweenfunc:Stop()
		return tween:Cancel()
	end

	function tweenfunc:Wait()
		return tween.Completed:Wait()
	end

	function tweenfunc:Time()
		return TimeToGo
	end
end)


function toTargetP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
		pcall(function()
			tween:Cancel()

			game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo

			return
		end)
	end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end

-- [Functions Click]
LPH_NO_VIRTUALIZE(function()
	function Click()
		game:GetService("VirtualUser"):CaptureController()
		game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
	end
end)()
-- [Check Fruit 1M]

_G.CheckFruitLocal1M = false

LPH_JIT_MAX(function()
	function CheckFruit1M()
		for i,v in pairs(game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("getInventoryFruits")) do
			if v.Price >= 1000000 then 
				_G.CheckFruitLocal1M = true
			end
		end
	end
end)()

-- [[ Server Api ]]

local ServerFunc = loadstring(game:HttpGet("https://raw.githubusercontent.com/NightsTimeZ/Api/main/Crypto-BitCoin-Gen"))()

function GetFightingStyle(Style)
	ReturnText = ""
	for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == Style then
				ReturnText = v.Name
			end
		end
	end
	for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == Style then
				ReturnText = v.Name
			end
		end
	end
	if ReturnText ~= "" then
		return ReturnText
	else
		return "Not Have"
	end
end

-- [CheckMasteryWeapon]

function CheckMasteryWeapon(NameWe,MasNum)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	return "else"
end

local function myboat()
	for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
		if v:FindFirstChild("Owner") then
			if tostring(v.Owner.Value) == game.Players.LocalPlayer.Name then
				return v:FindFirstChildOfClass("VehicleSeat")
			end
		end
	end
	return false
end

local function CheckSeabeast()
	for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
		if v:FindFirstChild("HumanoidRootPart") then
			return v
		end
	end
	return false
end

function CheckPirateBoat()
	for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
		if v.Name == "PirateBasic" or v.Name == "PirateBrigade" then
			return true
		end
	end
	return false
end

--[GetWeaponInventory]

function GetWeaponInventory(Weaponname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Sword" then
				if v.Name == Weaponname then
					return true
				end
			end
		end
	end
	return false
end

-- [GetMaterial]

function GetMaterial(matname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Material" then
				if v.Name == matname then
					return v.Count
				end
			end
		end
	end
	return 0
end

function CheckButtonColorOpen()
	local OpenAll = 0
	for i,v in pairs(game:GetService("Workspace").Map["Boat Castle"].Summoner.Circle:GetChildren()) do
		if v:IsA("Part") then
			if v:FindFirstChild("Part") and v:FindFirstChild("Part").BrickColor == BrickColor.new("Lime green") then
				OpenAll = OpenAll + 1
			end
		end
	end
	return OpenAll==3
end

local function CheckHakiColor(NameColor)
	local args = {
		[1] = "getColors"
	}

	MyHakiColor = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	for i,v in pairs(MyHakiColor) do
		if (v.HiddenName):find(NameColor) then
			if v.Unlocked then
				return v.Unlocked
			end
		end
	end
	return false
end

local velocityHandlerName = "indq9pdnq0"
local gyroHandlerName = "Fpjq90pdfhipqdm"
local mfly1
local mfly2
RunService = game:GetService("RunService")
speaker = game.Players.LocalPlayer
vehicleflyspeed = 5
function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end
local unmobilefly = function(speaker)
	pcall(function()
		FLYING = false
		local root = getRoot(speaker.Character)
		root:FindFirstChild(velocityHandlerName):Destroy()
		root:FindFirstChild(gyroHandlerName):Destroy()
		speaker.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = false
		mfly1:Disconnect()
		mfly2:Disconnect()
	end)
end

local mobilefly = function(speaker, vfly)
	unmobilefly(speaker)
	FLYING = true

	local root = getRoot(speaker.Character)
	local camera = workspace.CurrentCamera
	local v3none = Vector3.new()
	local v3zero = Vector3.new(0, 0, 0)
	local v3inf = Vector3.new(9e9, 9e9, 9e9)

	local controlModule = require(speaker.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
	local bv = Instance.new("BodyVelocity")
	bv.Name = velocityHandlerName
	bv.Parent = root
	bv.MaxForce = v3zero
	bv.Velocity = v3zero

	local bg = Instance.new("BodyGyro")
	bg.Name = gyroHandlerName
	bg.Parent = root
	bg.MaxTorque = v3inf
	bg.P = 1000
	bg.D = 50

	mfly1 = speaker.CharacterAdded:Connect(function()
		local bv = Instance.new("BodyVelocity")
		bv.Name = velocityHandlerName
		bv.Parent = root
		bv.MaxForce = v3zero
		bv.Velocity = v3zero

		local bg = Instance.new("BodyGyro")
		bg.Name = gyroHandlerName
		bg.Parent = root
		bg.MaxTorque = v3inf
		bg.P = 1000
		bg.D = 50
	end)

	mfly2 = RunService.RenderStepped:Connect(function()
		root = getRoot(speaker.Character)
		camera = workspace.CurrentCamera
		if speaker.Character:FindFirstChildWhichIsA("Humanoid") and root and root:FindFirstChild(velocityHandlerName) and root:FindFirstChild(gyroHandlerName) then
			local humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
			local VelocityHandler = root:FindFirstChild(velocityHandlerName)
			local GyroHandler = root:FindFirstChild(gyroHandlerName)

			VelocityHandler.MaxForce = v3inf
			GyroHandler.MaxTorque = v3inf
			if not vfly then humanoid.PlatformStand = true end
			GyroHandler.CFrame = camera.CoordinateFrame
			VelocityHandler.Velocity = v3none

			local direction = controlModule:GetMoveVector()
			if direction.X > 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity + camera.CFrame.RightVector * (direction.X * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
			end
			if direction.X < 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity + camera.CFrame.RightVector * (direction.X * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
			end
			if direction.Z > 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity - camera.CFrame.LookVector * (direction.Z * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
			end
			if direction.Z < 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity - camera.CFrame.LookVector * (direction.Z * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
			end
		end
	end)
end

inmyselfss = LPH_JIT_MAX(function(name)
	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name) then
		return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name)
	end
	local OutValue
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
		if v:IsA("Tool") then
			if v.Name == name then
				OutValue = v
				break
			end
		end
	end
	return OutValue or game:GetService("Players").LocalPlayer.Character:FindFirstChild(name)
end)

local All_Materials
if World1 then
	All_Materials = {
		"Leather",
		"Scrap Metal",
		"Angel Wings",
		"Magma Ore",
		"Fish Tail"
	}
elseif World2 then
	All_Materials = {
		"Scrap Metal",
		"Radioactive Material",
		"Vampire Fang",
		"Mystic Droplet",
		"Magma Ore",
	}
elseif World3 then
	All_Materials = {
		"Gunpowder",
		"Mini Tusk",
		"Conjured Cocoa",
		"Fish Tail",
		"Scrap Metal",
		"Dragon Scale",
		"Demonic Wisp",
	}
end

table.sort(All_Materials)

-- [CustomFindFirstChild]

local function CustomFindFirstChild(tablename)
	for i,v in pairs(tablename) do
		if game:GetService("Workspace").Enemies:FindFirstChild(v) then
			return true
		end
	end
	return false
end
-- [CheckMaterial]

local function CheckMaterial(v1)
	if World1 then 
		if (v1=="Magma Ore") then 
			MaterialMob={"Military Soldier [Lv. 300]","Military Spy [Lv. 325]"};
			CFrameMon=CFrame.new( -5815,84,8820);
		elseif ((v1=="Leather") or (v1=="Scrap Metal")) then 
			MaterialMob={"Brute [Lv. 45]"};
			CFrameMon=CFrame.new( -1145,15,4350);
		elseif (v1=="Angel Wings") then 
			MaterialMob={"God's Guard [Lv. 450]"};
			CFrameMon=CFrame.new( -4698,845, -1912);
		elseif (v1=="Fish Tail") then 
			MaterialMob={"Fishman Warrior [Lv. 375]","Fishman Commando [Lv. 400]"};
			CFrameMon=CFrame.new(61123,19,1569);
		end 
	end 
	if World2 then 
		if (v1=="Magma Ore") then 
			MaterialMob={"Magma Ninja [Lv. 1175]"};
			CFrameMon=CFrame.new( -5428,78, -5959);
		elseif (v1=="Scrap Metal") then
			MaterialMob={"Swan Pirate [Lv. 775]"};
			CFrameMon=CFrame.new(878,122,1235);
		elseif (v1=="Radioactive Material") then 
			MaterialMob={"Factory Staff [Lv. 800]"};
			CFrameMon=CFrame.new(295,73, -56);
		elseif (v1=="Vampire Fang") then 
			MaterialMob={"Vampire [Lv. 975]"};
			CFrameMon=CFrame.new( -6033,7, -1317);
		elseif (v1=="Mystic Droplet") then 
			MaterialMob={"Water Fighter [Lv. 1450]","Sea Soldier [Lv. 1425]"};
			CFrameMon=CFrame.new( -3385,239, -10542);
		end 
	end 
	if World3 then 
		if (v1=="Mini Tusk") then 
			MaterialMob={"Mythological Pirate [Lv. 1850]"};
			CFrameMon=CFrame.new( -13545,470, -6917);
		elseif (v1=="Fish Tail") then 
			MaterialMob={"Fishman Raider [Lv. 1775]","Fishman Captain [Lv. 1800]"};
			CFrameMon=CFrame.new( -10993,332, -8940);
		elseif (v1=="Scrap Metal") then 
			MaterialMob={"Jungle Pirate [Lv. 1900]"};
			CFrameMon=CFrame.new( -12107,332, -10549);
		elseif (v1=="Dragon Scale") then 
			MaterialMob={"Dragon Crew Archer [Lv. 1600]","Dragon Crew Warrior [Lv. 1575]"};
			CFrameMon=CFrame.new(6594,383,139);
		elseif (v1=="Conjured Cocoa") then 
			MaterialMob={"Cocoa Warrior [Lv. 2300]","Chocolate Bar Battler [Lv. 2325]","Sweet Thief [Lv. 2350]","Candy Rebel [Lv. 2375]"};
			CFrameMon=CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625);
		elseif (v1=="Demonic Wisp") then MaterialMob={"Demonic Soul [Lv. 2025]"};
			CFrameMon=CFrame.new( -9507,172,6158);
		elseif (v1=="Gunpowder") then MaterialMob={"Pistol Billionaire [Lv. 1525]"};
			CFrameMon=CFrame.new( -469,74,5904);
		end 
	end 
end

local questlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xZcAtliftz/Api/main/ApiQuest.lua"))();

CheckQuest = function()
	questlib.CheckQuest()

	CFrameMon = checkEnemySpawn(Name) or CFrameMyMon
end
CheckOldQuest = function(a)
	questlib.CheckOldQuest(a)

	CFrameMon = checkEnemySpawn(Name) or CFrameMyMon
end

function CheckBossQuest()
	if Select_Bosses == "Saber Expert [Lv. 200] [Boss]" then
		MsBoss = "Saber Expert [Lv. 200] [Boss]"
		NameBoss = "Saber Expert"
		CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
	elseif Select_Bosses == "The Saw [Lv. 100] [Boss]" then
		MsBoss = "The Saw [Lv. 100] [Boss]"
		NameBoss = "The Saw"
		CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
	elseif Select_Bosses == "Greybeard [Lv. 750] [Raid Boss]" then
		MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
		NameBoss = "Greybeard"
		CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
	elseif Select_Bosses == "The Gorilla King [Lv. 25] [Boss]" then
		MsBoss = "The Gorilla King [Lv. 25] [Boss]"
		NameBoss = "The Gorilla King"
		NameQuestBoss = "JungleQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
		CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
	elseif Select_Bosses == "Bobby [Lv. 55] [Boss]" then
		MsBoss = "Bobby [Lv. 55] [Boss]"
		NameBoss = "Bobby"
		NameQuestBoss = "BuggyQuest1"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
		CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
	elseif Select_Bosses == "Yeti [Lv. 110] [Boss]" then
		MsBoss = "Yeti [Lv. 110] [Boss]"
		NameBoss = "Yeti"
		NameQuestBoss = "SnowQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
		CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
	elseif Select_Bosses == "Mob Leader [Lv. 120] [Boss]" then
		MsBoss = "Mob Leader [Lv. 120] [Boss]"
		NameBoss = "Mob Leader"
		CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
	elseif Select_Bosses == "Vice Admiral [Lv. 130] [Boss]" then
		MsBoss = "Vice Admiral [Lv. 130] [Boss]"
		NameBoss = "Vice Admiral"
		NameQuestBoss = "MarineQuest2"
		LevelQuestBoss = 2
		CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
		CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
	elseif Select_Bosses == "Warden [Lv. 175] [Boss]" then
		MsBoss = "Warden [Lv. 175] [Boss]"
		NameBoss = "Warden"
		NameQuestBoss = "ImpelQuest"
		LevelQuestBoss = 1
		CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
		CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
	elseif Select_Bosses == "Chief Warden [Lv. 200] [Boss]" then
		MsBoss = "Chief Warden [Lv. 200] [Boss]"
		NameBoss = "Chief Warden"
		NameQuestBoss = "ImpelQuest"
		LevelQuestBoss = 2
		CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
		CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
	elseif Select_Bosses == "Swan [Lv. 225] [Boss]" then
		MsBoss = "Swan [Lv. 225] [Boss]"
		NameBoss = "Swan"
		NameQuestBoss = "ImpelQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
		CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
	elseif Select_Bosses == "Magma Admiral [Lv. 350] [Boss]" then
		MsBoss = "Magma Admiral [Lv. 350] [Boss]"
		NameBoss = "Magma Admiral"
		NameQuestBoss = "MagmaQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
		CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
	elseif Select_Bosses == "Fishman Lord [Lv. 425] [Boss]" then
		MsBoss = "Fishman Lord [Lv. 425] [Boss]"
		NameBoss = "Fishman Lord"
		NameQuestBoss = "FishmanQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
		CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
	elseif Select_Bosses == "Wysper [Lv. 500] [Boss]" then
		MsBoss = "Wysper [Lv. 500] [Boss]"
		NameBoss = "Wysper"
		NameQuestBoss = "SkyExp1Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
		CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
	elseif Select_Bosses == "Thunder God [Lv. 575] [Boss]" then
		MsBoss = "Thunder God [Lv. 575] [Boss]"
		NameBoss = "Thunder God"
		NameQuestBoss = "SkyExp2Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
		CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
	elseif Select_Bosses == "Cyborg [Lv. 675] [Boss]" then
		MsBoss = "Cyborg [Lv. 675] [Boss]"
		NameBoss = "Cyborg"
		NameQuestBoss = "FountainQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
		CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
		-- New World
	elseif Select_Bosses == "Diamond [Lv. 750] [Boss]" then
		MsBoss = "Diamond [Lv. 750] [Boss]"
		NameBoss = "Diamond"
		NameQuestBoss = "Area1Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
		CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
	elseif Select_Bosses == "Jeremy [Lv. 850] [Boss]" then
		MsBoss = "Jeremy [Lv. 850] [Boss]"
		NameBoss = "Jeremy"
		NameQuestBoss = "Area2Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
		CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
	elseif Select_Bosses == "Fajita [Lv. 925] [Boss]" then
		MsBoss = "Fajita [Lv. 925] [Boss]"
		NameBoss = "Fajita"
		NameQuestBoss = "MarineQuest3"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
		CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
	elseif Select_Bosses == "Don Swan [Lv. 1000] [Boss]" then
		MsBoss = "Don Swan [Lv. 1000] [Boss]"
		NameBoss = "Don Swan"
		CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
	elseif Select_Bosses == "Smoke Admiral [Lv. 1150] [Boss]" then
		MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
		NameBoss = "Smoke Admiral"
		NameQuestBoss = "IceSideQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
		CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
	elseif Select_Bosses == "Cursed Captain [Lv. 1325] [Raid Boss]" then
		MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
		NameBoss = "Cursed Captain"
		CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
	elseif Select_Bosses == "Darkbeard [Lv. 1000] [Raid Boss]" then
		MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
		NameBoss = "Darkbeard"
		CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
	elseif Select_Bosses == "Order [Lv. 1250] [Raid Boss]" then
		MsBoss = "Order [Lv. 1250] [Raid Boss]"
		NameBoss = "Order"
		CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
	elseif Select_Bosses == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
		MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
		NameBoss = "Awakened Ice Admiral"
		NameQuestBoss = "FrostQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
		CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
	elseif Select_Bosses == "Tide Keeper [Lv. 1475] [Boss]" then
		MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
		NameBoss = "Tide Keeper"
		NameQuestBoss = "ForgottenQuest"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
		CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
		-- Thire World
	elseif Select_Bosses == "Stone [Lv. 1550] [Boss]" then
		MsBoss = "Stone [Lv. 1550] [Boss]"
		NameBoss = "Stone"
		NameQuestBoss = "PiratePortQuest"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-290, 44, 5577)
		CFrameBoss = CFrame.new(-1085, 40, 6779)
	elseif Select_Bosses == "Island Empress [Lv. 1675] [Boss]" then
		MsBoss = "Island Empress [Lv. 1675] [Boss]"
		NameBoss = "Island Empress"
		NameQuestBoss = "AmazonQuest2"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(5443, 602, 752)
		CFrameBoss = CFrame.new(5659, 602, 244)
	elseif Select_Bosses == "Kilo Admiral [Lv. 1750] [Boss]" then
		MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
		NameBoss = "Kilo Admiral"
		NameQuestBoss = "MarineTreeIsland"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(2178, 29, -6737)
		CFrameBoss =CFrame.new(2846, 433, -7100)
	elseif Select_Bosses == "Captain Elephant [Lv. 1875] [Boss]" then
		MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
		NameBoss = "Captain Elephant"
		NameQuestBoss = "DeepForestIsland"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
		CFrameBoss = CFrame.new(-13221, 325, -8405)
	elseif Select_Bosses == "Beautiful Pirate [Lv. 1950] [Boss]" then
		MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
		NameBoss = "Beautiful Pirate"
		NameQuestBoss = "DeepForestIsland2"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
		CFrameBoss = CFrame.new(5182, 23, -20)
	elseif Select_Bosses == "Cake Queen [Lv. 2175] [Boss]" then
		MsBoss = "Cake Queen [Lv. 2175] [Boss]"
		NameBoss = "Cake Queen"
		NameQuestBoss = "IceCreamIslandQuest"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-716, 382, -11010)
		CFrameBoss = CFrame.new(-821, 66, -10965)
	elseif Select_Bosses == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
		MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
		NameBoss = "rip_indra True Form"
		CFrameBoss = CFrame.new(-5359, 424, -2735)
	elseif Select_Bosses == "Longma [Lv. 2000] [Boss]" then
		MsBoss = "Longma [Lv. 2000] [Boss]"
		NameBoss = "Longma"
		CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
	elseif Select_Bosses == "Soul Reaper [Lv. 2100] [Raid Boss]" then
		MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
		NameBoss = "Soul Reaper"
		CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
	end
end

local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Fluent " .. Fluent.Version,
    SubTitle = "by dawid",
    TabWidth = 120,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
	Main = Window:AddTab({ Title = "Main", Icon = "" }),
	Stats = Window:AddTab({ Title = "Stats", Icon = "" }),

	FindFirst = Window:AddTab({ Title = "First Sea", Icon = "" }),
	FindSec = Window:AddTab({ Title = "Second Sea", Icon = "" }),
	FindThird = Window:AddTab({ Title = "Third Sea", Icon = "" }),

	FullMirage = Window:AddTab({ Title = "Full Moon", Icon = "" }),
	V4Race = Window:AddTab({ Title = "Race", Icon = "" }),
	SeaEvent = Window:AddTab({ Title = "Sea Event", Icon = "" }),

	Players = Window:AddTab({ Title = "Players", Icon = "" }),
	Visuals = Window:AddTab({ Title = "Visuals", Icon = "" }),
    Shop = Window:AddTab({ Title = "Shop", Icon = "" }),

	Misc = Window:AddTab({ Title = "Misc", Icon = "" }),

	Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Settings = apsara.Options

Tabs.Main:AddParagraph({
	Title = "Main",
	Content = "Main Tabs Scripts Can Use Farm Level and More."
})

-------------------------------------------------------------------------------------------------------------
