local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local function Event()
    for i = 0, 100 do
        Player.Character.Humanoid.Health -= 1
    end
end

local Day = os.time({
    year = 2023,
    month = 2,
    day = 11,
    hour = 12,
    minute = 27,
    second = 30,
})

RunService.Heartbeat:Connect(function()
    local SecondsBetween = os.difftime(Day, os.time())

    local Seconds = SecondsBetween % 60
    local Minutes = math.floor(SecondsBetween % (60 * 60) / 60)
    local Hours = math.floor(SecondsBetween % (60 * 60 * 24) / (60 * 60))
    local Days = math.floor(SecondsBetween % (60 * 60 * 24 * 30) / (60 * 60 * 24))
	
    if SecondsBetween <= 0 then 
        Event()
        break
    end
end)
