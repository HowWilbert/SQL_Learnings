-- Retrieve Top 3 Customers with the Highest Scores 

Select TOP 3
	first_name,
	score
from customers
Order by score DESC

-- 2 most recent orders 

select top 2* 
from orders
order by order_date DESC