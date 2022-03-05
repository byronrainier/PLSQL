CREATE OR REPLACE PROCEDURE P1
AS--Sintaxis para crear un Procedimiento.
BEGIN
    dbms_output.put_line('Hola Byron, llamado desde el procedimiento P1');
    dbms_output.put_line('Linea Agregada');
END P1;--No hay necesidad de guardar el archivo .sql ya que la funcion se guarda en el cliente de Oracle.
/
Set ServerOutput On;
Exec P1;--De esta manera se ejecuta un Procedimiento.

