
/*Challenge 6 — INNER JOIN
Show customer name and product purchased.*/
SELECT c.name, p.product_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;


/*Challenge 7 — LEFT JOIN
Show all customers, even those without orders.*/
SELECT c.name, o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;


/*Challenge 8 — RIGHT JOIN
Show all products, even if not ordered.*/
SELECT p.product_name, o.order_id
FROM orders o
RIGHT JOIN products p ON o.product_id = p.product_id;


/*Challenge 9 — FULL JOIN
Show all customers and orders, matched or not.*/
SELECT c.name, o.order_id
FROM customers c
FULL JOIN orders o ON c.customer_id = o.customer_id;


