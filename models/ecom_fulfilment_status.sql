{% set wanted_status = var('wanted_status','') %}

select fulfilment, status, count(status)
from dbt_db.ecommerce_data_clean
{{ filter_by_status(wanted_status) }}
group by fulfilment, status