{{
    config
    (
        materialized = 'table'
    )
}}
select {{ concat_macro('street','katmandhu') }} as address
