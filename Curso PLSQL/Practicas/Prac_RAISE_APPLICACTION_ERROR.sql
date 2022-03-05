Set ServerOutPut On;
Declare
    Emp             EMPLOYEES%ROWTYPE;
    Salario         Employees.Salary%TYPE;
    Cod             Number;
    Descripcion     NVARCHAR2(100);
Begin
    Select 
        *
    Into 
        emp
    From 
        Employees
    Where
        Employee_id < 1000;
        
    --dbms_output.put_line(salario);

EXCEPTION
    When No_Data_Found Then
        RAISE_APPLICATION_ERROR(-20000, 'Empleado No Existe, Verificar codigo');
        Cod                 :=SQLCODE;
        Descripcion         :=SQLERRM;
        Insert into registro_errores Values (Cod, Descripcion);
        
    When Too_Many_Rows Then
        RAISE_APPLICATION_ERROR(-20001, 'Devuelve muchas filas, Verificar query');
        Cod                 :=SQLCODE;
        Descripcion         :=SQLERRM;
        Insert into registro_errores Values (Cod, Descripcion);

    When Others Then
        RAISE_APPLICATION_ERROR(-20002, 'Verificar codigo');
        Cod                 :=SQLCODE;
        Descripcion         :=SQLERRM;
        Insert into registro_errores Values (Cod, Descripcion);
End;

/

Select * from registro_errores;-- Tabla donde se registran los errores.