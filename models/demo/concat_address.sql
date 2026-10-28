{{
    config
    (
        materialized = 'table'
    )
}}
select {{ concat_macro('123street','katmandhu') }} as address
