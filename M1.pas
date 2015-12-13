program Ekz4;

const
  n = 4;
  m = 3;
  
type    
  matrix = array[1..m, 1..n] of real;
  
var   
  a, b: matrix;
  
procedure ReadMatrix();
var 
  i, j: integer;
begin
  for i := 1 to m do    
        for j := 1 to n do 
      read(a[i, j]);
end;

procedure SaddleFounding(a, b: matrix);
var 
  i, j: integer; 
  lmin, lmax, cmin, cmax: real;
begin
    for i := 1 to n do 
    begin
    cmin := a[1, i];cmax := cmin;
    for j := 2 to m do 
    begin
      if a[j, i] < cmin then cmin := a[j, i];
      if a[j, i] > cmax then cmax := a[j, i];
    end; 
    for j := 1 to m do   
    begin
      if a[j, i] = cmin then b[j, i] := b[j, i] + 1;
      if a[j, i] = cmax then b[j, i] := b[j, i] - 3;
    end;
  end;
  for i := 1 to m do 
    begin
    lmin := a[i, 1];lmax := lmin;
    for j := 2 to n do 
        begin
      if a[i, j] < lmin then lmin := a[i, j];
      if a[i, j] > lmax then lmax := a[i, j];
    end;
    for j := 1 to n do   
        begin
      if a[i, j] = lmin then b[i, j] := b[i, j] - 3;
      if a[i, j] = lmax then b[i, j] := b[i, j] + 1;
            
      if (b[i, j] = 2) or (b[i, j] = -6) or (b[i, j] = -4) then write(a[i, j], '  ') 
      else write('*', '  ');
    end;
    writeln();
  end;
end;

begin
  ReadMatrix();
  SaddleFounding(a, b);
end.
