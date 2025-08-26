with 

source as (

    select * from {{ source('xbox', 'xbox_achievements') }}

),

renamed as (

    select
        int64_field_0,
        achievementid,
        gameid,
        title,
        points

    from source

)

select * from renamed
