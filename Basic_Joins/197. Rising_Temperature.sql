-- Leetcode 197 
-- Rising Temperature

-- Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
-- 編寫一個解決方案，找出所有比前一天（昨天）溫度更高的日期。

-- 想法：
-- 給定表格(集合)：Weather，放著： id | recordDate | temperature
-- 目標：輸出一個表格 id : 所有比前一天（昨天）溫度更高的日期


-- 注意：
-- DATEDIFF(D1,D2)：用於比較兩天的天數差異幾天  D1 - D2 = ?  
-- DATEDIFF(w1.recordDate, w2.recordDate) = 1  ：確定D1 -D2 = 1
-- ON 關鍵字後面必須接一個評估為 True/False 的條件


SELECT w1.id  
FROM Weather as w1
JOIN Weather as w2 ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;
