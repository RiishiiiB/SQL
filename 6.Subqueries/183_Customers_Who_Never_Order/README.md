# 183. Customers Who Never Order

## 📌 Platform
LeetCode

## 📊 Difficulty
Easy

## 🔗 Problem Link
https://leetcode.com/problems/customers-who-never-order/

## 💡 Approach

- Retrieve all customer names from the `Customers` table.
- Use a subquery to fetch all `customerId` values from the `Orders` table.
- Filter out customers whose `id` exists in the `Orders` table using the `NOT IN` operator.
- The remaining customers are those who have never placed an order.

## ✅ SQL Concepts Used

- Subqueries
- NOT IN
- SELECT
- WHERE

## ⏱ Time Complexity

**O(n + m)**

- `n` = Number of rows in the `Customers` table.
- `m` = Number of rows in the `Orders` table.

## 💾 Space Complexity

**O(m)**

- The subquery stores the list of `customerId` values returned from the `Orders` table.

## 📝 Solution

```sql
SELECT name AS Customers
FROM Customers
WHERE id NOT IN (
    SELECT customerId
    FROM Orders
);
```