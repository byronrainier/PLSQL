Declare
    
    T1  Test.C1%Type;
    
Begin
    T1 := 75;
    Update Test Set C1=12 Where c1=t1;
    
    Commit;
End;