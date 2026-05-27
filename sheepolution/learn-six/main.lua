-- conditional

-- if condition then
--   code
-- end

function love.load()
	x = 100
	move = true
end

function love.update(dt)
	-- x = x + 5 * dt this is slow
	-- x = x+5 thise is fast
	-- if 5 > 9 then
	--     x = x + 100 * dt
	-- end
	-- if x < 600 then
	--     x = x + 100 * dt
	-- end
	-- if move == true then
	--     x = x + 100 * dt
	-- end
	if love.keyboard.isDown("right") then
		x = x + 100 * dt
	else
		x = x - 100 * dt
	end
end

function love.draw()
	love.graphics.rectangle("fill", x, 50, 200, 150)
end
