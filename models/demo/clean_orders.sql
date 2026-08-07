{{ 
    config
    (
        materialized = 'ephemeral'
    )
}}
with base_orders as (
    select
        ORDER_ID,
        ORDER_DATE,
        CUSTOMER_ID,
        CASE
            WHEN CUSTOMER_NAME IS NULL THEN 'NA'
            ELSE upper(CUSTOMER_NAME)
        END AS CUSTOMER_NAME,
        CREATED_AT
    from {{source('orders','BASE_ORDERS')}}
    where ORDER_DATE is not null
)
select * from base_orders