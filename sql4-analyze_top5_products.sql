-- TOP 5 PRODUTOS All Machines--
select product, count(product)
from vending_machine.vending_machine_sales
group by product
order by count(product) desc
LIMIT 5

-- TOP 5 PRODUTOS GuttenPlans x1367--
select product, count(*) as num_products
from vending_machine.vending_machine_sales
where machine="GuttenPlans x1367"
group by product
having count(*)>0
order by count(product) desc
LIMIT 5

-- TOP 5 PRODUTOS EB Public Library x1380 --
select product, count(*) as num_products
from vending_machine.vending_machine_sales
where machine="EB Public Library x1380"
group by product
having count(*)>0
order by count(product) desc
LIMIT 5

-- TOP 5 PRODUTOS BSQ Mall x1366 - ATT --
select product, count(*) as num_products
from vending_machine.vending_machine_sales
where machine="BSQ Mall x1366 - ATT"
group by product
having count(*)>0
order by count(product) desc
LIMIT 5

-- TOP 5 PRODUTOS BSQ Mall x1364 - Zales-
select product, count(*) as num_products
from vending_machine.vending_machine_sales
where machine="BSQ Mall x1364 - Zales"
group by product
having count(*)>0
order by count(product) desc
LIMIT 5

-- TOP 5 PRODUTOS Earle Asphalt x1371 --
select product, count(*) as num_products
from vending_machine.vending_machine_sales
where machine="Earle Asphalt x1371"
group by product
having count(*)>0
order by count(product) desc
LIMIT 5





