--%RowType
Set ServerOutPut On;

Declare
    
    Empleado    Employees%rowtype;-- Variable que es del mismo tipo que una tabla
    
Begin
    
    Select 
        * into Empleado
    From
        Employees
    Where
        Employee_Id  = 100;
    
    DBMS_OUTPUT.put_line(empleado.First_name || ' ' || empleado.department_id || ' ' || empleado.Salary);
    
End;