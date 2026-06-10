# Telecom Customer Churn Analysis
## Business Analytics Case Study Report
### AnalystLab Africa Data Analytics Internship — Week 5

---

## 1. Introduction

Customer churn is one of the most critical challenges facing the 
telecommunications industry. Losing a customer is significantly more 
expensive than retaining one — industry estimates suggest acquiring a 
new customer costs five times more than keeping an existing one. 
This report analyses the Telco Customer Churn dataset to identify the 
key drivers of customer attrition and provide actionable recommendations 
to reduce churn.

---

## 2. Business Problem Statement

The telecom company is experiencing a churn rate of 26.5%; meaning 
1 in 4 customers is leaving the service. With 1,869 customers churned 
out of 7,043 total, the business faces significant recurring revenue 
loss. The central questions this analysis seeks to answer are:

- Why are customers leaving?
- Which customer segments are most at risk?
- What can the business do to retain high-risk customers?

---

## 3. Dataset Description

- **Source:** IBM Sample Dataset (Kaggle)
- **Records:** 7,043 customers
- **Features:** 21 columns covering demographics, services, 
  contract details and billing information
- **Target Variable:** Churn (Yes/No)
- **Key columns:** tenure, MonthlyCharges, TotalCharges, Contract, 
  InternetService, PaymentMethod, SeniorCitizen

---

## 4. Data Analysis Process

**Step 1 — Data Cleaning**
- Converted TotalCharges from string to numeric 
  (11 blank values found and filled with 0)
- Converted SeniorCitizen from binary (0/1) to categorical (Yes/No)
- Created Churn_Binary column for numerical calculations

**Step 2 — Exploratory Data Analysis**
- Analysed distribution of all key variables
- Calculated churn rates across customer segments
- Built 8 visualisations in Python and an interactive dashboard in Power BI

**Step 3 — Key Driver Identification**
- Identified contract type, internet service, payment method, 
  tenure and monthly charges as the primary churn drivers

---

## 5. Key Findings

| Finding | Detail |
|---------|--------|
| Overall Churn Rate | 26.5% (1,869 of 7,043 customers) |
| Month-to-Month Churn | 42.7% — highest of all contract types |
| Two-Year Contract Churn | ~2.8% — dramatically lower |
| Fiber Optic Churn Rate | 41.9% — highest internet service |
| Electronic Check Churn | Highest of all payment methods |
| Senior Citizen Churn | Higher than non-senior customers |
| Avg Tenure (Churned) | ~18 months vs ~38 months for retained |
| Avg Monthly Charges (Churned) | ~$74 vs ~$61 for retained |

---

## 6. Business Insights

**Insight 1 — Contract Type is the Strongest Churn Predictor**
Month-to-month customers churn at 42.7% compared to just 2.8% for 
two-year contract customers. With 55% of all customers on month-to-month 
contracts, this represents the single largest risk segment in the business.

**Insight 2 — Fiber Optic Customers are Dissatisfied Despite Paying More**
Fiber optic customers pay the highest monthly charges but churn at 41.9% — 
the highest of any internet service type. This suggests a quality or 
value perception problem with the premium service tier.

**Insight 3 — Early Tenure is the Most Vulnerable Period**
Churned customers had a median tenure of approximately 18 months compared 
to 38 months for retained customers. The first 12 months are the highest 
risk window — customers who survive past year two rarely leave.

**Insight 4 — Electronic Check Users are High Risk**
Customers paying by electronic check churn at significantly higher rates 
than those on automatic bank transfers or credit cards. This may indicate 
a less engaged, less committed customer profile.

**Insight 5 — Senior Citizens Need Special Attention**
Senior citizen customers churn at a higher rate than non-seniors, 
suggesting the current product and support offering may not adequately 
serve this demographic.

---

## 7. Recommendations

**Recommendation 1 — Incentivise Long-Term Contracts**
Offer meaningful discounts or free service upgrades to month-to-month 
customers who switch to one or two-year contracts. A 10-15% discount 
for annual commitment could significantly reduce the 42.7% churn rate 
in this segment.

**Recommendation 2 — Investigate and Fix Fiber Optic Service Quality**
Conduct customer satisfaction surveys specifically targeting fiber optic 
subscribers. Identify whether the churn is driven by price, speed, 
reliability or customer support — and address the root cause directly.

**Recommendation 3 — Launch an Early Tenure Retention Programme**
Create a structured onboarding programme for the first 12 months of 
a customer's lifecycle. Proactive check-ins, loyalty rewards at the 
6-month and 12-month mark, and personalised offers during this window 
would address the highest-risk churn period.

**Recommendation 4 — Encourage Auto-Payment Adoption**
Customers on automatic bank transfer or credit card payments churn 
significantly less. Offering a small monthly discount for switching 
from electronic check to automatic payment would reduce both churn 
risk and payment friction.

**Recommendation 5 — Create a Senior Citizen Support Package**
Develop a tailored service package for senior citizens with simplified 
billing, dedicated support lines and optional in-home assistance. 
This addresses both the higher churn rate and the underserved needs 
of this demographic.

---

## 8. Conclusion

The analysis reveals that customer churn at this telecom company is 
not random — it is concentrated in specific, identifiable segments. 
Month-to-month contract holders, fiber optic subscribers, electronic 
check payers and senior citizens are the four highest-risk groups. 
Targeted interventions in these segments, particularly during the 
critical first 12 months of tenure, would have the greatest impact 
on reducing the overall 26.5% churn rate.

The tools used in this analysis — Python for data cleaning and 
visualisation, and Power BI for interactive dashboarding — demonstrate 
the full analytics workflow from raw data to actionable business insight.

---

*Report prepared by: [Chisom Promise Onyekaba]*
*AnalystLab Africa Data Analytics Internship — Week 5*