/* Write your T-SQL query statement below */
select 
    product_name,
    year,
    price 

from Sales S 
LEFT JOIN Product P 

ON 
    S.product_id = P.product_id

-- GAVE PRIORITY TO SALES TABLE AS IT WAS ASKED FOR EACH SALES_ID