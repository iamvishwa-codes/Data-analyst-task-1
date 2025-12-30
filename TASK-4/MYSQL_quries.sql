CREATE DATABASE ecommerce_olist;
USE ecommerce_olist;

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
SELECT * FROM customers LIMIT 5;
SELECT * FROM orders LIMIT 5;
SELECT * FROM order_items LIMIT 5;
SELECT * FROM products LIMIT 5;

SELECT customer_city, COUNT(*) AS total_customers
FROM customers
GROUP BY customer_city
ORDER BY total_customers DESC;

SELECT c.customer_city, o.order_id, o.order_status
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
LIMIT 10;

SELECT 
    SUM(price + freight_value) AS total_revenue,
    AVG(price) AS avg_product_price
FROM order_items;

CREATE VIEW category_sales AS
SELECT p.category,
       SUM(oi.price) AS total_sales
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.category;
SELECT * FROM category_sales
ORDER BY total_sales DESC;

CREATE INDEX idx_customer_id ON orders(customer_id);
CREATE INDEX idx_product_id ON order_items(product_id);

SELECT c.customer_city, o.order_id
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;

SELECT * FROM customers LIMIT 5;
SELECT * FROM orders LIMIT 5;
SELECT * FROM order_items LIMIT 5;
SELECT * FROM products LIMIT 5;

