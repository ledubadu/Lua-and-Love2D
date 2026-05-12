-- pg 23
-- ex 3.1 
-- .0e12 valid
-- .e12 not valid
-- 0.0e
-- 0x12 valid
-- 0xABFG not valid
-- 0xA valid
-- FFFF valid 
-- 0xFFFFFFFF valid 
-- 0x not valid 
-- 0x1P10 valid 
-- 0.1e1 valid 
-- 0x0.1p1 valid

-- 3.2 
-- does not happen
-- dones not happen
-- nil x nil
-- nil x nil again

-- 3.3 
--[[
for i = -10, 10 do
	print(i, i%3)
end
-10                                                                                   2
-9                                                                                    0
-8                                                                                    1
-7                                                                                    2
-6                                                                                    0
-5                                                                                    1
-4                                                                                    2
-3                                                                                    0
-2                                                                                    1
-1                                                                                    2
0                                                                                     0
1                                                                                     1
2                                                                                     2
3                                                                                     0
4                                                                                     1
5                                                                                     2
6                                                                                     0
7                                                                                     1
8                                                                                     2
9                                                                                     0
10

2.4178516392293e+024

4.1359030627651e-025
]]
