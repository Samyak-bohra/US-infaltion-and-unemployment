Q7 What are the top 10 hourly-waged types of work in Charlotte-Concord-Gastonia, NC-SC and in which year ?
SELECT year, value as wages_in_doller, series_title
from  bigquery-public-data.bls.wm 
where series_title like '%Charlotte-Concord-Gastonia, NC-SC%'
order by value desc LIMIT 5 
