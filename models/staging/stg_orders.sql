with
    source as (
        select
            /*Primary key*/ 
            order_id

            /*Foreing Key*/	
            , customer_id
            , employee_id
            , ship_via as shipper_id		


            , ship_region		
            , shipped_date		
            , ship_country	
            , ship_name	
            , order_date
            , ship_postal_code		
            , ship_city		
            , freight	
            , cast(required_date as timestamp) as required_date		
            , ship_address		

            /*Stich Columns*/
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_batched_at		
            , _sdc_extracted_at as last_etl_run		
            		
        from {{source('northwind_etl', 'orders')}}
    )

select * from source