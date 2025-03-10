-- CREATE DATABASE retailstore

-- Convert Date Column to DATE Format
-- ALTER TABLE inventory
-- MODIFY COLUMN `Date` DATE;

-- Check Total Records
-- SELECT COUNT(*) FROM inventory;

-- Preview First 10 Records
-- SELECT * FROM inventory LIMIT 10;

-- Check Column Data Types
-- DESC inventory;

-- Inventory & Sales Analysis

-- Find the Total Inventory Level for Each Category
-- SELECT Category, SUM(`Inventory Level`) AS Total_Inventory
-- FROM inventory
-- GROUP BY Category
-- ORDER BY Total_Inventory DESC;

-- Find the Best-Selling Products
-- SELECT `Product ID`, Category, SUM(`Units Sold`) AS Total_Sales
-- FROM inventory
-- GROUP BY `Product ID`, Category
-- ORDER BY Total_Sales DESC
-- LIMIT 10;

-- Find the Least-Selling Products
-- SELECT `Product ID`, Category, SUM(`Units Sold`) AS Total_Sales
-- FROM inventory
-- GROUP BY `Product ID`, Category
-- ORDER BY Total_Sales ASC
-- LIMIT 10;

-- Find Stores with the Highest Sales
-- SELECT `Store ID`, SUM(`Units Sold`) AS Total_Sales
-- FROM inventory
-- GROUP BY `Store ID`
-- ORDER BY Total_Sales DESC
-- LIMIT 5;

-- Pricing & Discount Impact

-- Effect of Discount on Sales
-- SELECT Discount, AVG(`Units Sold`) AS Avg_Sales
-- FROM inventory
-- GROUP BY Discount
-- ORDER BY Discount ASC;

-- Compare Competitor Pricing with Store Prices
-- SELECT `Product ID`, Price, `Competitor Pricing`, 
--        (Price - `Competitor Pricing`) AS Price_Difference
-- FROM inventory
-- ORDER BY Price_Difference DESC;

-- Seasonal Trends & External Factors

-- Sales Trends Across Different Seasons
-- SELECT Seasonality, SUM(`Units Sold`) AS Total_Sales
-- FROM inventory
-- GROUP BY Seasonality
-- ORDER BY Total_Sales DESC;

-- Impact of Weather on Sales
-- SELECT `Weather Condition`, AVG(`Units Sold`) AS Avg_Sales
-- FROM inventory
-- GROUP BY `Weather Condition`
-- ORDER BY Avg_Sales DESC;

-- Sales During Holidays & Promotions
-- SELECT `Holiday/Promotion`, AVG(`Units Sold`) AS Avg_Sales
-- FROM inventory
-- GROUP BY `Holiday/Promotion`;

-- Demand Forecast vs Actual Sales

-- Accuracy of Demand Forecast
-- SELECT `Product ID`, 
--        SUM(`Units Sold`) AS Actual_Sales, 
--        SUM(`Demand Forecast`) AS Predicted_Sales, 
--        (SUM(`Demand Forecast`) - SUM(`Units Sold`)) AS Difference
-- FROM inventory
-- GROUP BY `Product ID`
-- ORDER BY Difference DESC;

-- Over-Stocked & Under-Stocked Products
-- SELECT `Product ID`, `Inventory Level`, `Units Sold`
-- FROM inventory
-- WHERE `Inventory Level` > 2 * `Units Sold`
-- ORDER BY `Inventory Level` DESC;

-- SELECT 
--     `Product ID`, 
--     `Inventory Level`, 
--     `Units Sold`,
--     CASE 
--         WHEN `Units Sold` > (`Inventory Level` / 2) THEN 'Oversold'
--         ELSE 'Undersold'
--     END AS Sales_Category
-- FROM inventory
-- ORDER BY `Inventory Level` DESC;

