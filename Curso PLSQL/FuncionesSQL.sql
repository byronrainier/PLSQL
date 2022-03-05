Set serveroutput on;
Declare
    str1 nvarchar2(20);
    num1 numeric;
Begin
    str1 := 'Byron Rainier';
    num1 := 204.752;
    dbms_output.Put_line(substr(str1,6,12));
    dbms_output.put_line(floor(num1));

End;