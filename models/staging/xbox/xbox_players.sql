with 

source as (

    select * from {{ source('xbox', 'xbox_players') }}

),

renamed as (

    select
        playerid,
        nickname

    from source

)

select * from renamed
