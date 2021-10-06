with
    source_data as (
        select
            order_id
            , customer_id
            , employee_id
            , order_date
            , ship_region
            , shipped_date
            , ship_country
            , ship_name
            , ship_postal_code
            , ship_city
            , freight
            , ship_via as shipper_id
            , ship_address
            , cast(required_date as timestamp) as required_date

            -- stitch columns	
            , _sdc_sequence	
            , _sdc_table_version	
            , _sdc_received_at	
            , _sdc_batched_at as last_etl_run

        from {{  source('northwindetl', 'orders')  }}
    )

select * from source_data