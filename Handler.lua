local Player = game.Players.LocalPlayer
local stats = Player.leaderstats
local Points = stats.Points
local Buxs = stats.Buxs
function GivePoints
  while true do
    wait(5)
    Points.Value = Points.Value + Buxs + 10
    end)
function GiveBuxs
  
  
  end)
game.Players.PlayerAdded:connect(GivePoints)
Player.CharacterAdded:connect(GiveBux) 
