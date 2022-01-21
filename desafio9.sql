SELECT 
    COUNT(*) AS quantidade_musicas_no_historico
FROM
    Reproduction_History AS r
        INNER JOIN
    User AS u ON r.user_id = u.user_id
WHERE
    u.name = 'Bill'; 