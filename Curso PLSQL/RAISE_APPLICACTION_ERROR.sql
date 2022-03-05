--Ejemplo De Exception con RAISE_APPLICACTION_ERROR
    --No es necesaria la zona de Exception
Set ServerOutPut On;
Declare
    regnum      Number;
    regt        NVARCHAR2(200);
Begin
    regnum  :=105;
    regt    :='Fury';
    
    IF regnum > 100 Then
        --Codigo que pueden ser utilizado estan en el rango de -20000 & -20999 
        RAISE_APPLICATION_ERROR(-20001, 'Codigo de Region no puede ser mayor a 100, Verificar');
    Else
        Insert into Regions Values (regnum, regt);
            dbms_output.put_line('Registro insertado');
            Commit;
    End if;
End;