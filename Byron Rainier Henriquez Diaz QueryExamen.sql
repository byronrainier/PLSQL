CREATE TABLE producto (
    idprod        INT NOT NULL,
    nombreprod    VARCHAR2(50) NOT NULL,
    descprod      VARCHAR2(50),
    precprod      NUMERIC,
    cantidadstock INT NOT NULL
);--Creacion de la tabla Producto

CREATE SEQUENCE idprod INCREMENT BY 1; -- Creacion de la secuencia.

Drop SEQUENCE Idprod;
truncate table producto;

ALTER TABLE producto ADD (
    CONSTRAINT prod_pk PRIMARY KEY ( idprod )
); --Declarando el Primary Key
  
--Insertando valores en la tabla
INSERT INTO producto VALUES (
    idprod.NEXTVAL,
    'Martillo',
    NULL,
    550,
    25
);

INSERT INTO producto VALUES (
    idprod.NEXTVAL,
    'Ducktape',
    'Cinta Multi uso',
    325,
    100
);

INSERT INTO producto VALUES (
    idprod.NEXTVAL,
    'Linterna',
    NULL,
    300,
    50
);

INSERT INTO producto VALUES (
    idprod.NEXTVAL,
    'Taladro',
    'Black y Decker',
    1500,
    100
);

INSERT INTO producto VALUES (
    idprod.NEXTVAL,
    'Juego de llaves',
    'Llaves Yale',
    500,
    200
);

INSERT INTO producto VALUES (
    idprod.NEXTVAL,
    'Escalera',
    'Escalera de metal',
    800,
    35
);

INSERT INTO producto VALUES (
    idprod.NEXTVAL,
    'Alicate',
    NULL,
    420,
    200
);

INSERT INTO producto VALUES (
    idprod.NEXTVAL,
    'Cinta metrica',
    NULL,
    380,
    200
);

INSERT INTO producto VALUES (
    idprod.NEXTVAL,
    'Destornillador de Paleta',
    NULL,
    250,
    100
);

INSERT INTO producto VALUES (
    idprod.NEXTVAL,
    'Pala',
    NULL,
    500,
    200
);

INSERT INTO producto VALUES (
    idprod.NEXTVAL,
    'Pico',
    NULL,
    500,
    200
);

INSERT INTO producto VALUES (
    idprod.NEXTVAL,
    'Probador de corriente',
    'Medidor de corriente',
    2500,
    100
);

INSERT INTO producto VALUES (
    idprod.NEXTVAL,
    'Pinza',
    NULL,
    450,
    100
);

INSERT INTO producto VALUES (
    idprod.NEXTVAL,
    'Tenazas de corte',
    NULL,
    800,
    200
);

INSERT INTO producto VALUES (
    idprod.NEXTVAL,
    'Espatula',
    NULL,
    800,
    200
);

INSERT INTO producto VALUES (
    idprod.NEXTVAL,
    'Maceta',
    NULL,
    750,
    250
);

INSERT INTO producto VALUES (
    idprod.NEXTVAL,
    'Regla',
    NULL,
    200,
    200
);

/*Modificando registros*/    
update 
    producto
Set 
    cantidadstock = 100
Where
    idprod = 5;
    
update 
    producto
Set 
    cantidadstock = 100
Where
    idprod = 6;

/*Eliminacion de un registro*/
Delete from producto
where idprod = 17;

/*Eliminacion del Primary Key de la tabla producto*/
alter table Producto
drop CONSTRAINT prod_pk;

/*Creando nuevamente el COnstraint*/
ALTER TABLE producto ADD 
    CONSTRAINT prod_pk PRIMARY KEY ( idprod );

/*Use truncate para Vaciar la tabla, luego use
Roollback para deshacer la transacción.*/    
truncate table producto;
rollback;--Segun investigcacion, esto no es posible, se intento de todas maneras.
    
/*Consultas con Select*/
Select * From producto;

Select * from producto where precprod < 150;

Select
    * 
from 
    producto 
where 
    idprod = 10;
    
--Borrado del usuario con todo y esquema
drop user zito cascade;--Usando Hr quiero borrar un esquema de prueba y no permite. por tema de Privilegios.

/*Creacion de la nueva tabla partiendo de Employees*/
Create table Empleados2 as select * from employees;

/*Ha usted se le ha solicitado, que realice
un descuento a estos empleados en su salario
(100,103,105,110,106,111) usted debe hacerle un*/
Update empleados2
Set Salary = Salary - (salary * 0.15)
Where EMPLOYEE_ID in (100,103,105,110,106,111);
    
/*Ha usted se le ha solicitado que le realice un aumento
de sueldo al empleado 101 el aumento será de RD$2500.*/
Update 
    Empleados2
Set 
    Salary = Salary + 2500
Where
    EMPLOYEE_ID = 101;

/*Cuente los empleados del departamento 60.*/
Select 
    Count(*)
From 
    Empleados2
Where
    DEPARTMENT_ID = 60;
    
/*Elimine los usuarios del departamento 50 y 60.*/
Delete from Empleados2
Where DEPARTMENT_ID in (50,60);
Select * from empleados2;

/*Seleccione todos lo empleados excepto los que no
pertenecen al departamento 100 y 110.*/
Select 
    *
From 
    empleados2
Where 
    DEPARTMENT_ID Not in (100,110);

/*Seleccione los distintos departamento de la tabla employees.*/
Select 
    DISTINCT DEPARTMENT_ID, 
    department_Name
From employees;