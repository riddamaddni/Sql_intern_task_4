-- Use pv_db;


-- SELECT COUNT(*) AS TOTAL_PATIENTS 
-- FROM PATIENTS;

-- SELECT COUNT(*) AS Total_Reporters 
-- FROM Reporters;

-- SELECT COUNT(*) AS Total_Reports 
-- FROM Reports;

-- SELECT COUNT(*) AS Total_Drugs 
-- FROM Drugs;

-- SELECT COUNT(*) AS Total_Reactions 
-- FROM Reactions;

-- SELECT 
--     COUNT(*) AS Total_Patients,
--     COUNT(Weight_kg) AS Patients_With_Weight,
--     COUNT(Age_years) AS Patients_With_Age,
--     COUNT(Date_of_birth) AS Patients_With_DOB
-- FROM Patients;

-- SELECT 
-- 	   COUNT(*) AS ALL_PATIENTS,
--     COUNT(WEIGHT_KG) AS NON_NULL_WEIGHTS,
--     COUNT(*)-COUNT(WEIGHT_KG) AS MISSING_WEIGHTS 
-- FROM PATIENTS;

-- TOTAL WEIGHT OF ALL PATEINTS JUST FOR DEMONSTRATION
-- SELECT SUM(WEIGHT_KG) AS TOTAL_WEIGHT
-- FROM PATIENTS; 

-- SELECT 
--     SUM(Age_years) AS Total_Age,
--     SUM(Weight_kg) AS Total_Weight,
--     SUM(Height_inch) AS Total_Height
-- FROM Patients;

-- SELECT SUM(Age_years) AS Total_Age_Females 
-- FROM Patients 
-- WHERE Gender = 'Female'; -- FOR DEMONSTRATION

-- SELECT AVG(Age_years) AS Average_Age 
-- FROM Patients;

-- SELECT 
--     AVG(Weight_kg) AS Average_Weight,
--     AVG(Height_inch) AS Average_Height
-- FROM Patients;

-- SELECT AVG(Age_years) AS Average_Age_Males 
-- FROM Patients 
-- WHERE Gender = 'Male';

-- SELECT 
--     MIN(Age_years) AS Youngest_Patient,
--     MAX(Age_years) AS Oldest_Patient
-- FROM Patients;

-- SELECT 
--     MIN(Weight_kg) AS Lightest_Weight,
--     MAX(Weight_kg) AS Heaviest_Weight
-- FROM Patients;

-- SELECT 
--     MIN(receipt_datetime) AS Earliest_Report,
--     MAX(receipt_datetime) AS Latest_Report
-- FROM Reports;

-- SELECT ROUND(AVG(Age_years), 2) AS Average_Age_Rounded 
-- FROM Patients;

-- SELECT 
--    Gender,
--     COUNT(*) AS Number_of_Patients
-- FROM Patients 
-- GROUP BY Gender;

-- SELECT 
-- 	REPORTER_TYPE,
--     COUNT(*) AS NUMBER_OF_REPORTERS
-- FROM REPORTERS
-- GROUP BY REPORTER_TYPE;

-- SELECT 
--     country_of_report,
--     COUNT(*) AS Number_of_Reports
-- FROM Reports 
-- GROUP BY country_of_report;

-- SELECT 
-- 	Gender,
--     COUNT(*) AS Patient_Count,
--     AVG(Age_years) AS Average_Age,
--     MIN(Age_years) AS Youngest,
--     MAX(Age_years) AS Oldest
-- FROM Patients
-- WHERE Age_years IS NOT NULL
-- GROUP BY Gender;

-- SELECT 
--     country_of_report AS Country,
--     COUNT(*) AS Total_Reports,
--     COUNT(DISTINCT seriousness_id) AS Different_Seriousness_Levels,
--     COUNT(DISTINCT outcome_id) AS Different_Outcomes
-- FROM Reports 
-- WHERE country_of_report IS NOT NULL
-- GROUP BY country_of_report;

-- SELECT COUNT(DISTINCT Gender) AS Unique_Genders 
-- FROM Patients;

-- SELECT 
--     Gender,
--     COUNT(*) AS Patient_Count
-- FROM Patients 
-- GROUP BY Gender
-- HAVING COUNT(*) > 1;

-- SELECT 
--     Country,
--     COUNT(*) AS Reporter_Count
-- FROM Reporters 
-- GROUP BY Country
-- HAVING COUNT(*) > 1;

-- SELECT 
--      GENDER,
--      COUNT(*) AS PATIENT_COUNT,
--      ROUND(AVG(WEIGHT_KG)) AS AVG_WEIGHT 
-- FROM PATIENTS
-- WHERE WEIGHT_KG IS NOT NULL
-- GROUP BY GENDER
-- HAVING AVG(WEIGHT_KG) > 70; -- GENDERS WITH AVG AGE>70

-- SELECT 
-- 	GENDER,
--     MAX(Age_years) AS Oldest_Age
-- FROM Patients 
-- WHERE Age_years IS NOT NULL
-- GROUP BY Gender;

