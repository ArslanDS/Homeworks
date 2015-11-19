const
 n = 4;

var
 a1, a2: array[1..n] of integer;
 i, j: integer;

begin
 writeln('First array:');
 for i := 1 to n do
 begin
  readln(a1[i]);
 end;
 writeln('Second array:');
 for i := 1 to n do
 begin
  readln(a2[i]);
 end;

 writeln('Same elements:');
 for i := 1 to n do
 begin
  j := 1;
  while a1[j]<=a2[i] do
  begin
   if a1[j]=a2[i] then
   begin
    write(a1[j], ', ');
   end;
  if j < n then j := j + 1 else break;
  end;
 end;
end.
