--SQLCODE & SQLRRM
--Excepciones
Set ServerOutPut On;
Declare
    Emp EMPLOYEES%ROWTYPE;
    Codigo Number;
    Descripcion VARCHAR2 (100);
Begin
    Select
        * into Emp
    From
        Employees;
    DBMS_OUTPUT.put_line(emp.Salary);
EXCEPTION
    When Others Then
        dbms_output.put_line(SQLCODE);
        dbms_output.put_line(SQLERRM);
        
        Codigo := SQLCODE;
        Descripcion := SQLERRM;
        
        Insert into registro_errores Values (Codigo, Descripcion);
        dbms_output.put_line('Error Capturado');
End;

Select * from registro_errores;