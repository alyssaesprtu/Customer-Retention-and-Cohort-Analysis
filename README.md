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
6. Which cohorts generate the most revenue?
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
### Customer Overview
- Total Customers
- Active Customers
- Churned Customers

### Acquisition Analysis
- Monthly customer signups
- Customer growth trends

### Churn Analysis
- Monthly cancellations
- Churn rate monitoring

### Customer Lifetime Analysis
- Average customer lifespan
- Longest-retained customers

### Cohort Analysis
- Grouped customers by signup month
- Measured active customers within each cohort
- Calculated retention rates by cohort
- Compared cohort performance across acquisition periods

### Revenue Analysis
- Revenue by Cohort
- Average revenue per customer

## Key Findings:
