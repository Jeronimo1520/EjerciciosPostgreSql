SELECT *, RANK() OVER(PARTITION BY carrera_id ORDER BY colegiatura DESC)
FROM platzi.alumnos;

SELECT *, SUM(colegiatura) OVER(PARTITION BY carrera_id ORDER BY colegiatura DESC)
FROM platzi.alumnos;

SELECT *
FROM(
	SELECT *,
	RANK() OVER(PARTITION BY carrera_id ORDER BY colegiatura DESC) AS brand_rank
FROM platzi.alumnos
)as ranked_colgiaturas
WHERE brand_rank < 3
ORDER BY brand_rank;

/*las window functions corren al final*/