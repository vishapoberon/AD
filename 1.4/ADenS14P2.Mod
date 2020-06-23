MODULE ADenS14P2;
IMPORT Oberon, Texts;

VAR W: Texts.Writer;

PROCEDURE Power (VAR W: Texts.Writer; N: INTEGER);
(*compute decimal representation of negative powers of 2*)
VAR i, k, r: INTEGER;
d: ARRAY 10 OF INTEGER;
BEGIN
FOR k := 0 TO N-1 DO
Texts.Write(W, "."); r := 0;
FOR i := 0 TO k-1 DO
r := 10*r + d[i]; d[i] := r DIV 2; r := r MOD 2;
Texts.Write(W, CHR(d[i] + ORD("0")))
END;
d[k] := 5; Texts.Write(W, "5"); Texts.WriteLn(W)
END
END Power;

BEGIN Texts.OpenWriter(W);
Power(W,10);


END ADenS14P2.
