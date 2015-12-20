program OA3;

const
  CN = 20;
  
type
  tArr = array [1..CN] of real;

var
  i, n1, n2, n3: integer;
  arr1, arr2, arr3: tArr;

procedure subArrays(n1, n2: integer; arr1, arr2: tArr; var n3: integer; var arr3: tArr);
var
  k, i: integer;
begin
  n3 := 0;
  k := 1;
  for i := 1 to n1 do
  begin
    while (arr2[k] < arr1[i]) and (k < n2) do
      inc(k);
    if arr2[k] <> arr1[i] then
    begin
      inc(n3);
      arr3[n3] := arr1[i];
    end;
  end;
end;

begin
  readln(n1);
  for i := 1 to n1 do
    read(arr1[i]);
  readln;
  readln(n2);
  for i := 1 to n2 do
    read(arr2[i]);
  subArrays(n1, n2, arr1, arr2, n3, arr3);
  for i := 1 to n3 do
    write(arr3[i], ' ');
end.
