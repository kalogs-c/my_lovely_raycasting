require("vector")
require("player")

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

function CalculatePlaneModifier(pixelX)
	return 2 * (pixelX / love.graphics.getWidth()) - 1
end

Plane = Vector.new(0.66, 0)

function love.load()
	Player:load()
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

function love.update(dt)
	for pixel = 0, love.graphics.getWidth() do
		local planeModifier = CalculatePlaneModifier(pixel)
		local cameraPixel = Vector.multiply(Player.direction, planeModifier)
		local rayDirection = Vector.sum_vectors(Player.position, cameraPixel)

		local rayDirMag = Vector.magnitude(rayDirection)
		local deltaDistance = Vector.new(rayDirMag / rayDirection.x, rayDirMag / rayDirection.y)

		print(planeModifier)
		print(cameraPixel.x, cameraPixel.y, pixel)
		print(rayDirection.x, rayDirection.y, pixel)
		print(deltaDistance.x, deltaDistance.y)
	end
end
