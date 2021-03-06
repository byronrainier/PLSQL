--INNER JOIN, LEFT JOIN, RIGHT JOIN

--JOIN
SELECT * FROM ADDRESS;
SELECT * FROM CITY;
/
--TABLAS UNIDAS POR EL PRIMARY KEY, TRAE TODA LA INFORMACION QUE COINCIDE CON EL PRIMARY KEY.
SELECT
    CI.CITY_ID, CI.CITY, AD.ADDRESS
FROM
    CITY CI, ADDRESS AD
WHERE
    CI.CITY_ID = AD.CITY_ID;
    
--RIGHT JOIN
SELECT * FROM CUSTOMER;
SELECT * FROM ACTOR;
/
--TRAIGO LA INFORMACION DE LA TABLA DERECHA, EN ESTE CASO ACTOR, Y TRAIGO DE LA IZQUIERDA SOLO DONDE COINCIDAN LOS LAST_NAME DE ACTOR Y CUSTOMER
SELECT
    CU.CUSTOMER_ID, CU.FIRST_NAME, CU.LAST_NAME, AC.ACTOR_ID, AC.FIRST_NAME, AC.LAST_NAME
FROM
    CUSTOMER CU
RIGHT JOIN
    ACTOR AC
ON
    CU.LAST_NAME = AC.LAST_NAME;
/
--LEFT JOIN
--TRAIGO LA INFORMACION DE LA TABLA IZQUIERDA, EN ESTE CASO ACTOR, Y TRAIGO DE LA DERECHA SOLO DONDE COINCIDAN LOS PRIMEROS NOMBRES EN AMBAS TABLAS
SELECT
    A.ACTOR_ID, A.FIRST_NAME, A.LAST_NAME, C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME
FROM
    ACTOR A
LEFT JOIN
    CUSTOMER C
ON
    A.FIRST_NAME = C.FIRST_NAME;
/
SELECT * FROM CUSTOMER;
SELECT * FROM ADDRESS;
SELECT * FROM STORE;
/
SELECT--LEFT JOIN
    CU.FIRST_NAME, AD.ADDRESS ,ST.STORE_ID
FROM
    CUSTOMER CU
LEFT JOIN
    ADDRESS AD ON CU.ADDRESS_ID = AD.ADDRESS_ID
LEFT JOIN
    STORE ST ON ST.STORE_ID = CU.STORE_ID;
/
SELECT * FROM RENTAL;
SELECT * FROM STAFF;
/
SELECT--INNER JOIN
    RE.RENTAL_ID, ST.FIRST_NAME
FROM
    RENTAL RE
JOIN
    STAFF ST
ON
    ST.STAFF_ID = RE.STAFF_ID
GROUP BY RE.RENTAL_ID, ST.FIRST_NAME;
    