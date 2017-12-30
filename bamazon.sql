-- Drops the "bamazon_db" database if it exists currently --
DROP DATABASE IF EXISTS bamazon_db;
-- Creates the "bamazon_db" database --
CREATE DATABASE bamazon_db;
-- Makes it so all of the following code will affect bamazon_db --
USE bamazon_db;

-- Creates the table "products" within bamazon_db --
CREATE TABLE Products(
      -- Creates a numeric column called "adidas_id" which will automatically increment its default value as we create new rows --
    adidas_id INTEGER (12) AUTO_INCREMENT NOT NULL,
    -- unique id for each product --
    product_make VARCHAR(100) NOT NULL,
	-- product_style --
    product_style VARCHAR(50) NOT NULL,
    -- product_price --
    product_price DECIMAL(65,2) NOT NULL,
    -- product_quantity --
	product_quantity INT(255) NOT NULL,

      -- Sets "adidas_id" as this table's primary key which means all data contained within it will be unique --
    PRIMARY KEY(adidas_id)
);

-- Select from products --
SELECT * FROM Products;

-- Creates new rows in products table containing data in all named columns --
INSERT INTO Products(product_make,product_style,product_price,product_quantity)
VALUES
    -- Firm Ground Cleats --
    ("Nemeziz","Firm Ground Cleats",289.99,15),
    ("Copa","Firm Ground Cleats",199.99,35),
    ("Predator","Firm Ground Cleats",299.99,23),
    ("Copa Mundial","Firm Ground Cleats",149.99,17),
    -- Soft Ground Cleats --
    ("World Cup","Soft Ground Cleats",159.99,20),
    -- Artificial Grass Cleats --
    ("360 Agility","Artificial Grass Cleats",199.99,15),
    -- Turf Cleats --
    ("Predator Tango","Turf",179.99,35),
    ("Mundial Team","Turf Cleats",94.99,42),
    ("Ace Tango","Turf Cleats",64.99,25),
    ("Copa Tango","Turf Cleats",139.99,57),
    -- Indoor --
    ("Samba","Indoor Shoe",95.50,35),
    ("Mundial Goal","Indoor Shoe",119.95,23);

-- Creates new rows in the department table containing data in all named columns --
CREATE TABLE Departments(
    -- 
    department_id INTEGER AUTO_INCREMENT NOT NULL,
    product_style VARCHAR(50) NOT NULL,
    overhead_costs DECIMAL(10,2) NOT NULL,
    total_sales DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(department_id));
    
INSERT INTO Departments(product_style, overhead_costs, total_sales)
VALUES ('Firm Ground Cleats', 50000.00, 15000.00),
    ('Soft Ground Cleats', 20000.00, 12000.00),
    ('Artificial Grass Cleats', 30000.00, 15000.00),
    ('Turf Cleats', 3000.00, 12000.00),
    ('Indoor', 1200.00, 15000.00);

