/*
-- NUM PRODUCT BY CATEGORY - All Machines  --
SELECT category, count(*) as num_products
FROM vending_machine.vending_machine_sales
group by category -- carbonated=1639, nc=710, food=3427, water=483


-- ^^ ANALYZE GuttenPlans x1367 ^^ --
SELECT count(*)
FROM vending_machine.vending_machine_sales
WHERE machine="GuttenPlans x1367" -- 2524

SELECT category, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="GuttenPlans x1367"
group by category -- carbonated=1096, nc=226, food=1202


-- ^^ ANALYZE EB Public Library x1380 ^^ --
SELECT count(*)
FROM vending_machine.vending_machine_sales
WHERE machine="EB Public Library x1380" -- 1833

SELECT category, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="EB Public Library x1380"
group by category -- water=183, carbonated=279, nc=275, food=1096


-- ^^ ANALYZE BSQ Mall x1366 - ATT ^^ --
SELECT count(*)
FROM vending_machine.vending_machine_sales
WHERE machine="BSQ Mall x1366 - ATT" -- 512*

SELECT category, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="BSQ Mall x1366 - ATT"
group by category -- water=105, carbonated=106, nc=82, food=219


-- ^^ ANALYZE BSQ Mall x1364 - Zales ^^ --
SELECT count(*)
FROM vending_machine.vending_machine_sales
WHERE machine="BSQ Mall x1364 - Zales" -- 714*

SELECT category, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="BSQ Mall x1364 - Zales"
group by category -- water=181, carbonated=115, nc=99, food=319


-- ^^ ANALYZE Earle Asphalt x1371 ^^ --
SELECT count(*)
FROM vending_machine.vending_machine_sales
WHERE machine="Earle Asphalt x1371" -- 676 transações

SELECT category, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="Earle Asphalt x1371"
group by category -- water=14, carbonated=43, nc=28, food=591

-- ^^ ANALYZE Todas Máquinas numa tabela ^^ --
select machine, category, count(*) as num_products
from vending_machine.vending_machine_sales
where machine IN ("GuttenPlans x1367","EB Public Library x1380","BSQ Mall x1366 - ATT","BSQ Mall x1364 - Zales","Earle Asphalt x1371")
group by machine, category
having count(*)>0
order by machine, num_products desc
*/



