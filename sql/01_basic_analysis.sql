-- ============================================
-- LEVEL 1: BASIC SQL QUERIES
-- ============================================

-- Q1. Total Sales
-- What is the total revenue generated?
SELECT SUM(sales) AS total_sales
FROM sales;

-- Q2. Total Orders
-- How many unique orders were placed?
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM sales;

-- Q3. Total Quantity Sold
-- How many units were sold?
SELECT SUM(quantity) AS total_quantity
FROM sales;

-- Q4. Average Order Value
-- Calculate: Average Order Value = Total Sales / Total Orders
SELECT
    SUM(sales) / COUNT(DISTINCT order_id) AS average_order_value
FROM sales;

-- Q5. Highest Single Transaction
-- Find the order with the highest sales value
SELECT *
FROM sales
ORDER BY sales DESC
LIMIT 1;

-- Q6. Lowest Single Transaction
-- Find the order with the lowest sales value
SELECT *
FROM sales
ORDER BY sales ASC
LIMIT 1;
