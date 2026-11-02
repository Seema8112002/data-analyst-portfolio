-- Retail Sales Analysis
-- Import data/retail_sales.csv into a table named retail_sales first.
-- SQL syntax is broadly compatible with SQLite/PostgreSQL; date formatting may vary by database.

-- 1. Preview the data
SELECT * FROM retail_sales
LIMIT 10;

-- 2. Check for missing values in important columns
SELECT
  SUM(CASE WHEN order_date IS NULL THEN 1 ELSE 0 END) AS missing_order_dates,
  SUM(CASE WHEN category IS NULL THEN 1 ELSE 0 END) AS missing_categories,
  SUM(CASE WHEN quantity_sold IS NULL THEN 1 ELSE 0 END) AS missing_quantities
FROM retail_sales;

-- 3. Overall business performance
SELECT
  SUM(revenue_aud) AS total_revenue_aud,
  SUM(cost_aud) AS total_cost_aud,
  SUM(profit_aud) AS total_profit_aud,
  SUM(quantity_sold) AS units_sold
FROM retail_sales;

-- 4. Revenue and profit by category
SELECT
  category,
  SUM(revenue_aud) AS revenue_aud,
  SUM(profit_aud) AS profit_aud,
  SUM(quantity_sold) AS units_sold
FROM retail_sales
GROUP BY category
ORDER BY revenue_aud DESC;

-- 5. Revenue by city
SELECT
  city,
  SUM(revenue_aud) AS revenue_aud,
  SUM(profit_aud) AS profit_aud
FROM retail_sales
GROUP BY city
ORDER BY revenue_aud DESC;

-- 6. Best-selling products by quantity
SELECT
  product,
  SUM(quantity_sold) AS units_sold,
  SUM(revenue_aud) AS revenue_aud,
  SUM(profit_aud) AS profit_aud
FROM retail_sales
GROUP BY product
ORDER BY units_sold DESC;

-- 7. Monthly revenue and profit
-- SQLite date syntax:
SELECT
  strftime('%Y-%m', order_date) AS sales_month,
  SUM(revenue_aud) AS revenue_aud,
  SUM(profit_aud) AS profit_aud
FROM retail_sales
GROUP BY strftime('%Y-%m', order_date)
ORDER BY sales_month;

-- 8. Profit margin by category (%)
SELECT
  category,
  ROUND(100.0 * SUM(profit_aud) / NULLIF(SUM(revenue_aud), 0), 2) AS profit_margin_pct
FROM retail_sales
GROUP BY category
ORDER BY profit_margin_pct DESC;

-- 9. Find records with unusually low or negative profit
SELECT *
FROM retail_sales
WHERE profit_aud <= 0
ORDER BY profit_aud;
