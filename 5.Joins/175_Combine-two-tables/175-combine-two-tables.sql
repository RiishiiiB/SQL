-- LeetCode 175 - Combine Two Tables
-- Difficulty: Easy
-- Topic: Joins
SELECT
    p.firstName,
    p.lastName,
    a.city,
    a.state
FROM Person p
LEFT JOIN Address a
    ON p.personId = a.personId;