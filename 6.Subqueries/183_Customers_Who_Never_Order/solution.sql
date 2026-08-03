--problem No: 183
--Problem Name: Customers Who Never Order
--Difficulty: Easy
--Link: https://leetcode.com/problems/customers-who-never-order/
-- Concepts: Subqueries, NOT IN

SELECT name as Customers
from Customers
where id not in (
    select customerId
    from Orders
);