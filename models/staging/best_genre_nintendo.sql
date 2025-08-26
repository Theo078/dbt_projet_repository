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
genre, 
round(sum(global_sales),2) as total_sales_per_type
From renamed
WHERE publisher IN ('Nintendo')
GROUP BY 1
ORDER BY sum(global_sales) DESC
