/* LIKE SEARCH operator 

TWO MOST COMMON USE-CASES 
1. use of '%' 
2. use of '_' 

how to use '%' : % in SQL means anything. So when we say first character needs to be B, then 
	
	B% -> first B then anything(even empty strings) is allowed
	
how to use '_' : in SQL _ means that there should be SOMETHING ( can't have empty strings ). 

USE -> b should be the 3rd character

__b% 
*/

-- find all customers whoes first_name starts with "M"

select *
from customers
where 
	first_name LIKE 'M%'

-- 	Find all customers whoes names end with n

select *
from customers
where 
	first_name LIKE '%n'

-- find all customers whoes first_name contains 'r'

Select *
from customers
where 
	first_name LIKE '%r%'

-- find all customers whoes first_name contains 'r' in the 3rd position 

select *
from customers
where 
	first_name LIKE '__r%'