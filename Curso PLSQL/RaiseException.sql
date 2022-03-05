--Ejemplo De Exception con Raise
Set ServerOutPut On;
Declare
    reg_max     EXCEPTION;--Variable de Tipo EXCEPTION
    regnum      Number;
    regt        NVARCHAR2(200);
Begin
    regnum  :=5;
    regt    :='Africa';
    
    IF regnum > 100 Then
        Raise reg_max;
    Else
        Insert into Regions Values (regnum, regt);
            dbms_output.put_line('Registro insertado');
            Commit;
    End if;
Exception
    When reg_max Then
        dbms_output.put_line('Codigo de region no puede ser mayor a 100, Favor validar codigo');
    When Others then
        dbms_output.put_line('Verificar Query');
End;

/

Select * From regions;
