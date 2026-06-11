-- cohort size by signup month
SELECT
	DATE_FORMAT(created_date, '%Y-%m') AS cohort_month,
	COUNT(*) AS total_customers
FROM data
GROUP BY cohort_month;

-- active customers by cohort
SELECT
    DATE_FORMAT(created_date, '%Y-%m') AS cohort_month,
	SUM(
    CASE
		WHEN canceled_date IS NULL THEN 1
        ELSE 0
	END) AS active_customers
FROM data
GROUP BY cohort_month;

-- retention rate by cohort
WITH cohort_summary AS (
SELECT
	DATE_FORMAT(created_date, '%Y-%m') AS cohort_month,
	COUNT(*) AS total_customers,
	SUM(
    CASE
		WHEN canceled_date IS NULL THEN 1
        ELSE 0
	END) AS active_customers
FROM data
GROUP BY cohort_month
)
SELECT
	*,
    ROUND((active_customers * 1.0 / total_customers) * 100, 2) AS retention_rate
FROM cohort_summary;

-- cohort performance comparison
WITH cohort_summary AS (
SELECT
	DATE_FORMAT(created_date, '%Y-%m') AS cohort_month,
	COUNT(*) AS total_customers,
	SUM(
    CASE
		WHEN canceled_date IS NULL THEN 1
        ELSE 0
	END) AS active_customers
FROM data
GROUP BY cohort_month
),
retention_rate AS (
SELECT
	cohort_month,
    total_customers,
    active_customers,
    ROUND((active_customers * 1.0 / total_customers) * 100, 2) AS retention_rate
FROM cohort_summary
)
SELECT 
	*,
    RANK () OVER (ORDER BY retention_rate DESC) AS performance_rank
FROM retention_rate;