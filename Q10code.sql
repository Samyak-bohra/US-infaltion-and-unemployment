--Q10 Who has the max hourly earning seasonally adjusted in USA? 
select value as Average_hourly_earning_in_dollers, year, series_title
from   bigquery-public-data.bls.employment_hours_earnings 
WHERE series_title like '%Average hourly earnings%'
order by value desc limit 1
