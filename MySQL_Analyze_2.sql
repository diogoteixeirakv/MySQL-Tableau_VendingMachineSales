-- TOP 5 PRODUCTS All Machines--
SELECT product, category, count(product) as num_products
FROM vending_machine.vending_machine_sales
GROUP BY product
ORDER BY num_products DESC
LIMIT 5

-- TOP 5 PRODUCTS GuttenPlans x1367--
SELECT machine, product, category, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="GuttenPlans x1367"
GROUP BY product
HAVING count(*)>0
ORDER BY count(product) DESC
LIMIT 5


-- TOP 5 PRODUCTS EB Public Library x1380 --
SELECT machine, product, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="EB Public Library x1380"
GROUP BY product
HAVING count(*)>0
ORDER BY count(product) DESC
LIMIT 5

-- TOP 5 PRODUCTS BSQ Mall x1366 - ATT --
SELECT product, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="BSQ Mall x1366 - ATT"
GROUP BY product
HAVING count(*)>0
ORDER BY count(product) DESC
LIMIT 5

-- TOP 5 PRODUCTS BSQ Mall x1364 - Zales-
SELECT product, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="BSQ Mall x1364 - Zales"
GROUP BY product
HAVING count(*)>0
ORDER BY count(product) DESC
LIMIT 5

-- TOP 5 PRODUCTS Earle Asphalt x1371 --
SELECT product, count(*) as num_products
FROM vending_machine.vending_machine_sales
WHERE machine="Earle Asphalt x1371"
GROUP BY product
HAVING count(*)>0
ORDER BY count(product) DESC
LIMIT 5





