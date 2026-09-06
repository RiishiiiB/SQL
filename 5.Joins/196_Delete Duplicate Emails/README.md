# 196. Delete Duplicate Emails

## Approach

* Use a **Self Join** to compare rows having the same email address.

* Keep the record with the smaller `id` and identify the duplicate record with the larger `id`.

* Delete the duplicate record using the `DELETE` statement.

## Concepts Used

* Self Join

* Table Aliases

* `DELETE` Statement

* `WHERE` Clause

## Complexity

* **Time:** O(n²) *(without indexes)*

* **Space:** O(1)
