with 

source as (

    select * from {{ source('dataset_additionnal', 'behavior_players') }}

),

renamed as (

    select
        playerid,
        age,
        gender,
        location,
        gamegenre,
        playtimehours,
        ingamepurchases,
        gamedifficulty,
        sessionsperweek,
        avgsessiondurationminutes,
        playerlevel,
        achievementsunlocked,
        engagementlevel

    from source

)

select * from renamed
