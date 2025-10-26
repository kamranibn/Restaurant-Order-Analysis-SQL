USE restaurant_db;

-- combining order_details table and menu_details table into one
SELECT * FROM order_details;
SELECT * FROM menu_items;

SELECT *
FROM order_details od LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id;

-- least and most ordered items and what categories were they in?
SELECT item_name, category,COUNT(order_details_id) as num_purchases
FROM order_details od LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY item_name,category
ORDER BY num_purchases;

SELECT item_name,category, COUNT(order_details_id) as num_purchases
FROM order_details od LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY item_name, category 
ORDER BY num_purchases DESC;


-- what were the top 5 orders that spend the most money

SELECT order_id, SUM(price) as total_money
FROM order_details od LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY total_money DESC
LIMIT 5;


-- view the details of highest spend order and what insights can you get from it
SELECT category, COUNT(item_id) as num_items
FROM order_details od LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id 
WHERE order_id =440
GROUP BY category;


-- view the details of top 5 highest spend order and what insights can you get from them
SELECT category,order_id, COUNT(item_id) as num_items
FROM order_details od LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id 
WHERE order_id IN (440,2075,1957,330,2675)
GROUP BY category,order_id;

