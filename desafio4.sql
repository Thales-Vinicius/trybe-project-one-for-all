SELECT
  u.name AS usuario,
  IF(MAX(r.reproduction_date) >= '2021-01-01',
	'Usuário ativo',
    'Usuário inativo') AS condicao_usuario
FROM
	User AS u
		INNER JOIN
	Reproduction_History AS r ON u.user_id = r.user_id
GROUP BY usuario
ORDER BY usuario;