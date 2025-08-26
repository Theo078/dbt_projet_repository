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

),

nona AS (
  SELECT *
  FROM renamed
  WHERE Year NOT IN ('N/A')
)

SELECT
  Name,
  CAST(Year AS INT64) AS Year,
  publisher,
  Platform,
  Genre,
  Global_sales
FROM nona
WHERE CAST(Year AS INT64) BETWEEN 2000 AND 2009 AND publisher IN ('Nintendo')
ORDER BY Global_sales DESC
