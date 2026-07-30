{{
    config
    (
        materialized = 'table'
    )
}}
select {{ concat_macro('Kat','Mandhu') }} as name