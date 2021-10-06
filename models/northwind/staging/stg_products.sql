with
    source_data as (
        select
            --primary key
            product_id

            -- foreign keys
            , supplier_id
            , category_id
            
            , product_name
            , unit_price
            , units_in_stock	
            , quantity_per_unit
            , units_on_order
            , discontinued
            , reorder_level

            -- stitch columns	
            , _sdc_sequence	
            , _sdc_table_version	
            , _sdc_received_at	
            , _sdc_batched_at as last_etl_run

        from {{  source('northwindetl', 'products')  }}
    )

select * from source_data