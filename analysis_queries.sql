USE company_db;

#View all orders
SELECT * FROM orders;

#Total sales per city
SELECT city, SUM(amount) AS total_sales
FROM orders
GROUP BY city;

# Number of orders per city
SELECT city, COUNT(*) AS total_orders
FROM orders
GROUP BY city;

# Average order value per city
SELECT city, AVG(amount) AS average_order_value
FROM orders
GROUP BY city;

# Maximum order value per city
SELECT city, MAX(amount) AS max_order
FROM orders
GROUP BY city;

# Minimum order value per city
SELECT city, MIN(amount) AS min_order
FROM orders
GROUP BY city;

# Total sales per city where amount > 4000
SELECT city, SUM(amount) AS total_conditional_sales
FROM orders
WHERE amount > 4000
GROUP BY city;

# Update one order
UPDATE orders
SET amount = 15000
WHERE order_id = 1;

#Verify updated row
SELECT * FROM orders
WHERE order_id = 1;

#Increase amount for New York orders
UPDATE orders
SET amount = amount + 5000
WHERE city = 'newyork';

-- View final orders table
SELECT * FROM orders;