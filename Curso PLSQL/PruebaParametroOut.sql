SET SERVEROUTPUT ON;
DECLARE
    
    A NUMBER:=100;
    B NUMBER:=15;
    C NUMBER:=0;
    D NUMBER;
BEGIN
    CALC_IMP_OUT(A,B,C);
    DBMS_OUTPUT.PUT_LINE('Podemos tomar el valor que nos da el procedimiento:' || C);
    
    D := C + 3500;
    
    DBMS_OUTPUT.PUT_LINE('Valor devuelto por el PROC ahora modificado: ' || D);
END;