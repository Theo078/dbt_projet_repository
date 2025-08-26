with
    sub1 as (  -- purchased_games ↔ players
        select pg.*, p.nickname, p.country
        from projetfinalvideogames.playstation.playstation_purchased_games as pg
        inner join
            projetfinalvideogames.playstation.playstation_players as p
            on p.playerid = pg.playerid
    ),

    sub2 as (  -- + history (sur player_id)
        select sub1.*, h.achievementid, h.date_acquired,
        from sub1
        inner join
            projetfinalvideogames.playstation.playstation_history as h
            on h.playerid = sub1.playerid
    ),

    sub3 as (  -- + achievements (sur achievement_id)
        select sub2.*, a.gameid, a.title, a.rarity
        from sub2
        inner join
            projetfinalvideogames.playstation.playstation_achievments_cleaneddd as a
            on a.achievementid = sub2.achievementid
    ),

    sub4 as (  -- + games (sur game_id)
        select
            sub3.*,
            g.title,
            g.platform,
            g.developers,
            g.publishers,
            g.genres,
            g.supported_languages,
            g.release_date
        from sub3
        inner join
            projetfinalvideogames.playstation.playstation_games as g
            on g.gameid = sub3.gameid
    ),

    sub5 as (  -- + prices (sur game_id)
        select sub4.*, pr.usd, pr.eur, pr.gbp, pr.jpy, pr.rub, pr.date_acquired
        from sub4
        inner join
            projetfinalvideogames.playstation.playstation_price_cleaned as pr
            on pr.gameid = sub4.gameid
    )

select *
from sub5
