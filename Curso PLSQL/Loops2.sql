Set ServerOutput On;

Declare
    A   PLS_INTEGER := 0;
    B   PLS_INTEGER := 0;
    C   PLS_INTEGER;
Begin
    <<parent>>
    Loop
    --Imprimir Parent
    B   := B + 1;
    C   := 100;
    DBMS_OUTPUT.PUT_LINE('Parent:' || C);
        <<child>>
        Loop
        --Imprimir Child
        Exit parent when (B > 3);
            dbms_output.put_line('Child:' || C);
        C:= C + 1;
        Exit child when (C > 105);
        End loop Child;
    End Loop Parent;
    Dbms_output.Put_line('Finish!');
End;