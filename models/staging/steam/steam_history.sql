with 

source as (

    select * from {{ source('steam', 'steam_history') }}

),

renamed as (

    select
        playerid,
        achievementid,
        date_acquired

    from source

)

select * from renamed
