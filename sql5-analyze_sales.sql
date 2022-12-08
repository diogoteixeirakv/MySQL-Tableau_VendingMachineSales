 -- TOTAL SALES - All Machines --
SELECT SUM(linetotal), SUM(transtotal)
FROM vending_machine.vending_machine_sales -- sum(linetotal)=12048.25; sum(transtotal)=13 492.25

 -- TOTAL SALES BY MACHINE --
SELECT machine, SUM(linetotal) AS Total_Sales
FROM vending_machine.vending_machine_sales
WHERE 
	machine ="GuttenPlans x1367" 
    OR machine ="EB Public Library x1380" 
    OR machine ="BSQ Mall x1366 - ATT" 
    OR machine ="BSQ Mall x1364 - Zales" 
    OR machine ="Earle Asphalt x1371"
GROUP BY machine
ORDER BY machine DESC

/*
OUUUUUU
SELECT machine, SUM(linetotal) AS Total_Sales
FROM vending_machine.vending_machine_sales
WHERE machine IN ("GuttenPlans x1367","EB Public Library x1380","BSQ Mall x1366 - ATT","BSQ Mall x1364 - Zales","Earle Asphalt x1371")
GROUP BY machine
ORDER BY machine DESC
*/


    





