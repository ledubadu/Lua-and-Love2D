print("Your Console Calculator") -- simple print function
-- this is a multiline strings with \n at the end for new line

print("you can do these \n", "Addition is + \n", "Substaction is - \n", "Multiplication is * \n", "Division is / \n")

-- first number num1
--io.write is for console printing
-- tonumber() is used to get the io.read() functions input to integer
-- io.read() is for getting user input
io.write("num1: ")
local num1 = tonumber(io.read())

-- this is the second input num2
io.write("num2: ")
local num2 = tonumber(io.read())

-- this is where you select ther operations for the two numbers
-- i will add a while/do-while loop here so that everyone uses only
-- these 4 operations and cannot input numbers and characters here
io.write("You can use (+, -, *, /)")
local operation = io.read()

local result

if operation == "+" then -- this is for addition
	result = num1 + num2
elseif operation == "-" then -- this is for substraction
	result = num1 - num2
elseif operation == "*" then -- this is for multiplication
	result = num1 * num2
elseif operation == "/" then -- this is for division
	if num2 == 0 then -- nested if here and if num2 is "0" / Zero then the result is an error
		result = "Error: Division by zero"
	else -- num2 == a valid number(currently an integer) then this does the division operation
		result = num1 / num2
	end
else
	result = "Invalid operation"
end

print("Result: " .. result)
