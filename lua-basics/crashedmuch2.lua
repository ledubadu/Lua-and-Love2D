
print("Hello World")
-- comments
--[[
	multi line comments
]]
--[[
name = "Derek"

io.write("Size of string ", #name, "\n")  -- io.write is to print 
-- #name is the lenght of string 
-- more ways to write things 
-- \b \t \\ \" \' these are escape characters

-- big num too big
-- floats are not that precise in lua

longString = [[
I am a very very long 
string that goes on 
forever ]]
--[[
io.write (longString, "\n") -- this is to print long multiline string printing

isAbleToDrive = true -- this is a bool 

io.write(type(isAbleToDrive), "\n") -- this is a boolean 

io.write(type(madeUpVar), "\n") -- this is nil
]]

-- math funciton 

io.write ("5 + 3 = ", 5+3, "\n")
io.write ("5 - 3 = ", 5-3, "\n")
io.write ("5 * 3 = ", 5*3, "\n")
io.write ("5 / 3 = ", 5/3, "\n")
io.write ("5 % 3 = ", 5%3, "\n")


-- Math funcitons: floor, ceil, max, min, sin, cos, tan,
-- asin, acos, exp, log, log10, pow, sqrt, random, randomseed

io.write ("floor(2.345) :", math.floor(2.345), "\n") -- rounded down
io.write ("ceil(2.345) : ", math.ceil(2.345), "\n") -- rounded up
io.write ("max(2,3) : ", math.max(2,3), "\n") -- max number selected
io.write ("min(2,3) : ", math.min(2,3), "\n") -- minimum number selected
io.write ("pow(8,2) : ", math.pow(8,2), "\n") -- 8 to the power of 2
io.write ("sqrt(64) : ", math.sqrt(64), "\n") -- square root of 64


 