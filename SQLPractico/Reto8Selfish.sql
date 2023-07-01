/*Un alumno que sea tutor y a cuantos ensenia*/
/*Self join*/
SELECT CONCAT(t.nombre, ' ',t.apellido) AS tutor,
	COUNT(*) AS alumnos_por_tutor
FROM   platzi.alumnos AS a
INNER JOIN platzi.alumnos AS t ON a.tutor_id = t.id 
GROUP BY tutor
ORDER BY alumnos_por_tutor DESC
LIMIT 10;

/*Promedio de alumnos por tutor*/
/*De la tabla subquery: promedio, del campo alumnos_por_tutor,
sacar el promedio*/
SELECT AVG(alumnos_por_tutor) AS promedio_alumnos
FROM (SELECT CONCAT(t.nombre, ' ',t.apellido) AS tutor,
	COUNT(*) AS alumnos_por_tutor
FROM   platzi.alumnos AS a
INNER JOIN platzi.alumnos AS t ON a.tutor_id = t.id 
GROUP BY tutor
ORDER BY alumnos_por_tutor DESC) as promedio;



