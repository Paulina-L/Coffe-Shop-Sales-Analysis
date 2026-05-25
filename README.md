# Coffee Shop Sales Analysis

Project provides coffee shop sales analysis using data transformation, SQL query writing and interactive report design in Power BI.

---

## Dashboard Preview

![Dashboard Preview](Power%20BI%20report/report%20preview.png)
![Dashboard Preview: tooltips](Power%20BI%20report/report%20preview_tooltip.png)
![Dashboard Preview: drill-through option](Power%20BI%20report/report%20preview_drill.png)
---

## Data source:

https://www.kaggle.com/datasets/ahmedabbas757/coffee-sales/data

---

## Project Workflow & Tech Stack

- **Data Ingestion:** excel dataset imported directly into **Power BI Desktop**
- **Data Modeling & UI:** Power BI (Data cleaning, relationship mapping and dashboard design)
- **Analytics:** advanced calculations on dataset using Power BI DAX & MySQL

---

## SQL Logic

Written analytical SQL logic to validate and confirm the results of the Power BI DAX metrics.
All SQL calculations descibed in .pdf file -> \SQL calculations\SQL calculations info.docx

---
## Key Business Insights & Strategic Recommendations

### 1. Operational Efficiency & Scheduling Optimization
- **Peak Morning Capacity:** A significant transaction volume spike occurs daily between 7:00 AM and 10:00 AM. To protect service quality, throughput speed, and team morale, scheduled barista coverage should be maxed out during this high-velocity window.
- **Off-Peak Hour Rationalization:** Customer foot traffic drops off drastically after 8:00 PM (20:00). Closing the stores 30 to 60 minutes earlier would minimize overhead, utility costs, and unoptimized labor expense without impacting core daily revenue.

### 2. Inventory & Menu Performance
- **Core Category Priority:** Coffee, Tea, and Bakery items are the primary revenue engines of the business. Inventory capital and shelf space allocation should heavily favor these categories.
- **Low-Margin Product Types:** Packaged chocolate and loose tea variants underperform significantly across all key metrics. It is highly recommended remove it from menu to simplify inventory management and reduce retail waste.

### 3. Revenue Drivers & Market Expansion
- **Cyclical Demand Generation:** A consistent revenue dip occurs during the first week of every month. To stabilize cash flow, targeted marketing campaigns, multi-buy bundles, or localized loyalty discounts should be implemented specifically during this low-volume week.
- **Geographic Scaling:** The Hell's Kitchen storefront consistently outperforms all other retail locations. This strong proof of concept suggests that the neighborhood profile is highly receptive to the brand, making secondary local footprints or mobile pop-ups in this area low-risk expansion targets.

---

## How to Explore this Project

1. Download the original dataset from the Kaggle link above if you want to inspect the source file.

2. Open the .pbix file in the /Power BI report folder using Power BI Desktop. The data is fully integrated inside the file, so it will load and display perfectly on your machine immediately.

Review the \SQL calculations folder to see the SQL queries. Explainatory SQL calculations info.docx file is also there.

---

## Future development:
- sales analysis using python: cross-selling & product bundling (data clustering, correlation)
- building a prediction model for future months (jupyter notebook) (regression problem)
- adding mobile layout to power BI report
