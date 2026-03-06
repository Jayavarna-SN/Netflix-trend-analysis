# Netflix Trend Analysis (1925–2021)

### SQL + Tableau Data Analytics Project

## Project Overview

This project analyzes trends in Netflix Movies and TV Shows using SQL for data cleaning and analysis, and Tableau for visualization.

The goal of this project is to understand content distribution, growth trends, ratings, and genre popularity on Netflix.

The analysis follows the **Google Data Analytics Process**:
Ask → Prepare → Process → Analyze → Share → Act.

---

# 1. Ask

### Business Task

Analyze Netflix content to identify trends in content production, ratings, genres, and country contributions.

### Key Questions

* What type of content dominates Netflix (Movies vs TV Shows)?
* Which countries produce the most Netflix content?
* What are the most common ratings?
* How has Netflix content grown over the years?
* What genres are most popular?

### Stakeholders

* Netflix content strategy team
* Marketing and content acquisition teams
* Business analysts

---

# 2. Prepare

### Data Source

Netflix Movies and TV Shows dataset.

Dataset contains **8,807 rows** with information about:

* show_id
* type
* title
* director
* cast
* country
* date_added
* release_year
* rating
* duration
* listed_in (genre)
* description

The dataset was imported into **SQL Server** for analysis.

---

# 3. Process

Data cleaning was performed using SQL.

### Data Quality Checks

* Missing values were identified in key columns.

Example:

* Missing director: 2634
* Missing cast: 825
* Missing country: 831
* Missing date_added: 10
* Missing duration: 3

### Cleaning Steps

* Replaced NULL values with **"Unknown"** in:

  * Director
  * Cast
  * Country
* Validated the dataset before analysis.

---

# 4. Analyze

SQL was used to explore patterns in the dataset.

### Key Analysis Performed

* Content type distribution (Movies vs TV Shows)
* Top countries producing Netflix content
* Most common content ratings
* Content growth by release year
* Most popular genres

Example SQL analysis:

```sql
SELECT type, COUNT(*) AS total_titles
FROM Netflix
GROUP BY type;
```

---

# 5. Share

A dashboard was created in **Tableau** to visualize the insights.

### Dashboard includes:

* Movies vs TV Shows distribution
* Content growth by year
* Top producing countries
* Rating distribution
* Popular genres

Interactive Dashboard:

https://public.tableau.com/views/NetflixAnalysis_17727175772870/Netflixcontenttrends?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link

Dashboard Preview:

![image alt](https://github.com/Jayavarna-SN/Netflix-trend-analysis/blob/066dc74230acf13af12064868336f8c99d2bbda2/Netflix_dashboard/Netflix%20content%20trends.png)

---

# 6. Act

### Key Insights

* Movies dominate Netflix compared to TV Shows.
* The **United States produces the most Netflix content**, followed by India.
* **TV-MA** is the most common rating.
* Netflix content experienced significant growth around **2021**.
* **Dramas and International Movies** are the most popular genres.

### Recommendations

* Focus on expanding content in high-performing genres such as dramas and international movies.
* Continue investing in international markets.
* Maintain strong production in countries with high content output.

---

# Tools Used

* SQL (Microsoft SQL Server)
* Tableau
* GitHub

---

# Project Structure

Netflix-Trend-Analysis

dataset
└── netflix_titles.csv

sql_queries
└── netflix_analysis.sql

tableau_dashboard
└── netflix_dashboard.png




GitHub: Your GitHub username

