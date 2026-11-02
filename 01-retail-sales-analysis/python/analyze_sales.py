from pathlib import Path
import pandas as pd

# Run from the project root: python python/analyze_sales.py
data_path = Path(__file__).resolve().parents[1] / "data" / "retail_sales.csv"
df = pd.read_csv(data_path, parse_dates=["order_date"])

# Basic data-quality checks
print("Rows and columns:", df.shape)
print("\nMissing values by column:\n", df.isna().sum())
print("\nDuplicate rows:", df.duplicated().sum())

# Summary metrics
print("\nOverall performance")
print("Revenue (AUD):", round(df["revenue_aud"].sum(), 2))
print("Cost (AUD):", round(df["cost_aud"].sum(), 2))
print("Profit (AUD):", round(df["profit_aud"].sum(), 2))
print("Units sold:", int(df["quantity_sold"].sum()))

print("\nRevenue and profit by category")
print(
    df.groupby("category")[["revenue_aud", "profit_aud", "quantity_sold"]]
      .sum()
      .sort_values("revenue_aud", ascending=False)
)

df["sales_month"] = df["order_date"].dt.to_period("M").astype(str)
print("\nMonthly trend")
print(df.groupby("sales_month")[["revenue_aud", "profit_aud"]].sum())

# Save useful outputs for your portfolio
output_dir = Path(__file__).resolve().parents[1] / "outputs"
output_dir.mkdir(exist_ok=True)
df.groupby("category")[["revenue_aud", "profit_aud", "quantity_sold"]].sum().to_csv(
    output_dir / "category_summary.csv"
)
df.groupby("sales_month")[["revenue_aud", "profit_aud"]].sum().to_csv(
    output_dir / "monthly_summary.csv"
)
print("\nSaved summaries in the outputs/ folder.")
