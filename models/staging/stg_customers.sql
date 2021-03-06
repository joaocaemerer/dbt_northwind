with
    source as (
        select
            /*Primary key*/ 
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
			

            /*Stich Columns*/
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_batched_at		
            , _sdc_extracted_at as last_etl_run		
            		
        from {{source('northwind_etl', 'customers')}}
    )

select * from source