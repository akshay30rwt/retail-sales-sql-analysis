-- ============================================
-- LEVEL 5: BUSINESS ANALYSIS
-- ============================================

-- Q23. Regional Sales Contribution
-- Calculate each region's percentage contribution to total sales
SELECT
    region,
    SUM(sales) AS total_sales,
    ROUND((SUM(sales) / (SELECT SUM(sales) FROM sales)) * 100, 2) AS percentage_contribution
FROM sales
GROUP BY region
ORDER BY percentage_contribution DESC;

-- Q24. Category Contribution
-- Calculate each category's percentage of total sales
SELECT
    category,
    SUM(sales) AS total_sales,
    ROUND((SUM(sales) / (SELECT SUM(sales) FROM sales)) * 100, 2) AS percentage_contribution
FROM sales
GROUP BY category
ORDER BY percentage_contribution DESC;

-- Q25. High-Value Orders
-- Identify orders where sales exceed the 90th percentile
-- This finds unusually high-value orders
SELECT *
FROM sales
WHERE sales >= (
    SELECT sales
    FROM sales
    ORDER BY sales DESC
    LIMIT 320  -- Top 10% of 3200 orders
)
ORDER BY sales DESC;

-- Alternative: High-value orders using average
-- Orders above the average order value
SELECT *
FROM sales
WHERE sales > (SELECT AVG(sales) FROM sales)
ORDER BY sales DESC;

-- Q26. Best Product in Each Category
-- Identify the highest-selling product within each category
-- Uses a subquery approach (beginner-friendly)
SELECT
    category,
    product,
    total_sales
FROM (
    SELECT
        category,
        product,
        SUM(sales) AS total_sales,
        RANK() OVER (PARTITION BY category ORDER BY SUM(sales) DESC) AS product_rank
    FROM sales
    GROUP BY category, product
) AS ranked_products
WHERE product_rank = 1
ORDER BY category;

-- ============================================
-- BONUS: ADDITIONAL BUSINESS QUERIES
-- ============================================

-- Top 5 Customers in Each Region
-- Uses window function to rank customers within each region
SELECT
    region,
    customer_id,
    customer_name,
    total_sales,
    customer_rank
FROM (
    SELECT
        region,
        customer_id,
        customer_name,
        SUM(sales) AS total_sales,
        RANK() OVER (PARTITION BY region ORDER BY SUM(sales) DESC) AS customer_rank
    FROM sales
    GROUP BY region, customer_id, customer_name
) AS ranked_customers
WHERE customer_rank <= 5
ORDER BY region, customer_rank;

-- Monthly Sales with Moving Average
-- Shows each month's sales plus 3-month moving average
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales) AS monthly_sales,
    ROUND(
        AVG(SUM(sales)) OVER (
            ORDER BY YEAR(order_date), MONTH(order_date)
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        ), 2
    ) AS moving_avg_3month
FROM sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

-- Customer Segmentation Analysis
-- Segment customers by order frequency and spending
SELECT
    customer_segment,
    COUNT(*) AS customer_count,
    SUM(total_sales) AS segment_revenue,
    AVG(total_sales) AS avg_spending
FROM (
    SELECT
        customer_id,
        customer_name,
        SUM(sales) AS total_sales,
        COUNT(DISTINCT order_id) AS total_orders,
        CASE
            WHEN COUNT(DISTINCT order_id) >= 150 AND SUM(sales) >= 12000 THEN 'Premium'
            WHEN COUNT(DISTINCT order_id) >= 100 AND SUM(sales) >= 9000 THEN 'Regular'
            ELSE 'Occasional'
        END AS customer_segment
    FROM sales
    GROUP BY customer_id, customer_name
) AS customer_segments
GROUP BY customer_segment
ORDER BY segment_revenue DESC;

-- Product Performance Matrix
-- Shows product sales, quantity, and average price
SELECT
    product,
    category,
    SUM(sales) AS total_sales,
    SUM(quantity) AS total_quantity,
    ROUND(AVG(unit_price), 2) AS avg_price,
    ROUND(SUM(sales) / SUM(quantity), 2) AS effective_price
FROM sales
GROUP BY product, category
ORDER BY total_sales DESC
LIMIT 20;

-- Regional Category Performance
-- Shows which categories perform best in each region
SELECT
    region,
    category,
    SUM(sales) AS total_sales,
    RANK() OVER (PARTITION BY region ORDER BY SUM(sales) DESC) AS category_rank
FROM sales
GROUP BY region, category
ORDER BY region, category_rank;
