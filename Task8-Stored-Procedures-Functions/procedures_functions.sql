-- Create sample table
CREATE TABLE Employees (
    EmpID SERIAL PRIMARY KEY,
    Name VARCHAR(50),
    Salary NUMERIC(10,2),
    Department VARCHAR(50)
);

-- Insert sample data
INSERT INTO Employees (Name, Salary, Department) VALUES
('Aishwarya', 50000, 'IT'),
('Rohit', 60000, 'HR'),
('Neha', 75000, 'Finance'),
('Karan', 40000, 'IT');

-- =============================
-- STORED PROCEDURE (PostgreSQL)

CREATE OR REPLACE PROCEDURE GetEmployeesByDept(IN deptName VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
    RAISE NOTICE 'Employees in Department: %', deptName;
    -- Display employees
    PERFORM e.* FROM Employees e WHERE e.Department = deptName;
END;
$$;

-- Call the procedure
CALL GetEmployeesByDept('IT');


-- =============================
-- FUNCTION (PostgreSQL)

CREATE OR REPLACE FUNCTION GetAnnualSalary(emp_id INT)
RETURNS NUMERIC(10,2)
LANGUAGE plpgsql
AS $$
DECLARE
    annual_salary NUMERIC(10,2);
BEGIN
    SELECT Salary * 12 INTO annual_salary
    FROM Employees
    WHERE EmpID = emp_id;

    RETURN annual_salary;
END;
$$;

-- Use the function
SELECT Name, GetAnnualSalary(EmpID) AS Annual_Salary
FROM Employees;
