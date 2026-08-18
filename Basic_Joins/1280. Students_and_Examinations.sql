-- Leetcode 1280 
-- Students and Examinations


-- Write a solution to find the number of times each student attended each exam.
-- 編寫一個解決方案，以計算每個學生參加每場考試的次數。

-- Return the result table ordered by student_id and subject_name.
-- 將結果表按照 student_id 和 subject_name 排序。

-- 有三表格：
-- Table: Students 
-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | student_id    | int     |
-- | student_name  | varchar |
-- +---------------+---------+

-- Table: Subjects 
-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | subject_name | varchar |
-- +--------------+---------+

-- Table: Examinations
-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | student_id   | int     |
-- | subject_name | varchar  |
-- +--------------+---------+

-- 目標：輸出一個表格為：student_id | student_name | subject_name | attended_exams(這要自己建立)

-- 其中：attended_exams 是指 考了幾次  (就算該學生沒有考也要顯示0)

-- 注意：
-- 指定要排序 因此 order by
-- 必須先「人工建立所有可能組合」：CROSS JOIN 每個學生 × 每個科目
-- 再來是 LEFT JOIN 因為要保留剛剛的全組合 (就算沒有也要顯示)
-- COUNT(Examinations.student_id) 只需要數 Examinations.student_id 的部分


SELECT Students.student_id , Students.student_name , Subjects.subject_name , COUNT(Examinations.student_id) AS attended_exams
FROM Students 
CROSS JOIN Subjects
LEFT JOIN Examinations
ON Students.student_id = Examinations.student_id
AND Subjects.subject_name = Examinations.subject_name
GROUP BY Students.student_id, Students.student_name, Subjects.subject_name
ORDER BY Students.student_id , subject_name;






