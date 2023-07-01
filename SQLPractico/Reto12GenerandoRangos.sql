/*Generando rangos*/
SELECT *
FROM generate_series(5,1,-2)

SELECT *
FROM generate_series(4,4)


SELECT *
FROM generate_series(4,3)

SELECT *
FROM generate_series(4,3,-1)


SELECT *
FROM generate_series(1.1,4,1.3)

/*Desde la fecha actual hasta 7 dias y 14 dias, rangos con fechas, series de tiempo*/
/*El +, suma dias*/
SELECT current_date + s.a AS dates 
FROM generate_series(0,14,7) AS s(a)

SELECT * 
FROM generate_series('2020-09-01 00:00:00'::timestamp,
					 '2020-09-4 12:00:00','10 hours');
					 
SELECT a.id,
	   a.nombre,
	   a.apellido,
	   a.carrera_id,
	   s.a
FROM platzi.alumnos AS a
INNER JOIN generate_series(0,10) AS s(a)
ON s.a = a.carrera_id
ORDER BY a.carrera_id

/*Generar triangulo con un rango generado*/
SELECT lpad('*',id,'*')
FROM platzi.alumnos
WHERE id IN  (SELECT *
FROM generate_series(1,10))


SELECT lpad('*',CAST(ordinality AS int),'*')
FROM generate_series(10,2,-2) WITH ordinality
