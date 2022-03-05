--CONSTANTES Y NULLS
SET SERVEROUTPUT ON;

DECLARE
    --AQUI VAN LAS VARIABLES
    w_nm_nombre1   NVARCHAR2(20);
    w_nm_nombre2   NVARCHAR2(20);
    w_nm_apellido  NVARCHAR2(20);
    w_edad         CONSTANT NUMBER := 24;--VARIABLE CONSTANTE NO CAMBIA Y DEBE DE SER INICIALIZADA EN EL DECLARE
    w_nm_profesion NVARCHAR2(20) NOT NULL := 'PROGRAMADOR II';--VARIABLE QUE NO PUEDE SER NULL

BEGIN
    --AQUI VAN LAS SENTENCIAS
    w_nm_nombre1        := 'BYRON';
    w_nm_nombre2        := 'RAINIER';
    w_nm_apellido       := 'HENRIQUEZ';

    dbms_output.put_line('NOMBRE:'
                         || w_nm_nombre1
                         || ' '
                         || w_nm_nombre2
                         || ' '
                         || w_nm_apellido);

    dbms_output.put_line('PROFESION: ' || w_nm_profesion);
    dbms_output.put_line('EDAD: ' || w_edad);
END;--FIN DEL BLOQUE