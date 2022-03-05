Set ServerOutPut On;

Declare
    Empl    Employees%rowtype;
Begin
    Select * Into Empl
    From Employees
    Where Employee_Id = 100;
    
    DBMS_OUTPUT.put_line(empl.first_name);
    
    --Sintaxis de las exepciones
    --Se pueden capturar N cantidad de exepciones
    EXCEPTION
        When Exce1 Then
            Null;
        When Exce1 Then
            Null;
        When Exce1 Then
            Null;
        When OTHERS Then
            Null;
End;