type
 massive = array of boolean;

procedure mas_max(var arr: massive; l: integer);
var
 i: integer;
begin
 setlength(arr, l + 1);
 for i := 0 to l do
 begin
  arr[i] := false;
 end;
end;

procedure mas_add(var arr: massive; a: integer);
begin
 if a < length(arr) then arr[a] := true;
end;

procedure mas_del(var arr: massive; a: integer);
begin
 if a < length(arr) then arr[a] := false;
end;

procedure mas_show(var arr: massive; a: integer);
var
 i: integer;
begin
 for i := 0 to length(arr) - 1 do
 begin
  if arr[i] then write(i, ' ');
 end;
 writeln;
end;

procedure read_array(var a: array of integer);
var
 i, l: integer;
begin
 write('Length: ');
 readln(l);
 setlength(a, l);
 for i := 0 to l - 1 do
 begin
  readln(a[i]);
 end;
end;

var
 a, i: integer;
 x: array of integer;
 arr: massive;

begin
 write('Enter max of massive: ');
 readln(a);
 mas_max(arr, a);
 writeln('Input array');
 read_array(x);
 for i := 0 to length(x) - 1 do mas_add(arr, x[i]);
 writeln('Delete array');
 read_array(x);
 for i := 0 to length(x) - 1 do mas_del(arr, x[i]);
 mas_show(arr, a);
end.
