with
    source_data as (
        select
            -- primary key
            shipper_id

            , phone	
            , company_name

            -- stitch columns	
            , _sdc_sequence	
            , _sdc_table_version	
            , _sdc_received_at	
            , _sdc_batched_at as last_etl_run

        from {{  source('northwindetl', 'shippers')  }}
    )

select * from source_data