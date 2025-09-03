## 📊 Bank Loan Report – SQL + Power BI Project
**🔹 Project Overview**

This project focuses on analyzing a bank loan portfolio using SQL for data analysis and Power BI for visualization. The goal is to evaluate how loans are being issued, repaid, and performing over time. By monitoring key loan metrics, the dashboards help identify patterns in borrower behavior, portfolio risks, and overall lending performance.

The workflow for this project was:
Kaggle Dataset → SQL Queries → Power BI Dashboards → Business Insights

**🔹 Problem Statement**

Banks need to keep track of their lending activities to ensure portfolio health and make data-driven decisions. This project addresses that requirement by building an interactive Bank Loan Report that answers:

  1. How many loan applications have been received in total, and how do they change Month-to-Date (MTD) and Month-over-Month (MoM)?
  2. What is the total funded amount vs. the total amount received (repayments)?
  3. What are the average interest rates and average debt-to-income ratios (DTI) across borrowers?
  4. What proportion of loans are considered Good Loans (fully paid or current) versus Bad Loans (charged-off)?
  5. How do lending metrics vary by:
     *Time (monthly trends)
     *Region (state-level distribution)
     *Loan terms (36 months vs. 60 months)
     *Employment length of borrowers
     *Loan purpose categories (e.g., debt consolidation, credit card)
     *Home ownership type (own, rent, mortgage)

**The result is a 3-dashboard solution:**
  1. Summary Dashboard → KPIs and Good vs. Bad loan breakdown
  2. Overview Dashboard → Trends and distribution analysis
  3. Details Dashboard → Complete loan-level data with filters

**🔹 Features & Insights**

- 📌 86% loans were classified as Good Loans; only 14% were Bad Loans
- 📌 36-month loans dominate (73% of total applications)
- 📌 Debt consolidation & credit card loans are the most common purposes
- 📌 Borrowers with 10+ years of work experience applied most frequently
- 📌 Regional analysis highlights state-level lending hotspots

**🔹 Dataset**

Source: Public dataset from ([Kaggle](https://www.kaggle.com/))

**🔹 Files in Repository**

  1. sql/BankLoan.sql → SQL queries for KPIs & insights
  2. dashboard/BankReport.pbix → Power BI interactive dashboard
  3. dashboard/BankReport.pdf → Exported report for quick viewing
  4. dashboard/screenshots/ → Dashboard preview images
  5. data/bank_loan_dataset.csv → Dataset used for analysis

**🔹 Tools & Skills Used**

1. SQL Server – Data preparation and KPI generation
2. Power BI – Dashboard design and visualization
3. Data Analysis – Portfolio monitoring, KPI tracking, business insights

**🔹 How to Run the Project**
1. Load dataset into SQL Server as bank_loan_data.
2. Run the queries from BankLoan.sql to generate metrics.
3. Import the dataset into Power BI.
4. Build or open the dashboard file (BankReport.pbix) to explore insights.
5. Load dataset into SQL Server as bank_loan_data.
6. Run the queries from BankLoan.sql to generate metrics.

Import the dataset into Power BI.

Build or open the dashboard file (BankReport.pbix) to explore insights.
