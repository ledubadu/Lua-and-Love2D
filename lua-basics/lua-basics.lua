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

