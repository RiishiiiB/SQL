# LeetCode 577 - Employee Bonus

## Problem

Write a solution to report the name and bonus amount of each employee who has a bonus less than `1000`.

Employees who do not have a bonus should also be included.

---

## Tables

### Employee

| Column | Type |
|---|---|
| empId | int |
| name | varchar |
| supervisor | int |
| salary | int |

### Bonus

| Column | Type |
|---|---|
| empId | int |
| bonus | int |

---

## Approach

Use a **LEFT JOIN** between the `Employee` and `Bonus` tables.

- `Employee` is the left table because every employee should be considered.
- Match employees using `empId`.
- Employees without a bonus will have `NULL` as their bonus.
- Filter the result to keep bonuses less than `1000` or `NULL`.

---

## SQL Solution

```sql
SELECT
    e.name,
    b.bonus
FROM Employee e
LEFT JOIN Bonus b
    ON e.empId = b.empId
WHERE b.bonus < 1000
   OR b.bonus IS NULL;