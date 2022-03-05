Q 8 What is the trend and relationship between Average weekly earning and unemployment rate in USA from 2016 to 2021?
select x.year , AVG(x.value) as Average_weekly_earnings , AVG(y.value) as Unemployment_Rate
from  bigquery-public-data.bls.employment_hours_earnings x 
left join bigquery-public-data.bls.unemployment_cps y on x.year = y.year 
where x.year between 2016 AND 2021 
AND x.series_title like '%Average weekly earnings%' 
AND y.series_title like '%Unemployment Rate%'
group by x.year 
order by X.year desc
