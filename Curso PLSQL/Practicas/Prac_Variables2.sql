SET SERVEROUTPUT ON;
DECLARE
    w_nm_nombre nvarchar2(100);
    w_edad numeric;
    w_fechaNacimiento constant date := '03/06/1997';
BEGIN
    w_nm_nombre := 'Byron Rainier Henriquez Diaz';
    w_edad :=24;
    dbms_output.put_line('Nombre: ' || w_nm_nombre || ' Edad: ' || w_edad || ' Fecha: ' || w_fechaNacimiento);
    
END;
/

SELECT * FROM  NLS_DATABASE_PARAMETERS;--Parametros de Fecha en el cliente de Oracle

/

alter session set nls_date_format = 'DD-MM-YYYY';--Alterar la fecha en los parametros del cliente de Oracle

/
Select To_CHAR(sysdate,'dd-MON-yyyy') From dual;
