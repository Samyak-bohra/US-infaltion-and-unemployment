--Q1 what is the unadjusted average unemployment rate in males
select AVG(value)
from  bigquery-public-data.bls.unemployment_cps 
where series_title like '%(unadj) Unemployment Rate%' and series_title like '%Male%'
