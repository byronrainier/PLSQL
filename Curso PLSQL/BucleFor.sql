Set ServerOutput On;
Declare
Begin
    --El Loop For se declara en el Begin, y no en declare
    For I in /*reverse --Reverse para invertir el orden*/ 1..44 Loop
        dbms_output.put_line(I);--La variable I solo funciona dentro del scope del FOR.
        
        --Exit When I = 14; -- Se detendra el loop cuando llegue a 14.
        
    End loop;
End;