-- libraries

function love.load()
	tick = require("tick")

	drawRectangle = false

	tick.delay(function()
		drawRectangle = true
	end, 2)
end

function love.update(dt)
	tick.update(dt)
end

function love.draw()
	if drawRectangle then
		love.graphics.rectangle("fill", 100, 100, 300, 200)
	end
end
