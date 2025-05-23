-- ----------------------
-- Apartment Rent Analysis
-- -----------------------

# apartment_vacancy_staging
# apartment_tom_staging
# apartment_rent_estimates_staging
# apartment_rent_growth_yoy_staging

-- View tables
SELECT *
FROM apartment_vacancy_staging;

SELECT *
FROM apartment_tom_staging;

SELECT *
FROM apartment_rent_estimates_staging;

SELECT *
FROM apartment_rent_growth_yoy_staging;


-- **** ANALYSIS OF AUSTIN **** --
	# Monthly averages based over 1-3 years to capture seasonal trends. 
	# Year to year comparisons based over 3-5 years to capture yearly trends.

-- 1. Austin > Average Vacancy Index by Month in past 2 years
SELECT 
  MONTHNAME(`date`) AS month_name,
  MONTH(`date`) AS month_num,
  ROUND(AVG(vacancy_index) * 100, 2) AS avg_vacancy_index
FROM apartment_vacancy_staging
WHERE location_name = 'Austin, TX'
  AND `date` >= DATE_SUB(CURRENT_DATE, INTERVAL 2 YEAR)
GROUP BY month_name, month_num
ORDER BY month_num; #ORDER BY avg_vacancy_index DESC;

-- 2. Austin > Average Vacancy Index by Year in past 4 years
SELECT 
	YEAR(`date`) AS year, 
    ROUND(AVG(vacancy_index) * 100, 2) AS avg_vacancy_index
FROM apartment_vacancy_staging
WHERE location_name = 'Austin, TX'
	AND `date` >= DATE_SUB(CURRENT_DATE, INTERVAL 4 YEAR)
GROUP BY year
ORDER BY year;

-- 3. Austin > Average Time On Market by Month in past 2 years
SELECT
	MONTHNAME(`date`) AS month_name, 
    MONTH(`date`) AS month_num,
    ROUND(AVG(days_on_market), 2) AS avg_days
FROM apartment_tom_staging
WHERE location_name = 'Austin, TX' 
	AND `date` >= DATE_SUB(CURRENT_DATE, INTERVAL 2 YEAR)
GROUP BY month_name, month_num
ORDER BY month_num; #ORDER BY avg_days DESC;

-- 4. Austin > Average Time On Market by Year in past 4 years
SELECT
	YEAR(`date`) AS year, 
    ROUND(AVG(days_on_market), 2) AS avg_days
FROM apartment_tom_staging
WHERE location_name = 'Austin, TX' 
	AND `date` >= DATE_SUB(CURRENT_DATE, INTERVAL 4 YEAR)
GROUP BY year
ORDER BY year;

-- 5. Austin > Average Rent Estimates by Month in past 2 years
SELECT 
	MONTHNAME(`date`) AS month_name, 
    MONTH(`date`) AS month_num,
    ROUND(AVG(median_rent), 2) AS avg_monthly_median_rent
FROM apartment_rent_estimates_staging
WHERE location_name = 'Austin, TX' 
	AND bed_size = 'overall'
	AND `date` >= DATE_SUB(CURRENT_DATE, INTERVAL 2 YEAR)
GROUP BY month_name, month_num
ORDER BY month_num; #ORDER BY avg_monthly_median_rent DESC;

-- 6. Austin > Average Rent Estimates by Year in past 4 years
SELECT
	YEAR(`date`) AS year, 
    ROUND(AVG(median_rent), 2) AS avg_monthly_median_rent
FROM apartment_rent_estimates_staging
WHERE location_name = 'Austin, TX' 
	AND `date` >= DATE_SUB(CURRENT_DATE, INTERVAL 4 YEAR)
GROUP BY year
ORDER BY year;

-- 7. Austin > Average Yearly Rent Growth between Months in past 2 years
SELECT 
	MONTHNAME(`date`) AS month_name, 
    MONTH(`date`) AS month_num, 
    ROUND(AVG(growth_rate) * 100, 2) AS growth_rate
FROM apartment_rent_growth_yoy_staging
WHERE location_name = 'Austin, TX' 
	AND `date` >= DATE_SUB(CURRENT_DATE, INTERVAL 2 YEAR)
GROUP BY month_name, month_num
ORDER BY month_num;


-- 8. Austin > Average Vacancy Index and Time on Market in the past 2 years
	-- Cooling Market: *High Vacancy, High Time on Market, Low Rent Growth -- Demand is slower
    -- Heating Market: Low Vacancy, Low Time on Market, High Rent Growth -- Demand is strong
SELECT
	MONTHNAME(v.`date`) AS month_name,
    MONTH(v.`date`) AS month_num,
    ROUND(AVG(v.vacancy_index) * 100, 2) AS vacancy_index,
    ROUND(AVG(r.median_rent), 2) AS median_rent,
    ROUND(AVG(t.days_on_market), 2) AS days_on_market
FROM apartment_vacancy_staging v
INNER JOIN apartment_tom_staging t
	ON v.location_name = t.location_name
    AND v.`date` = t.`date`
INNER JOIN apartment_rent_estimates_staging r
	ON v.location_name = r.location_name
    AND v.`date` = r.`date`
WHERE v.location_name = 'Austin, TX'
	AND v.`date` >= DATE_SUB(CURRENT_DATE, INTERVAL 2 YEAR)
GROUP BY month_num, month_name
ORDER BY
	vacancy_index DESC,
    days_on_market DESC,
    median_rent ASC;
    

-- **** ANALYSIS OF UNITED STATES & MAJOR CITIES IN TEXAS **** -- 

-- 1. United States > Average Vacancy Index by Month in past 2 years
SELECT
	MONTHNAME(`date`) AS month_name,
    MONTH(`date`) AS month_num,
    ROUND(AVG(vacancy_index) * 100, 2) AS avg_vacancy_index
FROM apartment_vacancy_staging
WHERE location_name = 'United States'
	AND `date` >= DATE_SUB(CURRENT_DATE, INTERVAL 2 YEAR)
GROUP BY month_name, month_num
ORDER BY month_num; #ORDER BY avg_vacancy_index DESC;

-- 2. United States > Average Vacancy Index by Year in past 4 years
SELECT
	YEAR(`date`) AS year,
	ROUND(AVG(vacancy_index) * 100, 2) AS avg_vacancy_index
FROM apartment_vacancy_staging
WHERE location_name = 'United States'
	AND `date` >= DATE_SUB(CURRENT_DATE, INTERVAL 4 YEAR)
GROUP BY year
ORDER BY year;

-- 3. United States > Average Time On Market by Month in past 2 years
SELECT
	MONTHNAME(`date`) AS month_name,
    MONTH(`date`) AS month_num,
    ROUND(AVG(days_on_market), 2) AS avg_days
FROM apartment_tom_staging
WHERE location_name = 'United States'
	AND `date` >= DATE_SUB(CURRENT_DATE, INTERVAL 2 YEAR)
GROUP BY month_name, month_num
ORDER BY month_num; #ORDER BY avg_days DESC;

-- 4. United States > Average Time On Market by Year in past 4 years
SELECT
	YEAR(`date`) AS year,
    ROUND(AVG(days_on_market), 2) AS avg_days
FROM apartment_tom_staging
WHERE location_name = 'United States'
	AND `date` >= DATE_SUB(CURRENT_DATE, INTERVAL 4 YEAR)
GROUP BY year
ORDER BY year;

-- 5. United States > Average Rent Estimates by Month in past 2 years
SELECT
	MONTHNAME(`date`) AS month_name,
    MONTH(`date`) AS month_num,
    ROUND(AVG(median_rent), 2) AS avg_monthly_median_rent
FROM apartment_rent_estimates_staging
WHERE location_name = 'United States'
	AND bed_size = 'overall'
    AND `date` >= DATE_SUB(CURRENT_DATE, INTERVAL 2 YEAR)
GROUP BY month_name, month_num
ORDER BY month_num; #ORDER BY avg_monthly_median_rent DESC;

-- 6. United States > Average Rent Estimates by Year in past 4 years
SELECT
	YEAR(`date`) AS year,
    ROUND(AVG(median_rent), 2) AS avg_monthly_median_rent
FROM apartment_rent_estimates_staging
WHERE location_name = 'United States'
	AND `date` >= DATE_SUB(CURRENT_DATE, INTERVAL 4 YEAR)
GROUP BY year
ORDER BY year;

-- 7. United States > Average Yearly Rent Growth between Months in past 2 years
SELECT
	MONTHNAME(`date`) AS month_name,
    MONTH(`date`) AS month_num,
    ROUND(AVG(growth_rate) * 100, 2) AS growth_rate
FROM apartment_rent_growth_yoy_staging
WHERE location_name = 'United States'
	AND `date` >= DATE_SUB(CURRENT_DATE, INTERVAL 2 YEAR)
GROUP BY month_name, month_num
ORDER BY month_num;

-- 8. United States > Average Vacancy Index and Time on Market in the past 2 years
	-- Cooling Market: *High Vacancy, High Time on Market, Low Rent Growth -- Demand is slower
    -- Heating Market: Low Vacancy, Low Time on Market, High Rent Growth -- Demand is strong
SELECT
	MONTHNAME(v.`date`) AS month_name,
    MONTH(v.`date`) AS month_num,
    ROUND(AVG(v.vacancy_index) * 100, 2) AS vacancy_index,
    ROUND(AVG(r.median_rent), 2) AS median_rent,
    ROUND(AVG(t.days_on_market), 2) AS days_on_market
FROM apartment_vacancy_staging v
INNER JOIN apartment_tom_staging t
	ON v.location_name = t.location_name
    AND v.`date` = t.`date`
INNER JOIN apartment_rent_estimates_staging r
	ON v.location_name = r.location_name
    AND v.`date` = r.`date`
WHERE v.location_name = 'United States'
	AND v.`date` >= DATE_SUB(CURRENT_DATE, INTERVAL 2 YEAR)
GROUP BY month_num, month_name
ORDER BY
	vacancy_index DESC,
    days_on_market DESC,
    median_rent ASC;

-- 9. United States > Cities by Highest Vacancy Index in the past 2 years
SELECT
	location_name,
    ROUND(MAX(vacancy_index) * 100, 2) AS vacancy_index
FROM apartment_vacancy_staging
WHERE location_type = 'city'
	AND `date` >= DATE_SUB(CURRENT_DATE, INTERVAL 2 YEAR)
GROUP BY location_name
ORDER BY vacancy_index DESC
LIMIT 10;

-- 10. United States > Average Vacancy Index of Major Cities in Texas by population in past 2 years
SELECT location_name,
	ROUND(AVG(vacancy_index) * 100, 2) AS vacancy_index
FROM apartment_vacancy_staging
WHERE location_type = 'city'
	AND state = 'Texas'
    AND `date` >= DATE_SUB(CURRENT_DATE, INTERVAL 2 YEAR)
GROUP BY location_name, population
ORDER BY population DESC
LIMIT 5;

-- 11. United States > Average Rent Estimates of Major Cities in Texas by population in past 2 years
SELECT location_name,
	ROUND(AVG(median_rent), 2) AS median_rent
FROM apartment_rent_estimates_staging
WHERE location_type = 'city'
	AND state = 'Texas'
    AND `date` >= DATE_SUB(CURRENT_DATE, INTERVAL 2 YEAR)
GROUP BY location_name, population
ORDER BY population DESC
LIMIT 5;




