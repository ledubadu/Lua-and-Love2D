
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

io.write ("floor(2.345) : math