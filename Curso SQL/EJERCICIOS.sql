--�Qu� actores tienen el primer nombre 'Scarlett'?
SELECT
    *
FROM
    ACTOR
WHERE
    FIRST_NAME = 'SCARLETT';


--�Qu� actores tienen el apellido "Johansson"?
SELECT
    *
FROM
    ACTOR
WHERE
    LAST_NAME = 'JOHANSSON';


--�Cu�ntos apellidos de actores distintos hay?
SELECT DISTINCT
    COUNT(LAST_NAME)
FROM
    ACTOR;

--�Qu� apellidos no se repiten?



--�Qu� actor ha aparecido en la mayor�a de las pel�culas?
SELECT * FROM FILM_ACTOR;
/
SELECT
    A.ACTOR_ID, A.FIRST_NAME, A.LAST_NAME, F.FILM_ID, F.TITLE
FROM
    FILM_ACTOR FA, FILM F, ACTOR A
WHERE
    FA.ACTOR_ID     = A.ACTOR_ID AND
    FA.FILM_ID      = F.FILM_ID
;
/
SELECT
    A.ACTOR_ID, A.FIRST_NAME, A.LAST_NAME, COUNT(F.FILM_ID) CONTEO_FILM
FROM
    FILM_ACTOR FA, FILM F, ACTOR A
WHERE
    FA.ACTOR_ID     = A.ACTOR_ID AND
    FA.FILM_ID      = F.FILM_ID
GROUP BY A.ACTOR_ID, A.FIRST_NAME, A.LAST_NAME
ORDER BY COUNT(F.FILM_ID) DESC
;
SELECT
    
FROM
    FILM_ACTOR
HAVING
    MAX

--�Se puede alquilar �Academy Dinosaur� en la tienda 1?
SELECT * FROM STORE;
SELECT * FROM INVENTORY;
/