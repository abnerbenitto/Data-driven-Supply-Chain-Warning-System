LOAD DATA LOCAL INFILE '/Users/abner/Downloads/Boeing_Supplier_List.csv'
INTO TABLE boeing_suppliers
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

USE supply_chain_project;

-- Rename the long logistics table to something simple
RENAME TABLE `dynamic_supply_chain_logistics_dataset` TO logistics_data;

-- Add a unique ID to your Boeing Supplier table
ALTER TABLE boeing_suppliers ADD COLUMN Supplier_ID INT AUTO_INCREMENT PRIMARY KEY;

-- Add a Supplier_ID column to your Logistics table
ALTER TABLE logistics_data ADD COLUMN Supplier_ID INT;

-- Assign a random Supplier (1 to 397) to every logistics record
-- This "simulates" the connection so your Join will work perfectly
SET SQL_SAFE_UPDATES = 0;
UPDATE logistics_data 
SET Supplier_ID = FLOOR(1 + (RAND() * 397));
SET SQL_SAFE_UPDATES = 1;

-- NOW the Join will work! Let's test it:
SELECT 
    l.timestamp, 
    s.Supplier_Name, 
    l.eta_variation_hours, 
    l.supplier_reliability_score
FROM logistics_data l
JOIN boeing_suppliers s ON l.Supplier_ID = s.Supplier_ID
LIMIT 10;

-- Create the "Master Analysis" View
CREATE OR REPLACE VIEW v_supplier_performance AS
SELECT 
    s.Supplier_Name,
    s.Category,
    s.Country,
    l.eta_variation_hours,
    l.traffic_congestion_level,
    l.weather_condition_severity,
    l.supplier_reliability_score,
    l.delay_probability,
    l.risk_classification
FROM logistics_data l
JOIN boeing_suppliers s ON l.Supplier_ID = s.Supplier_ID;

-- The "Bullwhip" Discovery Query
SELECT 
    Supplier_Name,
    Category,
    COUNT(*) AS Total_Shipments,
    ROUND(AVG(eta_variation_hours), 2) AS Avg_Delay,
    ROUND(STDDEV(eta_variation_hours), 2) AS Delay_Volatility -- This is your Bullwhip Metric
FROM v_supplier_performance
GROUP BY Supplier_Name, Category
HAVING Total_Shipments > 5
ORDER BY Delay_Volatility DESC
LIMIT 10;
