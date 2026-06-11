-- average customer lifespan
WITH customer_lifespan AS (
SELECT
	customer_id,
    DATEDIFF(
		COALESCE(canceled_date, CURRENT_DATE),
        created_date
	) AS lifetime_days
FROM data
) 

-- Longest-retained customers
SELECT 
	customer_id,
    lifetime_days,
	RANK() OVER(ORDER BY lifetime_days DESC) AS customer_rank
FROM customer_lifespan
ORDER BY lifetime_days DESC;

-- average customer lifespan
SELECT
	ROUND(AVG(DATEDIFF(
		COALESCE(canceled_date, CURRENT_DATE),
        created_date
	)),0) AS lifetime_days
FROM data;