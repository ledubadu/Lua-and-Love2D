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
-- ex 2.2
-- do this later

