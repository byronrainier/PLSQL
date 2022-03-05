----Consulta de la Semana------

/*Primer nombre, apellido y titulo de trabajo de los 
empleados que ganan entre 1000 y 4000*/
Select
    employees.First_name, employees.Last_name, jobs.job_title
From
    employees, jobs
Where
    employees.salary BETWEEN 1000 AND 4000;

/*Reporte que me traiga el pais en el que estan ubicados los departamentos*/
Select
    loc.location_id, loc.street_address, loc.city, dep.department_name
From
    Locations loc, Departments Dep    
Where
    loc.Location_Id  = Dep.Location_Id;

--Reporte que me traiga los paises y la region a la que pertenecen.
Select
    reg.region_id, reg.region_name,con.country_id,con.country_name
From
    Countries Con, Regions Reg
Where
    Con.Region_ID = Reg.Region_ID;

--Cantidad de empleados por pais.
Select
    c.country_id, c.country_name, COUNT(e.employee_id) as Conteo_Empleados
From
    Employees E
Join Departments D On D.Department_ID = E.Department_ID
Join Locations L On L.Location_ID = D.Location_ID
Join Countries C On C.Country_ID = L.Country_ID
GROUP by c.country_id, c.country_name;

--Cantidad de departamentos por region
Select
    R.Region_ID,R.Region_Name, COUNT(d.department_id) as Conteo_Departamentos
From
    Departments D
Join Locations L On L.Location_ID = D.Location_ID
Join Countries C On c.country_id = l.country_id
Join Regions R On r.region_id = c.region_id
GROUP by R.Region_ID,R.Region_Name;

--Nombre del empleado y del cargo de los que no son de la region Americas
Select
    E.First_Name,E.Last_Name, j.job_title
From
    Employees E
Join Jobs J On J.Job_ID = E.Job_ID
Join Departments D On D.Department_ID = E.Department_ID
Join Locations L On L.Location_ID = D.Location_ID
Join Countries C On C.Country_ID = L.Country_ID
Join regions R On r.region_id  = c.region_id
Where
    Region_name Not Like 'Americas';
    
/*Muestre los nombres y apellidos (es una sola columna), nombre del departamento
y el nombre del puesto de todos los empleados cuyo código de ubicación 
de departamento (LOCATION_ID) es 1700*/
Select
    E.First_Name, E.Last_Name, D.Department_Name, J.Job_Title
From
    Employees E
Join Departments D On D.Department_ID = E.Department_ID
Join Locations L On L.Location_ID = D.Location_ID
Join Jobs J On J.Job_ID = E.Job_ID
Where
    L.Location_ID = 1700;
    
/*Elabore un reporte que contenga los nombres, apellidos, nombre del puesto, 
salario y fecha de ingreso de los empleados que
le reportan a King cuyo employee_id es 100.*/
Select
    E.First_Name, E.Last_Name, j.job_title, E.Salary, e.hire_date
From
    Employees E
Join Jobs J On J.Job_ID = E.Job_ID
Where
    Manager_ID = 100;
    
/*Generar un reporte que muestre el nombre del departamento, 
la cantidad de empleados y el salario total de cada departamento de la empresa*/
Select
    D.department_id, D.department_name, 
    Count(E.Employee_ID) as "Cantidad Empleados", 
    Round(AVG(E.Salary)) as "Salario Promedio del Dep."
From
    Departments D
Join Employees E On E.Department_ID = D.Department_ID
Group By D.department_id, D.department_name;

/*Obtener el salario promedio de los empleados que tengan el 
cargo de "Stock Manager"*/
Select
    AVG(salary) "Salario Promedio"
From
    Employees E
Join Jobs J On J.Job_ID = E.Job_ID
Where
    J.Job_Title = 'Stock Manager';
