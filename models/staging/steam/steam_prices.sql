with 

source as (

    select * from {{ source('steam', 'steam_prices') }}

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
