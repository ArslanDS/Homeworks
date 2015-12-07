const
 n = 3;

type
 matrix = array[1..n,1..n] of integer;

procedure readMatrix(var A: matrix);
var i, j: integer;
begin
 for i := 1 to n do
  for j := 1 to n do readln(A[i,j]);
end;

procedure writeMatrix(var A: matrix);
var i, j: integer;
begin
 for i := 1 to n do
 begin
  for j := 1 to n do write(' ', A[i,j], ' ');
  writeln;
 end;
end;

procedure writeTranspMatrix(var A: matrix);
var i, j: integer;
begin
 for i := 1 to n do
 begin
  for j := 1 to n do write('|', A[j,i]);
  writeln;
 end;
end;

var
 A: matrix;

begin
 readMatrix(A);
 writeMatrix(A);
 writeln;
 writeTranspMatrix(A);
end.
