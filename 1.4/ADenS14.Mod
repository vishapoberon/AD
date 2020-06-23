MODULE ADenS14;

VAR a: ARRAY 5 OF INTEGER;
    N,sum,max,i,k : INTEGER;


BEGIN
N:=5;

sum := 0;
FOR i := 0 TO N-1 DO sum := a[i] + sum END;

k := 0; max := a[0];
FOR i := 1 TO N-1 DO
    IF max < a[i] THEN k := i; max := a[k] END
END
END ADenS14.
