#DATABASE_SETUP
CREATE DATABASE IF NOT EXISTS ecommerce_olist;
USE ecommerce_olist;


#TABLES

CREATE TABLE customers (
    customer_id VARCHAR(50),
    customer_city VARCHAR(50),
    customer_state VARCHAR(10)
);

CREATE TABLE orders (
    order_id VARCHAR(50),
    customer_id VARCHAR(50),
    order_status VARCHAR(20)
);

CREATE TABLE order_items (
    order_id VARCHAR(50),
    product_id VARCHAR(50),
    price DECIMAL(10,2),
    freight_value DECIMAL(10,2)
);

CREATE TABLE products (
    product_id VARCHAR(50),
    category VARCHAR(100),
    weight_g INT
);


#DATA_IMPORT
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customers_clean.csv'
INTO TABLE customers
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/orders_clean.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/order_items_clean.csv'
INTO TABLE order_items
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/products_clean.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;


#QUERIES
#Basic SELECT

SELECT * FROM customers LIMIT 5;
SELECT * FROM orders LIMIT 5;
SELECT * FROM order_items LIMIT 5;
SELECT * FROM products LIMIT 5;


#SELECT_WHERE_GROUPBY_ORDERBY
SELECT customer_city, COUNT(*) AS total_customers
FROM customers
GROUP BY customer_city
ORDER BY total_customers DESC;


#JOINS
SELECT c.customer_city, o.order_id, o.order_status
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
LIMIT 10;

#SUBQUERIES
SELECT DISTINCT customer_id
FROM orders
WHERE order_id IN (
    SELECT order_id
    FROM order_items
    WHERE price > 1000
);


#AGGREGATIONS
SELECT 
    SUM(price + freight_value) AS total_revenue,
    AVG(price) AS avg_product_price
FROM order_items;


#VIEWS
CREATE VIEW category_sales AS
SELECT p.category,
       SUM(oi.price) AS total_sales
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.category;

SELECT * FROM category_sales
ORDER BY total_sales DESC;


#INDEXES
CREATE INDEX idx_customer_id ON orders(customer_id);
CREATE INDEX idx_product_id ON order_items(product_id);


#QUERY_OPTIMIZATION
EXPLAIN
SELECT c.customer_city, o.order_id
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;
