with 

source as (

    select * from {{ source('playstation', 'playstation_players') }}

),

renamed as (

    select
        playerid,
        nickname,
        country

    from source

)

select * from renamed
