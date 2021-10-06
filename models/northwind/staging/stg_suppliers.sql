with
    source_data as (
        select
        -- primary key
            supplier_id

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

            -- stitch columns	
            , _sdc_sequence	
            , _sdc_table_version	
            , _sdc_received_at	
            , _sdc_batched_at as last_etl_run

        from {{  source('northwindetl', 'suppliers')  }}
    )

select * from source_data