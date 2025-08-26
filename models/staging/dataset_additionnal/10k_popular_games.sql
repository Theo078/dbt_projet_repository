with 

source as (

    select * from {{ source('dataset_additionnal', '10k_popular_games') }}

),

renamed as (

    select
        int64_field_0,
        id,
        name,
        released,
        rating,
        suggestions_count,
        platforms,
        developers,
        genres,
        publishers

    from source

)

select * 

from renamed
