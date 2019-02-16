PointData = game:GetService("DataStoreService"):GetDataStore("PointData")
RebirthData = game:GetService("DataStoreService"):GetDataStore("RebirthData")

game.Players.PlayerAdded:Connect(function(plr)
	local LB = Instance.new("IntValue")
	LB.Name = "leaderstats"
	
	local p = Instance.new("IntValue")
	p.Name = "Points"
	p.Value = PointData:GetAsync(plr.userId) or 0
	
	local r = Instance.new("IntValue")
	r.Name = "Rebirths"
	r.Value = RebirthData:GetAsync(plr.userId) or 0

	LB.Parent = plr
	p.Parent = LB
	r.Parent = LB
end)

game.Players.PlayerRemoving:Connect(function(plr)
	PointData:SetAsync(plr.userId, plr.leaderstats.Points.Value)
	RebirthData:SetAsync(plr.userId, plr.leaderstats.Rebirths.Value)
end)
