-- NUM PRODUCT BY CATEGORY - All Machines  --
SELECT category, count(*) as num_products
FROM vending_machine.vending_machine_sales
GROUP BY category -- carbonated=1639, non carbonated=710, food=3427, water=483
ORDER BY num_products 


-- ^^ ANALYZE GuttenPlans x1367 ^^ --
SELECT machine, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="GuttenPlans x1367" -- No products:2524

SELECT machine, category, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="GuttenPlans x1367"
GROUP BY category -- carbonated=1096, non carbonated=226, food=1202
ORDER BY num_productS DESC
*/

-- ^^ ANALYZE EB Public Library x1380 ^^ --
SELECT machine, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="EB Public Library x1380" -- 1833

SELECT machine, category, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="EB Public Library x1380"
GROUP BY category -- water=183, carbonated=279, non carbonated=275, food=1096
ORDER BY num_products DESC


-- ^^ ANALYZE BSQ Mall x1366 - ATT ^^ --
SELECT count(*)
FROM vending_machine.vending_machine_sales
WHERE machine="BSQ Mall x1366 - ATT" -- No products:512

SELECT category, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="BSQ Mall x1366 - ATT"
GROUP BY category -- water=105, carbonated=106, non carbonated=82, food=219


-- ^^ ANALYZE BSQ Mall x1364 - Zales ^^ --
SELECT count(*)
FROM vending_machine.vending_machine_sales
WHERE machine="BSQ Mall x1364 - Zales" -- No products:714

SELECT category, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="BSQ Mall x1364 - Zales"
group by category -- water=181, carbonated=115, non carbonated=99, food=319


-- ^^ ANALYZE Earle Asphalt x1371 ^^ --
SELECT count(*)
FROM vending_machine.vending_machine_sales
WHERE machine="Earle Asphalt x1371" -- 676 transações

SELECT category, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="Earle Asphalt x1371"
GROUP BY category -- water=14, carbonated=43, non carbonated=28, food=591




