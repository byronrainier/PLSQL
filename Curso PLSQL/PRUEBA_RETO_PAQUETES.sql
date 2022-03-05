SET SERVEROUTPUT ON;
EXEC PCK_REGION.ALTA_REGION(9,'GANDIA');--AGREGA UNA NUEVA REGION A LA TABLA REGIONS, SI NO EXISTE.
/
SET SERVEROUTPUT ON;
EXEC PCK_REGION.ALTA_REGION(10,'PRUEBABORRAR');--AGREGA UNA NUEVA REGION A LA TABLA REGIONS, SI NO EXISTE.
/
SELECT * FROM REGIONS ORDER BY REGION_ID ASC;--PARA VERIFICAR LA TABLA
/
SET SERVEROUTPUT ON;
EXEC PCK_REGION.BAJA_REGION(40);--BORRA LA REGION INDICADA EN EL CODIGO, SI EXISTE.
/
SET SERVEROUTPUT ON;
EXEC PCK_REGION.MOD_REGION(40, 'KAZAJISTAN');--MODIFICA LA REGION INDICADA EN EL CODIGO, SI EXISTE.
/
SET SERVEROUTPUT ON;
DECLARE
    A NUMBER;
    B REGIONS.REGION_NAME%TYPE;
    C REGIONS.REGION_NAME%TYPE;
BEGIN
    A:=10;
    B:= NULL;
    C:=PCK_REGION.CON_REGION(A,'');
    DBMS_OUTPUT.PUT_LINE('EL NOMBRE DE LA REGION ES: ' || C);
END;