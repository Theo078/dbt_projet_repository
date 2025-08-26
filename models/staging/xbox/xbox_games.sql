with 

source as (

    select * from {{ source('xbox', 'xbox_games') }}

),

renamed as (

    select
        gameid,
        title,
        developers,
        publishers,
        genres,
        supported_languages,
        release_date

    from source

)

select * from renamed
