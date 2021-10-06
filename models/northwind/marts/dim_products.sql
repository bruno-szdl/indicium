{{  config(materialized='table')  }}

with
    staging as (
        select *
        from {{  ref('stg_products')  }}
    )
    , transformed as (
        select
            row_number() over (order by product_id) as product_sk
            , product_id
            , supplier_id
            , category_id
            , product_name
            , unit_price
            , units_in_stock	
            , quantity_per_unit
            , units_on_order
            , discontinued
            , reorder_level

        from staging
    )

select * from transformed
