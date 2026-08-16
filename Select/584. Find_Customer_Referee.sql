-- LeetCode 584
-- Find Customer Referee

-- Find the names of the customer that are either:
-- referred by any customer with id != 2.
-- not referred by any customer.

-- 找出以下類型的客戶：
-- 由任何客戶推薦，通過 id != 2
-- 未曾由任何客戶推薦。

-- 集合是整個 Customer ，找的對象是 name，接著就是條件(不要 =2 以及有缺值的 )
-- 缺值要用 is null

Select name 
from Customer 
where referee_id != 2 or referee_id is null;