SET SERVEROUTPUT ON;
EXEC DBMS_OUTPUT.PUT_LINE(PCK_PRUEBA_SOBRECARGA.P1('800'));--PRUEBA DE LA FUNCION CON PARAMETRO NUMBER DENTRO DEL PCK. CON EL MISMO NOMBRE P1.
/
SET SERVEROUTPUT ON;
EXEC DBMS_OUTPUT.PUT_LINE(PCK_PRUEBA_SOBRECARGA.P1('Shipping'));--PRUEBA DE LA FUNCION CON PARAMETRO NVARCHAR2 DENTRO DEL PCK. CON EL MISMO NOMBRE P1.
/
SELECT 
    D.DEPARTMENT_ID, D.DEPARTMENT_NAME ,COUNT(E.EMPLOYEE_ID) 
FROM 
    EMPLOYEES E, DEPARTMENTS D
WHERE
    E.DEPARTMENT_ID = D.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_ID, D.DEPARTMENT_NAME;