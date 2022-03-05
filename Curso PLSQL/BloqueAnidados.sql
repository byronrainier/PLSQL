set serveroutput on;
Begin
    dbms_output.Put_line('String desde el primer bloque');

Declare
    Num1 Numeric;
Begin

    Num1 := 24;
    
    dbms_output.Put_line(num1);
    
End;

End;