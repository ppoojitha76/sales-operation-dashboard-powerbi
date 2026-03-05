# Sales & Operations Performance Dashboard

## Project Overview
This project presents an interactive **Sales and Operations Performance Dashboard** developed using Power BI. The objective of the dashboard is to analyze sales performance, customer purchasing behavior, and delivery efficiency using transactional e-commerce data.

The dashboard transforms raw operational data into meaningful business insights, enabling stakeholders to monitor key performance indicators, evaluate product performance, and identify operational inefficiencies in delivery processes.

The project demonstrates practical skills in **data modeling, data transformation, and business intelligence visualization**.

---

## Business Objectives
The main objectives of this analysis are:

- Monitor overall revenue performance and order growth  
- Identify top performing product categories contributing to revenue  
- Understand customer payment behavior  
- Analyze geographic distribution of orders  
- Evaluate delivery performance across states  
- Identify cities generating the highest revenue  

---

## Tools and Technologies

- Power BI  
- SQL  
- Python (for data preprocessing and transformation)  
- DAX for calculated measures  
- Data Modeling  

---

## Dataset

The analysis uses the **Brazilian E-commerce Public Dataset**, which contains transactional information related to customer orders, product categories, payment methods, order timestamps, and delivery information.

The dataset enables both **sales performance analysis and operational performance evaluation**.

---

## Data Preparation

Before building the dashboard, the dataset was cleaned and transformed using Python and SQL.

The preparation process included:

- Handling missing values  
- Creating calculated delivery duration metrics  
- Standardizing date formats  
- Aggregating revenue and order metrics  
- Structuring the dataset for Power BI modeling  

---

## Data Modeling

A data model was created in Power BI to support time-based analysis.

### Tables Used

**Public Final Dataset**  
Contains transactional data such as revenue, customer location, payment type, and delivery duration.

**Date Table**  
Created to enable time intelligence calculations such as monthly revenue trends.

### Relationship

Order Date in the main dataset is connected to the Date column in the Date Table.  
This structure enables accurate time-based analysis using Power BI.

---

## Dashboard Structure

The dashboard consists of two main pages.

### Page 1 – Executive Overview

This page provides a high-level summary of overall business performance.

**Key KPIs**

- Total Revenue  
- Total Orders  
- Unique Orders  
- Average Order Value  
- Average Delivery Time  

**Visualizations**

**Top 10 States by Orders**  
Shows which states generate the highest number of orders.

**Orders Distribution Map**  
Displays geographic distribution of orders.

---

### Page 2 – Detailed Performance Analysis

This page provides deeper analytical insights into sales and operational metrics.

**Visualizations include**

**Monthly Revenue Trend**  
Shows revenue growth over time.

**Top 10 Product Categories by Revenue**  
Highlights the most profitable product categories.

**Orders by Payment Method**  
Analyzes customer payment preferences.

**Top 10 States with Longest Delivery Time**  
Identifies states with potential delivery inefficiencies.

**Top 10 Cities by Revenue**  
Shows cities generating the highest revenue.

---

## Key Business Insights

- Revenue reached approximately **$16M with strong growth over time**  
- **Credit cards dominate payment methods**, indicating customer preference for digital payments  
- Certain states experience **longer delivery times**, indicating potential logistics challenges  
- A small number of cities contribute a **large portion of total revenue**  

---

## Project Screenshots

### Executive Overview
![Dashboard Page 1](https://github.com/ppoojitha76/sales-operation-dashboard-powerbi/blob/master/dashboard_page1.png.png?raw=true)

### Detailed Analysis
![Dashboard Page 2](https://github.com/ppoojitha76/sales-operation-dashboard-powerbi/blob/master/dashboard_page2.png.png?raw=true)

### Data Model
![Data Model](data_model.png)

---

## Skills Demonstrated

- Data Cleaning and Transformation  
- Data Modeling  
- Power BI Dashboard Development  
- DAX Calculations  
- Business Insight Generation  
- Data Visualization Best Practices  

---

## Conclusion

This project demonstrates how business intelligence tools can convert raw transactional data into actionable insights. The dashboard provides stakeholders with a clear understanding of sales performance, customer behavior, and operational efficiency, enabling better strategic decision-making.
