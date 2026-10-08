-- ============================================
-- DATA EXPLORATION
-- Understanding the dataset before analysis
-- ============================================

-- Check total number of records
SELECT COUNT(*) AS total_records
FROM sales;

-- View sample data (first 10 rows)
SELECT *
FROM sales
LIMIT 10;

-- Check date range
SELECT
    MIN(order_date) AS earliest_date,
    MAX(order_date) AS latest_date,
    DATEDIFF(MAX(order_date), MIN(order_date)) AS date_range_days
FROM sales;

-- Count unique values in key columns
SELECT
    COUNT(DISTINCT order_id) AS unique_orders,
    COUNT(DISTINCT customer_id) AS unique_customers,
    COUNT(DISTINCT product) AS unique_products,
    COUNT(DISTINCT category) AS unique_categories,
    COUNT(DISTINCT region) AS unique_regions
FROM sales;

-- Check for NULL values
SELECT
    SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS null_order_id,
    SUM(CASE WHEN order_date IS NULL THEN 1 ELSE 0 END) AS null_order_date,
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS null_customer_id,
    SUM(CASE WHEN product IS NULL THEN 1 ELSE 0 END) AS null_product,
    SUM(CASE WHEN category IS NULL THEN 1 ELSE 0 END) AS null_category,
    SUM(CASE WHEN region IS NULL THEN 1 ELSE 0 END) AS null_region,
    SUM(CASE WHEN quantity IS NULL THEN 1 ELSE 0 END) AS null_quantity,
    SUM(CASE WHEN unit_price IS NULL THEN 1 ELSE 0 END) AS null_unit_price,
    SUM(CASE WHEN sales IS NULL THEN 1 ELSE 0 END) AS null_sales
FROM sales;

-- Check for duplicate orders
SELECT
    order_id,
    COUNT(*) AS duplicate_count
FROM sales
GROUP BY order_id
HAVING COUNT(*) > 1;

-- Check for invalid quantities (negative or zero)
SELECT *
FROM sales
WHERE quantity <= 0;

-- Check for invalid prices (negative or zero)
SELECT *
FROM sales
WHERE unit_price <= 0;

-- Check for invalid sales (negative or zero)
SELECT *
FROM sales
WHERE sales <= 0;

-- View distinct categories
SELECT DISTINCT category
FROM sales
ORDER BY category;

-- View distinct regions
SELECT DISTINCT region
FROM sales
ORDER BY region;

-- View distinct customers
SELECT DISTINCT customer_id, customer_name, region
FROM sales
ORDER BY customer_id;

-- Summary statistics for numeric columns
SELECT
    COUNT(*) AS total_records,
    SUM(quantity) AS total_quantity,
    AVG(quantity) AS avg_quantity,
    MIN(quantity) AS min_quantity,
    MAX(quantity) AS max_quantity,
    SUM(sales) AS total_sales,
    AVG(sales) AS avg_sales,
    MIN(sales) AS min_sales,
    MAX(sales) AS max_sales,
    AVG(unit_price) AS avg_unit_price
FROM sales;
