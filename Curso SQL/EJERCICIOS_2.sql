--Actores que contengan una ‘O’ en su nombre.
SELECT * FROM ACTOR WHERE FIRST_NAME LIKE '%O%' ORDER BY FIRST_NAME ASC;

--Actores que contengan una ‘O’ en su nombre y en una ‘A’ en su apellido.
SELECT * FROM ACTOR WHERE FIRST_NAME LIKE '%O%' AND LAST_NAME LIKE '%A%';

--Actores que contengan dos ‘O’ en su nombre y en una ‘A’ en su apellido.
SELECT * FROM ACTOR WHERE FIRST_NAME LIKE '%OO%' AND LAST_NAME LIKE '%A%';
/
SELECT * 
FROM actor 
WHERE upper(first_name) LIKE '%O%O%'
AND upper(last_name) LIKE '%A%'
/
--Actores donde su tercera letra sea ‘B’.
SELECT SUBSTR('BYRON',0,3) FROM DUAL;--TOMA EL STRING, DE DONDE PARTE Y CUANTOS RECORRERA.
/
SELECT * FROM ACTOR WHERE SUBSTR(FIRST_NAME,3) LIKE '%B%';
/
SELECT * 
FROM actor 
WHERE upper(first_name) LIKE '__B%';

/
--Ciudades que empiezan por 'A'.
SELECT * FROM CITY WHERE CITY LIKE 'A%';
--Ciudades que acaban por 'S'.
SELECT * FROM COUNTRY WHERE COUNTRY LIKE '%S';
--Ciudades del country 61.
SELECT * FROM CITY WHERE CITY_ID = 61;
--Ciudades del country ‘Spain’.
SELECT * FROM CITY WHERE CITY = 'SPAIN';

