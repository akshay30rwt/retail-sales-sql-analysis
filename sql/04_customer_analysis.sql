-- ============================================
-- LEVEL 4: CUSTOMER ANALYSIS
-- ============================================

-- Q18. Top 10 Customers
-- Find the top 10 customers based on total sales
SELECT
    customer_id,
    customer_name,
    region,
    SUM(sales) AS total_sales,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY customer_id, customer_name, region
ORDER BY total_sales DESC
LIMIT 10;

-- Q19. Customer Order Frequency
-- Find how many orders each customer placed
SELECT
    customer_id,
    customer_name,
    region,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(sales) AS total_sales
FROM sales
GROUP BY customer_id, customer_name, region
ORDER BY total_orders DESC;

-- Q20. Average Customer Spending
-- Calculate the average amount spent per customer
SELECT
    AVG(customer_total) AS avg_customer_spending
FROM (
    SELECT
        customer_id,
        SUM(sales) AS customer_total
    FROM sales
    GROUP BY customer_id
) AS customer_totals;

-- Q21. Highest-Value Customer
-- Identify the customer who generated the highest total revenue
SELECT
    customer_id,
    customer_name,
    region,
    SUM(sales) AS total_sales,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales
GROUP BY customer_id, customer_name, region
ORDER BY total_sales DESC
LIMIT 1;

-- Q22. Repeat Customers
-- Identify customers who placed more than one order
-- Uses GROUP BY and HAVING
SELECT
    customer_id,
    customer_name,
    region,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(sales) AS total_sales
FROM sales
GROUP BY customer_id, customer_name, region
HAVING COUNT(DISTINCT order_id) > 1
ORDER BY total_orders DESC;

-- Extra: Customer Spending Tiers
-- Categorize customers by spending level
SELECT
    customer_id,
    customer_name,
    SUM(sales) AS total_sales,
    CASE
        WHEN SUM(sales) >= 15000 THEN 'High Value'
        WHEN SUM(sales) >= 10000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_tier
FROM sales
GROUP BY customer_id, customer_name
ORDER BY total_sales DESC;
