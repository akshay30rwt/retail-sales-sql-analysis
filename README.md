# Retail Sales & Customer Analysis using SQL

## Overview

A comprehensive SQL-based analysis of 3,200 retail sales transactions across 25 customers, 75 products, 5 product categories, and 5 regions throughout 2024. This project demonstrates practical SQL skills including data exploration, aggregation, grouping, date analysis, customer segmentation, and business intelligence querying.

## Objective

- Analyze retail sales performance using SQL queries
- Identify top-performing regions, categories, products, and customers
- Understand customer behavior and purchasing patterns
- Extract actionable business insights from transactional data
- Demonstrate SQL proficiency for data analyst roles

## Dataset

- **Source:** Synthetic retail sales dataset created for portfolio demonstration
- **Records:** 3,200 transactions
- **Columns:** 10 (order_id, order_date, customer_id, customer_name, product, category, region, quantity, unit_price, sales)
- **Date Range:** January 2024 - December 2024
- **Customers:** 25 unique customers
- **Products:** 75 unique products
- **Categories:** Electronics, Sports, Home & Garden, Clothing, Books
- **Regions:** North, South, East, West, Central

## Tools Used

- **MySQL** — Database and SQL analysis
- **SQL** — Data querying and analysis
- **Microsoft Excel** — Dataset preparation and viewing

## Database Schema

### Table: sales

| Column | Type | Description |
|--------|------|-------------|
| order_id | VARCHAR(20) | Unique order identifier (PRIMARY KEY) |
| order_date | DATE | Date of purchase |
| customer_id | VARCHAR(20) | Unique customer identifier |
| customer_name | VARCHAR(100) | Customer full name |
| product | VARCHAR(100) | Product purchased |
| category | VARCHAR(50) | Product category |
| region | VARCHAR(50) | Customer region |
| quantity | INT | Units purchased |
| unit_price | DECIMAL(10,2) | Price per unit |
| sales | DECIMAL(10,2) | Total revenue for the order |

## Data Preparation

Before analysis, the data was validated for quality:

- **No NULL values** in any column
- **No duplicate order IDs** — all 3,200 orders are unique
- **No invalid dates** — all dates fall within 2024
- **No negative quantities** — all quantities are positive
- **No negative prices** — all unit prices and sales values are positive
- **Consistent categories** — only 5 categories (Electronics, Sports, Home & Garden, Clothing, Books)
- **Consistent regions** — only 5 regions (North, South, East, West, Central)

## SQL Analysis

### Basic Metrics (Level 1)

| Metric | Value |
|--------|-------|
| Total Sales | $390,011.35 |
| Total Orders | 3,200 |
| Total Quantity | 8,785 units |
| Average Order Value | $121.88 |
| Highest Transaction | $612.59 (ORD-10849) |
| Lowest Transaction | $8.11 (ORD-12621) |

### Regional Analysis (Level 2)

| Region | Total Sales | % of Total | Orders |
|--------|-------------|------------|--------|
| North | $81,127.54 | 20.8% | 638 |
| South | $79,586.15 | 20.4% | 617 |
| Central | $77,645.84 | 19.9% | 524 |
| East | $76,936.61 | 19.7% | 689 |
| West | $74,715.21 | 19.2% | 596 |

### Category Analysis (Level 2)

| Category | Total Sales | % of Total | Quantity |
|----------|-------------|------------|----------|
| Electronics | $137,534.93 | 35.3% | 2,847 |
| Sports | $79,830.33 | 20.5% | 2,120 |
| Home & Garden | $75,629.09 | 19.4% | 2,503 |
| Clothing | $68,238.64 | 17.5% | 1,882 |
| Books | $28,778.36 | 7.4% | 433 |

### Time Analysis (Level 3)

**Monthly Sales Trends:**

| Month | Sales | Orders |
|-------|-------|--------|
| Jan 2024 | $31,138.40 | 267 |
| Feb 2024 | $31,650.47 | 265 |
| Mar 2024 | $36,519.09 | 274 |
| Apr 2024 | $29,902.34 | 253 |
| May 2024 | $31,691.15 | 265 |
| Jun 2024 | $39,770.76 | 273 |
| Jul 2024 | $35,161.06 | 264 |
| Aug 2024 | $26,829.87 | 218 |
| Sep 2024 | $32,938.38 | 260 |
| Oct 2024 | $32,274.06 | 269 |
| Nov 2024 | $31,037.12 | 268 |
| Dec 2024 | $31,098.65 | 266 |

**Best Month:** June 2024 ($39,770.76)
**Worst Month:** August 2024 ($26,829.87)

### Customer Analysis (Level 4)

**Top 10 Customers by Sales:**

| Customer | Region | Total Sales | Orders |
|----------|--------|-------------|--------|
| Rachel Adams | South | $18,401.20 | 128 |
| Amy Clark | South | $17,953.07 | 129 |
| Robert Wilson | Central | $17,936.26 | 130 |
| Jennifer Taylor | East | $17,597.26 | 131 |
| Laura Hall | North | $16,943.04 | 126 |
| Lisa Anderson | North | $16,896.28 | 131 |
| Stephanie Carter | West | $16,107.24 | 122 |
| Tom Harris | North | $15,892.02 | 126 |
| Mike Brown | East | $15,863.74 | 132 |
| Chris Lee | North | $15,797.67 | 123 |

**Repeat Customers:** All 25 customers placed more than 1 order
**Highest-Value Customer:** Rachel Adams (CUST022) — $18,401.20
**Average Customer Spending:** $15,600.46

### Top 10 Products

| Product | Category | Total Sales |
|---------|----------|-------------|
| Screen Protector | Electronics | $12,611.99 |
| Webcam HD | Electronics | $11,318.90 |
| Phone Case | Electronics | $11,298.10 |
| Bluetooth Speaker | Electronics | $10,517.17 |
| Mechanical Keyboard | Electronics | $10,406.19 |
| Tablet Stand | Electronics | $9,901.62 |
| USB Flash Drive | Electronics | $9,471.13 |
| USB-C Hub | Electronics | $9,284.29 |
| HDMI Cable | Electronics | $9,101.09 |
| Laptop Stand | Electronics | $9,044.85 |

## Key Insights

### 1. Electronics Dominate Revenue (35.3%)
Electronics generated $137,534.93, representing 35.3% of total revenue — the highest among all categories. This indicates strong customer demand for tech products.

**Business Implication:** Prioritize Electronics inventory, expand product selection, and ensure adequate stock levels for high-demand items.

### 2. All Customers Are Repeat Buyers
Every one of the 25 customers placed multiple orders, with the most active customer (Robert Wilson) placing 149 orders. This indicates strong customer loyalty and retention.

**Business Implication:** The customer base is highly engaged. Focus on maintaining service quality and consider loyalty programs to further increase order frequency.

### 3. North Region Leads in Revenue
The North region generated $81,127.54 (20.8% of total), slightly ahead of other regions. However, the distribution is relatively balanced — only a 1.6% gap between highest and lowest.

**Business Implication:** Regional performance is fairly even. Investigate why West region lags slightly and implement targeted strategies to boost underperforming areas.

### 4. June is the Peak Sales Month
June 2024 generated $39,770.76, the highest monthly sales. August was the lowest at $26,829.87. This 48% difference suggests significant seasonal variation.

**Business Implication:** Increase inventory and marketing spend before peak months. Investigate why August underperforms and plan promotions for slow periods.

### 5. Top 10 Products Are All Electronics
Every top-performing product by revenue belongs to the Electronics category. Screen Protector leads at $12,611.99.

**Business Implication:** Electronics are the primary revenue driver. Ensure strong supplier relationships, competitive pricing, and consider bundling Electronics with other categories.

### 6. Customer Spending is Consistent
The top 10 customers each generated between $15,000-$18,400 in sales, showing relatively consistent high-value customer behavior.

**Business Implication:** High-value customers are valuable but not drastically different from each other. Focus on expanding the mid-tier customer base to increase overall revenue.

### 7. Sports Category Shows Strong Growth Potential
Sports generated $79,830.33 (20.5%), nearly matching Home & Garden. With growing health trends, this category has expansion potential.

**Business Implication:** Consider expanding Sports inventory and marketing. Partner with fitness influencers or run seasonal sports promotions.

## Business Recommendations

1. **Expand Electronics Product Line** — Electronics drive 35.3% of revenue. Add complementary products and ensure top sellers are always in stock.

2. **Investigate August Sales Dip** — August sales ($26,829.87) are 33% lower than June. Analyze if this is seasonal or due to external factors. Plan promotional campaigns for slow months.

3. **Boost West Region Performance** — West region lags at 19.2% of sales. Investigate local market conditions, competition, and customer preferences. Consider region-specific marketing.

4. **Develop Customer Loyalty Program** — All 25 customers are repeat buyers. A loyalty program could increase order frequency and average order value.

5. **Optimize Inventory by Season** — Stock up before peak months (June, March, July) and reduce inventory during slow periods (August, April).

## SQL Skills Demonstrated

- SELECT, FROM, WHERE
- Aggregate functions: SUM(), COUNT(), AVG(), MIN(), MAX()
- GROUP BY and HAVING
- ORDER BY (ascending and descending)
- DISTINCT
- Date functions: YEAR(), MONTH(), MONTHNAME(), DATEDIFF()
- CASE WHEN (conditional logic)
- Subqueries
- CTEs (Common Table Expressions)
- Window functions: RANK(), AVG() OVER()
- Joins (prepared for multi-table analysis)
- Index creation for performance

## Project Structure

```
retail-sales-sql-analysis/
│
├── data/
│   └── retail_sales.csv                 (3,200 transactions)
│
├── sql/
│   ├── database/
│   │   └── schema.sql                   (Database structure)
│   ├── 00_data_exploration.sql          (Data quality checks)
│   ├── 01_basic_analysis.sql            (Q1-Q6: Basic metrics)
│   ├── 02_grouping_aggregation.sql      (Q7-Q12: Grouping queries)
│   ├── 03_date_analysis.sql             (Q13-Q17: Time-based analysis)
│   ├── 04_customer_analysis.sql         (Q18-Q22: Customer insights)
│   └── 05_business_insights.sql         (Q23-Q26: Advanced analysis)
│
├── results/
│   └── query_results.md                 (Sample output from queries)
│
├── screenshots/
│
├── README.md                            (This file)
├── RESUME_ENTRY.md                      (Resume bullets)
└── INTERVIEW_PREP.md                    (Interview questions & answers)
```

## How to Use This Project

### Setup

1. Install MySQL (or use an online MySQL editor like db-fiddle.com)
2. Import `data/retail_sales.csv` into MySQL
3. Run `sql/database/schema.sql` to create the database and table
4. Execute queries from the SQL files in order (00 → 05)

### Quick Start with Online MySQL Editor

For immediate testing without local installation:
1. Go to [db-fiddle.com](https://db-fiddle.com) or [sqlfiddle.com](https://sqlfiddle.com)
2. Select MySQL
3. Copy and paste the schema from `sql/database/schema.sql`
4. Copy and paste sample data (first 50 rows from CSV)
5. Run queries from the SQL files

## Business Questions Answered

1. What is the total revenue? → **$390,011.35**
2. How many orders were placed? → **3,200 orders**
3. How many units were sold? → **8,785 units**
4. What is the average order value? → **$121.88**
5. Which region generates the most revenue? → **North ($81,127.54, 20.8%)**
6. Which region generates the least revenue? → **West ($74,715.21, 19.2%)**
7. Which category generates the most revenue? → **Electronics ($137,534.93, 35.3%)**
8. Which products generate the most revenue? → **Screen Protector, Webcam HD, Phone Case**
9. Which month had the highest sales? → **June 2024 ($39,770.76)**
10. Which month had the lowest sales? → **August 2024 ($26,829.87)**
11. Who are the highest-value customers? → **Rachel Adams, Amy Clark, Robert Wilson**
12. Which customers are repeat customers? → **All 25 customers**
13. Which category contributes the most? → **Electronics (35.3%)**
14. Which region contributes the most? → **North (20.8%)**
15. Which product performs best in each category? → See business insights query

## Future Enhancements

- Add customer demographics (age, gender, location)
- Include product cost and profit margin analysis
- Calculate customer lifetime value (CLV)
- Add cohort analysis for customer retention
- Implement RFM (Recency, Frequency, Monetary) analysis
- Create visualizations using Power BI or Excel
- Add year-over-year comparison with additional data

---

**Built with MySQL and SQL**
**Difficulty Level: 4.5-5/10**
**Beginner-friendly, resume-ready portfolio project**
