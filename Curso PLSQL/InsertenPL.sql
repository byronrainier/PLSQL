Declare
    Col1 Test.C1%type;-- Declaro una variable de tipo C1 que es Number
Begin
    Col1 :=75;--Le asigno valor
    
    Insert Into Test(C1,C2) Values (Col1,'Byron Rainier');--Le paso los valores, numerico y de texto.
    
    Insert Into Test(C1,C2) Values(24,'Raines Yahir');
    Commit;
    
    --Pueden llevar Commit o RollBack;
    
End;