select postal_code, City from locations;

Select Department_ID, Department_name from departments;


--Usando el As para crear un alias a la columna
Select last_name as Solo_Apellido, 
salary + 1000 as Nuevo_Sueldo 
from employees;
--Usando las comillas dobles "" para crear un alias a la columna
Select First_name as "Primer Nombre",  
last_name "Primer Apellido" 
from employees;

Select first_name, 
last_name, 
salary as Salario_Antiguo, 
salary + 4000 as Nuevo_Salario 
from employees;

Select first_name, last_name, salary, department_id from employees;