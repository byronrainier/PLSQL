SELECT
    LAST_NAME, COUNT(*)
FROM
    ACTOR
GROUP BY LAST_NAME
HAVING COUNT(*) > 3;

/

SELECT
    COUNTRY, COUNT(COUNTRY)
FROM
    COUNTRY
GROUP BY COUNTRY;
/
SELECT
    C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME, SUM(P.AMOUNT)
FROM
    CUSTOMER C, PAYMENT P
WHERE
    C.CUSTOMER_ID = P.CUSTOMER_ID
GROUP BY C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME
HAVING SUM(P.AMOUNT) < 100 
ORDER BY SUM(P.AMOUNT) DESC;