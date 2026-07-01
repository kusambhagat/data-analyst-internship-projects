# Data Cleaning, Analysis & Business Insights (SQL + Power BI)

## Objective
Clean a messy raw sales dataset using SQL, then build an interactive Power BI dashboard for business reporting.

## Data
Raw company sales data (CSV) imported into a custom SQL database (`CompanySalesData`).

## Tools Used
SQL (MySQL), Power BI

## Approach
- **Duplicate records:** Identified duplicate customer entries via query; resolved using `DELETE` and `SELF JOIN` matching on name/email; validated with `SELECT`
- **Missing emails/phone numbers:** Identified via query, updated with placeholder values, validated with follow-up `SELECT`
- **Inconsistent date formats:** Identified and standardised
- Built a Power BI dashboard (`Sales_Dash.pbix`) on the cleaned dataset for ongoing reporting

## Key Findings
*(Fill in after review — what did the dashboard actually reveal once the data was clean?)*

## Business Insight
*(Fill in after your weekend review — how would you frame the value of "clean data" to a non-technical stakeholder?)*

## What I'd Do Differently Now
*(Optional growth note)*
