Set ServerOutPut On;

Declare
    SalarioMax  Employees.Salary%TYPE;
Begin
    Select
        Max(Employees.Salary) Into SalarioMax
    From
        Employees;
        
    dbms_output.put_line(SalarioMax);
End;
/*Crear un bloque PL/SQL que devuelva al salario máximo del departamento 100
y lo deje  en una variable denominada salario_maximo y la visualice*/
/
Declare
    tipoTrabajo     employees.job_id%TYPE;
    nombreTrabajo   Jobs.job_title%TYPE;
Begin
    Select
        E.job_id, j.job_title Into tipoTrabajo,nombreTrabajo
    From
        Employees E
    Inner Join
        Jobs J On J.Job_Id = E.Job_Id
    Where
        Employee_Id = 100;
        
    DBMS_OUTPUT.PUT_LINE(tipoTrabajo);
    DBMS_OUTPUT.PUT_LINE(nombreTrabajo);
End;
--Visualizar el tipo de trabajo del empleado número 100

/
Declare
    SalarioMax      Employees.Salary%Type;
    SalarioMin      Employees.Salary%Type;
    Diferencia      NUMERIC;
Begin
    Select
        Max(Salary), Min(Salary) Into SalarioMax, SalarioMin
    From
        Employees;
        
    Diferencia  := salariomax - salariomin;
    
    DBMS_OUTPUT.put_line('Maximo: ' || SalarioMax || ' Minimo: ' || salariomin);
    DBMS_OUTPUT.put_line('Diferencia: ' || diferencia);
End;
/*Mediante dos consultas recuperar el salario máximo y el salario mínimo
de la empresa e indicar su diferencia*/