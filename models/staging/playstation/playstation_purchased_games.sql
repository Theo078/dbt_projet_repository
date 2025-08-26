with 

source as (

    select * from {{ source('playstation', 'playstation_purchased_games') }}

),

renamed as (

    select
        playerid,
        library

    from source

)

select * from renamed
