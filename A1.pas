program A1;

uses
  crt;

var
  c: array of char;
  a, b: string;
  k, i, test: integer;

procedure sum(x, y: string; var c: array of char);

var
  i, k: integer;
begin
  for i := k downto 1 do
  begin
     //writeln(i);
    // writeln(c[i]);
    // writeln(x[i]);
    c[i] := char(ord(c[i]) + ord(x[i]) - 48);
    c[i - 1] := char(((ord(c[i]) - 48) div 10) + 48);
    c[i] := char(((ord(c[i]) - 48) mod 10) + 48);
  end;
  for i := k downto k - y.Length + 1 do
  begin
    c[i] := char(ord(c[i]) + ord(y[i - k + y.Length]) - 48);
    c[i - 1] := char(ord(c[i - 1]) + ((ord(c[i]) - 48) div 10));
    c[i] := char(((ord(c[i]) - 48) mod 10) + 48);
  end;
  if test > 9 then k := 0 else k := 1;
  for i := k to k do
    write(c[i]);  
end;

begin
  readln(a);
  readln(b);
  test := ord(a[1]) + ord(b[1]) - 96;
  if a.Length > b.length then
  begin
    k := a.Length;
    setlength(c, k + 1);
    for i := 0 to k do
      c[i] := '0';
    sum(a, b, c);
  end
  else 
  begin
    k := b.Length;
    setlength(c, k + 1);
    for i := 0 to k do
      c[i] := '0';
    sum(b, a, c); 
  end;
  
end.
