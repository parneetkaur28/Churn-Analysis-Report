SELECT Gender ,count(Gender) as total_count,
count(Gender)*100.0/(select count(*) from stg_churn) as percentage
from stg_churn
group by gender


SELECT Contract ,count(Contract) as total_count,
count(contract)*100.0/(select count(*) from stg_churn) as percentage
from stg_churn
group by contract

SELECT customer_status,count(customer_status) as totalcount, sum(Total_Revenue) as totalrev,
sum(total_revenue)/(select sum(total_revenue) from stg_churn)*100 as revper 
from stg_churn
group by Customer_Status


SELECT state,count(state) as totalcount,
count(state)*100.0/(select count(*) from stg_churn) as per
from stg_churn
group by state
order by per desc

SELECT distinct internet_type from stg_churn