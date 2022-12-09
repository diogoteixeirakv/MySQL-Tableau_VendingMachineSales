-- See Table: vending_machine_sales
USE vending_machine;
SELECT *
FROM vending_machine_sales

--Rename columnd Device ID
ALTER TABLE vending_machine_sales
RENAME COLUMN `Device ID` TO device_id,
RENAME COLUMN device_id TO Device_id;

-- See columns names and types
DESCRIBE vending_machine.vending_machine_sales

