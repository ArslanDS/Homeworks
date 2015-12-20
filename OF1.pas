function include(f1, f2: text; s1, s2: string): boolean;
var
 c1, c2: char;
 res: boolean;
 i: integer;
begin
 assign(f1, s1);
 assign(f2, s2);
 reset(f1);
 reset(f2);
 while not eof(f1) do
 begin
  read(f1, c1);
  read(f2, c2);
  if (c1 = c2) and (eof(f2)) then
  begin
   res := true;
   break;
  end
  else if c1 < c2 then break
  else if c2 < c1 then reset(f2);
 end;
 include := res; 
end;

var
 f1, f2: text;

begin
 writeln(include(f1, f2, 'of1_1.txt', 'of1_2.txt'))
end.
