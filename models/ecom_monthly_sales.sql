{% set month_num = var('month_num',None) %}

select case when date_part('month', order_date)  = 3 then 'Mar'
when date_part('month', order_date)  = 4 then 'Apr'
when date_part('month', order_date)  = 5 then 'May'
when date_part('month', order_date)  = 6 then 'Jun' END as Month ,
category, 
sum(qty) as total_qty, 
sum(amount) as total_amount
from {{ref('ecommerce_data_clean')}}
{{ filter_by_month(month_num) }}
group by date_part('month', order_date), category 
order by date_part('month', order_date), total_amount