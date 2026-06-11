-- revenue by cohort
SELECT
	DATE_FORMAT(created_date, '%Y-%m') AS cohort_month,
    SUM(subscription_cost) AS total_revenue
FROM data
GROUP BY cohort_month
ORDER BY total_revenue DESC;

-- average revenue per customer (ARPU)
SELECT
	DATE_FORMAT(created_date, '%Y-%m') AS cohort_month,
	ROUND(SUM(subscription_cost) / COUNT(DISTINCT customer_id),2) AS arpu
FROM data
GROUP BY cohort_month
ORDER BY arpu DESC;

-- total revenue
SELECT
    SUM(subscription_cost) AS total_revenue
FROM data
ORDER BY total_revenue DESC;