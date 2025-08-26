with 

source as (

    select * from {{ source('playstation', 'playstation_price_cleaned') }}

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
