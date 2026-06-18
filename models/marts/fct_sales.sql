select
    order_date,
    sum(amount) as revenue
from {{ ref('stg_orders') }}
group by order_date