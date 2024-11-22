use try;

CREATE TABLE employees (
    Employee_id INT AUTO_INCREMENT PRIMARY KEY,  
    name VARCHAR(100),                           
    position VARCHAR(100),                       
    salary DECIMAL(10, 2),                       
    hire_date DATE                               
);

CREATE TABLE employee_audit (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,     
    employee_id INT,                             
    name VARCHAR(100),                           
    position VARCHAR(100),                       
    salary DECIMAL(10, 2),                       
    hire_date DATE,                              
    action_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP  
);

select * from employees;
select * from employee_audit;
DELIMITER //

CREATE PROCEDURE AddNewEmployee(
    IN emp_name VARCHAR(100),
    IN emp_position VARCHAR(100),
    IN emp_salary DECIMAL(10, 2),
    IN emp_hire_date DATE
)
BEGIN
    -- Insert the new employee into the employees table
    INSERT INTO employees (name, position, salary, hire_date)
    VALUES (emp_name, emp_position, emp_salary, emp_hire_date);

    -- Fetch the last inserted Employee_id
    SET @last_id = LAST_INSERT_ID();

    -- Log the action into the employee_audit table
    INSERT INTO employee_audit (employee_id, name, position, salary, hire_date)
    VALUES (@last_id, emp_name, emp_position, emp_salary, emp_hire_date);
END//

DELIMITER ;






