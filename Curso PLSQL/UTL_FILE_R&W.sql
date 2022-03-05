set serveroutput on
create or replace PROCEDURE write_file IS--PARA ESCRIBIR LOS DATOS DEL FICHERO EN UNA TABLA

string VARCHAR2(32767); 
Vfile UTL_FILE.FILE_TYPE; 

BEGIN 
-- Open FILE
Vfile := UTL_FILE.FOPEN('EXERCISES','F1.txt','R'); 
Loop
    begin
        --read line
        UTL_FILE.GET_LINE(Vfile,string); 
        --DBMS_OUTPUT.PUT_LINE(string); PARA MOSTRAR EL CONTENIDO DEL FICHERO POR PANTALLA
        INSERT INTO R1 VALUES (string);
     EXCEPTION
          WHEN NO_DATA_FOUND THEN 
          DBMS_OUTPUT.PUT_LINE('DATA INSERTADA');
          COMMIT;
          EXIT; 
    end;
end loop;
-- close file
UTL_FILE.FCLOSE(Vfile);

END;

/
--PARA LECTURA DEL FICHERO POR PANTALLA

set serveroutput on
create or replace PROCEDURE read_file IS

string VARCHAR2(32767); 
Vfile UTL_FILE.FILE_TYPE; 

BEGIN 
-- Open FILE
Vfile := UTL_FILE.FOPEN('EXERCISES','F1.txt','R'); 
Loop
    begin
        --read line
        UTL_FILE.GET_LINE(Vfile,string); 
        DBMS_OUTPUT.PUT_LINE(string); --PARA MOSTRAR EL CONTENIDO DEL FICHERO POR PANTALLA
     EXCEPTION
          WHEN NO_DATA_FOUND THEN 
          DBMS_OUTPUT.PUT_LINE('DATA INSERTADA');
          COMMIT;
          EXIT; 
    end;
end loop;
-- close file
UTL_FILE.FCLOSE(Vfile);

END;

