create database emp;
use emp;
drop database  m               
CREATE TABLE Departments (DeptID INT PRIMARY KEY,DeptName VARCHAR(50)
);

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT,
    Salary DECIMAL(10,2),
    HireDate DATE,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

INSERT INTO Departments (DeptID, DeptName) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Sales');


INSERT INTO Employees (EmpID, EmpName, DeptID, Salary, HireDate) VALUES
(101, 'John', 1, 50000, '2018-02-12'),
(102, 'Alice', 2, 60000, '2019-07-10'),
(103, 'Bob', 1, 55000, '2020-05-05'),
(104, 'Carol', 3, 45000, '2017-09-20');


-- 11. Display employees whose names start with 'A'
SELECT * 
FROM Employees
WHERE EmpName LIKE 'A%';

-- 12. Find employees whose salary is between 45,000 and 60,000
SELECT * 
FROM Employees
WHERE Salary BETWEEN 45000 AND 60000;

-- 13. Show the department name of each employee (JOIN query)
SELECT e.EmpID, e.EmpName, d.DeptName
FROM Employees e
JOIN Departments d ON e.DeptID = d.DeptID;

-- 14. Find the number of employees in each department
SELECT DeptID, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DeptID;

-- 15. Display all employees, including those without a department (LEFT JOIN)
SELECT e.EmpID, e.EmpName, d.DeptName
FROM Employees e
LEFT JOIN Departments d ON e.DeptID = d.DeptID;