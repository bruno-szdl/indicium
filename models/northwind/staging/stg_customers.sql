with
    source_data as (
        select
            -- primary key
            customer_id
            
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

            -- stitch columns	
            , _sdc_sequence	
            , _sdc_table_version	
            , _sdc_received_at	
            , _sdc_batched_at as last_etl_run

        from {{  source('northwindetl', 'customers')  }}
    )

select * from source_data