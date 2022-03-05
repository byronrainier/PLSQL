Set ServerOutput On;

Declare
    nomb    NVARCHAR2(20);
    apel1   NVARCHAR2(20);
    apel2   NVARCHAR2(20);
    
    inic1   char(1);
    inic2   char(1);
    inic3   char(1);
    
    
Begin
    nomb    := 'Ina';
        inic1   := Upper(SUBSTR(nomb,0,1));
    apel1   := 'Patxot';
        inic2   := Upper(SUBSTR(apel1,0,1));
    apel2   := 'Espaillat';
        inic3   := Upper(SUBSTR(apel2,0,1));
    
    dbms_output.put_line(nomb ||' '|| apel1 ||' '|| apel2);
    dbms_output.put_line(inic1 || '.' || inic2 || '.' || inic3);
    
End;
/
Declare
    fechaNac date;
Begin
    fechanac    := '03/Jun/1997';
    dbms_output.put_line(TO_CHAR(fechanac,'Day'));
End;