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
console_name
,company
,round(sum(units_sold_million),2) as units_sold_per_company
from renamed
where company = 'Microsoft'
group by company, console_name
order by units_sold_per_company DESC
