with 

source as (

    select * from {{ source('dataset_additionnal', 'list_steam_games') }}

),

renamed as (

    select
        genres,
        name,
        review_score,
        review_count,
        date

    from source

)

select * from renamed
