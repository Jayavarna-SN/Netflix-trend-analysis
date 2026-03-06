/*
====================================================
Netflix Trend Analysis (1925–2021)
SQL Data Cleaning and Exploratory Analysis
Dataset: Netflix Movies and TV Shows
====================================================
*/


-- ==================================================
-- 1. DATA QUALITY CHECK
-- Checking missing values in important columns
-- ==================================================

SELECT
COUNT(*) - COUNT(director) AS missing_director,
COUNT(*) - COUNT([cast]) AS missing_cast,
COUNT(*) - COUNT(country) AS missing_country,
COUNT(*) - COUNT(date_added) AS missing_date,
COUNT(*) - COUNT(duration) AS missing_duration
FROM Netflix.dbo.Netflix;



-- ==================================================
-- 2. DATA CLEANING
-- Replacing NULL values with 'Unknown'
-- ==================================================

UPDATE Netflix
SET director = 'Unknown'
WHERE director IS NULL;

UPDATE Netflix
SET [cast] = 'Unknown'
WHERE [cast] IS NULL;

UPDATE Netflix
SET country = 'Unknown'
WHERE country IS NULL;



-- ==================================================
-- 3. CONTENT TYPE DISTRIBUTION
-- Identify whether Movies or TV Shows dominate
-- ==================================================

SELECT
[type],
COUNT(*) AS total_titles
FROM Netflix
GROUP BY [type];



-- ==================================================
-- 4. TOP COUNTRIES PRODUCING NETFLIX CONTENT
-- ==================================================

SELECT TOP 10
country,
COUNT(*) AS total_titles
FROM Netflix
GROUP BY country
ORDER BY total_titles DESC;



-- ==================================================
-- 5. MOST COMMON CONTENT RATINGS
-- ==================================================

SELECT
rating,
COUNT(*) AS total_titles
FROM Netflix
GROUP BY rating
ORDER BY total_titles DESC;



-- ==================================================
-- 6. CONTENT RELEASED BY YEAR
-- ==================================================

SELECT
release_year,
COUNT(*) AS total_titles
FROM Netflix
GROUP BY release_year
ORDER BY release_year DESC;



-- ==================================================
-- 7. MOST POPULAR GENRES
-- ==================================================

SELECT TOP 10
listed_in AS genre,
COUNT(*) AS total_titles
FROM Netflix
GROUP BY listed_in
ORDER BY total_titles DESC;
