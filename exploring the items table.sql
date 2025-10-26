USE restaurant_db;

-- viewing menu items
SELECT * FROM menu_items;

-- finding no of items in table
SELECT COUNT(*) FROM menu_items;

-- least and most expensive items
SELECT * FROM menu_items
ORDER BY price;

SELECT * FROM menu_items
ORDER BY price DESC;

-- italian dishes on menu
SELECT COUNT(*) FROM menu_items
WHERE category = "Italian";

-- least and most expenssive talian dises
SELECT * FROM menu_items 
WHERE category = "Italian"
ORDER BY price;

SELECT * FROM menu_items 
WHERE category = "Italian"
ORDER BY price DESC;

-- how many dishes are in every category
SELECT category, COUNT(category) as num_dishes
FROM menu_items
GROUP BY category;

-- average price within each category
SELECT category, AVG(price) as avg_price
FROM menu_items
GROUP BY category;




