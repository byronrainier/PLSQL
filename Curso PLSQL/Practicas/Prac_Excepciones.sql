Set ServerOutPut On;
Declare
    Emp             EMPLOYEES%ROWTYPE;
    Salario         Employees.Salary%TYPE;
    Cod             Number;
    Descripcion     NVARCHAR2(100);
Begin
    Select 
        Salary / 0
    Into 
        Salario
    From 
        Employees
    Where
        Employee_id = 100;
        
    dbms_output.put_line(salario);

EXCEPTION
    When No_Data_Found Then
        dbms_output.put_line('Empleado inexistente');
        Cod                 :=SQLCODE;
        Descripcion         :=SQLERRM;
        Insert into registro_errores Values (Cod, Descripcion);
        
    When Too_Many_Rows Then
        dbms_output.put_line('Consulta trae demasiadas filas');
        Cod             :=SQLCODE;
        Descripcion     :=SQLERRM;
        Insert into registro_errores Values (Cod, Descripcion);

    When Others Then
        dbms_output.put_line('Verificar Query');
        Cod           :=SQLCODE;
        Descripcion   :=SQLERRM;
        Insert into registro_errores Values (Cod, Descripcion);
End;
/
Select * from registro_errores;-- Tabla donde se registran los errores.