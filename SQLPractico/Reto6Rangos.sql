SELECT * 
FROM platzi.alumnos
WHERE tutor_id IN (1,2,3,4);

SELECT *
FROM platzi.alumnos
WHERE tutor_id >=1
AND tutor_id <=10;

SELECT *
FROM platzi.alumnos
WHERE tutor_id BETWEEN 1 AND 10;

/*operaciones entre rangos*/
SELECT int4range(10,20) @> 10;
SELECT numrange(11.1,22.2) && numrange(20.0,30.0);
SELECT UPPER(int8range(15,25));
SELECT LOWER(int8range(15,25));
SELECT int4range(10,20) * int4range(15,25); /*interseccion*/
SELECT ISEMPTY(int8range(1,5));

SELECT * /*pertenencia a un rango*/
FROM platzi.alumnos
WHERE int4range(10,20) @> tutor_id;

SELECT tutor_id,carrera_id /*no cumple con el reto*/
FROM platzi.alumnos
WHERE (SELECT int4range(MIN(tutor_id),MAX(tutor_id))
		* int4range(MIN(carrera_id),MAX(carrera_id))
		FROM  platzi.alumnos) @> tutor_id 
		AND
		(SELECT int4range(MIN(tutor_id),MAX(tutor_id))
		* int4range(MIN(carrera_id),MAX(carrera_id))
		FROM  platzi.alumnos) @> carrera_id
		
SELECT numrange( /*reto, interseccion entre los id de tutor y carrera*/
	(SELECT min(tutor_id) FROM platzi.alumnos),
	(SELECT max(tutor_id) FROM platzi.alumnos)
) * numrange(
	(SELECT min(carrera_id) FROM platzi.alumnos),
	(SELECT max(carrera_id) FROM platzi.alumnos)
)


