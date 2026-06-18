select
    c.customer_id,
    c.customer_name,
    r.total_orders,
    r.revenue
from {{ ref('stg_customers') }} c
left join {{ ref('int_customer_revenue') }} r
    on c.customer_id = r.customer_id