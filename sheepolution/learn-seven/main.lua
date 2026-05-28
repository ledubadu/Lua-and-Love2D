-- tables
function love.load()
	-- fruits = {}
	-- fruits = { "apple", "banana" }
	-- table.insert(fruits, "pear")
	fruits = { "apple", "banana" }
	table.insert(fruits, "pear")

	-- for i = 1, 10 do
	-- 	print("hello", i)
	-- end
end
function love.update(dt) end
function love.draw()
	-- love.graphics.print("Test", 100, 100)
	--love.graphics.print(fruits[1], 100, 100)
	--love.graphics.print(fruits[2], 100, 200)
	--love.graphics.print(fruits[3], 100, 300)
	for i = 1, #fruits do
		love.graphics.print(fruits[i], 100, 100 + 50 * i)
	end
end
