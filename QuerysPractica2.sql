/*El departamento de Recurso Humanos le ha pedido un reporte donde
usted debe entregar todos los empleados con sus informaciones los que
pertenecen al departamento 50 y que ganan menor a $10,000.*/
Select 
    *
From 
    employees
where 
    Department_ID = 50 and salary <= 10000;

/*El departamento de contabilidad ha solicitado que le sume $2,000 a los
empleados que ganan menos de 5,000 en nuevo campo se llamara
aumento promoción.*/
Select 
    employee_ID, 
    first_name, 
    last_name, 
    salary  + 2000 as "Aumento_Promocion"
From 
    employees 
where 
    salary < 5000;

/*Su encargado le solicita un reporte de los empleados que pertenecen al
departamento 20 y 50.*/
Select 
    *
From 
    employees
where 
    Department_ID in (50,20);

/*Recursos humanos le ha solicitado que le reste 2500 a 3 empleados que
han faltado a las horas extras y se le pagaron por error, sus códigos de
empleados son (100,101,102) el campo del descuento se llamara
incumplimiento de horario.*/
Select
    Employee_ID,
    First_Name,
    Last_Name,
    Salary - 2500 "Incumplimiento de Horario"
From 
    Employees
Where
    Employee_ID in (100,101,102);
    

/*Se le ha solicitado la cantidad de todos los empleados que ganan menor a 
$8,000*/
Select
  Count(*)
From
    Employees
Where
    salary < 8000;
    
/*El departamento de recursos humanos quiere saber la cantidad de empleados
que pertenecen al departamento 60.*/
Select
    Count(*)
From
    Employees
Where
    Department_ID = 60;
        
/*La gerente de recursos humanos le ha solicitado cual es el doble sueld
o de todos los empleados la nueva columna se llamara, sueldo navidad.*/
Select 
    *
From 
    employees
Where 
    Salary + salary as "Sueldo Navidad";
    
    
/*PARTE 2*/

/*Realizar un informe de los empleados que ganas RD$10,000.*/
Select 
    *
From
    Employees
Where
    Salary = 10000;


/*Concatenar el employee_id,nombre, apellido, salario, email de los empleados
que están en los departamentos (10,30,50,60,100).*/
Select 'ID:' || ' ' || Employee_ID || ' Nombre:' || ' ' || First_Name
|| ' ' || ' Sueldo:' || ' ' || Salary ||  ' ' || 'Email' || ' ' || Email
from 
    employees;
Where
    Department_ID = 60;   
    
/*El departamento de recursos humanos quieres la tarjeta de los empleados
que están el departamento 60.*/
Select
    employee_id
From 
    employees
Where
    Department_ID = 60;

/*El departamento de contabilidad te solicita que realice el calculo del AFP
y ISR de todos los empleados.*/
Select
    employee_id,
    First_Name,
    Last_Name,
    Salary,
    Salary * 0.087 as AFP,
    Salary * 0.0304 as SFS
From employees;

/*Realizar una consulta que cuentes los empleados que ganan mas de 14 mil.*/
Select
    Count(*)
From
    employees
Where
    Salary > 14000;

/*Realizar una consulta que lleve el sueldo de un empleado a hora diaria,
es decir tendrás que hacer el calculo de cual es el salario por hora
de un empleado y renombrar la columna por sueldo diario.*/
Select
    employee_id,
    First_Name,
    Last_Name,
    Round(salary / 30) / 8 as "Sueldo Diario"
From 
    Employees;

/*Realizar un aumento de 5 mil a todos los empleados que gana menor a 2000.*/
Select 
    employee_ID, 
    first_name, 
    last_name, 
    salary  + 5000
From 
    employees 
where 
    salary < 2000; --No hay ninguno que gane menos de 2mil
    

/*Realizar una consultar con concatenación de cual es
el salario de un empleado.*/
Select 
'El nombre del empleado es:' || ' ' || First_Name || '' || 
' Y su sueldo es:' || ' ' || Salary
from employees;

/*Realizar un aumento de la comisión de los empleados a un
25% el campo se llamara aumento_comission.*/