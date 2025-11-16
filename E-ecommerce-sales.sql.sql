CREATE DATABASE ecommerce_project;
USE ecommerce_project;
/*CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150),
    phone VARCHAR(50),
    city VARCHAR(100),
    country VARCHAR(100)
);*/
/*CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(150),
    category VARCHAR(100),
    price DECIMAL(10,2)
);*/
/*CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);*/
/*CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price_at_purchase DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);*/
/*CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    payment_status VARCHAR(50),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);*/
-- ***LEVEL 1 — Basic SELECT QUERIES***
-- 1 Show all customers
-- SELECT * FROM customers;
-- 2 Show all products with price
-- SELECT product_name, category, price FROM products;
-- 3 Show all orders placed
-- SELECT * FROM orders;
-- LEVEL 2-filtering (WHERE)
-- 4 Products cheaper than 100
-- SELECT * FROM products WHERE price < 100;
-- 5 Orders placed after 2024-06-01
-- SELECT * FROM orders WHERE order_date > '2024-06-01';
-- 6 Customers from a specific country 
-- SELECT * FROM customers WHERE country = 'India';
-- LEVEL 3 — Sorting (ORDER BY)
-- 7 Sort products by highest price
-- SELECT * FROM products ORDER BY price DESC;
-- 8 Newest orders first
-- SELECT * FROM orders ORDER BY order_date DESC;
-- LEVEL 4 — Aggregate Queries (COUNT, SUM, AVG)
-- 9 Total number of customers
-- SELECT COUNT(*) AS total_customers FROM customers;
-- 10 Count orders made
-- SELECT COUNT(*) AS total_orders FROM orders;
-- Total revenue
-- SELECT SUM(amount) AS total_revenue FROM payments WHERE payment_status = 'Success';
-- 12 Average product price
-- SELECT AVG(price) AS average_price FROM products;
-- LEVEL 5 — GROUP BY Queries
-- 13 Revenue by payment method
-- SELECT payment_method, SUM(amount) AS total_amountFROM payments WHERE payment_status = 'Success' GROUP BY payment_method;
-- 14 Product count per category
-- SELECT category, COUNT(*) AS total_products FROM products GROUP BY category;
-- LEVEL 6 — JOIN Queries
-- 15 List orders with customer name
-- SELECT o.order_id, o.order_date, c.name FROM orders o JOIN customers c ON o.customer_id = c.customer_id;
-- 16 Show order items with product name
-- SELECT oi.order_id, p.product_name, oi.quantity, oi.price_at_purchase FROM order_items oi JOIN products p ON oi.product_id = p.product_id;
-- 17 Show each payment with customer name
-- SELECT p.payment_id, c.name, p.amount, p.payment_status FROM payments p JOIN orders o ON p.order_id = o.order_id JOIN customers c ON o.customer_id = c.customer_id;
-- LEVEL 7 — Business Queries
-- 18 Best-selling product
/*SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_id, p.product_name 
ORDER BY total_sold DESC
LIMIT 1;*/
-- 19 Top 5 customers by spending
/*SELECT c.name, SUM(p.amount) AS total_spent
FROM payments p
JOIN orders o ON p.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
WHERE p.payment_status = 'Success'
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 5;*/ 
-- 20 Monthly sales
/*SELECT MONTH(order_date) AS month,
COUNT(order_id) AS total_orders FROM orders
GROUP BY MONTH(order_date)
ORDER BY month; */
