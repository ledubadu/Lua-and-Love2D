-- these are the pillar for this love

-- function love.load()
-- end

-- function love.update(dt)
-- end

-- function love.draw()
-- end

-- function love.load() -- this is to load assets and things
-- end
-- function love.update(dt) end
-- function love.draw() -- this is to draw things in the game
-- 	love.graphics.rectangle("line", 100, 50, 200, 150)
-- 	-- 100 is x position,
-- 	-- 50 is y position
-- 	-- 200 is width
-- 	-- 150 is height
-- 	-- these are things for the rectangle
-- end

function love.load() -- we can even put variables here in .load
	x = 100
end
function love.update(dt)
	-- print(dt)
	-- x = x + 5
	x = x + 5 * dt -- dt is delta time
end

function love.draw()
	love.graphics.rectangle("line", x, 50, 200, 150)
end
