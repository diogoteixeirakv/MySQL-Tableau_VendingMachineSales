/*
-- ~~ Column Status ~~ --
SELECT status
FROM vending_machine.vending_machine_sales
GROUP BY status -- vejo que só aparece "Processed"

SELECT COUNT(DISTINCT status)
FROM vending_machine.vending_machine_sales --vejo que só aparece 1. 

-- ~~ Column Device_ID ~~ --

SELECT device_id
FROM vending_machine.vending_machine_sales
GROUP BY device_id -- vejo que há 5 (GuttenPlans x1367; Earle Asphalt x1371; BSQ Mall x1366 - ATT; BSQ Mall x1364 - Zales; Earle Asphalt x1371)


SELECT device_id, location, machine
FROM vending_machine.vending_machine_sales
GROUP BY device_id -- vejo que o Mall tem 2 máquinas (BSQ Mall x1366 - ATT; BSQ Mall x1364 - Zales)

-- ~~ Column Product ~~ -- 
SELECT COUNT(DISTINCT product)
FROM vending_machine.vending_machine_sales --vejo que há 171 produtos.

SELECT count(product)
FROM vending_machine.vending_machine_sales
WHERE product="" -- 3 células em branco || REMOVER

-- ~~ Column Category ~~ -- 
SELECT category
FROM vending_machine.vending_machine_sales
GROUP BY Category -- vejo que há 4 categorias (carbonated, non carbonated, water, food) + célula em braco. || REMOVER

SELECT COUNT(DISTINCT category)
FROM vending_machine.vending_machine_sales -- vejo que há 5 categorias.

SELECT category, product
FROM vending_machine.vending_machine_sales
ORDER BY category DESC 

SELECT category, product
FROM vending_machine.vending_machine_sales
WHERE category="food" -- categoria só para ver que produtos tem a categoria food.

SELECT COUNT(category)
FROM vending_machine.vending_machine_sales
WHERE category="" -- 184 células em branco 

-- ~~ Column Transaction ~~ --
SELECT transaction, count( transaction)
FROM vending_machine.vending_machine_sales
GROUP BY transaction 
HAVING COUNT(transaction)>1 -- identficar duplicados. Há duplicados mas pq numa transação pode-se vender mais que 1 produto. 

-- ~~ PrcDate ~~ --
SELECT min(`Prcd Date`), max(`Prcd Date`)
FROM vending_machine.vending_machine_sales

-- ~~ Type ~~ --
SELECT type
FROM vending_machine.vending_machine_sales
GROUP BY type -- vejo que há 2 (Cash; Credit)

-- ~~ MPrice ~~ --
SELECT mprice
FROM vending_machine.vending_machine_sales
WHERE mprice="" -- vejo que há uma célula null. || REMOVER



-- \\ REMOVING NULLS Product Column\\ --
DELETE FROM vending_machine.vending_machine_sales WHERE transaction=14835073327
DELETE FROM vending_machine.vending_machine_sales WHERE transaction=14878665903
DELETE FROM vending_machine.vending_machine_sales WHERE transaction=14878665903
DELETE FROM vending_machine.vending_machine_sales WHERE transaction=15469028445

-- \\ REMOVING NULLS Category Column\\ --
DELETE FROM vending_machine.vending_machine_sales WHERE category=""

-- \\ REMOVING NULLS MPrice Column\\ --
DELETE FROM vending_machine.vending_machine_sales WHERE mprice=""
*/

select count(*) from vending_machine.vending_machine_sales
-- 6259 rows























