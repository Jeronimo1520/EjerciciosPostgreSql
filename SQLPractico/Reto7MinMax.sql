SELECT fecha_incorporacion
FROM platzi.alumnos
ORDER BY fecha_incorporacion DESC
LIMIT 1;

/*Sacar por cada carrera, ultima fecha de inscripcion*/
SELECT carrera_id, MAX(fecha_incorporacion)
FROM platzi.alumnos
GROUP BY carrera_id
ORDER BY carrera_id

/*Reto: el minimo nombre alfabeticamente */

SELECT MIN(nombre)
FROM platzi.alumnos

/*Reto: el minimo nombre alfabeticamente por tutor */
SELECT tutor_id, MIN(nombre)
FROM platzi.alumnos
GROUP BY tutor_id
ORDER BY tutor_id 