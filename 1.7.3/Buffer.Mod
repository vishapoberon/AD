MODULE Buffer;
  IMPORT Signals;
  CONST N = 1024; (*buffer size*)
  VAR n, in, out: INTEGER;
    nonfull: Signals.Signal;  (*n < N*)
    nonempty: Signals.Signal; (*n > 0*)
    buf: ARRAY N OF CHAR;

  PROCEDURE deposit(x: CHAR);
  BEGIN
    IF n = N THEN Signals.Wait(nonfull) END;
    INC(n); buf[in] := x; in := (in + 1) MOD N;
    IF n = 1 THEN Signals.Send(nonempty) END
  END deposit;

  PROCEDUREfetch(VAR x: CHAR);
  BEGIN
    IF n = 0 THEN Signals.Wait(nonempty) END;
    DEC(n); x := buf[out]; out := (out + 1) MOD N;
    IF n = N-1 THEN Signals.Send(nonfull) END
  END fetch;

BEGIN n := 0; in := 0; out := 0; Signals.Init(nonfull); Signals.Init(nonempty)
END Buffer.

