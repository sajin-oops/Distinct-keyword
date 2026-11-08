SELECT * FROM fact_retail_sales;


SELECT 
	COUNT(*) AS total_records,
	ROUND(SUM(CASE WHEN transaction_type = 'SALE' THEN amount_paid ELSE 0 END),2) AS sales_revenue,
	ROUND(SUM(CASE WHEN transaction_type = 'RETURN' THEN amount_paid ELSE 0 END),2) AS return_deductions,
	ROUND(SUM(CASE WHEN transaction_type = 'SALE' THEN amount_paid ELSE - amount_paid END),2) AS net_revenue
FROM fact_retail_sales;



--unique item
SELECT DISTINCT(order_line_item) FROM fact_retail_sales;

-- unique city name
SELECT DISTINCT(customer_city) FROM fact_retail_sales;
 
-- unique category
SELECT DISTINCT(customer_city) FROM fact_retail_sales;

-- unique transaction type
SELECT DISTINCT(transaction_type) FROM fact_retail_sales;
