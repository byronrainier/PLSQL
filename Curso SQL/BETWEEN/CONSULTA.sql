--BETWEEN
--PARA TRABAJAR CON RANGOS DE NUMEROS(ID, CANTIDADES, PRECIOS) 
SELECT * FROM CITY WHERE CITY_ID BETWEEN 300 AND 500;--SOLO ME TRAE LAS CIUADES CUYOS ID ESTA ENTRE EL RANGO INDICADO
SELECT * FROM CITY WHERE CITY_ID BETWEEN 1 AND TO_NUMBER(10);
--TAMBIEN SE PUEDE COMBINAR CON EL NOT
SELECT * FROM CITY WHERE CITY_ID NOT BETWEEN 1 AND 10;--TRAE TODAS LAS CIUDADES MENOS LAS QUE INDICA EL RANGO DEL 1 AL 10


SELECT * FROM FILM WHERE RENTAL_RATE BETWEEN 0.99 AND 2.99 AND REPLACEMENT_COST < 20;