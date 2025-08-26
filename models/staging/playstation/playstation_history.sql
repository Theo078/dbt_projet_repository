with 

source as (

    select * from {{ source('playstation', 'playstation_history') }}

),

renamed as (

    select
        playerid,
        achievementid,
        date_acquired

    from source

)

select * from renamed
