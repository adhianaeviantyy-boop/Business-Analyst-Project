Dataset Overview

Project Context
This dataset simulates borrower climate-risk assessment for a mock Indonesian bank in 2024.

The project was inspired by:
ESG lending practices
sustainable finance initiatives
climate-risk management discussions
OJK sustainable finance guidance
banking sector climate-risk awareness

The dataset is intended for:
SQL analysis
ESG risk assessment
lending portfolio analysis
business transformation simulation
dashboard/reporting practice

---

Data Generation Methodology
The dataset was synthetically generated using realistic business assumptions based on:
Indonesian industry characteristics
ESG/climate-risk exposure patterns
general lending practices
sustainability-related financial considerations

The numbers are NOT actual company financial data.


---

Variable Explanations

1. borrower_id

Example:

BRW001

Description:
Unique identifier assigned to each borrower.

Purpose:
Used as:
primary key
unique record tracking
Generation Method
Sequentially generated.


---

2. borrower_name

Example:

PT_Bara_001

Description:
Mock Indonesian-style company name.

Purpose:
Represents fictional corporate borrowers.
Generation Method

Generated using:
Indonesian company naming conventions
industry-based prefixes

Examples:

PT_Bara → mining
PT_Digital → technology
PT_Sawit → palm oil


---

3. industry

Examples:

Coal_Mining
Palm_Oil
Technology
Renewable_Energy

Description:
Borrower business sector.

Purpose:
Used to:
compare climate-risk exposure
analyze industry lending behavior
identify high-risk sectors

Industry Selection Basis:
Indonesian economic sectors
ESG relevance
carbon-intensive industries
sustainable finance discussions


---

4. annual_revenue

Example:

4500000000000

Description:
Estimated annual company revenue in Indonesian Rupiah (IDR).

Purpose:
Used to:
evaluate borrower scale
simulate lending capacity
create approval exceptions

Estimation Method:
Revenue ranges were assigned based on:
typical industry scale
large Indonesian corporate sectors
relative business size assumptions

Example Assumptions:

Industry		Revenue Range

Coal Mining		IDR 800B – 8T
Technology		IDR 30B – 1.8T
Renewable Energy	IDR 100B – 4T


---

5. loan

Example:

320000000000

Description:
Requested corporate loan amount in IDR.

Purpose:
Used to:
analyze loan exposure
evaluate portfolio risk
simulate approval decisions

Estimation Logic:
Loan values were generated proportionally relative to:
company revenue
industry characteristics
assumed borrowing scale


---

6. climate_risk_score

Example:

87

Description:
Simulated climate-risk assessment score (0–100). Higher score: higher climate-related risk

Purpose:
Represents:
environmental exposure
transition risk
ESG-related lending concern


Risk Interpretation:

Score Range	Risk Level

0–30		Low
31–60		Moderate
61–80		High
81–100		Very High


Estimation Basis:
Scores were assigned based on:
carbon intensity
industry sustainability exposure
ESG sensitivity

Examples:

Coal mining → higher risk
Renewable energy → lower risk


---

7. carbon_emission

Example:

180000

Description:
Simulated annual carbon-emission indicator.

Purpose:
Used as:
sustainability metric
ESG evaluation input
climate-risk contributor

Estimation Basis:
Emission ranges were estimated according to:
relative industry carbon intensity
sustainability characteristics


Example Industry Assumptions:

Industry		Relative Emission

Coal Mining		Very High
Cement			High
Technology		Low
Renewable Energy	Very Low


---

8. approval_type

Examples:

Approved
Rejected
Conditional_Approval

Description:
Simulated lending decision outcome.

Purpose:
Represents:
credit approval logic
ESG-based borrower assessment

Decision Logic:
Approval decisions considered:
climate risk
loan-to-revenue ratio
industry type
strategic exceptions

Exception Cases:
Some high-risk companies were intentionally given:
Conditional_Approval to simulate realistic banking scenarios where large strategic borrowers, profitable clients, critical industries, may still receive financing under stricter conditions.


---

9. interest_rate

Example:

11.25

Description:
Simulated annual loan interest rate (%).

Purpose:
Used to:
estimate lending profitability
reflect risk-based pricing

Estimation Logic:
Higher climate-risk borrowers generally received higher interest rates to simulate:
risk-adjusted lending
ESG-sensitive pricing behavior


---

10. repayment_status

Examples:

On_Time
Late
Default

Description:
Simulated borrower repayment performance.

Purpose:
Used to:
analyze repayment trends
evaluate risk outcomes
compare climate risk vs repayment behavior

Estimation Logic:
Repayment probability was loosely correlated with:
climate-risk score
approval type

However exceptions were intentionally included to avoid unrealistic perfect correlations.

Example:
some low-risk borrowers may still pay late
some higher-risk borrowers may still repay successfully

This was done to better reflect real-world uncertainty.

Important Disclaimer:

This dataset is:
synthetic/mock data
generated for educational and portfolio purposes
not intended for real financial decision-making
The dataset was designed to simulate:
ESG lending analysis
sustainable finance assessment
climate-risk portfolio analysis
SQL/business intelligence workflows

---
Tools Used:
MySQL
DBeaver
Microsoft Excel
Power BI
Powerpoint
GitHub
