with ecommerce_data_clean as (
    select
order_id,
    order_date,
    COALESCE(status, 'Unknown') AS status,
    fulfilment,
    sales_channel,
    ship_service,
    style,
    sku,
    category,
    size,
    asin,
    coalesce(courier_status, 'Unknown') as courier_status,
    qty,
    currency,
    amount,
    ship_city,
    ship_state,
    ship_postal,
    ship_country,
    promotion,
    b2b,
    fulfilled_by from 
	dbt_db.ecommerce_orders
	
)

select * from ecommerce_data_clean