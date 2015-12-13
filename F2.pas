function is_digit(chr: char): boolean;
begin
 result := ('0' <= chr) and (chr <= '9');
end;

function to_digit(chr: char): integer;
begin
 if is_digit(chr) then
 begin
  result := integer(chr) - integer('0');
 end
 else
 begin
  result := -1;
 end;
end;

function str_to_num(a: string): integer;
var
 i, multiplier, res: integer;
begin
 res := 0;
 multiplier := 1;
 for i := length(a) downto 1  do
 begin
  if is_digit(a[i]) then
  begin
   res := res + to_digit(a[i])*multiplier;
   multiplier := multiplier * 10;
  end;
 end;
 result := res;
end;

function get_sum(f: file of char; location: string): integer;
var
 s: string;
 a: char;
 sum: integer;
begin
 assign(f, location);
 reset(f);
 s := '';
 sum := 0;
 while not eof(f) do
 begin
  read(f, a);
  if (a <= '9') and (a >= '0') then
  begin
   s := s + a;
  end
  else
  begin
   sum := sum + str_to_num(s);
   s := '';
  end;
 end;
 get_sum := sum;
end;

var
 f: file of char;
 s: integer;

begin
 s := get_sum(f, 'numbers.txt');
 writeln(s);
end.
