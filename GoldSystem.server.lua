-- ServerScript. Вставь этот скрипт ВНУТРЬ твоего золота (Part).
-- ВАЖНО: Сначала создай в ServerScriptService скрипт для leaderstats (см. ниже).

local goldPart = script.Parent
local goldAmount = 10 -- Сколько золота дает один кусочек

goldPart.Touched:Connect(function(hit)
	local character = hit.Parent
	local player = game.Players:GetPlayerFromCharacter(character)
	if not player then return end

	local leaderstats = player:FindFirstChild("leaderstats")
	if not leaderstats then return end

	local goldStat = leaderstats:FindFirstChild("Gold")
	if goldStat then
		goldStat.Value = goldStat.Value + goldAmount
	end

	goldPart:Destroy() -- Исчезает после сбора
	print(player.Name .. " собрал " .. goldAmount .. " золота!")
end)
