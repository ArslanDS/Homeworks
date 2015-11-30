program Ekz5;

const
  n = 2;

type
  matrix = array[1..n, 1..n] of integer;

var
  a: matrix;

procedure ReadMatrix();
var
  i, j: integer;
begin
  for i := 1 to n do
    for j := 1 to n do
      readln(a[i, j]);
end;

procedure Magicbox(a: matrix);
var
  i, j, k, line, column: integer;
  magic: boolean;
begin
  for i := 1 to n do 
  begin
    for j := 1 to n do 
    begin
      if (a[i, j] < n + 1) and (a[i, j] > 0) then 
      begin
        line := 0;column := 0;
        for k := 1 to n do 
        begin
          line := line + a[k, j];
          column := column + a[i, k];
        end; 
        if line = column then magic := true
        else  magic := false;       
      end
      else magic := false;         
      if magic = false then break;
    end;   
    if magic = false then break;
  end;
  if magic = true then writeln('It is magic box')
  else writeln('It is not magic box');
end;

begin
  ReadMatrix();
  magicbox(a);
end.
