--Exepciones Pre-Definidas
Set ServerOutPut On;
Declare
    Empl    Employees%rowtype;
Begin
    Select * Into Empl
    From Employees
    Where Employee_Id > 1;
    
    DBMS_OUTPUT.put_line(empl.first_name);
EXCEPTION
--No Data Found --ORA01403
--Too Many Rows --ORA01422
--Zero_divide
--Dup_val_on_Index
When NO_DATA_FOUND Then
    dbms_output.put_line('Error,Usuario no existe');
When TOO_MANY_ROWS Then
    dbms_output.put_line('Error,Demasiados registros');
When Others Then
    dbms_output.put_line('Error, Favor verificar');
End;

