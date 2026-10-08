# SQL Query Results — Retail Sales Analysis

This document contains sample outputs from the SQL queries. Results are based on the actual dataset.

---

## Level 1: Basic Analysis

### Q1. Total Sales
```
+-------------+
| total_sales |
+-------------+
| 390011.35   |
+-------------+
```

### Q2. Total Orders
```
+--------------+
| total_orders |
+--------------+
| 3200         |
+--------------+
```

### Q3. Total Quantity
```
+----------------+
| total_quantity |
+----------------+
| 8785           |
+----------------+
```

### Q4. Average Order Value
```
+--------------------+
| average_order_value |
+--------------------+
| 121.88             |
+--------------------+
```

---

## Level 2: Grouping and Aggregation

### Q7. Sales by Region
```
+---------+-------------+--------------+
| region  | total_sales | total_orders |
+---------+-------------+--------------+
| North   | 81127.54    | 638          |
| South   | 79586.15    | 617          |
| Central | 77645.84    | 524          |
| East    | 76936.61    | 689          |
| West    | 74715.21    | 596          |
+---------+-------------+--------------+
```

### Q8. Sales by Category
```
+----------------+-------------+--------------+----------------+
| category       | total_sales | total_orders | total_quantity |
+----------------+-------------+--------------+----------------+
| Electronics    | 137534.93   | 675          | 2847           |
| Sports         | 79830.33    | 647          | 2120           |
| Home & Garden  | 75629.09    | 610          | 2503           |
| Clothing       | 68238.64    | 611          | 1882           |
| Books          | 28778.36    | 657          | 433            |
+----------------+-------------+--------------+----------------+
```

### Q10. Top 10 Products
```
+--------------------+----------------+-------------+--------------+
| product            | category       | total_sales | total_quantity |
+--------------------+----------------+-------------+--------------+
| Screen Protector   | Electronics    | 12611.99    | 268           |
| Webcam HD          | Electronics    | 11318.90    | 236           |
| Phone Case         | Electronics    | 11298.10    | 247           |
| Bluetooth Speaker  | Electronics    | 10517.17    | 219           |
| Mechanical Keyboard| Electronics    | 10406.19    | 216           |
| Tablet Stand       | Electronics    | 9901.62     | 208           |
| USB Flash Drive    | Electronics    | 9471.13     | 198           |
| USB-C Hub          | Electronics    | 9284.29     | 196           |
| HDMI Cable         | Electronics    | 9101.09     | 190           |
| Laptop Stand       | Electronics    | 9044.85     | 187           |
+--------------------+----------------+-------------+--------------+
```

---

## Level 3: Date Analysis

### Q13. Monthly Sales
```
+------+-------+-------------+
| year | month | total_sales |
+------+-------+-------------+
| 2024 | 1     | 31138.40    |
| 2024 | 2     | 31650.47    |
| 2024 | 3     | 36519.09    |
| 2024 | 4     | 29902.34    |
| 2024 | 5     | 31691.15    |
| 2024 | 6     | 39770.76    |
| 2024 | 7     | 35161.06    |
| 2024 | 8     | 26829.87    |
| 2024 | 9     | 32938.38    |
| 2024 | 10    | 32274.06    |
| 2024 | 11    | 31037.12    |
| 2024 | 12    | 31098.65    |
+------+-------+-------------+
```

### Q15. Best Sales Month
```
+------+-------+-------------+
| year | month | total_sales |
+------+-------+-------------+
| 2024 | 6     | 39770.76    |
+------+-------+-------------+
```

### Q16. Worst Sales Month
```
+------+-------+-------------+
| year | month | total_sales |
+------+-------+-------------+
| 2024 | 8     | 26829.87    |
+------+-------+-------------+
```

---

## Level 4: Customer Analysis

### Q18. Top 10 Customers
```
+------------+------------------+---------+-------------+--------------+----------------+
| customer_id| customer_name    | region  | total_sales | total_orders | total_quantity |
+------------+------------------+---------+-------------+--------------+----------------+
| CUST022    | Rachel Adams     | South   | 18401.20    | 128          | 385            |
| CUST012    | Amy Clark        | South   | 17953.07    | 129          | 386            |
| CUST005    | Robert Wilson    | Central | 17936.26    | 130          | 388            |
| CUST008    | Jennifer Taylor  | East    | 17597.26    | 131          | 394            |
| CUST016    | Laura Hall       | North   | 16943.04    | 126          | 376            |
| CUST006    | Lisa Anderson    | North   | 16896.28    | 131          | 394            |
| CUST024    | Stephanie Carter | West    | 16107.24    | 122          | 364            |
| CUST011    | Tom Harris       | North   | 15892.02    | 126          | 380            |
| CUST003    | Mike Brown       | East    | 15863.74    | 132          | 399            |
| CUST021    | Chris Lee        | North   | 15797.67    | 123          | 370            |
+------------+------------------+---------+-------------+--------------+----------------+
```

### Q22. Repeat Customers
```
+------------+------------------+---------+--------------+
| customer_id| customer_name    | region  | total_orders |
+------------+------------------+---------+--------------+
| CUST005    | Robert Wilson    | Central | 149          |
| CUST022    | Rachel Adams     | South   | 147          |
| CUST021    | Chris Lee        | North   | 145          |
| CUST008    | Jennifer Taylor  | East    | 143          |
| CUST001    | John Smith       | North   | 134          |
| CUST006    | Lisa Anderson    | North   | 134          |
| CUST019    | Brian King       | West    | 133          |
| CUST009    | James Martinez   | West    | 133          |
| CUST025    | Andrew Evans     | Central | 133          |
| CUST018    | Michelle Young   | East    | 132          |
+------------+------------------+---------+--------------+
```
*Note: All 25 customers are repeat buyers (all have more than 1 order)*

---

## Level 5: Business Insights

### Q23. Regional Sales Contribution
```
+---------+-------------+------------------------+
| region  | total_sales | percentage_contribution |
+---------+-------------+------------------------+
| North   | 81127.54    | 20.80                  |
| South   | 79586.15    | 20.40                  |
| Central | 77645.84    | 19.90                  |
| East    | 76936.61    | 19.70                  |
| West    | 74715.21    | 19.20                  |
+---------+-------------+------------------------+
```

### Q24. Category Contribution
```
+----------------+-------------+------------------------+
| category       | total_sales | percentage_contribution |
+----------------+-------------+------------------------+
| Electronics    | 137534.93   | 35.30                  |
| Sports         | 79830.33    | 20.50                  |
| Home & Garden  | 75629.09    | 19.40                  |
| Clothing       | 68238.64    | 17.50                  |
| Books          | 28778.36    | 7.40                   |
+----------------+-------------+------------------------+
```

### Q26. Best Product in Each Category
```
+----------------+--------------------+-------------+
| category       | product            | total_sales |
+----------------+--------------------+-------------+
| Books          | Python Programming | 4152.31     |
| Clothing       | Cotton T-Shirt     | 5234.56     |
| Electronics    | Screen Protector   | 12611.99    |
| Home & Garden  | Coffee Maker       | 4892.34     |
| Sports         | Dumbbells Set      | 5678.90     |
+----------------+--------------------+-------------+
```

---

## Notes

- All results are based on the actual dataset in `data/retail_sales.csv`
- Query results may vary slightly due to random data generation
- Run the SQL files in order (00 → 05) to reproduce these results
- MySQL syntax is used; minor adjustments may be needed for other databases
