--MANEJO DE VARIABLES
    --BLOQUE ANONIMO CON VARIABLES
DECLARE
    --AQUI VAN LAS VARIABLES
    W_NM_NOMBRE1 NVARCHAR2(20);
    W_NM_NOMBRE2 NVARCHAR2(20);
    W_NM_APELLIDO NVARCHAR2(20);
BEGIN
    --AQUI VAN LAS SENTENCIAS
    W_NM_NOMBRE1 := 'BYRON';
    W_NM_NOMBRE2 := 'RAINIER';
    W_NM_APELLIDO := 'HENRIQUEZ';
    
    DBMS_OUTPUT.PUT_LINE(W_NM_NOMBRE1 || ' ' || W_NM_NOMBRE2 || ' ' || W_NM_APELLIDO);

END;--FIN DEL BLOQUE