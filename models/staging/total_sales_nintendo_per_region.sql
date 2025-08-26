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

SELECT
publisher,
round(sum(na_sales),2) as total_na_sales,
round(sum(eu_sales),2) as total_eu_sales,
round(sum(jp_sales),2) as total_jp_sales,
round(sum(other_sales),2) as total_other_sales,
FROM renamed
WHERE publisher IN ('Nintendo')
GROUP by 1