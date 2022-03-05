-- Variables %type
/*Esto nos permite indica que una Variable X es del mismo tipo que otra, 
esto puede ser una columna de una tabla.*/
SET SERVEROUTPUT ON;
Declare
    X NUMERIC;
    Y X%type;
    Empleado Employees.Salary%type;
Begin
    Null;
    
    Empleado := 500;
    
    DBMS_OUTPUT.PUT_LINE(EMPLEADO);
    
End;