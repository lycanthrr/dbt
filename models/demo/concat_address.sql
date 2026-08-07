{{
    config
    (
        materialized = 'table'
    )
}}
select {{ concat_macro('117Street','Hendertucky') }} as address