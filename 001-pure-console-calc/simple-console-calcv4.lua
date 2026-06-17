-- The refined calc

print("Refined Calculator")

local operations = {
	["+"] = function(a, b)
		return a + b
	end,
	["-"] = function(a, b)
		return a - b
	end,
	["*"] = function(a, b)
		return a * b
	end,
	["/"] = function(a, b)
		if b == 0 then
			return nil, "Division by zero"
		end
		return a / b
	end,
}

while true do
	io.write("num1 or q: ")
	local input1 = io.read()
	if input1 == "q" or input1 == "quit" then
		break
	end

	local num1 = tonumber(input1)
	if not num1 then
		print("Invalid number")
		goto continue
	end

	io.write("num2 or q: ")
	local input2 = io.read()
	if input2 == "q" or input2 == "quit" then
		break
	end
	local num2 = tonumber(input2)

	if not num2 then
		print("invalid number")
		goto continue
	end

	io.write("operation +, -, *, /")
	local op = io.read()
	local operationFunctions = operations[op]

	local result, err = operationFunctions(num1, num2)

	if err then
		print("Error: " .. err)
	else
		print(string.format("%g %s %g = %g", num1, op, num2, result))
	end

	::continue::
end

print("Goodbye")
