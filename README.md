# 📊 Customer Retention and Cohort Analysis

This project analyzes customer subscription behavior to understand retention, churn, and customer lifetime value. Using SQL, I examined subscription data to identify trends in customer acquisition, retention rates, and cohort performance over time.

The goal is to help the business understand how effectively they retain customers and identify opportunities to improve customer loyalty and revenue.

##### 📁 Project Structure
````
customer-retention-cohort-analysis
│
├── data
│   ├── cleaned_dataset.sql
│   ├── streaming-video-subscriptions-analysis-data-dictionary.csv
│   ├── subscription-cohort-analysis.csv
│
├── sql
│   ├── 01_customer_overview.sql
│   ├── 02_acquisition_analysis.sql
│   ├── 03_churn_analysis.sql
│   ├── 04_customer_lifetime_analysis.sql
│   ├── 05_cohort_analysis.sql
│   └── 06_revenue_analysis.sql
│
└── README.md
````

## ❓ Business Questions:
This analysis aims to answer the following questions:
1. How many customers are currently active and how many have churned?
2. How many new customers are acquired each month?
3. What is the monthly churn trend?
4. How long do customers stay subscribed on average?
5. Which customer cohorts have the highest retention rates?
6. Which customer cohorts generate the most revenue?
7. How has the customer base grown over time?

## 🗂️ Dataset
The dataset contains subscription records for customers of a streaming service.
- `customer_id`: customer identifier
- `created_date`: subscription start date
- `canceled_date`: subscription cancellation date (NULL if active)
- `subscription_cost`: subscription price
- `subscription_interval`: billing frequency
- `was_subscription_paid`: whether payment was successful

Source: https://www.kaggle.com/datasets/keremkarayaz/streaming-video-subscriptions-datasets?resource=download

## 🛠️ Analysis Performed

| Analysis | SQL Script |
|---|---|
| Customer Overview | [01_customer_overview](sql/01_customer_overview.sql) |
| Acquisition Analysis | [02_acquisition_analysis](sql/02_acquisition_analysis.sql) |
| Churn Analysis | [03_churn_analysis](sql/03_churn_analysis.sql) |
| Customer Lifetime Analysis | [04_customer_lifetime](sql/04_customer_lifetime.sql) |
| Cohort Analysis | [05_cohort_analysis](sql/05_cohort_analysis.sql) |
| Revenue Analysis | [06_revenue_analysis](sql/06_revenue_analysis.sql) |

## 🔍 Key Findings:
#### 👥 Customer Base Overview
- More than **65%** of customers have canceled their subscriptions, resulting in a smaller active customer base compared to total customers acquired.

#### 📈 Customer Acquisition Trends
- Customer signups generally **increased** throughout the analysis period, suggesting that the business was consistently acquiring new customers and expanding its customer base.

#### ⚠️ Churn Behavior
- Although the business continues to acquire customers, the high churn rate suggests that retaining customers remains a major challenge.

#### ⏳ Customer Lifetime Analysis
- Customers remain subscribed for an **average of 426 days**, indicating relatively long customer relationships before cancellation.

#### 🧩 Cohort Performance
- Newer cohorts show higher retention rates because they have had less time to cancel their subscriptions compared to older cohorts.

#### 💰 Revenue Insights
- Revenue growth is primarily driven by customer acquisition rather than changes in customer spending.

### 📝 Conclusion
This analysis examined customer acquisition, retention, churn, cohort performance, and revenue trends for a streaming subscription service using SQL.

The results showed that while the business continues to acquire new customers and grow its customer base, customer retention remains a significant challenge due to the high churn rate. Customers stay subscribed for more than a year on average, indicating that many customers remain engaged with the service for an extended period.

Cohort analysis revealed that newer cohorts show higher retention rates than older cohorts because they have had less time to cancel their subscriptions. Revenue analysis showed that revenue growth is primarily driven by customer acquisition rather than increases in customer spending.

Overall, the findings suggest that the business should focus not only on acquiring new customers but also on improving customer retention to maximize long-term customer value and support sustainable revenue growth.

> 👋 About Me
> 
> Hi, I'm Alyssa, an aspiring Data Analyst passionate about transforming data into actionable insights.
>
> 🔗 LinkedIn: linkedin.com/in/alyssaesprtu
