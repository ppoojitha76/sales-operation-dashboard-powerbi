# Sales & Operations Performance Dashboard

## Project Overview

This project presents an interactive Power BI dashboard built to analyze e commerce sales performance, customer purchasing behavior, and delivery efficiency. The dashboard converts raw transactional data into clear business insights that help monitor performance and identify operational improvement opportunities.

The analysis focuses on understanding sales trends, regional distribution of revenue, customer patterns, and delivery performance.

## Dataset

The dataset used in this project is the Brazilian E Commerce Public Dataset (Olist). It contains information about customers, orders, products, and delivery operations.

Main dataset used in this project:

data/olist_customers_dataset.csv

## Project Workflow

1. Data Collection  
The Olist e commerce dataset was obtained and reviewed to understand the available tables and attributes related to customers, orders, and sales transactions.

2. Data Preparation  
Data was cleaned and organized to remove inconsistencies and prepare it for analysis. Relevant fields were selected to support business analysis.

3. Data Modeling  
Relationships between datasets such as customers, orders, and products were created to build a structured data model inside Power BI.

4. Data Analysis  
SQL queries were used to explore the data and extract meaningful metrics related to sales performance, customer behavior, and delivery operations.

5. Dashboard Development  
Interactive visualizations were created in Power BI to monitor sales trends, regional distribution, and operational performance.

6. Insight Generation  
The final dashboard was used to identify key patterns and insights that support business decision making.

## Data Model

The data model connects customer, order, and product datasets to support analysis inside Power BI.

![Data Model](https://github.com/ppoojitha76/sales-operation-dashboard-powerbi/blob/master/images/Data_model.png?raw=true)

## Dashboard Preview

### Sales Performance Overview

![Dashboard Page 1](images/dashboard_page1.png)

### Regional Sales Distribution

![Dashboard Page 2](images/dashboard_page2.png)

## Key Insights

• A small number of regions contribute a large share of total revenue, showing strong regional concentration of sales.

• Certain product categories dominate overall sales, indicating uneven category demand across the marketplace.

• Customer purchasing behavior shows repeat buyers, indicating opportunities for customer retention strategies.

• Delivery performance varies across regions, suggesting possible logistics inefficiencies.

• Monitoring order trends over time helps identify seasonal sales patterns and growth opportunities.

## Tools Used

Power BI  
Used to design the interactive dashboard and create visualizations that highlight sales performance and operational metrics.

PostgreSQL  
Used to query the dataset and explore relationships between different tables.

SQL  
Used to perform joins, aggregations, filtering, and extract key business metrics from the dataset.

Data Modeling  
Relationships were created between datasets to support efficient analysis inside Power BI.

Data Visualization  
Charts and interactive visuals were designed to present sales trends, regional distribution, and operational insights.

## Project Files

sales-operation-dashboard-powerbi
│
├── README.md
├── sales_operations_dashboard.pbix
├── sales_dashboard_queries.sql
│
├── data
│   └── olist_customers_dataset.csv
│
└── images
    ├── data_model.png
    ├── dashboard_page1.png
    └── dashboard_page2.png


## Author

Poojitha  
Data Analyst Enthusiast  

## Project Repository

GitHub Repository:  
https://github.com/ppoojitha76/sales-operation-dashboard-powerbi
