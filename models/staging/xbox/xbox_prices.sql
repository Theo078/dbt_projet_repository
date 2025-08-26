with 

source as (

    select * from {{ source('xbox', 'xbox_prices') }}

),

renamed as (

    select
        gameid,
        usd,
        eur,
        gbp,
        jpy,
        rub,
        date_acquired

    from source

)

select * from renamed
