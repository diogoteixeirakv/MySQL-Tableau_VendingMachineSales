-- See Table: vending_machine_sales
USE vending_machine;
SELECT *
FROM vending_machine_sales

-- Rename columnd Device ID
ALTER TABLE vending_machine_sales
RENAME COLUMN `Device ID` TO device_id,

-- See columns names and types
DESCRIBE vending_machine.vending_machine_sales


-- Columns Check:

-- ~~ Column Status ~~ --
SELECT COUNT(DISTINCT status)
FROM vending_machine.vending_machine_sales
GROUP BY status -- 1 status: "Processed"

-- ~~ Column Device_ID ~~ --
SELECT device_id
FROM vending_machine.vending_machine_sales
GROUP BY device_id -- There are 5 machines (GuttenPlans x1367; Earle Asphalt x1371; BSQ Mall x1366 - ATT; BSQ Mall x1364 - Zales; Earle Asphalt x1371)

SELECT device_id, location, machine
FROM vending_machine.vending_machine_sales
GROUP BY device_id -- The location Mall has 2 machines (BSQ Mall x1366 - ATT; BSQ Mall x1364 - Zales)


-- ~~ Column Product ~~ -- 
SELECT COUNT(DISTINCT product)
FROM vending_machine.vending_machine_sales -- There are 171 products.

SELECT count(product)
FROM vending_machine.vending_machine_sales
WHERE product IS NULL 

DELETE FROM vending_machine.vending_machine_sales WHERE products IS NULL -- NULLs removed


-- ~~ Column Category ~~ -- 
SELECT COUNT(DISTINCT category)
FROM vending_machine.vending_machine_sales
GROUP BY Category -- There are 4 categorys (carbonated, non carbonated, water, food) and 1 NULL 

SELECT COUNT(category)
FROM vending_machine.vending_machine_sales
WHERE category IS NULL -- 184 NULLS 
DELETE FROM vending_machine.vending_machine_sales WHERE category IS NULL -- NULLs removed

-- ~~ Column Transaction ~~ --
SELECT transaction, count(transaction)
FROM vending_machine.vending_machine_sales
GROUP BY transaction 
HAVING COUNT(transaction)>1 -- Existing duplicates because 1 transaction can have more than 1 product sold.

-- ~~ PrcDate ~~ --
SELECT min(`Prcd Date`), max(`Prcd Date`)
FROM vending_machine.vending_machine_sales

-- ~~ Type ~~ --
SELECT type
FROM vending_machine.vending_machine_sales
GROUP BY type -- 2 types: Cash, Credit.

-- ~~ MPrice ~~ --
SELECT mprice
FROM vending_machine.vending_machine_sales
WHERE mprice IS NULL -- There is 1 NULL  

DELETE FROM vending_machine.vending_machine_sales WHERE mprice IS NULL -- NULLs removed
