{{  config(materialized='table')  }}

with
    staging as (
        select *
        from {{  ref('stg_shippers')  }}
    )
    , transformed as (
        select
            {{ dbt_utils.surrogate_key('shipper_id', 'phone') }} as shipper_sk
            , shipper_id
            , phone	
            , company_name

        from staging
    )

select * from transformed
