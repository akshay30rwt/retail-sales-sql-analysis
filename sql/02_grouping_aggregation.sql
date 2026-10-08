-- ============================================
-- LEVEL 2: GROUPING AND AGGREGATION
-- ============================================

-- Q7. Sales by Region
-- Find total sales for every region (sorted highest to lowest)
SELECT
    region,
    SUM(sales) AS total_sales,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales
GROUP BY region
ORDER BY total_sales DESC;

-- Q8. Sales by Category
-- Find total sales for each product category
SELECT
    category,
    SUM(sales) AS total_sales,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY category
ORDER BY total_sales DESC;

-- Q9. Quantity Sold by Category
-- Find total units sold for each category
SELECT
    category,
    SUM(quantity) AS total_quantity_sold
FROM sales
GROUP BY category
ORDER BY total_quantity_sold DESC;

-- Q10. Top 10 Products
-- Find the 10 products generating the highest sales
SELECT
    product,
    category,
    SUM(sales) AS total_sales,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY product, category
ORDER BY total_sales DESC
LIMIT 10;

-- Q11. Orders by Region
-- Determine how many orders came from each region
SELECT
    region,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales
GROUP BY region
ORDER BY total_orders DESC;

-- Q12. Average Order Value by Region
-- Calculate average order value for each region
SELECT
    region,
    SUM(sales) / COUNT(DISTINCT order_id) AS avg_order_value
FROM sales
GROUP BY region
ORDER BY avg_order_value DESC;
