SELECT 
    ar.name AS artista,
    al.name AS album
FROM
    Album AS al
        INNER JOIN
    Artist AS ar ON al.artist_id = ar.artist_id
WHERE ar.name = 'Walter Phoenix'
ORDER BY album;