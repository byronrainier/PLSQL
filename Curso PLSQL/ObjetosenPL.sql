Select * From User_Objects
Where Object_type = 'PROCEDURE';--Query para ver los objetos de tipo PROCEDURE
Select * From User_Objects
Where Object_type = 'TRIGGER';--Query para ver los objetos de tipo TRIGGER

--Query que muestra el tipo de objeto y su conteo.
Select Object_type,Count(*) From User_Objects Group by Object_type;