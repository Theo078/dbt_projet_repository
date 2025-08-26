with 

source as (

    select * from {{ source('steam', 'steam_purchased_games') }}

),

renamed as (

    select
        playerid,
        library

    from source

)

select * from renamed
