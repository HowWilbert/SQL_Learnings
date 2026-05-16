-- Fid Avg Score for each contry considering only customers with a score not equal to 0

Select 
	country,
	AVG(score) as AVERAGE_SCORE
from customers
where score != 0
Group by country

-- Return The score for those countries with AVG Score > 430 
Select 
	country,
	AVG(score) as AVERAGE_SCORE
from customers
where score != 0
Group by country
Having AVG(score) > 430

