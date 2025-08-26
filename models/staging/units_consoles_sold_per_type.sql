with 

source as (

    select * from {{ source('dataset_additionnal', 'best_sales_consoles') }}

),

renamed as (

    select
        int64_field_0,
        console_name,
        type,
        company,
        released_year,
        units_sold_million

    from source

)

select
Type
,sum(Units_sold_million) as Units_sold_per_type
from renamed
GROUP BY Type
ORDER BY 2 DESC