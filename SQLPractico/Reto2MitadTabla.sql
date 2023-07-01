SELECT DISTINCT colegiatura
FROM platzi.alumnos AS a1
WHERE 2 =(
	SELECT COUNT(DISTINCT colegiatura) 
	FROM platzi.alumnos a2
	WHERE a1.colegiatura <= a2.colegiatura
);

SELECT DISTINCT colegiatura, tutor_id
FROM platzi.alumnos
WHERE tutor_id = 20
ORDER BY colegiatura DESC
LIMIT 1 OFFSET 1;

SELECT DISTINCT *
FROM platzi.alumnos AS datos_alumnos
INNER JOIN (
	SELECT DISTINCT colegiatura 
	FROM platzi.alumnos
	WHERE tutor_id = 20
	ORDER BY colegiatura DESC
	LIMIT 1 OFFSET 1
)AS segunda_mayor_colegiatura
ON datos_alumnos.colegiatura = segunda_mayor_colegiatura.colegiatura;

SELECT * 
FROM platzi.alumnos AS datos_alumnos
WHERE colegiatura =(
	SELECT DISTINCT colegiatura 
	FROM platzi.alumnos
	WHERE tutor_id = 20
	ORDER BY colegiatura DESC
	LIMIT 1 OFFSET 1
);

/*Traer la segunda mitad de la tabla solamente*/
SELECT *
FROM platzi.alumnos
WHERE id BETWEEN(
	SELECT COUNT(id)/2 +1
	FROM platzi.alumnos
) AND (
	SELECT COUNT(id)
	FROM platzi.alumnos
);

SELECT *
FROM platzi.alumnos
OFFSET(SELECT COUNT(id)/2
	FROM platzi.alumnos);
	
	
SELECT ROW_NUMBER() OVER() AS row_id, *
FROM platzi.alumnos
OFFSET(	
	SELECT COUNT(*)/2
	FROM platzi.alumnos);
