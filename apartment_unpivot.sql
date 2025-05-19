-- ----------------------
-- Unpivot columns
-- -----------------------

-- **** Unpivot columns for raw datasets & create staging copies of them

-- APARTMENT VACANCY STAGING
CREATE TABLE apartment_vacancy_staging AS
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2017_01' AS date, `2017_01` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2017_02' AS date, `2017_02` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2017_03' AS date, `2017_03` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2017_04' AS date, `2017_04` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2017_05' AS date, `2017_05` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2017_06' AS date, `2017_06` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2017_07' AS date, `2017_07` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2017_08' AS date, `2017_08` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2017_09' AS date, `2017_09` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2017_10' AS date, `2017_10` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2017_11' AS date, `2017_11` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2017_12' AS date, `2017_12` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_01' AS date, `2018_01` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_02' AS date, `2018_02` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_03' AS date, `2018_03` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_04' AS date, `2018_04` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_05' AS date, `2018_05` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_06' AS date, `2018_06` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_07' AS date, `2018_07` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_08' AS date, `2018_08` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_09' AS date, `2018_09` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_10' AS date, `2018_10` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_11' AS date, `2018_11` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_12' AS date, `2018_12` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_01' AS date, `2019_01` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_02' AS date, `2019_02` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_03' AS date, `2019_03` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_04' AS date, `2019_04` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_05' AS date, `2019_05` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_06' AS date, `2019_06` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_07' AS date, `2019_07` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_08' AS date, `2019_08` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_09' AS date, `2019_09` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_10' AS date, `2019_10` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_11' AS date, `2019_11` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_12' AS date, `2019_12` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_01' AS date, `2020_01` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_02' AS date, `2020_02` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_03' AS date, `2020_03` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_04' AS date, `2020_04` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_05' AS date, `2020_05` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_06' AS date, `2020_06` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_07' AS date, `2020_07` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_08' AS date, `2020_08` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_09' AS date, `2020_09` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_10' AS date, `2020_10` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_11' AS date, `2020_11` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_12' AS date, `2020_12` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_01' AS date, `2021_01` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_02' AS date, `2021_02` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_03' AS date, `2021_03` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_04' AS date, `2021_04` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_05' AS date, `2021_05` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_06' AS date, `2021_06` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_07' AS date, `2021_07` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_08' AS date, `2021_08` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_09' AS date, `2021_09` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_10' AS date, `2021_10` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_11' AS date, `2021_11` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_12' AS date, `2021_12` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_01' AS date, `2022_01` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_02' AS date, `2022_02` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_03' AS date, `2022_03` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_04' AS date, `2022_04` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_05' AS date, `2022_05` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_06' AS date, `2022_06` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_07' AS date, `2022_07` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_08' AS date, `2022_08` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_09' AS date, `2022_09` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_10' AS date, `2022_10` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_11' AS date, `2022_11` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_12' AS date, `2022_12` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_01' AS date, `2023_01` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_02' AS date, `2023_02` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_03' AS date, `2023_03` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_04' AS date, `2023_04` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_05' AS date, `2023_05` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_06' AS date, `2023_06` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_07' AS date, `2023_07` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_08' AS date, `2023_08` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_09' AS date, `2023_09` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_10' AS date, `2023_10` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_11' AS date, `2023_11` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_12' AS date, `2023_12` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_01' AS date, `2024_01` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_02' AS date, `2024_02` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_03' AS date, `2024_03` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_04' AS date, `2024_04` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_05' AS date, `2024_05` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_06' AS date, `2024_06` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_07' AS date, `2024_07` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_08' AS date, `2024_08` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_09' AS date, `2024_09` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_10' AS date, `2024_10` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_11' AS date, `2024_11` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_12' AS date, `2024_12` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2025_01' AS date, `2025_01` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2025_02' AS date, `2025_02` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2025_03' AS date, `2025_03` AS vacancy_index FROM apartment_vacancy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2025_04' AS date, `2025_04` AS vacancy_index FROM apartment_vacancy;

SELECT *
FROM apartment_vacancy_staging;

DESCRIBE apartment_vacancy_staging;

-- APARTMENT TOM STAGING2
CREATE TABLE apartment_tom_staging AS
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_01' AS date, `2019_01` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_02' AS date, `2019_02` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_03' AS date, `2019_03` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_04' AS date, `2019_04` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_05' AS date, `2019_05` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_06' AS date, `2019_06` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_07' AS date, `2019_07` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_08' AS date, `2019_08` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_09' AS date, `2019_09` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_10' AS date, `2019_10` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_11' AS date, `2019_11` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_12' AS date, `2019_12` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_01' AS date, `2020_01` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_02' AS date, `2020_02` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_03' AS date, `2020_03` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_04' AS date, `2020_04` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_05' AS date, `2020_05` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_06' AS date, `2020_06` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_07' AS date, `2020_07` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_08' AS date, `2020_08` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_09' AS date, `2020_09` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_10' AS date, `2020_10` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_11' AS date, `2020_11` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_12' AS date, `2020_12` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_01' AS date, `2021_01` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_02' AS date, `2021_02` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_03' AS date, `2021_03` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_04' AS date, `2021_04` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_05' AS date, `2021_05` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_06' AS date, `2021_06` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_07' AS date, `2021_07` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_08' AS date, `2021_08` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_09' AS date, `2021_09` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_10' AS date, `2021_10` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_11' AS date, `2021_11` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_12' AS date, `2021_12` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_01' AS date, `2022_01` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_02' AS date, `2022_02` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_03' AS date, `2022_03` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_04' AS date, `2022_04` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_05' AS date, `2022_05` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_06' AS date, `2022_06` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_07' AS date, `2022_07` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_08' AS date, `2022_08` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_09' AS date, `2022_09` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_10' AS date, `2022_10` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_11' AS date, `2022_11` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_12' AS date, `2022_12` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_01' AS date, `2023_01` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_02' AS date, `2023_02` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_03' AS date, `2023_03` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_04' AS date, `2023_04` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_05' AS date, `2023_05` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_06' AS date, `2023_06` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_07' AS date, `2023_07` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_08' AS date, `2023_08` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_09' AS date, `2023_09` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_10' AS date, `2023_10` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_11' AS date, `2023_11` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_12' AS date, `2023_12` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_01' AS date, `2024_01` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_02' AS date, `2024_02` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_03' AS date, `2024_03` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_04' AS date, `2024_04` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_05' AS date, `2024_05` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_06' AS date, `2024_06` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_07' AS date, `2024_07` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_08' AS date, `2024_08` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_09' AS date, `2024_09` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_10' AS date, `2024_10` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_11' AS date, `2024_11` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_12' AS date, `2024_12` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2025_01' AS date, `2025_01` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2025_02' AS date, `2025_02` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2025_03' AS date, `2025_03` AS months_on_market FROM apartment_tom
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2025_04' AS date, `2025_04` AS months_on_market FROM apartment_tom;

SELECT *
FROM apartment_tom_staging;

DESCRIBE apartment_tom_staging;

-- APARTMENT RENT ESTIMATES STAGING
CREATE TABLE apartment_rent_estimates_staging AS
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2017_01' AS date, `2017_01` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2017_02' AS date, `2017_02` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2017_03' AS date, `2017_03` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2017_04' AS date, `2017_04` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2017_05' AS date, `2017_05` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2017_06' AS date, `2017_06` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2017_07' AS date, `2017_07` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2017_08' AS date, `2017_08` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2017_09' AS date, `2017_09` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2017_10' AS date, `2017_10` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2017_11' AS date, `2017_11` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2017_12' AS date, `2017_12` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2018_01' AS date, `2018_01` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2018_02' AS date, `2018_02` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2018_03' AS date, `2018_03` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2018_04' AS date, `2018_04` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2018_05' AS date, `2018_05` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2018_06' AS date, `2018_06` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2018_07' AS date, `2018_07` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2018_08' AS date, `2018_08` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2018_09' AS date, `2018_09` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2018_10' AS date, `2018_10` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2018_11' AS date, `2018_11` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2018_12' AS date, `2018_12` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2019_01' AS date, `2019_01` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2019_02' AS date, `2019_02` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2019_03' AS date, `2019_03` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2019_04' AS date, `2019_04` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2019_05' AS date, `2019_05` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2019_06' AS date, `2019_06` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2019_07' AS date, `2019_07` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2019_08' AS date, `2019_08` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2019_09' AS date, `2019_09` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2019_10' AS date, `2019_10` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2019_11' AS date, `2019_11` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2019_12' AS date, `2019_12` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2020_01' AS date, `2020_01` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2020_02' AS date, `2020_02` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2020_03' AS date, `2020_03` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2020_04' AS date, `2020_04` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2020_05' AS date, `2020_05` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2020_06' AS date, `2020_06` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2020_07' AS date, `2020_07` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2020_08' AS date, `2020_08` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2020_09' AS date, `2020_09` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2020_10' AS date, `2020_10` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2020_11' AS date, `2020_11` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2020_12' AS date, `2020_12` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2021_01' AS date, `2021_01` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2021_02' AS date, `2021_02` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2021_03' AS date, `2021_03` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2021_04' AS date, `2021_04` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2021_05' AS date, `2021_05` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2021_06' AS date, `2021_06` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2021_07' AS date, `2021_07` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2021_08' AS date, `2021_08` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2021_09' AS date, `2021_09` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2021_10' AS date, `2021_10` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2021_11' AS date, `2021_11` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2021_12' AS date, `2021_12` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2022_01' AS date, `2022_01` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2022_02' AS date, `2022_02` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2022_03' AS date, `2022_03` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2022_04' AS date, `2022_04` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2022_05' AS date, `2022_05` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2022_06' AS date, `2022_06` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2022_07' AS date, `2022_07` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2022_08' AS date, `2022_08` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2022_09' AS date, `2022_09` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2022_10' AS date, `2022_10` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2022_11' AS date, `2022_11` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2022_12' AS date, `2022_12` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2023_01' AS date, `2023_01` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2023_02' AS date, `2023_02` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2023_03' AS date, `2023_03` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2023_04' AS date, `2023_04` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2023_05' AS date, `2023_05` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2023_06' AS date, `2023_06` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2023_07' AS date, `2023_07` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2023_08' AS date, `2023_08` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2023_09' AS date, `2023_09` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2023_10' AS date, `2023_10` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2023_11' AS date, `2023_11` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2023_12' AS date, `2023_12` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2024_01' AS date, `2024_01` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2024_02' AS date, `2024_02` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2024_03' AS date, `2024_03` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2024_04' AS date, `2024_04` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2024_05' AS date, `2024_05` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2024_06' AS date, `2024_06` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2024_07' AS date, `2024_07` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2024_08' AS date, `2024_08` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2024_09' AS date, `2024_09` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2024_10' AS date, `2024_10` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2024_11' AS date, `2024_11` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2024_12' AS date, `2024_12` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2025_01' AS date, `2025_01` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2025_02' AS date, `2025_02` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2025_03' AS date, `2025_03` AS median_rent FROM apartment_rent_estimates
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, bed_size, '2025_04' AS date, `2025_04` AS median_rent FROM apartment_rent_estimates;


SELECT *
FROM apartment_rent_estimates_staging;

DESCRIBE apartment_rent_estimates_staging;


-- APARTMENT RENT GROWTH YOY STAGING
CREATE TABLE apartment_rent_growth_yoy_staging AS
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_01' AS date, `2018_01` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_02' AS date, `2018_02` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_03' AS date, `2018_03` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_04' AS date, `2018_04` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_05' AS date, `2018_05` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_06' AS date, `2018_06` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_07' AS date, `2018_07` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_08' AS date, `2018_08` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_09' AS date, `2018_09` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_10' AS date, `2018_10` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_11' AS date, `2018_11` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2018_12' AS date, `2018_12` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_01' AS date, `2019_01` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_02' AS date, `2019_02` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_03' AS date, `2019_03` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_04' AS date, `2019_04` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_05' AS date, `2019_05` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_06' AS date, `2019_06` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_07' AS date, `2019_07` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_08' AS date, `2019_08` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_09' AS date, `2019_09` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_10' AS date, `2019_10` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_11' AS date, `2019_11` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2019_12' AS date, `2019_12` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_01' AS date, `2020_01` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_02' AS date, `2020_02` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_03' AS date, `2020_03` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_04' AS date, `2020_04` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_05' AS date, `2020_05` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_06' AS date, `2020_06` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_07' AS date, `2020_07` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_08' AS date, `2020_08` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_09' AS date, `2020_09` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_10' AS date, `2020_10` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_11' AS date, `2020_11` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2020_12' AS date, `2020_12` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_01' AS date, `2021_01` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_02' AS date, `2021_02` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_03' AS date, `2021_03` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_04' AS date, `2021_04` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_05' AS date, `2021_05` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_06' AS date, `2021_06` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_07' AS date, `2021_07` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_08' AS date, `2021_08` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_09' AS date, `2021_09` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_10' AS date, `2021_10` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_11' AS date, `2021_11` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2021_12' AS date, `2021_12` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_01' AS date, `2022_01` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_02' AS date, `2022_02` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_03' AS date, `2022_03` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_04' AS date, `2022_04` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_05' AS date, `2022_05` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_06' AS date, `2022_06` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_07' AS date, `2022_07` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_08' AS date, `2022_08` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_09' AS date, `2022_09` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_10' AS date, `2022_10` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_11' AS date, `2022_11` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2022_12' AS date, `2022_12` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_01' AS date, `2023_01` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_02' AS date, `2023_02` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_03' AS date, `2023_03` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_04' AS date, `2023_04` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_05' AS date, `2023_05` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_06' AS date, `2023_06` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_07' AS date, `2023_07` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_08' AS date, `2023_08` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_09' AS date, `2023_09` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_10' AS date, `2023_10` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_11' AS date, `2023_11` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2023_12' AS date, `2023_12` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_01' AS date, `2024_01` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_02' AS date, `2024_02` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_03' AS date, `2024_03` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_04' AS date, `2024_04` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_05' AS date, `2024_05` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_06' AS date, `2024_06` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_07' AS date, `2024_07` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_08' AS date, `2024_08` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_09' AS date, `2024_09` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_10' AS date, `2024_10` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_11' AS date, `2024_11` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2024_12' AS date, `2024_12` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2025_01' AS date, `2025_01` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2025_02' AS date, `2025_02` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2025_03' AS date, `2025_03` AS growth_rate FROM apartment_rent_growth_yoy
UNION ALL
SELECT location_name, location_type, location_fips_code, population, state, county, metro, '2025_04' AS date, `2025_04` AS growth_rate FROM apartment_rent_growth_yoy;


SELECT *
FROM apartment_rent_growth_yoy_staging;

DESCRIBE apartment_rent_growth_yoy_staging;












