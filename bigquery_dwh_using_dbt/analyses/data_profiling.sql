SELECT 
id as column_name,
sum(case when id is null then 0 else 1 end)/cast(count(*) as numeric) as not_null_proportion,
count(distinct id)/ cast(count(*) as numeric) as distinct_proportion,
count(distinct id) as distinct_count,
count(distinct id) = count(*) as is_unique,
current_timestamp() as profiled_at
FROM `bigquery-northwind-traders.dl_northwind.orders`
GROUP by 1
ORDER BY 1