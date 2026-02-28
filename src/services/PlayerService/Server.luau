local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local DataService = require(ReplicatedStorage.Packages.dataservice).server
local NetWorker = require(ReplicatedStorage.Packages.networker)
local PlayerServiceServer = {}

function PlayerServiceServer.init(self: PlayerServiceServer)
	self.networker = NetWorker.server.new("PlayerService", self, {
		self.collectMoney,
	})

	Players.PlayerAdded:Connect(function(player)
		self.onPlayerAdded(self, player)
	end)
end

function PlayerServiceServer.collectMoney(self: PlayerServiceServer, player: Player, amount: number)
	print("player " .. player.Name .. " Collect " .. amount .. " Money")
	DataService:update(player, "Money", function(currentValue)
		return currentValue + amount
	end)
end

function PlayerServiceServer.onPlayerAdded(self: PlayerServiceServer, player: Player)
	DataService:waitForData(player)
	while task.wait(1) do
		DataService:update(player, "Money", function(currentValue)
			return currentValue + 1
		end)
	end
end

export type PlayerServiceServer = typeof(PlayerServiceServer) & {
	networker: NetWorker.Server,
}

return PlayerServiceServer
