-- variables
-- nil, boolean, number, string, function, userdata, thread, table
-- nil = absence of data
-- boolean = only be true or false
-- number = integers, floats etc
-- string = store sequence of characters

-- lua is case sensitive
-- salary = 1000

-- food = 300

-- rent = 400

-- investments = 600

-- result = salary - (food + rent + investments)

-- print(result)

-- this is a comment

-- tables
-- ourAwesomeTable = {}

-- ourAwesomeTable.coolvariable = 10

-- ourAwesomeTable = { coolVariable = 10, coolTable = {} }

-- relational operators
-- == ~= < > <= >=

-- money = 150 -- if change to 90 does not print anything

-- if money > 100 and money < 200 then
-- 	print(money)
-- elseif money < -100 then
-- 	print("i am poor")
-- else
-- 	print("yay i am rich")
-- end

-- functions

-- money = 1000000

-- function checkWealth()
-- 	if money > 100 and money < 200 then
-- 		print(money)
-- 	elseif money <= 100 then
-- 		print("i am poor")
-- 	else
-- 		print("yay i am rich")
-- 	end
-- end

-- checkWealth()
-- money = 50
-- checkWealth()

-- money = 150
-- checkWealth()

-- money = 199
-- checkWealth()

-- the love functions
function love.load() end
function love.update(dt) end
function love.draw() end
