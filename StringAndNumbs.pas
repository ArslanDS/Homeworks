program conversions;

var
  a: array of char;
  i, n: integer;

function is_digit(c: char): boolean;
begin
  is_digit := (c <= '9') and (c >= '0');
end;

function conversion(c: char): integer;
begin
  conversion := (is_digit(c) ? integer(c) - integer('0') : -1);
end;

function converting(a: array of char; n: integer): integer;
var
  i, x, exp: integer;
begin
  x := 0; 
  exp := 1;
  for i := n - 1 downto 0 do
  begin
    x := x + conversion(a[i]) * exp;
    exp := exp * 10;
  end;
  converting := x;
end;

begin
  readln(n);
  setlength(a, n);
  for i := 0 to n - 1 do 
  begin
    readln(a[i]);
    if not is_digit(a[i]) 
      then
    begin
      writeln(-1); 
      exit; 
    end;
  end;
  writeln(converting(a, n));
end.
