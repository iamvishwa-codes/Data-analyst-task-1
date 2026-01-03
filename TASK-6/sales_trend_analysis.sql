USE dummy;

DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id BIGINT,
    order_date DATE,
    amount DECIMAL(14,2)
);


TRUNCATE TABLE orders;

LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sales_clean.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
 @region,
 @country,
 @item_type,
 @sales_channel,
 @order_priority,
 @order_date,
 @order_id,
 @ship_date,
 @units_sold,
 @unit_price,
 @unit_cost,
 @total_revenue,
 @total_cost,
 @total_profit
)
SET
order_id   = @order_id,
order_date = STR_TO_DATE(@order_date, '%m/%d/%Y'),
amount     = @total_revenue;



SELECT COUNT(*) AS total_rows FROM orders;
SELECT * FROM orders LIMIT 5;
SELECT order_date FROM orders LIMIT 5;

SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(amount) AS total_revenue
FROM orders
GROUP BY year, month
ORDER BY year, month;

SHOW VARIABLES LIKE 'secure_file_priv';

