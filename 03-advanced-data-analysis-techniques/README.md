# Advanced Data Analysis Techniques & Business Insights

## Objective
Apply advanced data analysis techniques to a retail sales dataset to understand customer behaviour, identify patterns, and forecast trends — supporting marketing strategy, inventory planning, and customer retention.

## Data
Retail sales dataset including spend, region, and churn-related fields.

## Tools Used
Python (Pandas, statistical methods)

## Approach
- **Missing values:** Numerical columns (e.g. `Total_Spend`) imputed using median to preserve distribution; categorical columns (e.g. `Region`) imputed using mode
- **Outlier detection:** Z-score method applied to `Marketing_Spend` and `Total_Spend`; entries with |Z| > 3 removed
- **Standardisation:** Cleaned categorical columns (whitespace, casing) for consistency; `Churned` column prepared for modelling
- Applied predictive modelling and customer segmentation techniques

## Key Findings
*(Fill in after review — what did the segmentation/prediction actually show?)*

## Business Insight
*(Fill in after your weekend review — how does this inform marketing, inventory, or retention decisions specifically?)*

## What I'd Do Differently Now
*(Optional growth note)*
