-- LeetCode 595
-- Big Countries

-- A country is big if:
-- it has an area of at least three million (i.e., 3000000 km2), or
-- it has a population of at least twenty-five million (i.e., 25000000).
-- Write a solution to find the name, population, and area of the big countries.

-- 一個國家之所以偉大，是因為：
-- 它至少有 3 百萬平方米（即 300 萬平方米）。
-- 該地區至少有二十五百萬人口（即約 2500 萬）。
-- 編寫一個解決方案，用於查找大國（如：美國、中國、印度等）的名稱、人口和麵積。

-- 想法：
-- 集合：World , 篩選對象：name , population , area , 
-- 條件 area > 3000000 or population > 25000000

Select name , population , area
from World
where area >= 3000000 or population >= 25000000;