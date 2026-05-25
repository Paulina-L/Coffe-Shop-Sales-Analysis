# Choose database
USE coffee_shop_sales;

# Creating table -> .csv file was already formatted in excel
/*
CREATE TABLE coffee_shop_sales_data (
    transaction_id INT,
    transaction_date DATE,
    transaction_time TIME,
    transaction_qty INT,
    store_id INT,
    store_location VARCHAR(100),
    product_id INT,
    unit_price DECIMAL(10, 2),
	product_category VARCHAR(100),
	product_type VARCHAR(100),
	product_detail VARCHAR(100)
);
*/

/* 
# Problems and solutons: 
# SET GLOBAL local_infile = 1; # there was issue with permissions
# Windows - path slashes -> /
*/

# Importing .csv data into created table

TRUNCATE TABLE coffee_shop_sales_data; # Truncate to clear any unnecessary data

LOAD DATA LOCAL INFILE "C:/Users/pauli/OneDrive/Power BI SQL Projects/Coffee Shop/Coffee Shop Sales.csv"
INTO TABLE coffee_shop_sales_data
FIELDS TERMINATED BY ';'        -- Changed from ',' to ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    transaction_id, 
    transaction_date,
    transaction_time, 
    transaction_qty, 
    store_id, 
    store_location, 
    product_id, 
    @var_unit_price,    # set temp value to replace "," with "." later
    product_category, 
    product_type, 
    product_detail
)
SET 
    unit_price = REPLACE(@var_unit_price, ',', '.');


SELECT * FROM coffee_shop_sales_data
