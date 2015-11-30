program Ekz6;

procedure lmax_and_w(f: text);
var
  i, lmax: integer;
  w, s: string;
  c: char;
begin
  lmax := 0;i := 0; s:='';
  while not eof(f) do
  begin
    read(f, c);
    if not (((ord(c) > 31) and (ord(c) < 48)) or ((ord(c) > 57) and (ord(c) < 65))) 
    then
    begin
      i := i + 1;
      s := s + c;
    end
    else 
    begin
      if i > lmax 
      then
      begin
        lmax := i;
        i := 0;
        w := s;
      end
      else
      begin
        i := 0;
        s := '';
      end;
    end;
  end;
  writeln(lmax);
  writeln(w);
end;

var
  f: text;
begin
  assign(f, 'Input.txt');
  reset(f);
  lmax_and_w(f);
  close(f);
end.
