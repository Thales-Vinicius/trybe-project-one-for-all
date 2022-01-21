SELECT 
    s.name AS nome,
    COUNT(r.song_id) AS reproducoes
FROM
    Reproduction_History AS r
        INNER JOIN
    Song AS s ON r.song_id = s.song_id
        INNER JOIN
    User AS u ON r.user_id = u.user_id
        INNER JOIN
    Plan AS p ON p.plan_id = u.plan_id
WHERE
    p.name = 'gratuito' OR p.name = 'pessoal'
GROUP BY s.name
ORDER BY s.name;