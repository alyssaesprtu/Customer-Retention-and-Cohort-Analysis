-- monthly cancellations
SELECT 
	DATE_FORMAT(canceled_date, '%Y-%m') AS churn_month,
    COUNT(customer_id) AS churn_customers
FROM data
WHERE canceled_date IS NOT NULL
GROUP BY churn_month
ORDER BY churn_customers ASC;

-- total customers
WITH customer_metrics AS (
SELECT 
	COUNT(customer_id) AS total_customers,
    SUM(CASE 
			WHEN canceled_date IS NOT NULL THEN 1
			ELSE 0 
        END) AS churned_customers
FROM data
)

SELECT 
	total_customers,
    churned_customers,
	ROUND((churned_customers * 1.0 / total_customers) * 100, 2) AS churn_rate
FROM customer_metrics;