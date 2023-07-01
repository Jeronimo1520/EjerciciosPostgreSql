/*Exclusive left join*/
SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM platzi.alumnos AS a
LEFT JOIN platzi.carreras AS c
ON a.carrera_id = c.id
WHERE c.id ISNULL
ORDER BY a.carrera_id;

/*Left join*/
SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM platzi.alumnos AS a
LEFT JOIN platzi.carreras AS c
ON a.carrera_id = c.id
ORDER BY a.carrera_id;

/*Right join*/
SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM platzi.alumnos AS a
RIGHT JOIN platzi.carreras AS c
ON a.carrera_id = c.id
ORDER BY a.carrera_id;

/*Exclusive Right join*/
SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM platzi.alumnos AS a
RIGHT JOIN platzi.carreras AS c
ON a.carrera_id = c.id
WHERE a.id ISNULL
ORDER BY c.id DESC;

/*INNER JOIN*/
SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM platzi.alumnos AS a
INNER JOIN platzi.carreras AS c
ON a.carrera_id = c.id
ORDER BY c.id DESC;

/*Full outer join*/
SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM platzi.alumnos AS a
FULL OUTER JOIN platzi.carreras AS c
ON a.carrera_id = c.id
ORDER BY a.carrera_id;

/*Diferencia simetrica*/
SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM platzi.alumnos AS a
FULL OUTER JOIN platzi.carreras AS c
ON a.carrera_id = c.id
WHERE a.id IS NULL
OR c.id IS NULL
ORDER BY a.carrera_id DESC, c.id DESC;

