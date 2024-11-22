create database contact_management;
use contact_management;

-- Create the database and switch to it



-- Create the Company table to store company information
CREATE TABLE Company (
    companyID INT AUTO_INCREMENT PRIMARY KEY, -- Primary key for the company
    companyName VARCHAR(30) NOT NULL,         -- Name of the company
    street VARCHAR(20) NOT NULL,              -- Street address
    city VARCHAR(20) NOT NULL,                -- City
    state VARCHAR(20) NOT NULL,               -- State
    zip INT NOT NULL                          -- ZIP code
);

-- Insert data into the Company table
INSERT INTO Company (companyName, street, city, state, zip)
VALUES
('Tech Corp', '123 Main St', 'San Francisco', 'CA', 94101),  -- Company 1 details
('Health Inc', '456 Elm St', 'Austin', 'TX', 73301),         -- Company 2 details
('EduWorld', '789 Pine Ave', 'Seattle', 'WA', 98101);        -- Company 3 details

-- Create the Employee table to store employee details
CREATE TABLE Employee (
    Employee_id INT AUTO_INCREMENT PRIMARY KEY,   -- Primary key for employees
    First_name VARCHAR(20) NOT NULL,              -- Employee's first name
    last_name VARCHAR(20) NOT NULL,               -- Employee's last name
    Salary DECIMAL(10,2),                         -- Employee's salary
    HireDate DATE,                                -- Employee's hire date
    jobTitle VARCHAR(30),                         -- Employee's job title
    Email VARCHAR(20),                            -- Employee's email
    Phone VARCHAR(10),                            -- Employee's phone number
    CONSTRAINT Check_phone_num                    -- Constraint to validate phone number
        CHECK (phone REGEXP '^[0-9]{10}$')        -- Ensure the phone number has exactly 10 digits
);

-- Insert data into the Employee table
INSERT INTO Employee (First_name, last_name, Salary, HireDate, jobTitle, Email, Phone)
VALUES
('John', 'Doe', 75000.00, '2022-05-01', 'Manager', 'john@techcorp.com', '7845373456'),  -- Employee 1 details
('Jane', 'Smith', 60000.00, '2023-02-15', 'Developer', 'jane@healthinc.com', '9453627856'), -- Employee 2 details
('Emily', 'Clark', 55000.00, '2021-11-12', 'Analyst', 'emily@eduworld.com', '9904545281'); -- Employee 3 details

-- Create the Contact table to store contact information
CREATE TABLE Contact (
    contactId INT AUTO_INCREMENT PRIMARY KEY,       -- Primary key for contacts
    companyId INT,                                  -- Foreign key referencing the company
    First_name VARCHAR(20) NOT NULL,               -- Contact's first name
    last_name VARCHAR(20) NOT NULL,                -- Contact's last name
    Street VARCHAR(20) NOT NULL,                   -- Street address
    city VARCHAR(20) NOT NULL,                     -- City
    state VARCHAR(20) NOT NULL,                    -- State
    zip INT NOT NULL,                              -- ZIP code
    isMain BOOLEAN,                                -- Whether the contact is the main contact
    Email VARCHAR(20),                             -- Contact's email
    Phone VARCHAR(10),                             -- Contact's phone number
    CONSTRAINT Check_phone                         -- Constraint to validate phone number
        CHECK (phone REGEXP '^[0-9]{10}$'),        -- Ensure the phone number has exactly 10 digits
    FOREIGN KEY (companyId) REFERENCES Company(companyID) -- Link contact to company
);

drop table contact;

-- Insert data into the Contact table
INSERT INTO Contact (companyId, First_name, last_name, Street, city, state, zip, isMain, Email, Phone)
VALUES
(1, 'Alice', 'Brown', '123 Tech Lane', 'San Francisco', 'CA', 94101, TRUE, 'a@techcorp.com', '1112223333'), -- Contact 1
(2, 'Michael', 'Green', '456 Health Blvd', 'Austin', 'TX', 73301, FALSE, 'm@healthinc.com', '2223334444'), -- Contact 2
(3, 'Sophia', 'Lee', '789 Edu Street', 'Seattle', 'WA', 98101, TRUE, 's@eduworld.com', '3334445555'); -- Contact 3

-- Create the ContactEmployee table to link contacts with employees
CREATE TABLE ContactEmployee (
    ConatctEmployeeId INT AUTO_INCREMENT PRIMARY KEY, -- Primary key for ContactEmployee
    contactId INT,                                    -- Foreign key referencing Contact table
    Employee_id INT,                                  -- Foreign key referencing Employee table
    ContactDate DATE,                                 -- Date of the contact
    Description VARCHAR(100),                        -- Description of the contact
    FOREIGN KEY (contactId) REFERENCES Contact(contactId), -- Link to Contact table
    FOREIGN KEY (Employee_id) REFERENCES Employee(Employee_id) -- Link to Employee table
);

drop table ContactEmployee;

-- Insert data into the ContactEmployee table
-- Fix column name for consistency
ALTER TABLE Contact CHANGE conatctId contactId INT AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE ContactEmployee CHANGE conatctId contactId INT;

-- Now insert the data again
INSERT INTO ContactEmployee (contactId, Employee_id, ContactDate, Description)
VALUES
(1, 1, '2023-06-10', 'Discussed project collaboration'),
(2, 2, '2023-07-20', 'Negotiated contract details'),
(3, 3, '2023-08-15', 'Explored potential partnership opportunities');


-- Ansewer 1 )  Create contact Table :- 
select * from contact;

-- Answer 2) Create Employee Table :- 
select * from Employee;

-- Answer 3)  Create ContactEmployee Table :- 
select * from  contactemployee;

-- Answer 4) In the Employee table, the statement that changes Lesley Bland’s phone number to 215-555-8800 
Update employee set phone = '9988774433' where employee_id = 1;
select * from employee;  -- OUTPUT VIEW <--

-- Answer 5)  Change the comapny name Tech Corp  to TOPS TECH PVT LTD
select * from company;
UPDATE company set companyName = "TOPS_TECH_PVT_LTD" where companyID = 1;  

-- Answer 6) Remove a specific contact event from ContactEmployee 

DELETE FROM ContactEmployee
WHERE contactId = (
    SELECT contactId
    FROM Contact
    WHERE First_name = 'Alice' AND last_name = 'Brown' AND companyId = 1
)
AND Employee_id = (
    SELECT Employee_id
    FROM Employee
    WHERE First_name = 'John' AND last_name = 'Doe'
);

-- Answer 7) Write the SQL SELECT query that displays the names of the employees that have contacted Toll Brothers (one statement). Run the SQL SELECT query in MySQL Workbench. Copy the results below as well.

SELECT e.First_name, e.last_name
FROM Employee e
JOIN ContactEmployee ce ON e.Employee_id = ce.Employee_id
JOIN Contact c ON ce.contactId = c.contactId
JOIN Company co ON c.companyId = co.companyID
WHERE co.companyName = 'TOPS_TECH_PVT_LTD';