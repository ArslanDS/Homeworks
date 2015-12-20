program OA5;

type
  massive = array of real;
  
var
  a, b: massive;
  n, m, i: integer;
  
procedure intersection(s1, s2: massive);
var
  i, k: integer;
begin
  k := 1;i := 1;
  while (i < s1.Length) and (k < s2.length) do
  begin
    if s1[i] = s2[k] then 
    begin
      write(s1[i], ' ');
      k := k + 1;i := i + 1;
    end
    else if s1[i] > s2[k] then k := k + 1
    else i := i + 1;
  end;
end;

begin 
  writeln('Count of array elements');
  readln(n);
  setlength(a, n);
  writeln('Elements of array');
  for i := 0 to n - 1 do 
    readln(a[i]);
  
  writeln('Count of array elements');
  readln(m);
  setlength(b, m);
  writeln('Elements of array');
  for i := 0 to m - 1 do 
    readln(b[i]); 
    
  intersection(a,b);
end.
