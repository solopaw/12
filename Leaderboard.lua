local datastore = game:GetService("DataStoreService")
local ds1 = datastore:GetDataStore("BuxSaveSystem")
local ds2 = datastore:GetDataStore("PointsSaveSystem")

game.Players.PlayerAdded:connect(function(plr)
 local folder = Instance.new("Folder", plr)
 folder.Name = "leaderstats"
 local B = Instance.new("IntValue", folder)
 B.Name = "Buxs"
 local P = Instance.new("IntValue", folder)
 P.Name = "Points"
 
 B.Value = ds1:GetAsync(plr.UserId) or 0
 ds1:SetAsync(plr.UserId, gems.Value)
 
 P.Value = ds2:GetAsync(plr.UserId) or 0
 ds2:SetAsync(plr.UserId, cash.Value)
 
 B.Changed:connect(function()
  ds1:SetAsync(plr.UserId, gems.Value)
 end)
 
 P.Changed:connect(function()
  ds2:SetAsync(plr.UserId, cash.Value)
 end)
end)
