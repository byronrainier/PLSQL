SET SERVEROUTPUT ON;
DECLARE
    
    SAL EMPLOYEES.SALARY%TYPE;
    DEP DEPARTMENTS.DEPARTMENT_ID%TYPE;
    CONTEO NUMBER;
    
BEGIN
    DEP:= 100;
    SAL:= SUM_SAL_DEPS(DEP,CONTEO);
    DBMS_OUTPUT.PUT_LINE('EL SALARIO TOTAL DEL DEPARTAMENTO: ' || DEP || ' ES '|| SAL || ' Y UN TOTAL DE EMPLEADOS: ' || CONTEO);
END;
/
SET SERVEROUTPUT ON;
DECLARE
    REGIONNUM NUMBER;
BEGIN
    REGIONNUM := CREAR_REGION('NORMANDIA');
    DBMS_OUTPUT.PUT_LINE('EL NUMERO ASIGNADO PARA LA REGION: ' || REGIONNUM);
END;
/
SELECT * FROM REGIONS;