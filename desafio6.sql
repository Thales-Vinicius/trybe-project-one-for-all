SELECT 
    CAST(MIN(p.value) AS DECIMAL (10 , 2 )) AS faturamento_minimo,
    CAST(MAX(p.value) AS DECIMAL (10 , 2 )) AS faturamento_maximo,
    CAST(AVG(p.value) AS DECIMAL (10 , 2 )) AS faturamento_medio,
    CAST(SUM(p.value) AS DECIMAL (10 , 2 )) AS faturamento_total
FROM
    Plan AS p
        INNER JOIN
    User AS u ON p.plan_id = u.plan_id;