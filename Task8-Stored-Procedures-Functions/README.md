# Task 8: Stored Procedures and Functions (PostgreSQL)

## Objective
To learn how to create reusable SQL blocks using stored procedures and functions in PostgreSQL.

## Tools
- pgAdmin (PostgreSQL)

## What I Did
1. Created a table `Employees` with employee data.
2. Wrote a **procedure** `GetEmployeesByDept` that accepts a department name and shows employees from that department.
3. Wrote a **function** `GetAnnualSalary` that calculates the annual salary for an employee.
4. Tested them using `CALL` and `SELECT`.

## Outcome
- Learned PostgreSQL’s way of creating procedures (`CREATE OR REPLACE PROCEDURE`) and functions (`CREATE OR REPLACE FUNCTION`).
- Practiced parameters and logic inside PL/pgSQL blocks.
- Understood how functions return values while procedures execute actions.
