{{  config(materialized='table')  }}

with
    staging as (
        select *
        from {{  ref('stg_customers')  }}
    )
    , transformed as (
        select
            {{ dbt_utils.surrogate_key('customer_id', 'phone') }} as customer_sk
            , customer_id
            , country
            , city
            , fax
            , postal_code
            , address
            , region
            , contact_name
            , phone
            , company_name
            , contact_title

        from staging
    )

select * from transformed
