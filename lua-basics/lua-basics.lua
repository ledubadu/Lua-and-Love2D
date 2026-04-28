--[[ print("hello world")
--  single line comment

--[[
    this is a 
    multi line comment
]]
-- this , makes a tab in the middle
--print("hello world", "too much tab")
-- this .. is a concationation operator
--print("hello".."world")

-- tables are not necessary for love2d for now

-- local is for this file and i can use this local variable anywhere in this lua-basics.lua file

-- _G.Global or _g.global for global scope

-- string
--[[
local x = [[asdas 
asdfasfdg
asdgasdg
    asdfasdf
        asdfasdf
print (x) ]]

-- print("Hello, World!")

-- if statement
--[[
local age = 15

local name = age > 18 and "Mike" or "Jeff"

print (name)

if true then
    name = "Luke"
end

print (name)
]]

-- loops

-- this will count to 1 to 10
--[[
for i = 1 , 10 do
    print (i)
end
]]
-- this is with steps and 1 is default
--[[
for i = 1, 10, 1 do
    print(i)
end
]]
-- this is reversing the loop
--[[
for i = 10, 1, -2 do
    print(i)
end
]]

-- while loops
-- this is an infinite loop
--[[
while true do 
    print("mike")
end 
]]

-- this is better
--[[
local count = 0

while true do
    count = count + 1
    
    print("Jeff".. count)
    
    if count > 10 then
        break
    end
end
]]
-- shorter version
--[[
local count = 0

while count < 10 do
    count = count + 1
    print("jeff" .. count)
end
]]
-- this repeat loop will run at least once
--[[
local count = 10 -- this makes the loop to play at least once
local count = 1 -- this makes the loop to print "mike" 10 times
repeat
    count = count + 1
    
    print("mike" .. count)
until count > 10
]]
-- vid time 1 hour 03 seconds

-- user input

-- print ("What is your name?")
--[[
io.write("Enter your name: ") -- this does not have the \n at the end
local ans = io.read()

print ("Name:",ans)
]] -- this has an error where you can only display a part of your name
--[[
ans = io.read()
print(ans)
print("hello Mr/Mrs: "..  ans) -- if you don't use the "," for concationation and use ".." this then it seems to work just fine
]]

-- TABLES --
-- this works similar to python
-- local tbl = {"This", 2, 9.9, true, {"ok","cool"}}
-- print (tbl) -- you will get a memory address
-- you need to iterate to get the items inside the table

-- local tbl = {"This", 2, 9.9, true, {"ok","cool"}}
--[[
for i = 1, #tbl do -- this # tells the number of the items
    print(tbl[i])
end
]] -- this gets the table

--local nums = {1, 3, 5, 7, 9}

-- table.insert(nums, 19) -- this puts the number at the end of the table
-- table.insert(nums, 2, 19) -- this will put 19 at position 2, so this will replace 3
--table.remove(nums, 4) -- this will remove the number at the position so in this case 7 will dissapear
--[[
for i = 1, #nums do
    print(nums[i])
end
]]
--remember that in Lua array indexes start from 1/One
-- using pairs that will have keys(k)/indexes and value(v)
--[[
for index, value in pairs(nums) do
    print(index, value)
    --print (index)
    --print (value)
end
]]

-- Multidimentional Table --
--[[
local numbs = {
    {1,8,3},
    {4,2,6},
    {7,5,9}
}

--print(numbs[2][2])
for i = 1, #numbs do
    for j = 1, #numbs[i] do
        print(numbs[i][j])
    end
end

-- table to string example
local numbs = {1, 2, 3}
print(table.concat(numbs, " ")) -- this makes the table in to a string

-- named table
local tbl = {
    name = "mike",
    age = 12
}

print(tbl["name"], 
tbl["age"])
 ]]