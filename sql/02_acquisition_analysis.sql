-- monthly customer signups
WITH monthly_signups AS (
SELECT 
	DATE_FORMAT(created_date, '%Y-%m') AS signup_month,
    COUNT(customer_id) AS customers
FROM data
GROUP BY signup_month
ORDER BY signup_month ASC
)

-- customer growth trend
SELECT 
	signup_month,
    customers,
	SUM(customers) OVER(ORDER BY signup_month ASC) AS cumulative_customers
FROM monthly_signups
ORDER BY customers ASC;