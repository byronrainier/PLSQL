Set ServerOutput On;

Declare
    Num1 number := 1;--Se debe de inicializar la variable
    
Begin
    Loop
    dbms_output.put_line(num1);
    Num1 := Num1 + 1;
    /*If Num1 = 11 THEN
        Exit;
    End if;*/ --Esto es para la salida del Loop.
    
    --Lo mas recomendable al momento de usar Loops es usar el Exit When
    Exit When num1 = 11;

    End loop;
End;
/
Set ServerOutput On;
Declare
    Num2 Number :=0;--Se debe de inicializar la variable
Begin
    Loop
    dbms_output.put_line(Num2);
        Num2 := Num2 + 1;
    Exit When Num2 = 25;
    
    End Loop;
End;