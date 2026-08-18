-- Leetcode 577 
-- Employee Bonus

-- Write a solution to report the name and bonus amount of each employee who satisfies either of the following:
-- 編寫一個解決方案，用於報告所有符合以下條件的員工的姓名和獎金金額：

-- The employee has a bonus less than 1000.
-- 該員工的獎金低於 1000 。
-- The employee did not get any bonus.
-- 員工沒有得到任何獎金。

-- 想法：
-- 給定表格(集合)：Employee , Bonus 
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | empId       | int     |
-- | name        | varchar |
-- | supervisor  | int     |
-- | salary      | int     |
-- +-------------+---------+

-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | empId       | int  |
-- | bonus       | int  |
-- +-------------+------+

-- 目標：輸出一個表格：name , bouns

-- 注意：
-- 因為一般的JOIN是 取交集，沒有的自然無法出現，因此要用LETF JOIN  以 Employee 為主角
-- 條件上 必須寫 IS NULL 才會有


SELECT Employee.name , Bonus.bonus
FROM Employee
LEFT JOIN Bonus ON Employee.empId = Bonus.empId
WHERE bonus < 1000 OR bonus IS NULL;

