-- Task1 ( Challenge ) 
-- Using SalesDB, retrieve a list of all orders, along with the related customer, product and employee details.

Select 
	O.OrderID,
	O.Sales,
	C.FirstName as CustomerFirstName,
	C.LastName as CustomerLastName,
	P.Product as ProductName,
	P.Price,
	E.FirstName As SalesPersonFirstName,
	E.LastName as SalesPersonLastName
from Sales.Orders O
LEFT JOIN Sales.Customers C
ON
	C.CustomerID = O.CustomerID
LEFT JOIN Sales.Products P
ON
	O.ProductID = P.ProductID
LEFT JOIN Sales.Employees E
ON
	O.SalesPersonID = E.EmployeeID
