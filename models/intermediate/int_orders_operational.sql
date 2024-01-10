select 
    date_date,
    orders_id,
    revenue,
    quantity,
    margin,
    round(margin + shipping_fee - logcost - ship_cost, 2) as operational_margin,
from {{ ref("int_orders_margin") }}
join {{ ref("stg_raw__ship") }}
using (orders_id)