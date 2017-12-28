-- Drops the "bamazon_db" database if it exists currently --
DROP DATABASE IF EXISTS bamazon_db;
-- Creates the "bamazon_db" database --
CREATE DATABASE bamazon_db;
-- Makes it so all of the following code will affect bamazon_db --
USE bamazon_db;

-- Creates the table "products" within bamazon_db --
CREATE TABLE products(
      -- Creates a numeric column called "adidas_id" which will automatically increment its default value as we create new rows --
    adidas_id INTEGER (12) AUTO_INCREMENT NOT NULL,
    -- unique id for each product --
    product_make VARCHAR(100) NOT NULL,
	-- product_style --
    product_style VARCHAR(50) NOT NULL,
    -- product_price --
    product_price DECIMAL(10,2) NOT NULL,
    -- product_quantity --
	product_quantity INT(10) NOT NULL,

      -- Sets "adidas_id" as this table's primary key which means all data contained within it will be unique --
    PRIMARY KEY(adidas_id)
);

-- Select from products --
SELECT * FROM products;

-- Creates new rows in products table containing data in all named columns --
INSERT INTO products(product_make,product_style,product_price,product_quantity)
VALUES
    -- Firm Ground Cleats --
    ("Nemeziz","Firm Ground Cleats",289.99,150),
    ("Copa","Firm Ground Cleats",199.99,35),
    ("Predator","Firm Ground Cleats",299.99,230);
    ("Copa Mundial","Firm Ground Cleats",149.99,175),
    -- Soft Ground Cleats --
    ("World Cup","Soft Ground Cleats",159.99,200),
    -- Artificial Grass Cleats --
    ("360 Agility","Artificial Grass Cleats",199.99,155),
    -- Turf Cleats --
    ("Predator Tango","Turf",179.99,135),
    ("Mundial Team","Turf Cleats",94.99,142),
    ("Ace Tango","Turf Cleats",64.99,125),
    ("Copa Tango","Turf Cleats",139.99,157),
    -- Indoor --
    ("Samba","Indoor Shoe",95.50,135),
    ("Mundial Goal","Indoor Shoe",119.95,123);

-- Creates new rows in the department table containing data in all named columns --
CREATE TABLE department(
    -- 
    department_id INTEGER AUTO_INCREMENT NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    overhead_costs DECIMAL(10,2) NOT NULL,
    total_sales DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(department_id));

INSERT INTO department(department_name, overhead_costs, total_sales)
VALUES ('Soft Ground Cleats', 50000.00, 15000.00),
    ('ELECTRONICS', 20000.00, 12000.00),
    ('HOME', 30000.00, 15000.00),
    ('BODY & HEALTH', 3000.00, 12000.00),
    ('Firm Ground Cleats', 1200.00, 15000.00),
    ('KIDS', 40000.00, 12000.00),
    ('Turf', 35000.00, 15000.00),
    ('Indoor', 12000.00, 12000.00);
