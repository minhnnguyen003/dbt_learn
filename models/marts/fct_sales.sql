{{
    config(
        materialized='incremental',
        incremental_strategy='merge',
        unique_key='order_id'
    )
}}

select
    order_date,
    sum(total_amount) as revenue
from {{ ref('stg_orders') }}

{% if is_incremental() %}
where order_date >= (
    select max(order_date)
    from {{ this }}
)
{% endif %}

group by order_date