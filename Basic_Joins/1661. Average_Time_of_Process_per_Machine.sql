-- Leetcode 1661 
-- Average Time of Process per Machine

-- There is a factory website that has several machines each running the same number of processes. Write a solution to find the average time each machine takes to complete a process.
-- 有一個工廠的網站，上面有多個機器，每個機器執行相同的流程。請編寫一個解決方案，以計算每個機器完成一個流程所花費的平均時間。

-- The time to complete a process is the 'end' timestamp minus the 'start' timestamp. The average time is calculated by the total time to complete every process on the machine divided by the number of processes that were run.
-- 完成一個流程所需的時間是 'end' timestamp 減去 'start' timestamp 。平均時間是通過將機器上所有流程的完成時間加總，然後除以流程的數量來計算的。

-- The resulting table should have the machine_id along with the average time as processing_time, which should be rounded to 3 decimal places.
-- 最終的表格應包含 machine_id 以及平均時間，該平均時間應四捨五入到小數點後三位。

-- 想法：
-- 給定表格(集合)：Activity 放了  machine_id | process_id | activity_type | timestamp 
-- 目標：輸出表格 machine_id | processing_time

-- 注意：
-- 有任何需要計算的部分通常在 SELECT 計算
-- start , end 不在同一列，所以需要用join 配對在一起
-- 配對的條件比較繁雜要小心  (可以多重條件)

-- JOIN 負責「把我要一起看的資料湊到同一列」；
-- SELECT 負責「我要算什麼」；
-- GROUP BY + AVG 負責「我要按什麼群體做統計」。


SELECT a1.machine_id , ROUND(AVG(a2.timestamp - a1.timestamp),3) AS processing_time
FROM Activity AS a1
JOIN Activity AS a2 
ON a1.machine_id = a2.machine_id
AND a1.process_id = a2.process_id
AND a1.activity_type = 'start'
AND a2.activity_type = 'end'
GROUP BY a1.machine_id;


