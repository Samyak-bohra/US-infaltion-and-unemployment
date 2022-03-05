--Q2 what is the unadjusted avg unemployment rate in black people who are 20 and above for the year 2021?
select year , AVG( UNE.value ) as unemployment , series_title 
from   bigquery-public-data.bls.unemployment_cps UNE
where series_title like '%20 yrs. & over%' and year = 2021 and series_title like '%Black%' and series_title like '%(Unadj) Unemployment Rate%' 
GROUP BY year , series_title 
