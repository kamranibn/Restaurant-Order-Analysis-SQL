USE restaurant_db;

-- viewing order details table
SELECT * FROM order_details;

-- date range of table
SELECT MIN(order_date), MAX(order_date) FROM order_details;

-- orders made within this data range
SELECT COUNT(DISTINCT(order_id))  FROM order_details;

-- items ordered within this data range
SELECT COUNT(*) FROM order_details;

-- which orders had most number of items
SELECT order_id, COUNT(item_id) as num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;

-- how many orders have more than 12 items
SELECT COUNT(*) FROM
(SELECT order_id, COUNT(item_id) as num_items
FROM order_details
GROUP BY order_id
HAVING num_items >12) AS num_orders;

