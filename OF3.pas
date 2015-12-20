procedure diff(f1, f2: text; var f3: text; s1, s2, s3: string);
var
 a1, a2, a3: array of integer;
 c, k, l1, l2, i, j: integer;
 error: boolean;
begin
  error := false;
  assign(f1, s1);
  assign(f2, s2);
  reset(f1);
  reset(f2);
  l1 := 0;
  l2 := 0;
  while not eof(f1) do
  begin
    read(f1, c);
    l1 := l1 + 1;
  end;
  while not eof(f2) do
    begin
      read(f2, c);
      l2 := l2 + 1;
    end;
    setlength(a1, l1);
    setlength(a2, l2);
    setlength(a3, l1);
    reset(f1);
    reset(f2);
    read(f1, a1[0]);
    read(f2, a2[0]);
    for i := 1 to l1 - 1 do
     begin
       read(f1, a1[i]);
       if a1[i] <= a1[i - 1] then error := true;
     end;
     for i := 1 to l2 - 1 do
       begin
         read(f2, a2[i]);
         if a2[i] <= a2[i - 1] then error := true;
       end;
       if error then
         begin
           writeln('All input files must be ordered!');
         end
         else
           begin
             i := 0;
             j := 0;
             k := 0;
             while i < l1 do
             begin
               if a1[i] < a2[j] then
               begin
                 a3[k] := a1[i];
                 i := i + 1;
                 k := k + 1;
               end
               else if a1[i] > a2[j] then
                 begin
                   if j < l2 then j := j + 1;
                 end
                 else
                   begin
                     if j < l2 then j := j + 1;
                     i := i + 1;
                   end;
             end;
             close(f1);
             close(f2);
             assign(f3, s3);
             rewrite(f3);
             write(f3, a3[0]);
             for i := 1 to l1 - 1 do
                     begin
                       if a3[i] > a3[i - 1] then
                       begin
                         write(f3, ' ', a3[i]);
                       end;
                     end;
                     close(f3);
    end;
end;

var
  f1, f2, f3: text;

begin
 diff(f1, f2, f3, 'of3_1.txt', 'of3_2.txt', 'of3_out.txt');
end.
