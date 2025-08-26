with 

source as (

    select * from {{ source('playstation', 'playstation_games') }}

),

renamed as (

    select
        gameid,
        title,
        platform,
        developers,
        publishers,
        genres,
        supported_languages,
        release_date

    from source

)

select * from renamed
