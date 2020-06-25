MODULE Buffer;(*implementscircularbuffers*)
  CONST N = 1024; (*buffer size*)
  VAR n, in, out: INTEGER;
    buf: ARRAY N OF CHAR;

  PROCEDURE deposit(x: CHAR);
  BEGIN
    IF n = N THEN HALT(1) END;
    INC(n); buf[in] := x; in := (in + 1) MOD N
  END deposit;

  PROCEDURE fetch(VAR x: CHAR);
  BEGIN
    IF n = 0 THEN HALT(1) END;
    DEC(n); x := buf[out]; out := (out + 1) MOD N
  END fetch;

  BEGIN n := 0; in := 0; out := 0
END Buffer.




