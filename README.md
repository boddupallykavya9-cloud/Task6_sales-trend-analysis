# Sales Trend Analysis Using SQL Aggregations

## Overview

This project analyzes monthly revenue and order volume by aggregating order data in the `online_sales` database. The goal is to identify trends in customer purchases using SQL.

## Methodology

**Tool Used:** MySQL Workbench

**Dataset:** `Orders` table containing
- `order_id`
- `order_date`
- `amount`
- `product_id`

**SQL Techniques Applied:**
- `EXTRACT(YEAR/MONTH FROM order_date)` to get year and month
- `GROUP BY` for aggregating data
- `SUM(amount)` for monthly revenue
- `COUNT(DISTINCT order_id)` for monthly order volume
- `ORDER BY` for sorting results

**Main Query**
SELECT 
  EXTRACT(YEAR FROM order_date) AS order_year,
  EXTRACT(MONTH FROM order_date) AS order_month,
  SUM(amount) AS monthly_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM 
  orders
GROUP BY 
  order_year, order_month
ORDER BY 
  order_year, order_month;

  **Results**

The result table lists, for each month:
- Total Sales Revenue
- Unique Order Volume

This allows quick identification of sales peaks, trends, and seasonal fluctuations. Results were verified by inspecting the output table created after running the SQL script.

**Files Submitted**
- Task6_sales-trend-analysis.sql — SQL script
- Screenshot of results table

**Insights**
- Revenues and order volumes change from month to month.
- Highest activity was observed in January and February, suggesting strong initial seasonality.
- Output can guide further analysis or business decisions.
