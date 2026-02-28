local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PlayerServiceClient = require(ReplicatedStorage.Shared.Services.PlayerService.PlayerServiceClient)
local DataService = require(ReplicatedStorage.Packages.dataservice).client

DataService:init()
PlayerServiceClient:init()

DataService:getChangedSignal("Money"):Connect(function(amount)
	print(amount)
end)
