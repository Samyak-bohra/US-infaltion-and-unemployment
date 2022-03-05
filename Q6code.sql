--Q6 What’s the change in average hourly earning pattern in context to inflation during the pandemic as compared to pre pandemic?
select EHE.year , AVG(CPI.value) as Inflation , AVG(EHE.value) as  Average_hourly_earnings 
from  bigquery-public-data.bls.employment_hours_earnings EHE
left join  bigquery-public-data.bls.c_cpi_u CPI on EHE.year = CPI.year 
where EHE.year between 2016 and 2021 AND  series_title like '%Average hourly earnings%'
group by EHE.y
