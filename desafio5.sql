SELECT
	s.name, 
    COUNT(r.song_id) AS reproducoes
FROM
	Song AS s
		INNER JOIN
	Reproduction_History AS r ON s.song_id = r.song_id
GROUP BY name
ORDER BY reproducoes DESC, name LIMIT 2;