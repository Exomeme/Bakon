--Please don't spam the webhook. I don't even log IP's :/


local plr = game.Players.LocalPlayer
local OSTime = os.time()
local Time = os.date('!*t', OSTime)

local function getexploit()
    local exploit =
        (syn and not is_sirhurt_closure and not pebc_execute and "Synapse X") or 
        (isexecutorclosure and "Script-Ware V2") or
        (secure_load and "Sentinel") or
        (is_sirhurt_closure and "SirHurt V4") or
        (pebc_execute and "ProtoSmasher") or
        (KRNL_LOADED and "Krnl") or
        (WrapGlobal and "WeAreDevs") or
        (isvm and "Proxo") or
        (shadow_env and "Shadow") or
        (jit and "EasyExploits") or
        (getreg()['CalamariLuaEnv'] and "Calamari") or
        (unit and "Unit") or
        ("Undetectable")
    return exploit
end

--Please don't spam the webhook. I don't even log IP's :/
local Content = 'Someone Executed your GUI'
local Embed = {
			["title"] = "__**New execution.**__",
			["description"] = "Name: "..plr.Name.."\nDisplay Name: "..plr.DisplayName.."\nExploit: "..getexploit().."\nGame: https://www.roblox.com/games/"..game.PlaceId,
			["type"] = "rich",
			["color"] = tonumber(0xffff00),
	                ["thumbnail"] = {
				["url"] = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432"
			},
			["image"] = {
				["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=250&y=250&Format=Png&username="..plr.Name
			},
			["fields"] = {
				{
					["name"] = "__Account Age:__",
					["value"] = plr.AccountAge.." days old",
					["inline"] = true
				},
				{
					["name"] = "__User ID:__",
					["value"] = plr.UserId,
					["inline"] = true
				}
			},
			["footer"] = {
			    ["text"] = "Thank the person that used it",
			    ["icon_url"] = "https://i.imgur.com/Vz2XUGj.jpg"
			},
			["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
};
(syn and syn.request or http_request or http.request) {
    Url = 'https://discord.com/api/webhooks/916821370615267348/46QiZXAdVjH_0v_nLYWYl6lVGSIh4S29S1vDCdVDF1Xa1JgDk1cyYSYrqPiukinUbPtX';
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode({content = Content; embeds = {Embed}; });
};

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("BAKON", "Sentinel")

    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    
    
    MainSection:NewButton("Open all doors", "Only regular Doors", function()
    print("Clicked")
    for i,v in pairs(game.Workspace.CurrentMap:FindFirstChildOfClass("Folder").Doors:GetDescendants()) do
    if v.ClassName == "ClickDetector" then fireclickdetector(v)
    end
    end
    end)
    
    MainSection:NewToggle("Door autospam", "Autospams all doors", function(state)
    while state == true do
    wait(0.1)
    for i,v in pairs(game.Workspace.CurrentMap:FindFirstChildOfClass("Folder").Doors:GetDescendants()) do
    if v.ClassName == "ClickDetector" then fireclickdetector(v)
    end
    end
    end
    end)
    
    MainSection:NewButton("Scramble items", "", function()
    for i,v in pairs(workspace:GetDescendants()) do
    if v:IsA("ClickDetector") then
    fireclickdetector(v)
    end
    end
    end)
    
    MainSection:NewToggle("Scramble items autospam", "", function(state)
    while state == true do
    wait(1)
    for i,v in pairs(workspace:GetDescendants()) do
    if v:IsA("ClickDetector") then
    fireclickdetector(v)
    end
    end
    end
    end)
    
     -- PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")

    
    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 999, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
        print(v)
    end)

    PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 999, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
        print(v)

    end)
