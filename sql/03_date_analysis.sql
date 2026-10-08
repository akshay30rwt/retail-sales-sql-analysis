-- ============================================
-- LEVEL 3: DATE ANALYSIS
-- ============================================

-- Q13. Monthly Sales
-- Calculate total sales for each month (chronologically ordered)
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales) AS total_sales,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

-- Q14. Monthly Order Count
-- Determine how many orders were placed each month
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

-- Q15. Best Sales Month
-- Find the month with the highest total sales
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales) AS total_sales
FROM sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY total_sales DESC
LIMIT 1;

-- Q16. Worst Sales Month
-- Find the month with the lowest total sales
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales) AS total_sales
FROM sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY total_sales ASC
LIMIT 1;

-- Q17. Yearly Sales
-- Calculate total sales by year (dataset covers 2024 only)
SELECT
    YEAR(order_date) AS year,
    SUM(sales) AS total_sales,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY YEAR(order_date)
ORDER BY year;

-- Extra: Sales by Month Name (more readable)
SELECT
    MONTH(order_date) AS month_num,
    MONTHNAME(order_date) AS month_name,
    SUM(sales) AS total_sales
FROM sales
GROUP BY MONTH(order_date), MONTHNAME(order_date)
ORDER BY month_num;
