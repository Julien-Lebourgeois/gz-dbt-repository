select
    date_date,
    orders_id,
    count(products_id) as nb_product,
    sum(revenue)as revenue,
    sum(quantity) as quantity,
    sum(purchase_cost) as purchase_cost,
    sum(margin) as margin
from {{ ref("int_sales_margin") }}
group by orders_id, date_date