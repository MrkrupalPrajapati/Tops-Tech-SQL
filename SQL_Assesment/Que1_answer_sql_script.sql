--   NAMe krupal prajapati :- 


-- Assesment work

-- create the database :- 
CREATE DATABASE try; 
USE try;

-- cretae the table employee --
CREATE TABLE employees (Employee_id INT AUTO_INCREMENT PRIMARY KEY, 
						name VARCHAR (100),
						position VARCHAR (100), 
						salary DECIMAL (10, 2), 
                        hire_date DATE
						); 
                        
-- create the table Employee_audit 
CREATE TABLE employee_audit (audit_id INT AUTO_INCREMENT PRIMARY KEY,
							 employee_id INT,
							 name VARCHAR(100),
							 position VARCHAR(100),
							 salary DECIMAL(10 , 2 ),
							 hire_date DATE,
							 action_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
                             ); 
 
 -- insert the data in to employees table ;- 
INSERT INTO employees (name, position, salary, hire_date) VALUES ('John Doe',
'Software Engineer', 80000.00, '2022-01-15'),
('Jane Smith', 'Project Manager', 90000.00, '2021-05-22'),
('Alice Johnson', 'UX Designer', 75000.00, '2023-03-01'); 



-- select the both table 
select * from employees;
select * from employee_audit;



-- Trigger that automatically set the input data directly  to employees table when inputing in employee_audit :- 
delimiter //
create trigger emp_entry after insert on employee_audit for each row 
begin 
    insert into employees value(new.employee_id, new.name, new.position, new.salary, new.hire_date);
end //

describe employees;
