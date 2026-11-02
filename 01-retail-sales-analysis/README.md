# Retail Sales Analysis — Individual Portfolio Project

A beginner Data Analyst portfolio project using a fictional, synthetic retail dataset, January to March 2026, 40 records.

## What this project shows
Data cleaning and checking, Excel Pivot-style summaries, SQL analysis, Python (pandas) analysis, charts, and written business interpretation — with revenue and profit kept separate, not just revenue alone.

## Headline results (verified from the CSV)
- Total revenue: AUD 3,378
- Total cost: AUD 1,824
- Total profit: AUD 1,554
- Units sold: 199
- Overall profit margin: 46.0%
- Top revenue category: Electronics (AUD 1,032)
- Top margin category: Clothing (52.1%)
- Top revenue city: Geelong (AUD 1,298)
- Peak month: February 2026 (AUD 1,218)

Full findings, recommendations, and limitations are in `insights/analysis_notes.md` and in `Retail_Sales_Analysis_Report.docx`.

## Files
- `data/retail_sales.csv` — synthetic dataset
- `sql/analysis_queries.sql` — 9 analysis queries
- `python/analyze_sales.py` — pandas analysis, saves category and monthly summaries
- `retail_sales_analysis.xlsx` — Excel workbook with Data, By Category, By City, Monthly, and By Product sheets, plus charts
- `charts/` — revenue/profit by category, by city, and monthly trend
- `outputs/` — category, city, product, and monthly summary CSVs
- `Retail_Sales_Analysis_Report.docx` — final report

## Important note
This is a learning project with synthetic data. Do not present these results as real business performance. In an interview, be ready to explain the questions, the calculations, and why revenue rank and margin rank differ.
