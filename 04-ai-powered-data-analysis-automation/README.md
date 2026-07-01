# AI-Powered Data Analysis & Automation

## Objective
Use Python to clean and preprocess a raw dataset, then apply AI-assisted techniques for anomaly detection, correlation analysis, and automated narrative reporting.

## Data
Raw dataset with numerical, binary, and categorical fields (customer/financial attributes including churn and default flags).

## Tools Used
Python (Pandas), automated visualisation, AI-assisted narrative generation

## Approach
- **Data cleaning:** Standardised column names; inspected data types and nulls (`.info()`, `.isnull().sum()`); reviewed summary statistics (`.describe()`)
- **Missing values:** Numerical columns filled with mean; binary columns (`Customer_Churn`, `Defaulted`) filled with mode; categorical columns filled with mode
- **Deduplication:** Removed duplicate records
- **Outlier detection:** IQR method — calculated Q1/Q3, defined bounds, filtered out-of-range values
- **Visual analysis:** Generated correlation matrix and key-influencer visuals
- **Anomaly detection:** Identified unusual patterns in the cleaned dataset
- **Automated reporting:** Generated a smart narrative report summarising findings

## Key Findings
*(Fill in after review — what did the anomaly detection and correlation matrix actually reveal?)*

## Business Insight
*(Fill in after your weekend review — what would this automation save a business in time/effort, and what decision would it support?)*

## What I'd Do Differently Now
*(Optional growth note)*
