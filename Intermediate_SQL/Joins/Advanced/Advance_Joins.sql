/* LEFT ANTI JOIN 
	-> Return Rows from left table that has NO MATCH in Right Table */ 

-- GEt all the Customers who haven't ordered

Select *
from customers C
LEFT JOIN orders O

ON 
	C.id = O.customer_id
WHERE 
	O.customer_id is NULL

/* RIGHT ANTI JOIN 
			-> Returns all rows from Right that as no Match in Left Table */ 

-- Get all orders which has no matching customers

Select *
from customers C
RIGHT JOIN orders O
On 
	C.id = O.customer_id
where 
	C.id Is NULL 

-- STEPS TO FOLLOW -> First do normal Join and see the result then get what is asked ( That is how we will know what kind of Join we are applying ) 
-- USING THE LEFT ANTI JOIN 

Select *
from orders o
left join customers c
on
	o.customer_id = c.id
where c.id is null 

/* FULL ANTI JOIN 
		-> Returns only rows that don't match in either Tables */

-- Find CUstomers without orders and orders without customers 

Select *
from customers C
FULL JOIN orders O
ON 
	C.id = O.customer_id

WHERE 
	C.id IS NULL 
	or 
	O.customer_id IS NULL


-- TASK 1
-- get all customers along with orders, but only for customers who have placed an order ( without using Inner join )

Select *
FROM customers C
LEFT JOIN orders O
ON 
	O.customer_id = C.id
WHERE 
	O.customer_id is NOT NULL 

/* CROSS JOIN 
		-> Combines Everthing 
*/

-- Generate all possible combinations between Customers and Orders 

Select *
From customers 
CROSS JOIN orders