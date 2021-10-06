with
    source_data as (
        select
            order_id
            , product_id	
            , discount
            , unit_price
            , quantity

            -- stitch columns	
            , _sdc_sequence	
            , _sdc_table_version	
            , _sdc_received_at	
            , _sdc_batched_at as last_etl_run

        from {{  source('northwindetl', 'order_details')  }}
    )

select * from source_data