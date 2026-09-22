# LeetCode 175 - Combine Two Tables

## Problem

Write a solution to report the first name, last name, city, and state of each person in the `Person` table.

If a person does not have an address in the `Address` table, their city and state should be reported as `NULL`.

---

## Tables

### Person

| Column | Type |
|---|---|
| personId | int |
| lastName | varchar |
| firstName | varchar |

### Address

| Column | Type |
|---|---|
| addressId | int |
| personId | int |
| city | varchar |
| state | varchar |

---

## Approach

Use a **LEFT JOIN** between the `Person` and `Address` tables.

- `Person` is the left table because we need every person in the result.
- Match records using `personId`.
- If a person does not have a matching address, `city` and `state` will automatically be `NULL`.

---

## SQL Solution

```sql
SELECT
    p.firstName,
    p.lastName,
    a.city,
    a.state
FROM Person p
LEFT JOIN Address a
    ON p.personId = a.personId;