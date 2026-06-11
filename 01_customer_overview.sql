-- total of customers subscribed
SELECT COUNT(customer_id) AS total_customers
FROM data;

-- total of active customers
SELECT COUNT(customer_id) AS active_customers
FROM data
WHERE canceled_date IS NULL;

-- total churned customers
SELECT COUNT(customer_id) AS churn_customers
FROM data
WHERE canceled_date IS NOT NULL;
