select 
category, 
sum(qty) as total_qty,
sum(amount) as total_amount, 
sum(amount) / sum(qty) as amt_per_item
from 
{{ ref('ecommerce_data_clean') }}
group by category