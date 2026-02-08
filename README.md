Turning logistics data into early-warning supply chain intelligence using SQL + Power BI 🚚📊

# Data-driven-Supply-Chain-Warning-System
Data-driven Supply Chain Warning System using MySQL + Power BI to quantify the Bullwhip Effect through supplier reliability, lead-time volatility, and risk analytics.

# 🚚 Quantifying the Bullwhip Effect – Supply Chain Analytics Project

## 🚀 Project Overview

This project implements a **Data-Driven Warning System for Supply Chains** using MySQL and Power BI to quantify the **Bullwhip Effect** by analyzing supplier reliability, delivery volatility, and lead-time variation.

The goal was to move beyond static reporting and build an analytical system that:

- Identifies unstable suppliers  
- Measures delivery unpredictability  
- Highlights geographic risk hotspots  
- Provides early warning signals for supply chain disruptions  

This project follows a complete analytics lifecycle:  
**SQL Data Engineering → Risk Analytics → Power BI Visualization.**

---

## 🎯 Business Problem

In real-world supply chains, companies often know a shipment is delayed — but not *why* or *which supplier is responsible*.  
Unpredictable delivery times lead to over-ordering, excess inventory, and rising costs (Bullwhip Effect).

This dashboard solves that **visibility gap** by ranking suppliers based on volatility and reliability, helping decision-makers proactively manage risk.

---

## 🧠 Solution Approach

### 🔹 Data Ingestion (MySQL)

- Loaded multiple CSV datasets into MySQL  
- Normalized logistics and supplier tables  
- Added Supplier IDs and created relational joins  

---

### 🔹 Data Transformation (SQL)

Built SQL logic to:

- Join logistics trips with supplier master data  
- Calculate average delay and delay volatility  
- Create analytical views for reporting  

Key SQL techniques used:

- JOINs  
- Aggregations  
- CASE logic  
- Views  
- Standard deviation for volatility (Bullwhip metric)

A master analytical view was created to serve Power BI directly.

---

### 🔹 Risk Quantification

Using SQL:

- Average ETA variation → Lead-time risk  
- Standard deviation of delays → Volatility (Bullwhip KPI)  
- Shipment counts → Supplier stability  

Suppliers were ranked by delivery volatility to identify high-risk partners.

---

## ✨ Dashboard Features

### 🔹 KPI Overview

- Lead-Time Variance Score  
- Total Suppliers  
- Average Lead Time (Days)  
- Peak Delay (Hours)  
- Fulfillment Health Index  

---

### 🔹 Supplier Risk Matrix

Scatter plot showing:

- X-axis: Supplier Reliability  
- Y-axis: Delivery Volatility  

Used to visually isolate unstable suppliers.

---

### 🔹 Geographic Risk Hotspots

World map highlighting global lead-time variance to identify regional disruption zones.

---

### 🔹 Monthly Network Stability Trend

Time-series visualization showing volatility trends across months.

---

### 🔹 Component Category Volatility

Bar chart ranking component categories based on supply chain instability.

---

### 🔹 Interactive Filters

- Country  
- Supplier  
- Category  

Allow drill-down into individual risk profiles.

---

## 🛠 Tools & Technologies Used

- MySQL (Data ingestion, joins, analytics views)
- SQL (Aggregations, volatility metrics, CASE logic)
- Power BI Desktop (Visualization & modeling)
- CSV datasets (Logistics + Supplier data)
- GitHub (Project hosting)

---

## 📈 Insights Delivered

- Identified suppliers with high delivery volatility  
- Quantified Bullwhip Effect using delay standard deviation  
- Highlighted geographic supply chain risks  
- Detected unstable component categories  
- Enabled early-warning signals for procurement teams  

This system supports proactive decisions such as:

- Increasing safety stock for risky suppliers  
- Switching vendors during high-volatility periods  
- Planning inventory using data-backed risk scores  

---
## 💡 Learning Outcome

This project strengthened my skills in:

- SQL data engineering  
- Analytical view design  
- Volatility & risk metrics  
- Supply chain analytics  
- Power BI modeling  
- KPI design  
- Business storytelling  

It also helped me understand how raw logistics data can be transformed into **actionable operational intelligence**.

---

## 👩‍💻 Author
Abner Benitto M
Aspiring Data Analyst | SQL | Power BI | Supply Chain Analytics  

Thank you for exploring my project!
