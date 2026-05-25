-- two ways to make functions

-- this way is not very common when declaring functions

-- exampleone = function()
-- 	print("Exmaple one")
-- end

-- -- this is the most common way to declare a function
-- function exampletwo()
-- 	print("Example Two")
-- end

-- print(exampleone())

-- exampleone()

-- exampletwo()

-- function sayNumber(num)
-- 	print("I like the number " .. num)
-- end

-- sayNumber(15)
-- sayNumber(2)
-- sayNumber(144)
-- print(num)

-- the return
function giveMeFive()
	return 5
end

a = giveMeFive()
print(a)

function sum(a, b)
	return a + b
end

print(sum(200, 95))
