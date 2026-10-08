-- ============================================
-- RETAIL SALES SQL ANALYSIS
-- Database Schema and Sample Data
-- ============================================

-- Create database
CREATE DATABASE IF NOT EXISTS retail_sales_db;
USE retail_sales_db;

-- Create sales table
CREATE TABLE IF NOT EXISTS sales (
    order_id VARCHAR(20) PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_id VARCHAR(20) NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    product VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    region VARCHAR(50) NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    sales DECIMAL(10,2) NOT NULL
);

-- Create index on order_date for faster date queries
CREATE INDEX idx_order_date ON sales(order_date);

-- Create index on region for faster regional analysis
CREATE INDEX idx_region ON sales(region);

-- Create index on category for faster category analysis
CREATE INDEX idx_category ON sales(category);

-- Create index on customer_id for faster customer analysis
CREATE INDEX idx_customer_id ON sales(customer_id);

-- Note: Import data using:
-- MySQL: LOAD DATA INFILE 'data/retail_sales.csv' INTO TABLE sales FIELDS TERMINATED BY ',' ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
-- Or use your MySQL client's import feature
