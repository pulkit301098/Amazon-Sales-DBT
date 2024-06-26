select ship_state, 
sum(amount) as total_amount, 
sum(qty) as total_qty
from {{ref('ecommerce_data_clean')}}
where ship_city is not null
group by ship_state