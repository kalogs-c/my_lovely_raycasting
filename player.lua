require("vector")

Player = {}

function Player:load()
	self.position = Vector.new(5, 5)
	self.direction = Vector.new(0, -1)
end
