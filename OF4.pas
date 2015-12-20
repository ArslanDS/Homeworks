program OF3;

type
  freal = file of real;

procedure intersection(x, y: freal; var z: freal);

var
  a, b: real;

begin
  read(x, a);
  read(y, b);
  while (not eof(x)) and (not eof(y)) do
  begin
    if (a = b) then
    begin
      write(z, a);
      read(x, a);
      read(y, b);
    end
    else
    begin
      read(x, a);
    end;
  end;
  
  if not eof(y) then  
  begin
    if (a = b) then
    begin
      write(z, a);
    end
    else if (a < b) then
    begin
      while not eof(y) do
      begin
        read(y, b);
        if (a = b) then 
        begin
          write(z, a);
        end;
      end;
    end;
  end
  else
  begin
    if (a = b) then
    begin
      write(z, a);
    end
  end;
end;

var
  f1, f2, f3: freal;

begin
  assign(f1, 'Input1.dat');
  assign(f2, 'Input2.dat');
  assign(f3, 'Output.dat');
  reset(f1);
  reset(f2);
  rewrite(f3);
  intersection(f1, f2, f3);
  close(f1);
  close(f2);
  close(f3);
end.
