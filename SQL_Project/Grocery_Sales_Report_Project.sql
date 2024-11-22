CREATE DATABASE GrocerySales;
USE GrocerySales;

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Category VARCHAR(100),
    Price DECIMAL(10, 2) NOT NULL,
    Stock INT NOT NULL
);

-- Insert 20 Products
INSERT INTO Products (ProductName, Category, Price, Stock)
VALUES
    ('Apple', 'Fruits', 1.20, 100),
    ('Banana', 'Fruits', 0.50, 150),
    ('Orange', 'Fruits', 1.50, 120),
    ('Mango', 'Fruits', 2.00, 80),
    ('Milk', 'Dairy', 1.00, 200),
    ('Cheese', 'Dairy', 4.50, 120),
    ('Butter', 'Dairy', 3.00, 200),
    ('Yogurt', 'Dairy', 1.50, 150),
    ('Bread', 'Bakery', 1.50, 50),
    ('Cake', 'Bakery', 5.00, 30),
    ('Tomato', 'Vegetables', 1.20, 150),
    ('Potato', 'Vegetables', 0.90, 250),
    ('Onion', 'Vegetables', 1.00, 300),
    ('Spinach', 'Vegetables', 1.20, 180),
    ('Carrot', 'Vegetables', 0.80, 180),
    ('Cabbage', 'Vegetables', 1.00, 130),
    ('Chicken', 'Meat', 5.00, 100),
    ('Fish', 'Meat', 7.00, 80),
    ('Rice', 'Grains', 2.50, 500),
    ('Salt', 'Staples', 0.50, 1000);
    
    CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(255) NOT NULL,
    ContactNumber VARCHAR(15),
    Email VARCHAR(255),
    Address VARCHAR(500)
);

-- Insert 20 Customers
INSERT INTO Customers (CustomerName, ContactNumber, Email, Address)
VALUES
    ('John Doe', '1234567890', 'john.doe@example.com', '123 Main St, Citytown'),
    ('Jane Smith', '0987654321', 'jane.smith@example.com', '456 Elm St, Villagetown'),
    ('Alice Brown', '1112223333', 'alice.brown@example.com', '789 Pine St, Capitol City'),
    ('Robert White', '4445556666', 'robert.white@example.com', '101 Maple Ave, Townsville'),
    ('Michael Green', '9876543210', 'michael.green@example.com', '111 Birch Rd, Suburbia'),
    ('Laura Johnson', '5556667777', 'laura.johnson@example.com', '212 Oak Rd, Urbanville'),
    ('William Harris', '8889990000', 'william.harris@example.com', '707 Walnut Ln, Lakeside'),
    ('Emily Clark', '1231231234', 'emily.clark@example.com', '202 Cedar Dr, Smalltown'),
    ('James Miller', '2342342345', 'james.miller@example.com', '909 Palm Ave, Rivertown'),
    ('Sophia Wilson', '3453453456', 'sophia.wilson@example.com', '313 Spruce St, Uptown'),
    ('Daniel Lewis', '4564564567', 'daniel.lewis@example.com', '404 Poplar Ct, Midtown'),
    ('Grace Walker', '5675675678', 'grace.walker@example.com', '515 Hickory Rd, Forestville'),
    ('Henry Robinson', '6786786789', 'henry.robinson@example.com', '606 Cherry Ln, Bayview'),
    ('Liam Martinez', '7897897890', 'liam.martinez@example.com', '707 Maple St, Downtown'),
    ('Olivia Davis', '8908908901', 'olivia.davis@example.com', '808 Ash Blvd, Brookside'),
    ('Ethan Hall', '9019019012', 'ethan.hall@example.com', '909 Birch Rd, Mountainview'),
    ('Ava Allen', '0120120123', 'ava.allen@example.com', '101 Pine St, Beachville'),
    ('Mason Young', '3453453456', 'mason.young@example.com', '111 Oak St, Creekside'),
    ('Isabella Scott', '2342342345', 'isabella.scott@example.com', '222 Elm St, Valleytown'),
    ('Noah Hernandez', '1231231234', 'noah.hernandez@example.com', '333 Palm Dr, Cliffside'),
    ('Charlotte Evans', '6543219870', 'charlotte.evans@example.com', '44 Oakwood Dr, Westview'),
    ('Amelia Parker', '7654321980', 'amelia.parker@example.com', '56 Maple Ave, Greenfield'),
    ('Lucas Carter', '8765432109', 'lucas.carter@example.com', '78 Birch Rd, Hilltown'),
    ('Mia Brooks', '9876543210', 'mia.brooks@example.com', '90 Willow Ln, Riverview'),
    ('Harper Gonzalez', '9988776655', 'harper.gonzalez@example.com', '12 Aspen St, Sunnyvale'),
    ('Ella Anderson', '8877665544', 'ella.anderson@example.com', '23 Chestnut Ct, Riverdale'),
    ('Jack Rivera', '7766554433', 'jack.rivera@example.com', '34 Spruce Dr, Meadowland'),
    ('Lily Perez', '6655443322', 'lily.perez@example.com', '45 Pine Blvd, Woodside'),
    ('Benjamin Sanders', '5544332211', 'benjamin.sanders@example.com', '56 Hickory Rd, Cliffton'),
    ('Zoe Adams', '4433221100', 'zoe.adams@example.com', '67 Elm St, Maplewood'),
    ('Sebastian Cooper', '3322110099', 'sebastian.cooper@example.com', '78 Cedar Ln, Lakeside'),
    ('Hannah Ramirez', '2211009988', 'hannah.ramirez@example.com', '89 Walnut St, Uptown'),
    ('Oliver Clark', '1100998877', 'oliver.clark@example.com', '91 Aspen Ave, Mountainview'),
    ('Avery Phillips', '0099887766', 'avery.phillips@example.com', '101 Oak Ct, Valleyview'),
    ('Evelyn Turner', '1987654321', 'evelyn.turner@example.com', '202 Birch Dr, Brookhaven'),
    ('Jacob Morris', '2987654321', 'jacob.morris@example.com', '303 Willow Blvd, Southside'),
    ('Sofia Martinez', '3987654321', 'sofia.martinez@example.com', '404 Maple Ln, Forest Hill'),
    ('Mason Hughes', '4987654321', 'mason.hughes@example.com', '505 Poplar Rd, Northview'),
    ('Layla Bennett', '5987654321', 'layla.bennett@example.com', '606 Cherry Ave, Suburbia'),
    ('William Reed', '6987654321', 'william.reed@example.com', '707 Spruce St, Urbanville');
    
    select * from Customers;
    
CREATE TABLE Sales (
    SaleID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    SaleDate DATE NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


INSERT INTO Sales (CustomerID, ProductID, Quantity, TotalAmount, SaleDate)
VALUES
	(1, 1, 5, 6.00, '2024-11-01'), -- John Doe buys 5 Apples
    (2, 2, 10, 5.00, '2024-11-02'), -- Jane Smith buys 10 Bananas
    (3, 3, 4, 6.00, '2024-11-03'), -- Alice Brown buys 4 Oranges
    (4, 4, 3, 6.00, '2024-11-04'), -- Robert White buys 3 Mangoes
    (5, 5, 12, 12.00, '2024-11-05'), -- Michael Green buys 12 Milk bottles
    (6, 6, 2, 9.00, '2024-11-06'), -- Laura Johnson buys 2 Cheese blocks
    (7, 7, 3, 9.00, '2024-11-07'), -- William Harris buys 3 Butter packs
    (8, 8, 5, 7.50, '2024-11-08'), -- Emily Clark buys 5 Yogurt cups
    (9, 9, 8, 12.00, '2024-11-09'), -- James Miller buys 8 Bread loaves
    (10, 10, 1, 5.00, '2024-11-10'), -- Sophia Wilson buys 1 Cake
    (11, 11, 6, 7.20, '2024-11-11'), -- Daniel Lewis buys 6 Tomatoes
    (12, 12, 10, 9.00, '2024-11-12'), -- Grace Walker buys 10 Potatoes
    (13, 13, 15, 15.00, '2024-11-13'), -- Henry Robinson buys 15 Onions
    (14, 14, 5, 6.00, '2024-11-14'), -- Liam Martinez buys 5 Spinach bunches
    (15, 15, 8, 6.40, '2024-11-15'), -- Olivia Davis buys 8 Carrots
    (16, 16, 7, 7.00, '2024-11-16'), -- Ethan Hall buys 7 Cabbages
    (17, 17, 2, 10.00, '2024-11-17'), -- Ava Allen buys 2 Chickens
    (18, 18, 1, 7.00, '2024-11-18'), -- Mason Young buys 1 Fish
    (19, 19, 10, 25.00, '2024-11-19'), -- Isabella Scott buys 10 Rice packets
    (20, 20, 20, 10.00, '2024-11-20'),
    (21, 1, 8, 9.60, '2024-11-21'), -- Charlotte Evans buys 8 Apples
    (22, 2, 6, 3.00, '2024-11-22'), -- Amelia Parker buys 6 Bananas
    (23, 3, 5, 7.50, '2024-11-23'), -- Lucas Carter buys 5 Oranges
    (24, 4, 4, 8.00, '2024-11-24'), -- Mia Brooks buys 4 Mangoes
    (25, 5, 15, 15.00, '2024-11-25'), -- Harper Gonzalez buys 15 Milk bottles
    (26, 6, 3, 13.50, '2024-11-26'), -- Ella Anderson buys 3 Cheese blocks
    (27, 7, 2, 6.00, '2024-11-27'), -- Jack Rivera buys 2 Butter packs
    (28, 8, 6, 9.00, '2024-11-28'), -- Lily Perez buys 6 Yogurt cups
    (29, 9, 12, 18.00, '2024-11-29'), -- Benjamin Sanders buys 12 Bread loaves
    (30, 10, 2, 10.00, '2024-11-30'), -- Zoe Adams buys 2 Cakes
    (31, 11, 9, 10.80, '2024-12-01'), -- Sebastian Cooper buys 9 Tomatoes
    (32, 12, 7, 6.30, '2024-12-02'), -- Hannah Ramirez buys 7 Potatoes
    (33, 13, 20, 20.00, '2024-12-03'), -- Oliver Clark buys 20 Onions
    (34, 14, 10, 12.00, '2024-12-04'), -- Avery Phillips buys 10 Spinach bunches
    (35, 15, 12, 9.60, '2024-12-05'), -- Evelyn Turner buys 12 Carrots
    (36, 16, 8, 8.00, '2024-12-06'), -- Jacob Morris buys 8 Cabbages
    (37, 17, 3, 15.00, '2024-12-07'), -- Sofia Martinez buys 3 Chickens
    (38, 18, 4, 28.00, '2024-12-08'), -- Mason Hughes buys 4 Fish
    (39, 19, 25, 62.50, '2024-12-09'), -- Layla Bennett buys 25 Rice packets
    (40, 20, 50, 25.00, '2024-12-10'); -- William Reed buys 50 Salt packet
  
  INSERT INTO Sales (CustomerID, ProductID, Quantity, TotalAmount, SaleDate)
VALUES(23,18,50,350,'2024-12-06');

DELETE FROM Sales where SaleID = 1; 

-- 0) View of each table :- 
    select * from Sales;
    select * from customers;
    select * from products;
    

-- 1)  List the products that have a stock less than 100
select stock , ProductName from products where stock < 100;

-- 2) Find the average sales per day
select  Avg(TotalAmount) , SaleDate from sales 
group by saleDate;

-- 3) find the most expensive product in each category
select Category, max(price) as maximum_price from products
group by Category;

-- 4) List all products in a specific category (e.g., Dairy)
SELECT ProductName , Price , Stock
FROM Products
WHERE Category = 'Dairy';

-- 5) Find the number of customers who bought more than 1 different products

select customerID, count(distinct productID) as Total_order  from sales 
group by customerID
having Total_order > 1;


-- 6) Find the customer who made the most purchases
select c.CustomerID , c.customerName,SUM(s.TotalAmount) as total_spent from sales s 
join Customers c on c.CustomerID = s.CustomerID
Group by c.CustomerID
order by total_spent desc
limit  1;


-- 7)   Find the total sales for each customer
select sum(s.TotalAmount) as TOTAL_AMOUNT, c.CustomerName from customers c  
join sales s on c.CustomerID = s.CustomerID
Group by C.CustomerID;

-- 8) Get the details of the top-selling products by total quantity sold

select p.productName , sum(s.quantity) as Total_Qty from sales s
join products p on p.productID = s.productID
group by p.productID
order by Total_qty Desc;

-- 9)  Display the total sales amount for each product

select p.productName , sum(s.TotalAmount) as Total_sale from sales s
join products p on s.ProductID = p.ProductID group by p.productName;


-- 10)  Get the total sales amount for each category

select p.Category , sum(TotalAmount) as Total_SALE from sales s 
join products p on p.productID = s.productID
group by p.Category
order by Total_SALE DESC;

-- select p.Category , COUNT(Quantity) as Total_qty from sales s 
-- join products p on p.productID = s.productID
-- group by p.Category
-- order by Total_qty DESC;

-- 11) Create a procedure which takes a input of the product and reflect the customers name who brought the product 

 DELIMITER //

CREATE PROCEDURE SHOW_CUSTOMER_BY_PRODUCT(PRODUCT_NAME VARCHAR(20))
BEGIN

SELECT c.CustomerName from sales s 
join  customers c on s.CustomerID = c.CustomerID
join products p on s.ProductID = p.ProductID
where p.productName = PRODUCT_NAME;

END // 
DELIMITER ;

/**  category wise customer Details :- 
SELECT c.CustomerName from sales s 
join  customers c on s.CustomerID = c.CustomerID
join products p on s.ProductID = p.ProductID
where p.category = 'Dairy'; **/


-- 12) Create such a procedure which Restock the product stock :- 

Delimiter // 
create procedure Restock_product(prod_name varchar(20),restock_value int)
begin

	UPDATE products 
SET 
    Stock = Stock + restock_value
WHERE
    ProductName = prod_name;

end //
delimiter ; 

-- call grocerysales.Restock_product('Cake', 30); 
-- select * from products where productName = 'Cake';  <-- Output view 



--  13) Create such a procedure which gives you daily Sales Report

Delimiter // 
create Procedure Daily_Sales_Report (report_date date)
begin

select p.productName , sum(s.Quantity) as Total_QTY , sum(s.TotalAmount) AS total_sale from sales s
join products p on p.productID = s.productID
where saleDate = report_date
group by p.productID;


end // 
delimiter ;

-- call grocerysales.Daily_Sales_Report('2024-12-06'); <-- OUTPUT VIEW


--  14)  Create such a trigger which store the logs of Deleted customers :-

CREATE TABLE CustomerLog (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    CustomerName VARCHAR(255),
    DeletedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

delete FROM customers where CustomerID = 1;
 
delimiter //
CREATE TRIGGER LogCustomerDeletion
AFTER DELETE ON Customers
FOR EACH ROW
BEGIN
    INSERT INTO CustomerLog (CustomerID, CustomerName)
    VALUES (OLD.CustomerID, OLD.CustomerName);
END;



-- 15)  Create such a trigger which store the logs of updated quentity of saled Product :-
CREATE TABLE SalesAudit (
    AuditID INT AUTO_INCREMENT PRIMARY KEY,
    SaleID INT,
    OldQuantity INT,
    NewQuantity INT,
    ChangeDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

delimiter //
CREATE TRIGGER TrackSalesUpdates
BEFORE UPDATE ON Sales
FOR EACH ROW
BEGIN
    INSERT INTO SalesAudit (SaleID, OldQuantity, NewQuantity)
    VALUES (OLD.SaleID, OLD.Quantity, NEW.Quantity);
END;

-- update sales set quantity = 10 where saleID = 10;  < --  update the one record soo it will add to saleAudit table 
-- select * from saleAudit; 


			-----  S  -----  A  ----- L  -----  E  -----  S ---- R ----- E  ----- P  ------ O  ------  R  ------ T ------