MODULE CharsToNumber;
IMPORT In;
VAR ch : CHAR;
    x : INTEGER;

BEGIN

x := 0; In.Char(ch);
WHILE ("0" <= ch) & (ch <= "9") DO
  x := 10*x + (ORD(ch) - ORD("0")); In.Char(ch);
END;
END CharsToNumber.
