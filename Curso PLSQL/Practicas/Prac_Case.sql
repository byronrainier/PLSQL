SET SERVEROUTPUT ON;
DECLARE
    usuario NVARCHAR2(40);
BEGIN
    
    usuario := USER;
    
    CASE usuario
        WHEN 'SYS'      then dbms_output.Put_line('Eres SuperAdmin');
        WHEN 'SYSTEM'   then dbms_output.Put_line('Eres un Administrador Normal');
        WHEN 'HR'       then dbms_output.Put_line('Eres de Recursos Humanos');
                        ELSE
                             dbms_output.put_line('Usuario no autorizado');
    End Case;
END;