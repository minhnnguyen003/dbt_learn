select
    customer_id,
    trim(first_name || ' ' || last_name) as customer_name,
    lower(email) as email
from {{ source('raw', 'customers') }}