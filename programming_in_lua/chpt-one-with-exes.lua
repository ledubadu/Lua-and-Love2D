--[[
print("hello world")

print (10)

print(13+3)

print(3+5)
print(math.sin(2.3))

a = 25
print(a)
]]

-- factorial function
--[[
function fact (n)
	if n == 0 then
		return 1
	else 
		return n * fact (n-1)
	end
end

print ("enter a number: ")
a = io.read("*n")
print (fact(a))
]]
--[[
print(math.pi/4)

a = 15

print(a^2)
print(a + 2)
]]

--ex 1.1 
--[[
function fact (n)
	if n == 0 or n < 0 then
		return 1
	else 
		return n * fact (n-1)
	end
end

print ("enter a number: ")
a = io.read("*n")
print (fact(a))
]]
-- ex 1.2
-- do this later

-- ex 13 
-- C, C++, c#, python

-- ex 1.4
-- ___ = "Hellow" valid
-- _end = "h" valid 
-- End = "H" valid 
--until? = "ninja" not valid 
--nil not valid
-- NULL = "Hello" okay
-- one-step = "hellOW" not valid
-- ex 1.5 in my opinion type (nil) == nil is false because the variable cannot be present and be nil at the same time thus the result is false
-- ex 1.6 we can use == and if conditional to check whether the value is a boolean or not
-- ex 1.7 yes, because if the values are needed to be processed first before the conditions be activated 
-- 1.8 do later