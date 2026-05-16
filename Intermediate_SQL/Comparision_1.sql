-- Retrieve all customers from Germany 

Select * 
from customers
where country = 'Germany'

-- Retrieve all customers who are not from germany 

Select * 
from customers 
where country != 'Germany'

-- Retrieve all customers who have score greater than 500 

Select *
from customers
where score > 500

-- Retrieve all customers who have score 500 or more 

Select * 
from customers
where score >= 500

-- Retrieve all customers who have score less than 500 

select *
from customers 
where score < 500 

-- Retrieve all customers who have score less than or equal to 500 

select * 
from customers 
where score <= 500 