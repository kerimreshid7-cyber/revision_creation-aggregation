
/*Challenge 10 — SUM total sales per customer
GROUP BY single column*/
SELECT c.name,
       SUM(p.price * o.quantity) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.name;
-- here we are using normal join   but if we want we can use left join or any types of joins.


/*Challenge 11 — COUNT orders per city*/
SELECT c.city,
       COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.city;


/*Challenge 12 — AVG order value per product
GROUP BY multiple columns + ORDER BY*/
SELECT p.product_name,
       AVG(p.price * o.quantity) AS avg_order_value
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY avg_order_value DESC;


/*Challenge 13 — HAVING (Advanced aggregation)
Find customers who spent more than 1000.*/
SELECT c.name,
       SUM(p.price * o.quantity) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.name
HAVING SUM(p.price * o.quantity) > 1000;
  /*1 where 'c'  comes from? it just tric we can use abrivation like this customers c.
    2 having is like where but for groups insteade of indivisual rows
     it filteres after the aggregation has been done.*/
