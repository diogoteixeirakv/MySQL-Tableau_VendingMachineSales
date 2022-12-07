-- Criar Tabela 

USE vending_machine;
SELECT *
FROM vending_machine_sales;

ALTER TABLE vending_machine_sales 
RENAME COLUMN Category1 TO Category,
RENAME COLUMN Product1 TO Product,
RENAME COLUMN Machine1 TO Machine;

--Rename columnd Device ID
SELECT `Device ID`
FROM vending_machine.vending_machine_sales;

ALTER TABLE vending_machine_sales
RENAME COLUMN `Device ID` TO device_id,
RENAME COLUMN device_id TO Device_id;

SELECT*
FROM vending_machine.vending_machine_sales;

ALTER TABLE vending_machine_sales
RENAME COLUMN device_id TO Device_id;

SELECT*
FROM vending_machine.vending_machine_sales;


