with
    source as (
        select
            /*Primary key*/ 
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

            /*Stich Columns*/
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_batched_at		
            , _sdc_extracted_at as last_etl_run		
            		
        from {{source('northwind_etl', 'suppliers')}}
    )

select * from source