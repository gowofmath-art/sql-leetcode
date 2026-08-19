-- Leetcode 620 
-- Not Boring Movies

-- Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".
-- 編寫一個解決方案，用於報告具有奇數 ID 和描述不為 " "boring" " 的電影。

-- Return the result table ordered by rating in descending order.
-- 將結果表按照 rating 降序排列。

-- Table: Cinema
-- +----------------+----------+
-- | Column Name    | Type     |
-- +----------------+----------+
-- | id             | int      |
-- | movie          | varchar  |
-- | description    | varchar  |
-- | rating         | float    |
-- +----------------+----------+


SELECT * 
FROM Cinema
WHERE id%2 = 1 AND description != "boring"
ORDER BY rating desc;