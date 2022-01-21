SELECT
  u.name AS usuario,
  COUNT(*) AS qtde_musicas_ouvidas,
  round(SUM(s.duration_seconds) / 60, 2) AS total_minutos
FROM
	Reproduction_History AS r
		INNER JOIN
	Song AS s ON r.song_id = s.song_id
		INNER JOIN
	User AS u ON r.user_id = u.user_id
GROUP BY usuario
ORDER BY usuario;