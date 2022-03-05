--Control de Sentencias SQL con Exception
Set ServerOutPut On;

Declare
    reg         Regions%rowtype;
    reg_control regions.region_id%type;    
Begin
    reg.region_id       :=7;
    reg.region_name     :='Turing';
    Select region_id into reg_control from regions
    where region_id = reg.region_id;
        dbms_output.put_line('Region ya existe, Favor validar');
EXCEPTION
    When No_Data_Found Then
        dbms_output.put_line('Registro fue insertado');
        Insert into Regions Values (reg.region_id, reg.region_name);
        Commit;
End;

/
Select * From regions;