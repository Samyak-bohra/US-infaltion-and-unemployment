--Q4 what is the maximum CPI value in USA and in which segment?
select year , value as CPI_index_value , item_name
from bigquery-public-data.bls.cpi_u
where value =
(select Max(value) from bigquery-public-data.bls.cpi_u)
