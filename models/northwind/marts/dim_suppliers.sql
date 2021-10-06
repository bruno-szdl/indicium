{{  config(materialized='table')  }}

with
    staging as (
        select *
        from {{  ref('stg_suppliers')  }}
    )
    , transformed as (
        select
            {{ dbt_utils.surrogate_key('supplier_id', 'phone') }} as supplier_sk
            , supplier_id
            , country	
            , city
            , fax
            , postal_code
            , homepage	
            , address
            , region
            , contact_name
            , phone
            , company_name
            , contact_title

        from staging
    )

select * from transformed
