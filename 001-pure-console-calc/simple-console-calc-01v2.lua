-- this is v2 of the calculator
print("Simple Calculator V2")

-- this has quit and while loop for this one
-- also i am doing the num1 and num2 to not have
-- any kind of letters in them

print("Type quit or q to quit the program")

while true do
	io.write("num1: ")
	local num1 = tonumber(io.read)

	io.write("num2: ")
	local num2 = tonumber(io.read)

	if num1 == string.lower("q") or string.lower("quit") then
		break
	end
end
