
CREATE TABLE final_dataset (
order_id TEXT,
customer_id TEXT,
order_status TEXT,
order_purchase_timestamp TIMESTAMP,
order_approved_at TIMESTAMP,
order_delivered_carrier_date TIMESTAMP,
order_delivered_customer_date TIMESTAMP,
order_estimated_delivery_date DATE,
delivery_days FLOAT,
is_delivered BOOLEAN,
purchase_year INT,
customer_unique_id TEXT,
customer_zip_code_prefix INT,
customer_city TEXT,
customer_state TEXT,
order_item_id INT,
product_id TEXT,
seller_id TEXT,
shipping_limit_date TIMESTAMP,
price NUMERIC,
freight_value NUMERIC,
product_category_name TEXT,
product_name_lenght FLOAT,
product_description_lenght FLOAT,
product_photos_qty FLOAT,
product_weight_g FLOAT,
product_length_cm FLOAT,
product_height_cm FLOAT,
product_width_cm FLOAT,
payment_sequential FLOAT,
payment_type TEXT,
payment_installments FLOAT,
payment_value NUMERIC,
total_price NUMERIC
);

--LOAD CSV DATA--
COPY final_dataset
FROM 'c:/temp/final_dataset_cleaned.csv'
DELIMITER ','
CSV HEADER
SELECT COUNT (*) FROM final_dataset;

--check  missing value--
SELECT COUNT(*) FROM final_dataset;
SELECT COUNT(*)FILTER(WHERE order_id IS NULL) AS missing_order_id,
COUNT(*)FILTER (WHERE customer_id IS NULL) AS missing_customer,
COUNT(*)FILTER (WHERE total_price IS NULL) AS missing_total_price

FROM final_dataset;
--check duplicates--
SELECT order_id,COUNT(*)
FROM final_dataset
GROUP BY order_id
HAVING COUNT (*)>1;

--Total Business Metrics--
SELECT 
COUNT(*) AS total_rows,
COUNT(DISTINCT order_id) AS unique_orders,
ROUND(SUM(total_price),2)AS revenue
FROM final_dataset;

-- Daily order--
SELECT 
DATE(order_purchase_timestamp :: timestamp) AS order_date,
COUNT(*) AS orders,
ROUND(sum(total_price),2) AS revenue
FROM final_dataset
GROUP BY order_date
ORDER BY order_date;
--Monthly trend--
SELECT DATE_TRUNC('month',order_purchase_timestamp ::timestamp) AS month,
COUNT(*) AS orders,
ROUND(sum(total_price),2) AS revenue
FROM final_dataset
GROUP BY month
ORDER BY month;

--Revenue by order staus--
SELECT order_status,
COUNT(*) AS orders,
ROUND(sum(total_price),2) AS revenue
FROM final_dataset
GROUP BY order_status
ORDER BY revenue DESC;

--Average Delivery Time--
SELECT AVG(delivery_days)AS avg_delivery_date,
        MIN(delivery_days) AS fastest_delivery,
		MAX(delivery_days) AS slowest_delivery
		FROM final_dataset;
		
--Customers by spending--
SELECT customer_id
ROUND(sum(total_price),2) AS total_spent,
COUNT(DISTINCT order_id) AS orders
FROM final_dataset
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;
		
