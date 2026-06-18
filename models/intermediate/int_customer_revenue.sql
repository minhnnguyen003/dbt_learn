select
    customer_id,
    count(*) as total_orders,
    sum(amount) as revenue
from {{ ref('stg_orders') }}
group by customer_id