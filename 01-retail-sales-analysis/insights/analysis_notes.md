# Analysis Notes — Retail Sales Analysis (completed)

Data: synthetic, fictional, 40 records, January to March 2026. Not real business performance.

## Key findings
- Total revenue (AUD): 3,378
- Total cost (AUD): 1,824
- Total profit (AUD): 1,554
- Overall profit margin: 46.0%
- Units sold: 199
- Highest-revenue category: Electronics, AUD 1,032, profit AUD 492, margin 47.7%
- Highest-profit category: Electronics, AUD 492 (by amount). Highest margin category: Clothing, 52.1%
- Highest-revenue city: Geelong, AUD 1,298, profit AUD 611
- Best-selling product by units: Tea, 23 units
- Best-selling product by revenue: Hoodie, AUD 432, from 9 units
- Month with the highest revenue: February 2026, AUD 1,218, profit AUD 554
- Month with the lowest revenue: January 2026, AUD 1,011, profit AUD 468
- March 2026: AUD 1,149 revenue, AUD 532 profit, down 5.7% on February revenue but above January

## Category detail
- Electronics: revenue 1,032, profit 492, units 51, margin 47.7%
- Clothing: revenue 846, profit 441, units 36, margin 52.1%
- Home: revenue 797, profit 353, units 37, margin 44.3%
- Groceries: revenue 703, profit 268, units 75, margin 38.1%

## City detail
- Geelong: revenue 1,298, profit 611, units 63, margin 47.1%
- Melbourne: revenue 1,073, profit 465, units 52, margin 43.3%
- Werribee: revenue 1,007, profit 478, units 84, margin 47.5%

## Monthly detail
- 2026-01: revenue 1,011, profit 468, margin 46.3%
- 2026-02: revenue 1,218, profit 554, margin 45.5%
- 2026-03: revenue 1,149, profit 532, margin 46.3%

## Recommendations
1. Do not judge a category by revenue alone. Clothing earns less revenue than Electronics but has the highest margin, so it is the most profitable per dollar of sales.
2. Groceries moves the most units (75) but has the lowest margin (38.1%). Check pricing, cost, or product mix before promoting it on volume alone.
3. Werribee sells the most units (84) but has the lowest revenue. That volume-versus-revenue gap is worth investigating before any stock or promotion decision.
4. February was the peak month. March fell back slightly, but margins stayed near 46% in all three months, so the change looks like volume and mix, not a margin collapse.

## Limitations
- Small synthetic dataset created for learning: 40 rows, 3 months, 3 cities, 4 categories.
- No returns, discounts, taxes, marketing costs, or customer-level data.
- Conclusions are directional and for learning, not for a real business decision.

## Methods
- Data checks: no missing values, no duplicate rows, and every row was checked for revenue = unit price x quantity and profit = revenue - cost, with no errors.
- Excel workbook: retail_sales_analysis.xlsx, with Data, By Category, By City, Monthly, and By Product sheets and charts.
- SQL: sql/analysis_queries.sql. Python: python/analyze_sales.py (pandas). Charts: charts/.
