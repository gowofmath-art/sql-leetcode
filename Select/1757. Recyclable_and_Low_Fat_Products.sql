-- LeetCode 1757
-- Recyclable and Low Fat Products

-- Write a solution to find the ids of products that are both low fat and recyclable.
-- 編寫一個解決方案，找出同時屬於“低脂”和“可回收”的產品 ID。

Select product_id 
from Products 
where low_fats = 'Y' and recyclable = 'Y';



