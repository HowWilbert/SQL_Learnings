-- Total Score and Total Number of Customers from Each Country 

SELECT 
	country,
	sum(score) as Total_Score,
	count(*) as Total_customers
from customers
group by country
having country = 'UK'