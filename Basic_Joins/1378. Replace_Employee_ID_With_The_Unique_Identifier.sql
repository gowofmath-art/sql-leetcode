-- Leetcode 1378 
-- Replace Employee ID With The Unique Identifier

-- Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.
-- 編寫一個解決方案，顯示每個用戶的唯一 ID。如果用戶沒有唯一 ID，則顯示 " null "。

-- 想法：
-- 給定兩個表格(集合)：Employees & EmployeeUNI
-- Employees 放 id & name , EmployeeUNI 放 id & unique_id 
-- 目標是輸出一個表格，由unique_id 對應要 name ，如果該name沒有unique_id 那就顯示null

-- 注意：
-- 需要什麼欄位就在SELECT 打完
-- 由於需要全體name 代表，這是被RIGHT JOIN的
-- 再來想想是靠什麼連接 id

SELECT unique_id ,name
FROM EmployeeUNI
RIGHT JOIN Employees ON EmployeeUNI.id = Employees.id;


