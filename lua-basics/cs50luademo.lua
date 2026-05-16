-- variables

-- this is a global variable
hello = "Hello "

-- this is a local variable
local world = "world!"

--functions 

function say (text)
	print(text)
end

-- calling the variables and also using the concat operator ..

say(hello .. world)

--conditional

if world == "world" then
	print("world!")
else 
	print("Hello")
end

-- loops

--while loop
local i = 10 

while i > 0 do
	-- lua does not have -= or +=
	i = i-1
	print(i)
end

-- for loop

for j = 10, 1, -1 do 
	print(j)
end

-- repeat (the do-while loop)

i = 10

repeat 
	i = i-1
	print(i)
until i == 0

--tables
 
local person = {}
person.name = "colton ogden"

person.age = 26
person.height = 66.5

print(person["name"])
print(person.name)

for key,value in pairs(person) do
	print(key,value)
end



