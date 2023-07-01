SELECT lpad('sql',15,'+');

SELECT lpad('*',id,'*')
FROM platzi.alumnos
WHERE id < 10;


SELECT lpad('*',id,'*'),carrera_id
FROM platzi.alumnos
WHERE id < 10
ORDER BY carrera_id;

SELECT lpad('*', CAST(row_id AS int), '*')
FROM ( 
	SELECT ROW_NUMBER() OVER(ORDER BY carrera_id ) AS row_id, *
	FROM platzi.alumnos
)AS alumnos_con_rowid
WHERE row_id <= 5
ORDER BY carrera_id;

/*rpad reto*/
SELECT rpad('sql',15,'+');
