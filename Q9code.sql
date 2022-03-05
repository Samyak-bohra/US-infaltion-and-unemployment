--Q 9 What is the average hourly wage of healthcare support occupations across the US?
select AVG(value) as Average_hourly_wage_in_dollers 
from  bigquery-public-data.bls.wm
WHERE series_title like '%healthcare support occupations%'
