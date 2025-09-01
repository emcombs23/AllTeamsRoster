SELECT player_name,team,position,headshot_url,
    CAST (jersey_number AS INTEGER) AS jersey_number,
    CAST (week AS INTEGER) AS week,
CASE
    WHEN position = 'QB' THEN 'Offense'
    WHEN position = 'RB' THEN 'Offense'
    WHEN position = 'WR' THEN 'Offense'
    WHEN position = 'TE' THEN 'Offense'
    WHEN position = 'OL' THEN 'Offense'
    WHEN position = 'LB' THEN 'Defense'
    WHEN position = 'DB' THEN 'Defense'
    WHEN position = 'P' THEN 'Special Teams'
    WHEN position = 'K' THEN 'Special Teams'
    WHEN position = 'LS' THEN 'Special Teams'
    WHEN position = 'DL' THEN 'Defense'
    ELSE position
END AS team_side
FROM players;

SELECT DISTINCT position FROM players