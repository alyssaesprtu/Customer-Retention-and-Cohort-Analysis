# 📊 Customer Retention and Cohort Analysis

This project analyzes customer subscription behavior to understand retention, churn, and customer lifetime value. Using SQL, I examined subscription data to identify trends in customer acquisition, retention rates, and cohort performance over time.

The goal is to help the businesses understand how effectively they retain customers and identify opportunities to improve customer loyalty and revenue.

## Business Questions:
This analysis aims to answer the following questions:
1. How many customers are currently active and how many have churned?
2. How many new customers are acquired each month?
3. What is the monthly churn trend?
4. How long do customers stay subscribed on average?
5. Which customers cohorts have the highest retention rates?
6. Which customer cohorts generate the most revenue?
7. How has the customer base grown over time?

## Dataset
The dataset contains subscription records for customers of a streaming service.
- `customer_id`: customer identifier
- `created_date`: subscription start date
- `canceled_date`: subscription cancellation date (NULL if active)
- `subscription_cost`: subscription price
- `subscription_interval`: billing frequency
- `was_subscription_paid`: whether payment was successful

Source: https://www.kaggle.com/datasets/keremkarayaz/streaming-video-subscriptions-datasets?resource=download

## Analysis Performed
| Analysis | SQL Script |
|---|---|
Customer Overview | 
Acquisition Analysis |
Churn Analysis |
Customer Lifetime Analysis |
Cohort Analysis |
Revenue Analysis |

## Key Findings:
1. Customer Base Overview:
- Total customers: **3,069**
- Active customers: **1,065**
- Churned customers: **2,004**

2. Customer Acquisition Trends
- Highest signup month: **July 2023**
- Lowest signup month: **September 2023**
- Overall growth trend:

3. Churn Behavior
- Total churned customers: **2,004**
- Churn rate: **65.30%**
- Highest churn month: **June 2023**

4. Customer Lifetime Analysis
- Average customer lifespan:
- Longest-retained customer: **1,378 days**
