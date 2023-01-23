 -- TOTAL SALES ($) - All Machines --
SELECT SUM(linetotal) as Total_Sales
      ,SUM(transtotal)
FROM vending_machine.vending_machine_sales -- Total Sales = $12 048.25

 -- TOTAL SALES ($) BY MACHINE --
SELECT machine
      ,SUM(linetotal) AS Total_Sales
FROM vending_machine.vending_machine_sales
WHERE machine IN ("GuttenPlans x1367","EB Public Library x1380","BSQ Mall x1366 - ATT","BSQ Mall x1364 - Zales","Earle Asphalt x1371")
GROUP BY machine
ORDER BY machine DESC 

/*
Sales by Machine
GuttenPlans x1367: $ 4817.25
EB Public Library x1380: $ 3619
Earle Asphalt x1371: $ 1193.5
BSQ Mall x1366 - ATT: $	1075.75
BSQ Mall x1364 - Zales: $ 1342.75
