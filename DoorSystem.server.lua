-- ServerScript. Вставь этот скрипт ВНУТРЬ твоей двери (Part).
-- Убедись, что у игрока в Backpack есть предмет с именем "Key".

local door = script.Parent
local keyName = "Key"

door.Touched:Connect(function(hit)
	local character = hit.Parent
	local player = game.Players:GetPlayerFromCharacter(character)
	if not player then return end

	local backpack = player:FindFirstChild("Backpack")
	if not backpack then return end

	local key = backpack:FindFirstChild(keyName)

	if key then
		key:Destroy() -- Забираем ключ у игрока
		door.Transparency = 1 -- Дверь становится невидимой
		door.CanCollide = false -- Игрок проходит сквозь дверь
		print(player.Name .. " открыл дверь ключом!")
	else
		print(player.Name .. " нужен ключ!")
	end
end)
