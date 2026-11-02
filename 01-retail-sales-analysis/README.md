# Retail Sales Analysis — My Individual Portfolio Project

I built this project to practise the full data analyst workflow: cleaning and checking data, summarising it in Excel, SQL, and Python, and writing findings I can explain in an interview.

I used a fictional, synthetic retail dataset from January to March 2026, with 40 records. These are practice results, not real business performance.

## What I found
I verified these numbers myself from the CSV:
- Total revenue: AUD 3,378
- Total cost: AUD 1,824
- Total profit: AUD 1,554
- Units sold: 199
- Overall profit margin: 46.0%
- Top revenue category: Electronics (AUD 1,032)
- Top margin category: Clothing (52.1%)
- Top revenue city: Geelong (AUD 1,298)
- Peak month: February 2026 (AUD 1,218)

I wrote the full findings, recommendations, and limitations in `insights/analysis_notes.md` and in `Retail_Sales_Analysis_Report.docx`.

One finding I would highlight in an interview: revenue rank and margin rank are different. Electronics earns the most revenue, but Clothing earns the most profit per dollar of sales. I also found that the highest-volume products and cities are not always the highest-revenue ones, which is why I report units and revenue separately.

## Files in this folder
- `data/retail_sales.csv` — the synthetic dataset I worked with
- `sql/analysis_queries.sql` — my 9 analysis queries
- `python/analyze_sales.py` — my pandas analysis
- `retail_sales_analysis.xlsx` — my Excel workbook, with Data, By Category, By City, Monthly, and By Product sheets, plus charts
- `charts/` — my charts for category, city, and monthly trends
- `outputs/` — my category, city, product, and monthly summary tables
- `Retail_Sales_Analysis_Report.docx` — my final report
