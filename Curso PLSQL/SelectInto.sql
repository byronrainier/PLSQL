Set ServerOutPut On;

Declare
    Salario         Employees.Salary%type;
    primerNombre    Employees.First_name%type;
Begin
    Select -- Esto Solo devuelve una sola fila.
        First_name, Salary Into primerNombre, Salario
    From
        Employees
    Where 
        Employee_Id = 100;
        
    dbms_output.put_line('El salario es: ' || salario || ' Y el nombre: ' || primerNombre);
End;