# 📊 Loan Portfolio Performance Dashboard (SQL + Power BI)

## 🔹 Project Overview  
This project analyzes a **bank loan portfolio** using **SQL Server 2022** for data preparation and **Power BI** for interactive dashboards.  

The goal: evaluate how loans are **issued, repaid, and performing over time**. By tracking portfolio KPIs, banks can identify borrower patterns, monitor risks, and make **data-driven lending decisions**.  

**Workflow:**  
`Kaggle Dataset → SQL Queries → Power BI Dashboards → Business Insights`

---

## 🔹 Problem Statement  
Banks must track lending activities to ensure **portfolio health** and **minimize risk exposure**.  
This project answers key business questions, including:  

1. 📈 How many loan applications were received in total, MTD, and MoM?  
2. 💰 What is the **total funded amount** vs. the **total repayment received**?  
3. 📊 What are the **average interest rates** and **debt-to-income ratios (DTI)**?  
4. ✅ What % of loans are **Good Loans** (Fully Paid / Current) vs ❌ **Bad Loans** (Charged-Off)?  
5. 🌎 How do lending metrics vary by:  
   - **Time** → Monthly trends  
   - **Region** → State distribution  
   - **Loan Terms** → 36 vs 60 months  
   - **Employment Length** → Borrower stability  
   - **Purpose** → Debt consolidation, credit card, education, etc.  
   - **Home Ownership** → Own, rent, mortgage  

**Deliverables:** a **3-page dashboard solution**  
1. **Summary Dashboard** → Portfolio KPIs + Good vs Bad Loan breakdown  
2. **Overview Dashboard** → Trends & distribution analysis  
3. **Details Dashboard** → Loan-level drill-down with interactive filters  

---

## 🔹 Key Insights  
- ✅ **86% of loans** are Good Loans; only **14% defaulted**  
- 🕒 **36-month loans dominate** → 73% of total applications  
- 💳 Top purposes: **Debt Consolidation** & **Credit Card**  
- 👔 Borrowers with **10+ years of work experience** are most frequent applicants  
- 🌎 **Regional hotspots** identified for lending activity  

---

## 🔹 Dataset  
Source: Public dataset from [Kaggle](https://www.kaggle.com/)  

---

## 🔹 Repository Structure  
- SQL/ → Documented SQL queries for KPIs & insights
- PowerBI/ → Power BI interactive dashboard (.pbix)
- Images/ → Dashboard screenshots (Summary, Overview, Details)
- Reports/ → Exported PDF (all dashboards)
- data/ → Dataset used for analysis (.csv)
- README.md → Project documentation (this file)

---

## 🔹 Tools & Skills Used  
- **SQL Server 2022** → Data cleaning, transformations, KPI calculations  
- **Power BI** → Dashboard design, conditional formatting, slicer panel  
- **Data Analysis** → Loan portfolio monitoring, borrower segmentation, risk insights  

---

## 🔹 How to Run the Project  
1. Load dataset into SQL Server → table name: `bank_loan_data`  
2. Run queries from `SQL/BankLoan.sql` → generate KPIs & summary tables  
3. Open Power BI Desktop → connect to dataset or open `Loan_Portfolio_Performance.pbix`  
4. Explore **3 dashboards**: Summary · Overview · Details  
5. (Optional) View quick previews in `/Images/` or the exported PDF  

---

💡 **Business Relevance:**  
This project simulates the type of **loan portfolio analysis** a bank would run to monitor performance and manage risk — a valuable skillset for **Financial Analysts, BI Analysts, and Risk Analysts**.  

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

