-- ----------------------
-- Apartment Rent Analysis Data Cleaning
-- -----------------------

# apartment_tom
# apartment_rent_growth_mom
# apartment_rent_growth_yoy
# apartment_vacancy_index


-- **** View Raw Datasets
SELECT *
FROM apartment_vacancy;

SELECT *
FROM apartment_tom;

SELECT *
FROM apartment_rent_estimates;

SELECT *
FROM apartment_rent_growth_yoy;

-- Unpivot columns -- done in separate file from python script

-- **** Copy of raw datasets -- staging versions -- made from 
SELECT *
FROM apartment_vacancy_staging;

SELECT *
FROM apartment_tom_staging;

SELECT *
FROM apartment_rent_estimates_staging;

SELECT *
FROM apartment_rent_growth_yoy_staging;

-- **** Checking for duplicates

# apartment_vacancy_staging
SELECT *,  
ROW_NUMBER() OVER(
PARTITION BY location_name, location_type, `date`) AS row_count
FROM apartment_vacancy_staging;

WITH duplicate_cte AS
(
SELECT
location_name, location_type, 
ROW_NUMBER() OVER(
PARTITION BY location_name, location_type, `date`) AS row_count
FROM apartment_vacancy_staging
)
SELECT *
FROM duplicate_cte
WHERE row_count > 1;

# apartment_tom_staging
SELECT *,  
ROW_NUMBER() OVER(
PARTITION BY location_name, location_type, `date`) AS row_count
FROM apartment_tom_staging;

WITH duplicate_cte AS
(
SELECT
location_name, location_type, 
ROW_NUMBER() OVER(
PARTITION BY location_name, location_type, `date`) AS row_count
FROM apartment_vacancy_staging
)
SELECT *
FROM duplicate_cte
WHERE row_count > 1;


# apartment_rent_estimates_staging
SELECT *
FROM apartment_rent_estimates_staging;

SELECT *,  
ROW_NUMBER() OVER(
PARTITION BY location_name, location_type, bed_size, `date`) AS row_count
FROM apartment_rent_estimates_staging;

WITH duplicate_cte AS
(
SELECT
location_name, location_type, 
ROW_NUMBER() OVER(
PARTITION BY location_name, location_type, bed_size, `date`) AS row_count
FROM apartment_rent_estimates_staging
)
SELECT *
FROM duplicate_cte
WHERE row_count > 1;

#apartment_rent_growth_yoy_staging
SELECT *,  
ROW_NUMBER() OVER(
PARTITION BY location_name, location_type, `date`) AS row_count
FROM apartment_rent_growth_yoy_staging;

WITH duplicate_cte AS
(
SELECT
location_name, location_type, 
ROW_NUMBER() OVER(
PARTITION BY location_name, location_type, `date`) AS row_count
FROM apartment_rent_growth_yoy_staging
)
SELECT *
FROM duplicate_cte
WHERE row_count > 1;


-- ****Standardizing data

-- Alter columns to be date format for datasets
SELECT `date`,
	STR_TO_DATE(CONCAT(REPLACE(`date`, '_', '-'), '-01'), '%Y-%m-%d')
FROM apartment_vacancy_staging;

ALTER TABLE apartment_vacancy_staging
ADD COLUMN date_updated DATE;

UPDATE apartment_vacancy_staging
SET date_updated = STR_TO_DATE(CONCAT(REPLACE(`date`, '_', '-'), '-01'), '%Y-%m-%d');

ALTER TABLE apartment_vacancy_staging
DROP COLUMN `date`;

ALTER TABLE apartment_vacancy_staging
CHANGE COLUMN date_updated `date` DATE;

ALTER TABLE apartment_vacancy_staging
MODIFY COLUMN `date` date
AFTER metro;

#apartment_tom_staging
SELECT `date`,
	STR_TO_DATE(CONCAT(REPLACE(`date`, '_', '-'), '-01'), '%Y-%m-%d')
FROM apartment_tom_staging;

ALTER TABLE apartment_tom_staging
ADD COLUMN date_updated DATE;

UPDATE apartment_tom_staging
SET date_updated = STR_TO_DATE(CONCAT(REPLACE(`date`, '_', '-'), '-01'), '%Y-%m-%d');

ALTER TABLE apartment_tom_staging
DROP COLUMN `date`;

ALTER TABLE apartment_tom_staging
CHANGE COLUMN date_updated `date` DATE;

ALTER TABLE apartment_tom_staging
MODIFY COLUMN `date` date
AFTER metro;


#apartment_rent_estimates_staging
SELECT `date`,
	STR_TO_DATE(CONCAT(REPLACE(`date`, '_', '-'), '-01'), '%Y-%m-%d')
FROM apartment_rent_estimates_staging;

ALTER TABLE apartment_rent_estimates_staging
ADD COLUMN date_updated DATE;

UPDATE apartment_rent_estimates_staging
SET date_updated = STR_TO_DATE(CONCAT(REPLACE(`date`, '_', '-'), '-01'), '%Y-%m-%d');

ALTER TABLE apartment_rent_estimates_staging
DROP COLUMN `date`;

ALTER TABLE apartment_rent_estimates_staging
CHANGE COLUMN date_updated `date` DATE;

ALTER TABLE apartment_rent_estimates_staging
MODIFY COLUMN `date` date
AFTER bed_size;

#apartment_rent_growth_yoy_staging
SELECT `date`,
	STR_TO_DATE(CONCAT(REPLACE(`date`, '_', '-'), '-01'), '%Y-%m-%d')
FROM apartment_rent_growth_yoy_staging;

ALTER TABLE apartment_rent_growth_yoy_staging
ADD COLUMN date_updated DATE;

UPDATE apartment_rent_growth_yoy_staging
SET date_updated = STR_TO_DATE(CONCAT(REPLACE(`date`, '_', '-'), '-01'), '%Y-%m-%d');

ALTER TABLE apartment_rent_growth_yoy_staging
DROP COLUMN `date`;

ALTER TABLE apartment_rent_growth_yoy_staging
CHANGE COLUMN date_updated `date` DATE;

ALTER TABLE apartment_rent_growth_yoy_staging
MODIFY COLUMN `date` date
AFTER metro;


-- **** Null / Blank values

SELECT *
FROM apartment_vacancy_staging
WHERE vacancy_index IS NULL
OR vacancy_index = 0;

# update imported 0's to nulls
UPDATE apartment_vacancy_staging
SET vacancy_index = NULL
WHERE vacancy_index = 0;

SELECT *
FROM apartment_tom_staging
WHERE months_on_market IS NULL
OR months_on_market = 0;

SELECT *
FROM apartment_rent_estimates_staging
WHERE median_rent IS NULL
OR median_rent = 0;

SELECT *
FROM apartment_rent_growth_yoy_staging
WHERE growth_rate IS NULL
OR growth_rate = 0;

# update imported 0's to nulls
UPDATE apartment_rent_growth_yoy_staging
SET growth_rate = NULL
WHERE growth_rate = 0;

-- **** Removing Any Irrelevant Columns if necessary

SELECT *
FROM apartment_rent_growth_yoy_staging
WHERE growth_rate IS NULL;

SELECT 
	COUNT(*) AS total_rows,
    COUNT(CASE WHEN growth_rate IS NULL THEN 1 END) AS null_count,
    COUNT(CASE WHEN growth_rate IS NULL THEN 1 END) * 100 / COUNT(*) AS null_percentage
FROM apartment_rent_growth_yoy_staging;

SELECT *
FROM apartment_vacancy_staging;

-- ALTER TABLE apartment_vacancy_staging
-- DROP COLUMN location_fips_code;








