with 

source as (

    select * from {{ source('dataset_additionnal', 'video_games_units_sold') }}

),

renamed as (

    select
        index,
        rank,
        game title,
        platform,
        year,
        genre,
        publisher,
        north america,
        europe,
        japan,
        rest of world,
        global,
        review

    from source

)

select * from renamed
