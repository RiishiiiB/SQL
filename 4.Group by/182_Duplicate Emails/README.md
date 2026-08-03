# 182. Duplicate Emails

## 📌 Platform
LeetCode

## 📊 Difficulty
Easy

## 🔗 Problem Link
https://leetcode.com/problems/duplicate-emails/

## 💡 Approach

- Group all records by the `email` column.
- Count the occurrences of each email.
- Use the `HAVING` clause to filter only those groups where the count is greater than 1.

## ✅ SQL Concepts Used

- GROUP BY
- HAVING
- COUNT()

## ⏱ Time Complexity

O(n)

## 💾 Space Complexity

O(n)