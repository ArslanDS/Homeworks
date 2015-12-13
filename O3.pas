program O3;

const
  N = 10;

type
  arr_int = array [1..N] of integer;

var
  a: arr_int;
  i: integer;

procedure inclusion_sort(var a: arr_int);
var
  i, ind: integer;
begin
  for i := 1 to n do
  begin
    ind := i;
    while (ind > 1) and (a[ind] < a[ind - 1]) do
    begin
      a[ind] := a[ind] + a[ind - 1];
      a[ind - 1] := a[ind] - a[ind - 1];
      a[ind] := a[ind] - a[ind - 1];
      ind := ind - 1;
    end;
  end;
end;

begin
  for i := 1 to N do
  begin
    readln(a[i]);
  end;
  inclusion_sort(a);
end.
