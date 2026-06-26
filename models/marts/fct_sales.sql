select
    order_date,
    sum(total_amount) as revenue
from {{ ref('stg_orders') }}
group by order_date