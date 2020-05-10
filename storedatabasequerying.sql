/* Using expressions in the SELECT clause:
Return all product names, unit price and new price (unit price * 1.1) */
SELECT name, unit_price, unit_price * 1.1 AS 'new_price'
FROM products;

/* WHERE clause:
Return orders placed for the year 2019 */
SELECT * 
FROM orders
WHERE order_date >= '2019-01-01';

/* AND condition:
Return items for order #6 that have total price higher than 30 */
SELECT *
FROM order_items
WHERE order_id = 6 AND (quantity * unit_price) > 30;

/* IN condition:
Return products with quantity in stock equal to 49, 38, 72 */
SELECT * FROM products 
WHERE quantity_in_stock IN (49, 38, 72);

/* BETWEEN clause:
Return customers that have birthdates within 1/1/1990 and 1/1/2000 */
SELECT * 
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';

/* LIKE Operator with Wildcards:
Return addresses containing TRAIL or AVENUE and phone numbers end with 9*/
SELECT *
FROM customers
WHERE address LIKE '%trail%'
OR address LIKE '%avenue%' 
AND phone LIKE '%9';

/*REGEXP:
Return first names that either have elka or ambur. */
SELECT * FROM customers
WHERE first_name REGEXP 'ELKA|AMBUR';

/* Return last names that either end with EY or ON. */
SELECT * FROM customers
WHERE last_name REGEXP 'EY$|ON$';

/* Return last names that either start with MY or containg se*/
SELECT * FROM customers
WHERE last_name REGEXP '^MY|se';

/*Return last names that have b followed either by b or u.*/
SELECT * FROM customers
WHERE last_name REGEXP 'b[ru]';

/* IS NULL operator:
Return unshipped orders*/
SELECT * FROM orders
WHERE shipped_date IS NULL;

/* SORTING:
Return orders with id 2 and sort by total price */
SELECT *, unit_price * quantity AS total_price FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC;

/* LIMIT clause:
Get top 3 loyal customers */
SELECT * FROM customers
ORDER BY points DESC
LIMIT 3;

/* INNER JOIN:
join order_items and products table */
SELECT oi.*, p.name 
FROM order_items oi
JOIN products p
USING (product_id);

/* JOINING MULTIPLE TABLES:
Join payment, payment methods and clients table to show client name and payment method*/
SELECT c.client_id, c.name, pm.name, p.payment_method, p.date
FROM payments p 
JOIN  clients c
USING (client_id)
JOIN payment_methods pm
ON p.payment_method = pm.payment_method_id;

/* OUTER LEFT JOIN:
Join products with order items */
SELECT p.product_id, p.name, oi.quantity
FROM products p 
LEFT JOIN order_items oi
USING (product_id);

/* COMBINING OUTER AND INNER JOIN on multiple tables:
Return values from customers, orders, order statuses, and shippers */
SELECT o.order_date, o.order_id, c.first_name, s.name AS shipper, os.name AS status
FROM orders o
JOIN customers c
USING (customer_id)
LEFT JOIN shippers s
USING (shipper_id)
JOIN order_statuses os
ON o.status = os.order_status_id;

/* JOIN multople tables:
Return date, client, amount, name */
SELECT p.date, c.name, p.amount, pm.name
FROM payments p
JOIN clients c
USING (client_id)
JOIN payment_methods pm
ON p.payment_method = pm.payment_method_id;

/*CROSS JOIN:
Cross join between shippers and products*/
SELECT s.name, p.name AS product
FROM shippers s 
CROSS JOIN products p 
ORDER BY s.name;

/* NATURAL JOIN:
Join shippers and products*/
SELECT s.name, p.name AS product
FROM shippers s, products p;

/* UNION Clause"
/* add a type column labeling a customer the following <2000 = Bronze , 2000- 3000 silver, >3000 gold. Show all records together.*/
SELECT customer_id, first_name, points, 'BRONZE' AS type
FROM customers 
WHERE points < 2000
UNION 
SELECT customer_id, first_name, points, 'SILVER' AS type
FROM customers
WHERE points BETWEEN 2000 AND 3000
UNION 
SELECT customer_id, first_name, points, 'GOLD' AS type
FROM customers
WHERE points > 3000
ORDER BY first_name;

/* INSERTING MULTIPLE ROWS:
Insert 3 rows in product table*/
INSERT INTO products (name, quantity_in_stock, unit_price)
VALUES('abcd','50','1.50'),
('efgh','45','2'),
('jklm','24','5');

SELECT * FROM products;

/* CREATE A COPY of a table:
create a table invoices_archived using data from invoices and clients table.*/
CREATE TABLE invoices_archived AS
SELECT c.name, i.invoice_id, i.payment_total, i.payment_date
FROM invoices i 
JOIN clients c
USING (client_id)
WHERE payment_date IS NOT NULL;

SELECT * FROM invoices_archived;

/* UPDATE clause: 
Update multiple rows */
UPDATE customers
SET points = points + 50
WHERE birth_date < '1990-01-01';

SELECT * FROM customers;

/* update comments for customers that have points  > 3000 to gold*/
UPDATE orders
SET comments = 'gold'
WHERE customer_id IN (
SELECT customer_id
FROM customers
WHERE points > 3000);

