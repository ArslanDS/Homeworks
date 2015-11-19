program tablfunc_1;
var a, b, h, y, x, t, p : real;
    n, j, i : integer;
    mas : array [,] of real;
    
function count (a, x : real): real;
begin
  count := ((1-a)/(1+x*x))*sin(a*a+a*x+2);
end;
function ksi (mas : array [,] of real; i, n : integer): real;
var j : integer;
begin
  for j := 2 to n do
  begin
    if mas[0,i] < (mas[j,i])*(mas[j,i]) then
    begin
      t := (mas[j,i])*(mas[j,i]);
    end;
  end;
 ksi := mas[0,i];
end;

function psi (mas : array [,] of real; i, n : integer): real;
var j : integer;
begin
  for j := 1 to n do
  begin
    if mas[0,i] < (mas[j,i])*(mas[j,i]) then
    begin
      p := (mas[j,i])*(mas[j,i]);
    end;
  end;
  psi := mas[0,i];
end;
begin
  readln(h, b, n);
  setlength(mas,n+2,4);
  for i := 1 to 3 do
  begin
    readln(a);
    for j := 1 to n do
    begin
      x := b + j*h;
      mas[j,i] := count(a,x);
      writeln('y(',j,') =', mas[j,i]);
    end;
    mas[n+1,i] := ksi(mas, i, n);
    mas[0,i] := psi(mas, i, n);
    writeln(mas[n+1,i]);
    writeln(mas[0,i]);
    end;
end.
