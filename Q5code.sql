--Q5 What are the 5 highest unemployment rates in the age group above 24 and they don’t have disabilities and in which categories in 2021?
select year , MAX(value) as unemployment , series_title
from  bigquery-public-data.bls.unemployment_cps   
where series_title like '%Unemployment rate%'
and year = 2021 
and series_title not like '%disability%'
and series_title like '%25 years and over%'
GROUP BY year,series_title
order by unemployment desc Limit 5  
