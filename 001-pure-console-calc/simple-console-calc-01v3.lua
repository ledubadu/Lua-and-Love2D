-- simple calculator v3
-- i am going to use the tables now

print("simple calculator V3")
print("Type q or quit to exit\n")
local quitingfunction = {
	["q"] = true,
	["quit"] = true,
}

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
		return a / b
	end,
}

while true do
	io.write("num1 or q: ")
	local input1 = io.read()
end

--unfinished
