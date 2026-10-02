-- LocalScript в StarterPlayerScripts (для своей карты)
local CollectionService = game:GetService("CollectionService")

local TAGS = {
    Key = Color3.fromRGB(0, 150, 255),
    Gold = Color3.fromRGB(255, 215, 0),
    Door = Color3.fromRGB(255, 165, 0),
    Item = Color3.fromRGB(0, 255, 0),
}

for tag, color in pairs(TAGS) do
    for _, inst in ipairs(CollectionService:GetTagged(tag)) do
        local h = Instance.new("Highlight")
        h.Adornee = inst
        h.FillColor = color
        h.FillTransparency = 0.5
        h.OutlineColor = color
        h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        h.Parent = inst
    end
end
