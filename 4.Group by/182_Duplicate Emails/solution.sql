--Problem No: 182
--Problem Name: Duplicate Emails
--Difficulty: Easy
--Link: https://leetcode.com/problems/duplicate-emails/
-- Concepts: Group By, Having


SELECT Email
FROM Person
GROUP BY Email
HAVING COUNT(Email) > 1;