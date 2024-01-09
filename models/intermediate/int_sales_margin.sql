select
products_id,
purchase_price,
date_date,
orders_id,
revenue,
quantity,
quantity * purchase_price as purchase_cost,
ROUND(revenue - (quantity * purchase_price),2) as margin
from {{ ref("stg_raw__product") }}
join {{ ref("stg_raw__sales") }}
using (products_id)