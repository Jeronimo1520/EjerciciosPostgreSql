SELECT * 
from platzi.alumnos 
FETCH FIRST 1 ROWS ONLY;

SELECT * 
from platzi.alumnos 
LIMIT 1;


SELECT * 
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
)AS alumnos_with_row_num
WHERE row_id =1;

/*Reto traer los primeros 5 rows*/
SELECT * 
from platzi.alumnos 
FETCH FIRST 5 ROWS ONLY;

SELECT * 
from platzi.alumnos 
LIMIT 5;


SELECT * 
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
)AS alumnos_with_row_num
WHERE row_id BETWEEN 1 and 5;

SELECT * 
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
)AS alumnos_with_row_num
WHERE row_id <=5;