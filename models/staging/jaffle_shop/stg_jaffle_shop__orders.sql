with source as (

    select * from {{ source('raw_jaffle_shop', 'orders') }}

),

renamed as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status,
        'test' as test

    from source

)

select * from renamed
