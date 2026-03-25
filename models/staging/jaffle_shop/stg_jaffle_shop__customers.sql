with 

source as (

    select * 
    from {{ ref('raw_customers') }}

),

renamed as (

    select
        id as customers_id
        ,first_name
        ,last_name

    from source

)

select * from renamed