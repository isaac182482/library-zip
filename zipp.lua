local Zipp = {}

local painel
local grid

function Zipp:createPanel(pai)
	local sc = Instance.new("ScreenGui")
	sc.ResetOnSpawn = false
	sc.Name = "ZippUI"
	sc.Parent = pai

	painel = Instance.new("Frame")
	painel.Size = UDim2.new(0, 500, 0, 400)
	painel.Position = UDim2.new(0.5, -250, 0.5, -200)
	painel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	painel.BackgroundTransparency = 0.1
	painel.Active = true
	painel.Draggable = true
	painel.Parent = sc

	local corner = Instance.new("UICorner", painel)
	corner.CornerRadius = UDim.new(0, 12)

	local titulo = Instance.new("TextLabel")
	titulo.Size = UDim2.new(1, -50, 0, 40)
	titulo.Position = UDim2.new(0, 10, 0, 0)
	titulo.BackgroundTransparency = 1
	titulo.TextColor3 = Color3.new(1, 1, 1)
	titulo.TextScaled = true
	titulo.Font = Enum.Font.GothamBold
	titulo.Text = "Zipp Grid"
	titulo.TextXAlignment = Enum.TextXAlignment.Left
	titulo.Parent = painel

	local fechar = Instance.new("TextButton")
	fechar.Size = UDim2.new(0, 30, 0, 30)
	fechar.Position = UDim2.new(1, -35, 0, 5)
	fechar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	fechar.Text = "X"
	fechar.TextColor3 = Color3.new(1, 1, 1)
	fechar.TextScaled = true
	fechar.Font = Enum.Font.GothamBold
	fechar.Parent = painel
	Instance.new("UICorner", fechar).CornerRadius = UDim.new(0, 8)

	fechar.MouseButton1Click:Connect(function()
		painel.Visible = false
	end)

	grid = Instance.new("UIGridLayout", painel)
	grid.FillDirection = Enum.FillDirection.Horizontal
	grid.CellSize = UDim2.new(0, 140, 0, 40)
	grid.CellPadding = UDim2.new(0, 10, 0, 10)
	grid.StartCorner = Enum.StartCorner.TopLeft
	grid.SortOrder = Enum.SortOrder.LayoutOrder
	grid.VerticalAlignment = Enum.VerticalAlignment.Top
	grid.HorizontalAlignment = Enum.HorizontalAlignment.Left
end

function Zipp:addButton(text, r, g, b, action)
	local bt = Instance.new("TextButton")
	bt.Size = UDim2.new(0, 140, 0, 40)
	bt.BackgroundColor3 = Color3.new(r, g, b)
	bt.Text = text
	bt.TextScaled = true
	bt.Font = Enum.Font.Gotham
	bt.TextColor3 = Color3.new(1, 1, 1)
	bt.Parent = painel

	local corner = Instance.new("UICorner", bt)
	corner.CornerRadius = UDim.new(0, 8)

	bt.MouseButton1Click:Connect(function()
		action()
	end)
end

return Zipp
