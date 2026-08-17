-- Leetcode 1068 
-- Product Sales Analysis I

-- Write a solution to report the product_name, year, and price for each sale_id in the Sales table.
-- 編寫一個解決方案，用於報告 Sales 表中每個 sale_id 對應的 product_name 、 year 和 price 。

-- 想法：
-- 給定表格(集合)：Sales , Product  (共有的是 product_id)
-- Sales 放 sale_id | product_id | year | quantity | price
-- Product 放 product_id | product_name
-- 目標：輸出一個表格，由product_name 對應 到 year & price


SELECT product_name , year , price
FROM Product
JOIN Sales ON Product.product_id = Sales.product_id

