-- simple calculator v3
-- i am going to use the tables now

print("simple calculator V3")
print("Type q or quit to exit\n")

local quitingfunction = {
	["q"] = true,
	["quit"] = true,
}

local operationFunctions = {
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
			return nil, "Error, Division by zero"
		end
		return a / b
	end,
}

while true do
	--first input

	io.write("Num1: or(q)")
	local input1 = io.read()

	-- check the quit function
	if quitingfunction[input1] then
		print("Goodbye")
		break
	end

	-- this is for num1
	local num1 = tonumber(input1)
	if not num1 then
		print("invalid, try again")
		goto continue
	end

	-- this is for num2
	io.write("Num2: (q)")
	local input2 = io.read()
	local num2 = tonumber(input2)

	if not num2 then
		print("invalid, try again")
		goto continue
	end

	-- operations
	io.write("Operations +, -, *, /")
	local op = io.read()

	-- looking up operation function
	local funcs = operationFunctions[op]

	if not func then
		print("Invalid, Error Operations")
		goto continue
	end

	local result, errors = func(num1, num2)

	if errors then
		print("Error: " .. errors .. "\n")
	else
		print(string.format("%g %s %g = %g\n", num1, op, num2, result))
	end

	::continue::
end
