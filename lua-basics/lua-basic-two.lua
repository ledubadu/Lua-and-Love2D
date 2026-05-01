-- vid time 1 hour 24 minutes 

-- fuctions
--[[
local function sayHello()
	print("hello")
end

sayHello()
]]
--[[
local function sayHello(name)
	local name = name or "jake" -- this is a default value for this funciton
	print ("Hello " .. name .. "!")
end

sayHello ("luke") -- hello luke
sayHello() -- hello jake
]]
--[[
local function sum (num1,num2)
	print(num1+num2)
end
]]

-- using return
--[[
local function sum(num1,num2)
	return num1 + num2 -- cannot put anything after return
end

local x = 20

local ans = sum(10,x)

print ("The answer is: " .. ans)
]]

--[[
local function sum (num1, num2)
	local val = num1 + num2
	if val == 10 then -- if the sum is equal to 10 then this comes
		return val
	end
	
	if val < 100 then -- if the sum is less than 100 then this comes
		return -val
	end
	
	return val * 2 -- this is for the default return
	
end

local x = 2

local ans = sum(101,x)

print ("the answer is: " .. ans)
]]

-- working with files
--[[
io.output("myfile.txt") -- creates an empty file

io.write("Hello, World!") -- writes inside the file

io.close()
]]
-- note: each time this is done the file is overwriten with things mentioned on .write function

-- reading data from files 
--[[
io.input("myfile.txt")

local fileData = io.read("*all")
print(fileData)

io.close()
]]

-- 2nd method of making and writing to a file

local file = io.open ("myfile.txt", "w") -- w is write

if file ~= nil then
	file:write("Hello, there!")
	file:close()
else
	print("could not open file")
end 
-- to read print(file:read("*all")
-- to read line print(file:read("*line") reads only 1 line, can be done multiple times to read lines in a file
-- w to write
-- i to read
-- a to append meaning putting something at the end of the file/line of a file
