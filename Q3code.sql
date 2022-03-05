--Q3 What is the Average inflation and unemployment in US from the time period 2018 to 2021 ?
select CPI.year , AVG(CPI.value) as Inflation , AVG(UNE.value) as unemployment from  bigquery-public-data.bls.c_cpi_u CPI 
left join bigquery-public-data.bls.unemployment_cps UNE on CPI.year = UNE.year 
where CPI.year between 2018 and 2021 AND  series_title like '%(unadj) Unemployment Rate%'
group by CPI.year 
