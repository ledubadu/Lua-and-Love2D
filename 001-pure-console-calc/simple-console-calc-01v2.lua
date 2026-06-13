-- this is v2 of the calculator
print("Simple Calculator V2")

-- this has quit and while loop for this one
-- also i am doing the num1 and num2 to not have
-- any kind of letters in them
print("Type quit or q to quit the program")

while true do
	io.write("num1 (or 'q' to quit): ")
	-- this is given here because of the topdown approach of lua
	-- this has to be here because you need to check this whether you continue of just quit

	local input1 = io.read()

	--the quit check
	-- i mispelled input1 to inpu1 and the program still worked with quit and Q but not q
	-- needing to check this and found out the problem (it was my mispelling)
	if input1 == "q" or input1 == "quit" or input1 == "Q" then
		print("Goodbye")
		break
	end

	-- this check gives us the work for if someone enters a
	-- letters or character then it goes to continue
	local num1 = tonumber(input1)
	if not num1 then
		print("invalid number try again")
		goto continue
	end

	-- start of number 2
	io.write("num2: ")

	local input2 = io.read()
	local num2 = tonumber(input2)

	if not num2 then
		print("invalid number try again")
		goto continue
	end

	io.write("operation (+, -, *, //)")
	local op = io.read()

	local result
	if op == "+" then
		result = num1 + num2
	elseif op == "-" then
		result = num1 - num2
	elseif op == "*" then
		result = num1 * num2
	elseif op == "/" then
		if num2 == 0 then
			print("Error: Division by zero\n")
			goto continue
		else
			result = num1 / num2
		end
	end
	print(string.format("%g %s %g = %g \n", num1, op, num2, result))

	::continue::
end

-- to do
-- make the calculator shorter
-- make use of tables
-- make num1 and num2 have quit function
