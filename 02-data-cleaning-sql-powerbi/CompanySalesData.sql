CREATE DATABASE CompanySalesData;
USE CompanySalesData;
-- LOADED UNSORTED DATA 
SELECT * FROM raw_sales_data;

-- FINDING DUPLICATE RECORDS    
SELECT *
FROM raw_sales_data
WHERE (Customer_Name, Email) IN (
  SELECT Customer_Name, Email
  FROM raw_sales_data
  GROUP BY Customer_Name, Email
  HAVING COUNT(*) > 1
)
ORDER BY Customer_Name, Email, Order_ID;

-- DELETE THE DUPLICATE RECORD
DELETE d1
FROM raw_sales_data AS d1
JOIN raw_sales_data AS d2
	ON d1.Customer_Name = d2.Customer_Name
	AND d1.Email = d2.Email
	AND d1.Order_ID > d2.Order_ID;
 
-- CHECK IF THE DATASET HAS DELETED THE DUPLICATE ENNTRY
SELECT * 
FROM raw_sales_data
WHERE Email = 'john@email.com';


-- FINDING RECORDS WITH MISSING EMAILS IN A DATASET
SELECT * FROM raw_sales_data
WHERE Email = "";

-- UPDATE THE BLANK EMAIL'S WITH VALUE = 'not_provided@email.com' 
SET SQL_SAFE_UPDATES = 0;

UPDATE raw_sales_data 
SET Email = 'not_provided@gmail.com'
WHERE Email = "" ;

SELECT * FROM raw_sales_data
WHERE Email = 'not_provided@gmail.com';

--  FINDING RECORDS WITH MISSING PHONE IN A DATASET
SELECT * FROM raw_sales_data
WHERE Phone = "";


-- UPDATE THE BLANK PHONE NUMBERS WITH VALUE = 0
UPDATE raw_sales_data 
SET Phone = 0
WHERE Phone = "" ;

SELECT * FROM raw_sales_data
WHERE Phone = 0;

-- FOR CORRECTING THE DATE FORMAT

SELECT Order_Date,
  CASE
    WHEN Order_Date LIKE '%/%' THEN 'Slash Format'
    WHEN Order_Date LIKE '%-%' THEN 'Hyphen Format'
    ELSE 'Other Format'
  END AS Format_Type
FROM raw_sales_data;

UPDATE raw_sales_data
SET Order_Date = CASE
WHEN Order_Date LIKE "%/%" THEN STR_TO_DATE(Order_Date, '%m/%d/%Y')
WHEN Order_Date LIKE "%-%" THEN STR_TO_DATE(Order_Date,'%m-%d-%Y')
ELSE NULL
END;

SELECT Order_ID, DATE_FORMAT(Order_Date, '%Y-%m-%d') AS Cleaned_Date
FROM raw_sales_data;

-- FINDING THE MISSING DISCOUNT VALUES.
SELECT * 
FROM raw_sales_data
WHERE `Discount (%)` = '';

-- UPDATE THE DISCOUNT COLUMN WHERE VALUE IS MISSING WITH VALUE = 0
UPDATE raw_sales_data 
SET `Discount (%)` = 0
WHERE `Discount (%)` = "" ;

SELECT * 
FROM raw_sales_data
WHERE `Discount (%)` = 0;

-- Loaded cleaned dataset
SELECT * FROM cleanedsalesdata;

-- Summarize sales data to identify trends
-- 1. Calculate total revenue per product category to determine the most profitable segments.
SELECT Product_Category, SUM(Revenue) AS Total_Reveue
FROM cleanedsalesdata
GROUP BY Product_Category
ORDER BY Total_Reveue DESC;

-- 2.Find the average discount applied across different customer segments to analyze discount effectiveness.
SELECT Product_Category, ROUND(AVG(`Discount (%)`), 2) AS Avg_Discount
FROM cleanedsalesdata
GROUP BY Product_Category
ORDER BY Avg_Discount DESC;

-- 3. Analyze monthly sales trends to identify peak sales periods.
SELECT 
    MONTHNAME(Order_Date) AS Month_Name,
    SUM(Revenue) AS Monthly_Revenue
FROM cleanedsalesdata
GROUP BY Month_Name
ORDER BY Monthly_Revenue DESC;















