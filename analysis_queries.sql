SELECT SUM(p.price * od.quantity)AS total_sales
FROM order_details od
JOIN products p
on od.product_id = p.product_id;
---- sales by category
SELECT P.category,
       SUM(p.price*od.quantity)AS category_sales
FROM order_details od
JOIN products p ON od.product_id= p.product_id
GROUP BY p.category;
------top selling product
SELECT p.product_name,
       SUM(od.quantity) AS total_quantity
FROM order_details od
JOIN products p ON od.product_id=p.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC
LIMIT 1;
----------------
SELECT c.name,
	   SUM(p.price * od.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 1;
