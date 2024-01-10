select
    date_date,
    round(operational_margin - ads_cost,2) as ads_margin,
    nb_transactions,
    revenue,
    average_basket,
    margin,
    operational_margin

from {{ref("int_campaigns_day")}} 
join {{ref("finance_days")}} finance
using (date_date)