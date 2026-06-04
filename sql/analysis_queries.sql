
-- "BORROWERS CLIMATE RISK ANALYSIS"

-- =========================================
-- DATA PREPARATION
-- =========================================

CREATE DATABASE ba_project;
USE ba_project;

-- =========================================
-- INDUSTRY ANALYSIS
-- =========================================

CREATE VIEW industry_summary AS SELECT industry,
       AVG(climate_risk_score) AS average_risk,
       CASE
       	WHEN AVG(climate_risk_score) < 35 THEN 'low'
       	WHEN AVG(climate_risk_score) < 75 THEN 'medium'
       	ELSE 'high'
       END AS avg_risk_category,
	  AVG(loan) AS avg_loan,
       CASE
       	WHEN AVG(loan) < 250867000000 THEN 'low'
       	WHEN AVG(loan) < 501734000000 THEN 'medium'
       	ELSE 'high'
       END AS avg_loan_category,
       AVG(carbon_emission) AS avg_emission,
       CASE
		WHEN AVG(carbon_emission) < 84533 THEN 'low'
		when AVG(carbon_emission) < 169066 THEN 'medium'
		ELSE 'high'
		END AS avg_emission_category,
		COUNT(borrower_name) AS total_borrower
FROM crb
GROUP BY industry;

-- notes: Thresholds based on equal-range segmentation

-- =========================================
-- FINANCIAL ANALYSIS
-- =========================================

CREATE VIEW interest_value AS SELECT
    SUM(loan * (interest_rate/100))
    AS total_interest_revenue,
    SUM(CASE
            WHEN approval_type = 'Approved'
            THEN loan * (interest_rate/100)
            ELSE 0
        END) AS approved_interest_revenue,
	SUM(loan * (interest_rate/100))
    -
    SUM(CASE
            WHEN approval_type = 'Approved'
            THEN loan * (interest_rate/100)
            ELSE 0
        END) AS revenue_difference
FROM crb;

-- =========================================
-- REPAYMENT ANALYSIS
-- =========================================

CREATE VIEW  REATE repayment_analysis AS SELECT repayment_status,
      COUNT(repayment_status) AS total_borrower,
	  ROUND (AVG(climate_risk_score),2) AS avg_risk,
      ROUND (AVG(carbon_emission),2) AS avg_emission,
      ROUND (AVG(annual_revenue),2) AS avg_revenue
FROM crb
GROUP BY repayment_status;

-- =========================================
-- APPROVAL ANALYSIS
-- =========================================

CREATE VIEW approval_analysis AS SELECT approval_type, 
	  COUNT(approval_type) AS approval_number,
	  ROUND (AVG(climate_risk_score),2) AS avg_risk,
      ROUND (AVG(carbon_emission),2) AS avg_emission,
      ROUND (AVG(annual_revenue),2) AS avg_revenue
FROM crb
GROUP BY approval_type;