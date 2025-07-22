local Zipp = {}
local f = nil

function Zipp:createPanel(pai)
	local sc = Instance.new("ScreenGui")
	sc.ResetOnSpawn = false
	sc.Parent = pai

	f = Instance.new("Frame")
	f.Size = UDim2.new(0, 500, 0, 400)
	f.Active = true
	f.Draggable = true
	f.BackgroundColor3 = Color3.new(0, 0, 0)
	f.BackgroundTransparency = 0.1
	f.Position = UDim2.new(0.5, -250, 0.5, -200)
	f.Parent = sc

	local exit = Instance.new("TextButton")
	exit.Name = "Exit b"
	exit.Position = UDim2.new(0, 460, 0, 0)
	exit.Size = UDim2.new(0, 40, 0, 40)
	exit.BackgroundColor3 = Color3.new(1, 0, 0)
	exit.TextColor3 = Color3.new(1, 1, 1)
	exit.Text = "X"
	exit.TextScaled = true
	exit.BackgroundTransparency = 1
	exit.Parent = f

	local UIcorner = Instance.new("UICorner")
	UIcorner.CornerRadius = UDim.new(0, 16)
	UIcorner.Parent = f

	local listLayout = Instance.new("UIListLayout")
	listLayout.Parent = f
	listLayout.SortOrder = Enum.SortOrder.LayoutOrder
	listLayout.Padding = UDim.new(0, 10)
end

function Zipp:addButton(Texto, r, g, b, action)
	local bt = Instance.new("TextButton")
	bt.Name = "Buttan"
	bt.Size = UDim2.new(0, 190, 0, 40)
	bt.Text = Texto
	bt.BackgroundColor3 = Color3.new(r, g, b)
	bt.TextColor3 = Color3.new(1, 1, 1)
	bt.Parent = f
	bt.MouseButton1Click:Connect(function()
		action()
	end)
end

return Zipp
