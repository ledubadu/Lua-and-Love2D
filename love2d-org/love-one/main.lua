function love.load()
	x, y, w, h = 20, 20, 60, 20
end

function love.update(dt)
	-- this makes the rectangle act like a loading bar
	w = w + 1
	y = h + 1

	-- this makes the rectangle move
	--x = x + 1
	--y = y + 1

	-- this has no change to the rectangle
	--w = w
	--y = h
end

function love.draw()
	love.graphics.setColor(0, 0.4, 0.4)
	love.graphics.rectangle("fill", x, y, w, h)
end
