# 197. Rising Temperature

## Approach

* Use a **Self Join** to compare each day's temperature with the previous day's temperature.
* Join the table on consecutive dates using `DATE_ADD()`.
* Return the `id` where today's temperature is higher than yesterday's.

## Concepts Used

* Self Join
* Date Functions (`DATE_ADD`)
* `WHERE` Clause

## Complexity

* **Time:** O(n²) *(without indexes)*
* **Space:** O(1)
