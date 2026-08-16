-- LeetCode 1148
-- Article Views I

-- Write a solution to find all the authors that viewed at least one of their own articles.
-- Return the result table sorted by id in ascending order.

-- 編寫一個解決方案，找出至少看過自己文章的作者。
-- 返回排序後的結果表，以 id 為準，升序排列。

-- 集合：Views , 
-- 篩選對象：id , 去重複要加上 Distinct 
-- 條件： author_id == viewer_id
-- 升序排列要用 order by (對象)

Select Distinct author_id as id 
from Views
where author_id = viewer_id
order by id;
