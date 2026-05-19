/* INNER JOIN */

-- Get All Customers along with their orders, But only for customers who have placed an order

Select 
	id,
	first_name,
	country,
	score,
	order_id,
	order_date,
	sales
from 
	customers C
	INNER JOIN orders O
ON 
	C.id = O.customer_id



/* LEFT JOIN 
		-> All rows from left Table ( A ) and only matching from Right Table ( B ) */

-- Get all CUstomers along with their orders, including those without orders. 

Select *
From customers C
LEFT JOIN orders O
ON 
	C.id = O.customer_id

/* Right Join 
		-> All rows from right Table and only matching from Left Table */

-- Get all customers along with thier oders, including orders wihtoud matching customers

Select 
	*
from customers C 
Right join orders O

on C.id = O.customer_id

-- Same task solved using LEFT Join 

select * 
from orders o 
LEFT join customers C
on 
	o.customer_id = C.id

/* FULL JOIN 
			-> Returns all rows from both table
			   Irrespective of Matching and UnMatching Data
*/

-- Get all customers and all orders, even if there's no match

Select * 
from customers C
FULL JOIN orders O
on
	C.id = O.customer_id