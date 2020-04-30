--[[
   _____  _____ ____  
  / ____|/ ____|  _ \ 
 | (___ | |    | |_) |
  \___ \| |    |  _ < 
  ____) | |____| |_) |
 |_____/ \_____|____/ 
                      
--]]
local function WaitForChildOfClass(parent, class)
	local child = parent:FindFirstChildOfClass(class)
	while not child or child.ClassName ~= class do
		child = parent.ChildAdded:Wait()
	end
	return child
end
local function getPlayers()
	return WaitForChildOfClass(game,"Players")
end
local function getWorkspace()
	return WaitForChildOfClass(game,"Workspace")
end
workspace = getWorkspace()
players = getPlayers()
local function gotoCharacter(player)
	players.LocalPlayer.Character.HumanoidRootPart.CFrame = players[player].Character.HumanoidRootPart.CFrame
end
local function getPlayerOfTeam(team)
	for _,Player in players do
		if tostring(Player.Team) == team then
			return Player
		end
	end
end
local function evaluate(c)
	if c == "gp" then 
		return getPlayers()
	end
end
return evaluate
