-- Retrieve all customers who are from USA and have a score greater than 500

select * 
from customers
where 
	country = 'USA' 
	and 
	score > 500 

-- Retrieve all customers who are from USA or have score greater than 500

Select * 
from customers
where 
	country = 'USA'
	or 
	score > 500

-- Reyrieve all customers who are not from USA

select * 
from customers
where 
	NOT country = 'USA'

-- Retrieve all customers with score not less than 500

select *
from customers
where 
	NOT score < 500


/* BETWEEN OPERATOR 
	CHECK if the value lies in the given RANGE */

-- Retrieve all the customers with score in the range [100 - 500]

Select *
from customers
where 
	score BETWEEN 100 and 500
