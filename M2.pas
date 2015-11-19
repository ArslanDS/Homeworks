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

procedure writeMinInLines(var A: matrix);
var i, j, min: integer;
begin
 for i := 1 to n do
 begin
  min := A[i,1];
  for j := 2 to n do
  begin
   if A[i,j] < min then min := A[i,j];
  end;
  writeln('min in line ', i, ': ', min);
 end
end;

var
 A: matrix;

begin
 readMatrix(A);
 writeMatrix(A);
 writeln;
 writeMinInLines(A);
end.
