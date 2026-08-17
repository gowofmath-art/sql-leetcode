-- Leetcode 1581 
-- Customer Who Visited but Did Not Make Any Transactions

-- 客戶曾光顧，但沒有交易

-- Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.
-- 編寫一個解決方案，找出那些在沒有進行任何交易的情況下訪問過的用戶的 ID，以及他們進行此類訪問的次數。


-- 想法：
-- 給定兩個表格(集合)：Visits , Transactions (共同的為visit_id)
-- Visits 放 visit_id | customer_id 
-- Transactions 放 transaction_id | visit_id | amount
-- 目標：輸出一個表格，欄位為：customer_id | count_no_trans (放來幾次都沒消費)  (要自己創)

-- 注意：
-- 1. 要用 LEFT JOIN 先保留所有 Visits，如果某次沒有交易，右邊的 Transactions 欄位就會變成 NULL
-- 2. 接下來才是統計有多少是NULL，這邊用WHERE
-- 3. 再用GROUP BY 做等價類的分類
-- 4. 配合COUNT(*) 做記數

-- 偏難


SELECT Visits.customer_id ,  COUNT(*) AS count_no_trans
FROM Visits
LEFT JOIN Transactions ON Visits.visit_id = Transactions.visit_id
WHERE Transactions.transaction_id IS null
GROUP BY Visits.customer_id;

