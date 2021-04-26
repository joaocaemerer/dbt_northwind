with
    source as (
        select
            /*Primary key*/ 
            shipper_id

            , phone		
            , company_name		
            		
				

            /*Stich Columns*/
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_batched_at		
            , _sdc_extracted_at as last_etl_run		
            		
        from {{source('northwind_etl', 'shippers')}}
    )

select * from source