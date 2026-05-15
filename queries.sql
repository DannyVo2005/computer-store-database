USE ComputerStore;

-- Query1:  A query that contains a compound condition (more than one condition separated 
-- by AND or OR) and the results are sorted by at least one of the displayed columns (ORDER BY).

-- This query shows the products that are greater than or equal to $50.00 and has at least 20 products in stock. 
-- They are sorted by their ProductID in ascending order.

SELECT ProductID, Name, Brand, Model, UnitPrice, QuantityInStock
FROM Product
WHERE UnitPrice >= 50
	AND QuantityInStock >= 20
ORDER BY ProductID ASC;

-- Query2:  A query that contains a GROUP BY and one of the built-in functions, such as SUM, AVG, 
-- COUNT, MAX, MIN, etc with the HAVING clause.

-- This query is grouped by ProductID, and shows products that sold more than 2 units.

SELECT ProductID, SUM(Quantity) AS TotalSold
FROM OrderDetail
GROUP BY ProductID
HAVING SUM(Quantity) > 2;

-- Query3:  A query that utilizes the WILD CARD CHARACTER ‘%’ (LIKE keyword)

-- This query finds customers whose phone number begins with '770'.

SELECT CustomerID, FirstName, LastName, Phone
FROM Customer 
WHERE Phone LIKE '770%';

-- Query4:  A query that has a subquery/nested query (retrieves data from 2 tables)

-- This query finds employees who handled orders.

SELECT EmployeeID, FirstName, LastName, Role
FROM Employee
WHERE EmployeeID IN (
    SELECT EmployeeID
    FROM SalesOrder
);

-- Query 5: A query that joins 2 tables and has at least one more condition 
-- (WHERE) and displays meaningful results.

-- This query shows orders, and the customer name for orders over $500.00

SELECT S.SalesOrderID, S.OrderTotal, C.CustomerID, C.FirstName, C.LastName
FROM SalesOrder AS S JOIN Customer AS C
	ON S.CustomerID = C.CustomerID
WHERE S.OrderTotal > 500;

	