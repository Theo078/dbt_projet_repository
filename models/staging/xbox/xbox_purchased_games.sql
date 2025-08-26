with 

source as (

    select * from {{ source('xbox', 'xbox_purchased_games') }}

),

renamed as (

    select
        playerid,
        library

    from source

)

select * from renamed
