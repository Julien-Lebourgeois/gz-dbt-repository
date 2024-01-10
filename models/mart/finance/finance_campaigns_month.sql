select 
    EXTRACT(YEAR FROM date_date) || '-' || EXTRACT(MONTH FROM date_date)|| '-01' AS datemonth,
    round(sum(ads_margin),2) as ads_margin,
    round(sum(nb_transactions),2) as nb_transactions,
    round(sum(revenue),2) as revenue,
    round(sum(revenue/nb_transactions),2) as average_basket,
    round(sum(margin),2) as margin,
    round(sum(operational_margin),2) as operational_margin
from {{ref("finance_campaigns_day")}}
group by EXTRACT(YEAR FROM date_date) || '-' || EXTRACT(MONTH FROM date_date)|| '-01'