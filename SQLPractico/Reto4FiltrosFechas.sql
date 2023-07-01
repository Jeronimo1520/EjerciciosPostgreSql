SELECT *
FROM platzi.alumnos
WHERE(EXTRACT(YEAR FROM fecha_incorporacion))=2019;

SELECT *
FROM platzi.alumnos
WHERE(DATE_PART('YEAR',fecha_incorporacion)) = 2019;

SELECT *
FROM(
	SELECT*,
	DATE_PART('YEAR',fecha_incorporacion) AS anio
	FROM platzi.alumnos
)AS alumnos_con_anio
WHERE anio = 2019;

/*Alumnos incorporados en mayo del 2018*/
SELECT *
FROM(
	SELECT*,
	DATE_PART('YEAR',fecha_incorporacion) AS anio,
	DATE_PART('MONTH',fecha_incorporacion) AS mes
	FROM platzi.alumnos
)AS alumnos_con_anio_mes
WHERE anio = 2018 AND mes = 5;
