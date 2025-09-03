/* ============================================================
   BANK LOAN REPORT QUERIES
   Database   : BankLoanDB
   Purpose    : SQL scripts for KPI calculations and insights 
                used in Bank Loan Portfolio Analysis
   ============================================================ */

-- Use the project database
USE BankLoanDB;
GO

/* ============================================================
   SECTION 1: SUMMARY KPI QUERIES
   ============================================================ */

-- 1. Total Loan Applications
-- Count of all loan applications available in the dataset
SELECT COUNT(id) AS Total_Loan_Applications
FROM bank_loan_data;

-- 2. Month-to-Date (MTD) Loan Applications
-- Loans issued in December 2021
SELECT COUNT(id) AS MTD_Total_Applications
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
  AND YEAR(issue_date) = 2021;

-- 3. Previous Month-to-Date (PMTD) Loan Applications
-- Loans issued in November 2021
SELECT COUNT(id) AS PMTD_Total_Applications
FROM bank_loan_data
WHERE MONTH(issue_date) = 11 
  AND YEAR(issue_date) = 2021;

-- 4. Total Funded Amount
-- Sum of all disbursed loan amounts
SELECT SUM(loan_amount) AS Total_Funded_Amount
FROM bank_loan_data;

-- 5. MTD Funded Amount (December 2021)
SELECT SUM(loan_amount) AS MTD_Funded_Amount
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
  AND YEAR(issue_date) = 2021;

-- 6. Total Amount Received
-- Total repayments collected across all loans
SELECT SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data;

-- 7. MTD Amount Received (December 2021)
SELECT SUM(total_payment) AS MTD_Amount_Received
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
  AND YEAR(issue_date) = 2021;

-- 8. Average Interest Rate
-- Average across all loans (converted to percentage)
SELECT AVG(int_rate) * 100 AS Avg_Interest_Rate
FROM bank_loan_data;

-- 9. Average Debt-to-Income Ratio (DTI)
-- Average borrower DTI (converted to percentage)
SELECT AVG(dti) * 100 AS Avg_DTI
FROM bank_loan_data;


/* ============================================================
   SECTION 2: GOOD VS BAD LOAN ANALYSIS
   ============================================================ */

-- 1. Good Loan Percentage
-- % of loans that are either Fully Paid or Current
SELECT 
    (COUNT(CASE WHEN loan_status IN ('Fully Paid','Current') THEN id END) * 100.0) / COUNT(id) 
    AS Good_Loan_Percentage
FROM bank_loan_data;

-- 2. Good Loan Applications
SELECT COUNT(id) AS Good_Loan_Applications
FROM bank_loan_data
WHERE loan_status IN ('Fully Paid','Current');

-- 3. Good Loan Funded Amount
SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount
FROM bank_loan_data
WHERE loan_status IN ('Fully Paid','Current');

-- 4. Good Loan Amount Received
SELECT SUM(total_payment) AS Good_Loan_Amount_Received
FROM bank_loan_data
WHERE loan_status IN ('Fully Paid','Current');

-- 5. Bad Loan Percentage
-- % of loans that were Charged Off
SELECT 
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / COUNT(id) 
    AS Bad_Loan_Percentage
FROM bank_loan_data;

-- 6. Bad Loan Applications
SELECT COUNT(id) AS Bad_Loan_Applications
FROM bank_loan_data
WHERE loan_status = 'Charged Off';

-- 7. Bad Loan Funded Amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_Amount
FROM bank_loan_data
WHERE loan_status = 'Charged Off';

-- 8. Bad Loan Amount Received
SELECT SUM(total_payment) AS Bad_Loan_Amount_Received
FROM bank_loan_data
WHERE loan_status = 'Charged Off';


/* ============================================================
   SECTION 3: LOAN STATUS ANALYSIS
   ============================================================ */

-- Loan Performance by Status
-- Provides distribution across loan statuses
SELECT
    loan_status,
    COUNT(id) AS Loan_Count,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received,
    AVG(int_rate * 100) AS Avg_Interest_Rate,
    AVG(dti * 100) AS Avg_DTI
FROM bank_loan_data
GROUP BY loan_status;

-- Month-to-Date Loan Status Distribution (December 2021)
SELECT
    loan_status,
    SUM(loan_amount) AS MTD_Funded_Amount,
    SUM(total_payment) AS MTD_Amount_Received
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
  AND YEAR(issue_date) = 2021
GROUP BY loan_status;


/* ============================================================
   SECTION 4: OVERVIEW QUERIES (DIMENSIONAL ANALYSIS)
   ============================================================ */

-- Monthly Trends (Applications, Funded, Received)
SELECT 
    MONTH(issue_date) AS Month_Number,
    DATENAME(MONTH, issue_date) AS Month_Name,
    COUNT(id) AS Total_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY Month_Number;

-- Regional Analysis (By State)
SELECT 
    address_state AS State,
    COUNT(id) AS Total_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY address_state
ORDER BY address_state;

-- Loan Term Analysis
SELECT 
    term AS Loan_Term,
    COUNT(id) AS Total_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY term
ORDER BY term;

-- Employment Length Analysis
SELECT 
    emp_length AS Employment_Length,
    COUNT(id) AS Total_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY emp_length
ORDER BY emp_length;

-- Loan Purpose Breakdown
SELECT 
    purpose AS Loan_Purpose,
    COUNT(id) AS Total_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY purpose
ORDER BY purpose;

-- Home Ownership Analysis
SELECT 
    home_ownership AS Home_Ownership,
    COUNT(id) AS Total_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY home_ownership;