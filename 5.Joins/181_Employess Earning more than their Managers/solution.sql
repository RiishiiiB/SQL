-- LeetCode 181 - Employees Earning More Than Their Managers
-- Difficulty: Easy
-- Topic: Self Join, Table Aliases

SELECT e.name AS Employee
FROM Employee e
JOIN Employee m
ON e.managerId = m.id
WHERE e.salary > m.salary;