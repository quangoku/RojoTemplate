local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local NetWorker = require(ReplicatedStorage.Packages.networker)
local PlayerServiceClient = {}
local player = Players.LocalPlayer

function PlayerServiceClient.init(self: PlayerServiceClient)
	self.netWorker = NetWorker.client.new("PlayerService", self)
	self.netWorker:fire("collectMoney", 5)
end

export type PlayerServiceClient = typeof(PlayerServiceClient) & {
	netWorker: NetWorker.Client,
}

return PlayerServiceClient
