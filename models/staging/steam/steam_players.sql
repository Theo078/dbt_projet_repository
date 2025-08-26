with 

source as (

    select * from {{ source('steam', 'steam_players') }}

),

renamed as (

    select
        playerid,
        country,
        created

    from source

)

select * from renamed
