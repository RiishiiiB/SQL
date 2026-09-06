# 181. Employees Earning More Than Their Managers

## Approach

* Use a **Self Join** to compare each employee's salary with their manager's salary.

* Join the `Employee` table with itself using the employee's `managerId` and the manager's `id`.

* Return the employee's name where the employee's salary is higher than their manager's salary.

## Concepts Used

* Self Join

* Table Aliases

* `WHERE` Clause

## Complexity

* **Time:** O(n²) *(without indexes)*

* **Space:** O(1)
