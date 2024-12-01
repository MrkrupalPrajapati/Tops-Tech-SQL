create database db;
use db;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    DepartmentID INT
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID)
VALUES 
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', NULL),
(4, 'David', 103);

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES 
(101, 'HR'),
(102, 'IT'),
(104, 'Finance');

select * from employees;

select * from departments;
	
-- inner join 
select  e.employeeID,e.EmployeeName  , d.DepartmentName 
FROM EMPLOYEES e
join departments d 
on e.departmentID = d.departmentID;

-- left join 
select  e.employeeID,e.EmployeeName  , d.DepartmentName 
FROM EMPLOYEES e
left join departments d 
on e.departmentID = d.departmentID;

-- Right join
select  e.employeeID,e.EmployeeName  , d.DepartmentName 
FROM EMPLOYEES e
Right join departments d 
on e.departmentID = d.departmentID;


-- full join :-
select  e.employeeID,e.EmployeeName  , d.DepartmentName 
FROM EMPLOYEES e
left join departments d 
on e.departmentID = d.departmentID 
union 
select  e.employeeID,e.EmployeeName  , d.DepartmentName 
FROM EMPLOYEES e
Right join departments d 
on e.departmentID = d.departmentID;


-- Cross join :-

select  e.employeeID,e.EmployeeName  , d.DepartmentName 
FROM EMPLOYEES e
CROSS join departments d ;


-- SELF JOIN :-
select a.employeename as employee_1 ,
b.employeename as employee_2, a.departmentID 
from employees a 
INNER join employees b 
on a.departmentID = b.departmentID
where a.employeeID < b.employeeID;

select * from employees;