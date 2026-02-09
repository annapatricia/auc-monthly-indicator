# 📊 Monthly Assets Under Custody (AUC) Indicator — AWS + Athena

This repository presents a simplified, end-to-end analytical solution to calculate a **monthly Assets Under Custody (AUC)** indicator for a financial institution, using **AWS S3** and **Amazon Athena**.

The project simulates a real-world banking scenario where client positions from different asset classes and currencies are consolidated, standardized, and converted into a single monthly KPI.

---

## 🧠 Problem Statement

Design a monthly AUC indicator starting from:
- Client positions (local and international assets)
- Multiple asset classes
- Historical balances
- FX rates for currency normalization

Ensure:
- Data consistency over time  
- Comparability across products and currencies  
- Transparency and auditability  

---

## 🏗️ Architecture Overview

**AWS Services**
- **Amazon S3**: raw data storage (positions and FX rates)
- **Amazon Athena**: SQL-based analytics and KPI generation

**Data Flow**
1. Raw CSV files uploaded to S3
2. External tables created in Athena
3. Currency normalization using FX rates
4. Monthly aggregation into AUC KPI

📌 See architecture evidence:
- `docs/aws_s3_layers.png`
- `docs/aws_athena_kpi.png`

---

## 📂 Repository Structure

```
├── data/ # Local raw CSV samples
├── sql/
│ ├── 01_create_tables.sql
│ └── 02_kpi_auc_monthly.sql
├── docs/
│ ├── aws_s3_layers.png
│ └── aws_athena_kpi.png
├── README.md
└── .gitignore
```

