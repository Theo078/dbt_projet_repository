with 

source as (

    select * from {{ source('playstation', 'playstation_achievments_cleaneddd') }}

),

renamed as (

    select
        gameid,
        int64_field_0,
        achievementid,
        title,
        rarity

    from source

)

select * from renamed
