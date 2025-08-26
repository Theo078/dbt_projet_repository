with 

source as (

    select * from {{ source('steam', 'steam_reviews') }}

),

renamed as (

    select
        int64_field_0,
        reviewid,
        playerid,
        gameid,
        helpful,
        funny,
        awards,
        posted

    from source

)

select * from renamed
