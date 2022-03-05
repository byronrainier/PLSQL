Set Serveroutput On;
Declare
    Imp Constant Numeric := 21;
    precioArticulo Numeric(5,2);
    precioTotal precioArticulo%type;
Begin
    precioarticulo := 250;
    dbms_output.put_line('Precio: '|| precioarticulo);
    preciototal := (precioarticulo * imp) / 100;
    dbms_output.put_line('Precio con impuestos: ' || preciototal);
    
End;