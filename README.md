# Salesinsights-powerbi
Sales Insights Dashboard created in Power BI using a real-world dataset. 
# 📊 Sales Insights Dashboard – SQL + Power BI Project

This project presents a comprehensive **Sales Insights Dashboard**, developed using **SQL** for data preparation and **Power BI** for interactive visualization. It analyzes sales trends, revenue, and product performance based on real-world business scenarios.

---

## 🚀 Project Objective

To build an end-to-end Business Intelligence solution that extracts insights from sales data using SQL and visualizes them in Power BI. This helps decision-makers monitor KPIs, identify sales trends, and make data-driven decisions.

---

## 🛠 Tools & Skills Used

- **Microsoft SQL Server** – for querying and cleaning raw data
- **Power BI Desktop** – for visualizing and modeling the data
- **Power Query** – for ETL operations
- **DAX (Data Analysis Expressions)** – for custom KPIs and measures
- **Data Modeling** – relationships between multiple tables

---

## 📂 Files Included

- `SalesInsights.pbix` – Main Power BI report file
- `Sql_sales.sql` – SQL script used to prepare and query sales data
- `screenshots/` – Dashboard preview images
- (Optional) `data/` – Sample CSV or Excel data files if allowed

---

## 🧾 SQL Highlights

The SQL file (`Sql_sales.sql`) contains key queries used for:

- Filtering out invalid or low-value sales entries (`sales_amount <= 1`)
- Handling inconsistent currency formats (e.g., `'INR'` vs `'INR\r'`)
- Calculating total revenue by year and market
- Getting revenue by month and top-performing products:
```sql
SELECT 
    p.product_code,
    p.product_type,
    SUM(t.sales_amount) AS total_sales
FROM 
    transactions t
JOIN 
    products p ON t.product_code = p.product_code
WHERE 
    YEAR(t.order_date) = 2020
GROUP BY 
    p.product_code, p.product_type
ORDER BY 
    total_sales DESC
LIMIT 5;
