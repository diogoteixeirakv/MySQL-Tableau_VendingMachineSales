-- NUMBER SOLD PRODUCTS BY CATEGORY - All Machines  --
SELECT category, count(*) as num_products
FROM vending_machine.vending_machine_sales
GROUP BY category -- carbonated=1639, non carbonated=710, food=3427, water=483
ORDER BY num_products DESC

-- ^^ ANALYZE GuttenPlans x1367 ^^ --
SELECT count(*)
FROM vending_machine.vending_machine_sales
WHERE machine="GuttenPlans x1367" -- No. sold products: 2524

SELECT category, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="GuttenPlans x1367"
GROUP BY category -- carbonated=1096, non carbonate=226, food=1202


-- ^^ ANALYZE EB Public Library x1380 ^^ --
SELECT count(*)
FROM vending_machine.vending_machine_sales
WHERE machine="EB Public Library x1380" -- No. sold products: 1833

SELECT category, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="EB Public Library x1380"
GROUP BY category -- water=183, carbonated=279, non carbonate=275, food=1096


-- ^^ ANALYZE BSQ Mall x1366 - ATT ^^ --
SELECT count(*)
FROM vending_machine.vending_machine_sales
WHERE machine="BSQ Mall x1366 - ATT" -- No. sold products:: 512  

SELECT category, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="BSQ Mall x1366 - ATT"
GROUP BY category -- water=105, carbonated=106, non carbonate=82, food=219


-- ^^ ANALYZE BSQ Mall x1364 - Zales ^^ --
SELECT count(*)
FROM vending_machine.vending_machine_sales
WHERE machine="BSQ Mall x1364 - Zales" -- No. sold products: 714

SELECT category, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="BSQ Mall x1364 - Zales"
GROUP BY category -- water=181, carbonated=115, non carbonate=99, food=319


-- ^^ ANALYZE Earle Asphalt x1371 ^^ --
SELECT count(*)
FROM vending_machine.vending_machine_sales
WHERE machine="Earle Asphalt x1371" -- No. sold products: 676 

SELECT category, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="Earle Asphalt x1371"
GROUP BY category -- water=14, carbonated=43, non carbonate=28, food=591

-- ^^ ANALYZE - ALL MACHINES in one table ^^ --
SELECT machine, category, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine IN ("GuttenPlans x1367","EB Public Library x1380","BSQ Mall x1366 - ATT","BSQ Mall x1364 - Zales","Earle Asphalt x1371")
GROUP BY machine, category
HAVING count(*)>0
ORDER BY machine, num_products DESC
