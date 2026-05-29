-- objects
-- function love.load()
-- 	rect = {}
-- 	-- rect["width"] = 100
-- 	--rect.width = 100 -- this is the same as the commented code on the 4th line
-- 	rect.x = 100
-- 	rect.y = 100
-- 	rect.width = 70
-- 	rect.height = 90

-- 	-- adding speed property
-- 	rect.speed = 100
-- end
-- function love.update(dt)
-- 	-- increase the value of x. Don't forget adding the delta time dt
-- 	rect.x = rect.x + rect.speed * dt -- way too fast without dt
-- end
-- function love.draw()
-- 	love.graphics.rectangle("line", rect.x, rect.y, rect.width, rect.height)
-- end

function love.load()
	listOfRectangles = {}
end
function createRect()
	rect = {}
	rect.x = 100
	rect.y = 100
	rect.width = 70
	rect.height = 90
	rect.speed = 100
	-- putting this new rectangle in the list
	table.insert(listOfRectangles, rect)
end

function love.keypressed(key)
	if key == "space" then
		createRect()
	end
end

function love.update(dt)
	for i, v in ipairs(listOfRectangles) do
		v.x = v.x + v.speed * dt
	end
end

function love.draw()
	for i, v in ipairs(listOfRectangles) do
		love.graphics.rectangle("line", v.x, v.y, v.width, v.height)
	end
end
