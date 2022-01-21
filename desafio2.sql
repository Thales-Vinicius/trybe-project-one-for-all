SELECT
  COUNT(s.song_id) AS cancoes,
  COUNT(DISTINCT a.artist_id) AS artistas,
  COUNT(DISTINCT s.album_id) AS albuns
FROM
  Song AS s
    INNER JOIN
  Album AS a ON s.album_id = a.album_id;