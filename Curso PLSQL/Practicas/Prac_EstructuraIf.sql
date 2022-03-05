SET SERVEROUTPUT ON;
DECLARE
    num1 NUMERIC;
BEGIN
    num1 := 8;
    IF MOD(num1, 2) = 0 THEN
        dbms_output.put_line('Es Par');
    ELSE
        dbms_output.put_line('Es Impar');
    END IF;
END;
/
DECLARE
    tipoProducto Char(1);
Begin
    tipoProducto    := 'F';
    
    If tipoproducto     = 'A' then
        dbms_output.put_line('Electronica');
    Elsif tipoproducto  = 'B' then
        dbms_output.put_line('Informatica');
    Elsif tipoproducto  = 'C' then
        dbms_output.put_line('Ropa');
    Elsif tipoproducto  = 'D' then
        dbms_output.put_line('Musica');
    Elsif tipoproducto  = 'E' then
        dbms_output.put_line('Libros');
    Else
        dbms_output.put_line('Codigo incorrecto, Favor validar');
    End if;
End;