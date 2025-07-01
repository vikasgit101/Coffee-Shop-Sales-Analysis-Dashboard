# ☕ Coffee Shop Sales Analysis Dashboard (SQL + Power BI)

> 📊 A complete business intelligence project analyzing real-time sales data of a coffee shop using **SQL for data transformation** and **Power BI for dashboard visualization**.

---

## 📚 Table of Contents

- [📌 Project Overview](#-project-overview)
- [🎯 STAR-Based Summary](#-star-based-summary)
- [📁 Dataset](#-dataset)
- [🎯 Business Objectives](#-business-objectives)
- [🛠️ Tools & Technologies](#-tools--technologies)
- [📊 KPIs & SQL Logic](#-kpis--sql-logic)
- [📈 Power BI Dashboard Highlights](#-power-bi-dashboard-highlights)
- [🧠 Key Skills Used](#-key-skills-used)
- [📁 Project Structure](#-project-structure)
- [💡 Business Insights](#-business-insights)
- [📣 Keywords & Hashtags](#-keywords--hashtags)
- [🙋‍♂️ Author](#-author)

---

## 📌 Project Overview

This project analyzes real-world sales data from a coffee shop chain to help the business understand product performance, store-wise sales, and customer behavior over time.

Using **SQL for backend analysis** and **Power BI for visualization**, this end-to-end project transforms raw transactional data into actionable dashboards that drive better decision-making.

---

## 🎯 STAR-Based Summary

**S – Situation:**  
The coffee shop management lacked visibility into sales trends across months, locations, and products.

**T – Task:**  
Clean, analyze, and visualize the sales data to uncover high-performing stores, products, and revenue patterns.

**A – Action:**  
- Cleaned and restructured data using SQL (date/time formatting, column standardization)  
- Calculated KPIs using SQL: total sales, quantity, orders, MoM growth  
- Applied window functions (`LAG()`, `OVER()`) and `CASE WHEN` logic  
- Built an interactive **Power BI dashboard** to visualize product, store, and time-based trends

**R – Result:**  
- Delivered a robust dashboard showing trends, peak days, and top-performing categories  
- Enabled business leaders to monitor KPIs, compare store locations, and optimize operations

---

## 📁 Dataset

- **Source:** Coffee Shop Transactions (CSV)  
- **Records:** Thousands of orders across months  
- **Fields Include:**  
  - Transaction ID, Date, Time  
  - Store Location  
  - Product Category & Type  
  - Unit Price & Quantity  
  - Total Sales (calculated)

---

## 🎯 Business Objectives

- Analyze monthly, daily, and hourly sales trends  
- Compare performance between stores and products  
- Calculate growth metrics (MoM, YoY)  
- Identify top-selling products and high-revenue categories  
- Classify daily performance (Above/Below Average)

---

## 🛠️ Tools & Technologies

| Tool | Use |
|------|-----|
| **SQL (MySQL)** | Data cleaning, aggregation, and KPI generation |
| **Power BI** | Data visualization & dashboard design |
| **Excel (Optional)** | Exploratory data viewing |
| **DAX (optional)** | Custom measures in Power BI |

---

## 📊 KPIs & SQL Logic

- ✅ **Total Sales**: `SUM(unit_price * transaction_qty)`
- ✅ **Total Orders**: `COUNT(transact_id)`
- ✅ **Total Quantity Sold**: `SUM(transaction_qty)`
- ✅ **MoM Growth**: `LAG() OVER()` for month comparisons
- ✅ **Sales Status** (Above/Below Average):
  ```sql
  CASE
    WHEN total_sales > (SELECT AVG(total_sales) FROM daily_sales) THEN 'Above Average'
    WHEN total_sales < (SELECT AVG(total_sales) FROM daily_sales) THEN 'Below Average'
    ELSE 'Average'
  END
  ```
- ✅ **Weekend vs Weekday Sales**: Using `DAYOFWEEK()`

---

## 📈 Power BI Dashboard Highlights

- 📍 **Sales by Store Location**  
- 📦 **Top 10 Product Types**  
- 📆 **Day-wise Sales Trends**  
- 🕒 **Time-of-day Analysis**  
- 📈 **Month-over-Month Growth**  
- 📊 **Visual KPIs for Executives**

*Dashboard file: `dash.pbix`*

---

## 🧠 Key Skills Used

- SQL Aggregations & Joins  
- CTEs & Window Functions (`LAG`, `OVER`)  
- CASE Logic for Classification  
- Power BI Dashboard Design  
- Data Cleaning & Time Format Conversion

---

## 📁 Project Structure

```
📦 Coffee-Shop-Sales
├── 📄 Coffee Shop Sales.csv           # Raw transactional dataset
├── 🐘 Coffee Shop Sales_sq.sql       # SQL file with all queries
├── 📊 dash.pbix                       # Final Power BI dashboard
├── 📄 README.md                       # Project documentation
```

---

## 💡 Business Insights

- 🔝 **Store A** generated the highest monthly revenue  
- 🧃 **Cold Drinks & Bakery Items** were best-sellers in May  
- 📅 **Weekends** had higher average sales than weekdays  
- 🚀 MoM Growth in orders showed **12.5% increase in May**

---

## 📣 Keywords & Hashtags

**Keywords:**  
Retail Analytics, SQL Reporting, Sales Dashboard, Data-Driven Decisions, Coffee Shop BI, KPI Design, Time Series Trends

**Hashtags:**  
#SQL #PowerBI #DataAnalytics #RetailInsights #SalesDashboard #GitHubPortfolio  
#VikasKumarProjects #BusinessIntelligence

---

## 🙋‍♂️ Author

**Vikas Kumar**  
📧 Email: vk328696@gmail.com  
🔗 LinkedIn: [linkedin.com/in/vikas-ku](https://linkedin.com/in/vikas-ku)  
📂 GitHub: [github.com/vikasgit101](https://github.com/vikasgit101)

> ⭐ *If you found this project useful, give it a star and connect with me on LinkedIn!*
