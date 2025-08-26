with 

source as (

    select * from {{ source('steam', 'steam_achievements') }}

),

renamed as (

    select
        int64_field_0,
        achievementid,
        gameid,
        title

    from source

)

select * from renamed
