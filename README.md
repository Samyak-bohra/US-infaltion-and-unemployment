# US-infaltion-and-unemployment
This is related to the study of the US inflation, unemployment , earning and wage

Q1 what is the unadjusted average unemployment rate in males

<img width="168" alt="image" src="https://user-images.githubusercontent.com/100790766/156757271-d80ba54d-b6e7-443a-ad8e-d0e24d60170c.png">

Q2 what is the unadjusted avg unemployment rate in black people who are 20 and above for the year 2021?

<img width="577" alt="image" src="https://user-images.githubusercontent.com/100790766/156757716-a9f8dda4-e414-4491-86cf-4d4471f54f79.png">

Q3 What is the Average inflation and unemployment in US from the time period 2018 to 2021 ?

<img width="335" alt="image" src="https://user-images.githubusercontent.com/100790766/156758039-179cf1dc-f60e-4fa8-b0b0-07263d22a67c.png">

Q4 what is the maximum CPI value in USA and in which segment?

select year , value as infaltion , item_name

from bigquery-public-data.bls.cpi_u

where value =

(select Max(value) from bigquery-public-data.bls.cpi_u)

![image](https://user-images.githubusercontent.com/100790766/156758504-5a81f516-f84d-472d-b31c-fa4dee25beec.png)


