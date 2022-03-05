/*Escriba una consulta que traiga todos los empleados que entraron entre mayo y 
agosto de cualquier año.*/
Select 
    E.Employee_ID, E.First_Name, E.Last_name, JH.Start_Date
From
    Employees E
Join Job_History JH On JH.Employee_ID = E.Employee_ID
Where
    Extract(Month From JH.Start_Date) between 5 AND 8;

--Escriba una consulta que traiga la cantidad de empleados por estado.
Select
    L.City, L.State_Province, Count(E.Employee_ID) 
From
    Employees E
Join Departments D On D.Department_ID = E.Department_ID
Join Locations L On L.Location_ID = D.Location_ID
Group By L.City, L.State_Province;

/*Traiga el nombre de los empleados, el departamento de aquellos que viven
en Toronto.*/
Select
   e.employee_id, e.first_name,e.last_name, d.department_name
From
    Employees E
Join Departments D On D.Department_ID = E.Department_ID
Join Locations L On L.Location_ID = D.Location_ID
Where
    L.City Like 'Toronto';

--Escriba una consulta que muestre el promedio de salario por departamento.
Select
    D.department_id, D.department_name, 
    Round(AVG(E.Salary)) as "Salario Promedio del Dep."
From
    Departments D
Join Employees E On E.Department_ID = D.Department_ID
Group By D.department_id, D.department_name;

/*Crear un reporte que muestre el apellido de los empleados, numero de empleado
y el nombre de su jefe.*/
Select
    E.Employee_ID, E.First_Name, E.Last_Name, E.Manager_ID
From
    Employees E
Join Jobs J On J.Job_ID = E.Job_ID;

/*Cree un reporte que traiga la informacion de todos los empleados
que tengan "i" en su nombre o apellido que ganen entre 10000 y 5000.*/
Select
    *
From
    Employees E
Where
    E.First_Name + E.Last_name Like '%i%' AND
    Salary between 2500 AND 1000;

Select * From Employees Where First_name like '%i%'

/*Cree un reporte que me traiga la fecha de contrato del todos los empleados en 
formato
"El empleado *Nombre de empleado * empezó a trabajar el 5 de mayo del 2020".*/
Select 
'El empleado: ' || First_name || ' Empezo a trabajar el ' || 
Extract(Day from Hire_Date) || ' De ' || Extract(Month from Hire_Date)
|| ' Del ' || Extract(Year from Hire_Date)
From Employees;

/*El departamento de RRHH necesita un reporte que muestre el número del empleado, 
apellido, salario, y un incremento del salario del 15% 
(expresado en números enteros) y nombre la columna como “New
Salary”.*/
Select
    E.Employee_ID, E.First_Name, E.Last_Name, E.Salary * 0.15 as "New Salary"
From
    Employees E;


/*Escriba una consulta que muestre el Nombre, Apellido la combinación
de la primera letra del apellido seguido del nombre (todo en minúscula), 
y la longitud del Nombre, todos los datos provienen de la tabla empleados 
siempre y cuando la primera letra del Nombre empiece por (J, A o M), 
agregue el nombre correspondiente a cada columna.*/

/*El departamento de RRHH requiere una lista de todos los empleados, 
donde se muestre el Nombre, Apellido, Nombre de departamento y 
la cantidad de días que tiene trabajando hasta la actualidad.*/
Select 
    E.Employee_ID, E.First_Name, E.Last_name, D.Department_Name,
    Round(SysDate - JH.Start_date) as "Dias hasta la fecha"
From
    Employees E
Join Departments D On D.Department_ID = E.Department_ID
Join Job_History JH On JH.Employee_ID = E.Employee_ID;

