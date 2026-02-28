local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")

local DataService = require(ReplicatedStorage.Packages.dataservice).server
local DataTemplate = require(ReplicatedStorage.Shared.Modules.Core.DataTemplate)
local PlayerServiceServer = require(ServerScriptService.Services.PlayerService.PlayerServiceServer)

DataService:init({
	template = DataTemplate,
	useMock = true,
})

PlayerServiceServer:init()
