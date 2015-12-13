program O2;

const
  N = 10;

type
  arr_int = array [1..N] of integer;

var
  a: arr_int;
  i: integer;

procedure search_max_sort(var a: arr_int);
var
  i, j, max, ind: integer;
begin
  for i := N downto 2 do
  begin
    max := a[i];
    for j := i - 1 downto 1 do
    begin
      if (max < a[j]) then
      begin
        max := a[j];
        ind := j;
      end;
    end;
    if (max > a[i]) then
    begin
      a[ind] := a[i] + a[ind];
      a[i] := a[ind] - a[i];
      a[ind] := a[ind] - a[i];
    end;
  end;
end;

begin
  for i := 1 to N do
  begin
    readln(a[i]);
  end;
  search_max_sort(a);
  for i := 1 to N do
  begin
    writeln(a[i]);
  end;
end.
