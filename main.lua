GameMap = {
	{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
	{ 1, 1, 0, 0, 1, 0, 0, 0, 0, 1 },
	{ 1, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
	{ 1, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
	{ 1, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
	{ 1, 0, 0, 0, 0, 0, 1, 1, 1, 1 },
	{ 1, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
	{ 1, 0, 1, 0, 0, 0, 0, 0, 0, 1 },
	{ 1, 0, 0, 0, 0, 0, 1, 0, 1, 1 },
	{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
}

Player = {}

function Player:load()
	self.position = { x = 5, y = 5 }
	self.direction = { x = 0, y = -1 }
end

function love.load()
	love.graphics.setBackgroundColor(190, 190, 255)
end

function love.draw()
	love.graphics.setColor(0, 0, 0)
	love.graphics.rectangle(
		"fill",
		0,
		love.graphics.getHeight() / 2,
		love.graphics.getWidth(),
		love.graphics.getHeight() / 2
	)
end
