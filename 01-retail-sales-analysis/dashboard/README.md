# Power BI dashboard, Retail Sales

## Interactive dashboard in this folder
Open `retail_dashboard.html` in any browser. It is interactive: click a category button to filter the product table. Headline figures are the verified totals: AUD 3,378 revenue, AUD 1,554 profit, 199 units, 46.0% margin, January to March 2026.

## To rebuild this in Power BI Desktop
1. In Power BI Desktop, Get Data > Text/CSV, and load `../data/retail_sales.csv`.
2. Use these fields: order_date, city, category, product, unit_price_aud, unit_cost_aud, quantity_sold, revenue_aud, cost_aud, profit_aud.
3. Create measures: Total Revenue = SUM(revenue_aud), Total Profit = SUM(profit_aud), Margin % = DIVIDE([Total Profit], [Total Revenue]).
4. Build visuals: bar chart by category, bar chart by city, line chart by month, and a table by product, with category and city as slicers.
5. The expected totals after import are revenue AUD 3,378, cost AUD 1,824, profit AUD 1,554, units 199. If your import gives different totals, check the CSV file and field types first.

Note: a native .pbix file needs Power BI Desktop on Windows, so this folder gives the working HTML dashboard plus the exact Power BI-ready dataset and rebuild steps, instead of a placeholder .pbix.
