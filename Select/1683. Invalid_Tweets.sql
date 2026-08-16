-- Leetcode 1683
-- Invalid Tweets

-- Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

-- 編寫一個解決方案，用於查找無效的推文。如果推文內容的字符數嚴格大於 15，則推文被認為無效。

-- 集合：Tweets
-- 篩選對象：tweet_id
-- 條件：content > 15

SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content) > 15;
