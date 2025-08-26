with 

source as (

    select * from {{ source('dataset_additionnal', 'video_games_sales') }}

),

renamed as (

    select
        rank,
        name,
        platform,
        year,
        genre,
        publisher,
        na_sales,
        eu_sales,
        jp_sales,
        other_sales,
        global_sales

    from source

)

select
COUNT(distinct genre) as nb_genre_on_nintendo
From renamed
WHERE publisher IN ('Nintendo')