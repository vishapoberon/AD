MODULE ADenS13;

VAR
   i, n : INTEGER;
   x, y: REAL;

BEGIN

n := 5;

y := 1.0; i := n;
WHILE i > 0 DO (*x0n= xi* y*)
    IF ODD(i) THEN y := y*x END;
    x := x*x; i := i DIV 2
END

END ADenS13.
