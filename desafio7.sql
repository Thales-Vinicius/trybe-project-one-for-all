SELECT 
    ar.name AS artista,
    al.name AS album,
    COUNT(ua.artist_id) AS seguidores
FROM
    Album AS al
        INNER JOIN
    Artist AS ar ON al.artist_id = ar.artist_id
        INNER JOIN
    User_Artist AS ua ON al.artist_id = ua.artist_id
GROUP BY al.name , ar.name
ORDER BY seguidores DESC , ar.name, al.name;