# ✈️ Airline Operations & Flight Delay Analysis (SQL Project)

## 📌 Project Overview

Airline companies operate complex transportation networks that include thousands of flights, airports, and routes. Flight delays can significantly impact operational efficiency, airline reputation, and passenger satisfaction.

This project analyzes airline flight data using SQL to uncover insights related to **airline performance, airport traffic, route popularity, and delay patterns**.

The analysis aims to identify patterns that can help airlines improve **operational efficiency and scheduling strategies**.

---

## 📊 Dataset Description

The dataset used in this project contains airline flight records along with airport and airline information.

### Tables Used

| Table | Description |
|------|-------------|
| flights | Flight records including delays and distance |
| airlines | Airline codes and airline names |
| airports | Airport information including city and country |

### Dataset Size

- Over **5.8 million flight records**
- Multiple airlines and airports
- Includes arrival delay and distance data

⚠️ Due to GitHub file size limitations, the **flights dataset is not included in this repository**.

You can download the dataset here:

https://www.kaggle.com/datasets/usdot/flight-delays

---

## 🛠 Tools Used

- Microsoft SQL Server
- SQL (Joins, Aggregations, Window Functions)

---

## 🧹 Data Cleaning

Flights with missing arrival delay values were identified and removed to ensure accurate delay analysis.

📈 Key Analyses Performed
The following analyses were conducted using SQL queries:

1️⃣ Total Flights per Airline

Identifies airlines operating the highest number of flights.

2️⃣ Busiest Airports

Determines airports with the highest number of departures.

3️⃣ Most Popular Routes

Identifies the most frequently traveled flight routes.

4️⃣ Average Delay by Airline

Measures airline punctuality by calculating average delay.

5️⃣ Airports with Highest Delays

Identifies airports where flights experience the largest delays.

6️⃣ Longest Flight Routes

Determines routes with the highest average flight distance.

7️⃣ Monthly Delay Trends

Analyzes seasonal patterns in flight delays.

8️⃣ Airline Delay Ranking

Ranks airlines based on delay performance using SQL window functions.

9️⃣ Hub Airport Detection

Identifies major airline hub airports based on flight departures.

🔍 Key Insights

The analysis revealed several important patterns:

-A small number of airlines operate the majority of flights.
-Certain airports act as major airline hubs.
-Some routes experience extremely high traffic volumes.
-Airline delay performance varies significantly across airlines.
-Seasonal factors influence flight delay patterns.

💡 Business Recommendations

Based on the findings:

-Airlines with higher delays should review scheduling efficiency.
-Airports with heavy congestion may require improved traffic management.
-Airlines can optimize resources during months with higher delays.
-High-demand routes should receive additional operational support.

🧠 Skills Demonstrated

This project demonstrates the following data analysis skills:

-SQL Data Cleaning
-SQL Joins
-Aggregations using GROUP BY
-Window Functions (RANK)
-Large Dataset Analysis
-Business Insight Generation
