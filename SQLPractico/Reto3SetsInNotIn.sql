SELECT * 
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
)AS alumnos_with_row_num
WHERE row_id IN (1,5,10,12,15,20);

SELECT id, tutor_id
FROM platzi.alumnos
WHERE id IN (
	SELECT id
	FROM platzi.alumnos
	WHERE tutor_id = 30
);

SELECT *
FROM platzi.alumnos

/*Traer los que no se encuentren en a lista*/
SELECT * 
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
)AS alumnos_with_row_num
WHERE row_id NOT IN (1,5,10,12,15,20);

SELECT id, tutor_id
FROM platzi.alumnos
WHERE id NOT IN (
	SELECT id
	FROM platzi.alumnos
	WHERE tutor_id = 30
);



