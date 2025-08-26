with

    source as (

        select * from {{ source("dataset_additionnal", "list_nintendo_games") }}

    ),

    renamed as (select genres, name, review_score, review_count, date from source)

select *
from renamed
