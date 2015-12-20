Program OF2;
uses crt;
var f1,f2,f3:file of integer;
    n,i,j,a,b,c:integer;
begin
  clrscr;
  randomize;
  assign(f1,'Name1');
  rewrite(f1);
  assign(f2,'Name2');
  rewrite(f2);
  assign(f3,'Name3');
  rewrite(f3);
  {создадим 2 исходных файла с числами по возрастанию}
  write('Сколько чисел ввести в первый файл n=');
  readln(n);
  writeln('Содержание файла Name1:');
  a:=1;
  for i:=1 to n do
  begin
    a:=a+random(5);
    write(f1,a);
    write(a:4);
  end;
  writeln;
  writeln;
  write('Сколько чисел ввести во второй файл n=');
  readln(n);
  writeln('Содержание файла Name2:');
  a:=1;
  for i:=1 to n do
    begin
      a:=a+random(5);
      write(f2,a);
      write(a:4);
    end;
  writeln;
  writeln;
  reset(f1);
  reset(f2);
  i:=0;j:=0;
  {выберем первый элемент и запишем меньший в 3 файл}
  seek(f1,0);
  read(f1,a);
  seek(f2,0);
  read(f2,b);
  if a<b then write(f3,a) else write(f3,b);
  {выберем остальные}
  reset(f3);
  while(i<filesize(f1))or(j<filesize(f2)) do{пока не конец обоих файлов}
      begin
        if (i<filesize(f1))and(j<filesize(f2)) then{если оба файла не закончились}
        begin
          seek(f1,i);{читаем в обоих файлах}
          read(f1,a);
          seek(f2,j);
          read(f2,b);
          if a<b then {выбираем меньшее}
          begin
            seek(f3,filesize(f3)-1);{смотрим последний в 3 файле}
            read(f3,c);
            if a<>c then{если не такой же}
            begin
              seek(f3,filesize(f3)); {пишем число в конец}
              write(f3,a);
            end;
            inc(i); {к следующему в 1 файле}
         end
         else {тоже если второе меньше}
             begin
               seek(f3,filesize(f3)-1);
               read(f3,c);
               if b<>c then
               begin
                 seek(f3,filesize(f3));
                 write(f3,b);
               end;
               inc(j);
             end;
        end
        else if j>filesize(f2)-1 then{если второй кончился}
                begin
                  seek(f1,i);
                  read(f1,a);
                  seek(f3,filesize(f3)-1);
                  read(f3,c);
                  if a<>c then
                  begin
                    seek(f3,filesize(f3));
                    write(f3,a);
                  end;
                  inc(i);
                end
                else if i>filesize(f1)-1 then{если первый кончился}
                    begin
                      seek(f2,j);
                      read(f2,b);
                      seek(f3,filesize(f3)-1);
                      read(f3,c);
                      if b<>c then
                      begin
                        seek(f3,filesize(f3));
                        write(f3,b);
                      end;
                      inc(j);
                    end;
     end;
     close(f1);
     close(f2);
     reset(f3);
     writeln('Слияние файлов:');
     while not eof(f3) do
                        begin
                          read(f3,a);
                          write(a:4);
                        end;
                        close(f3);
                        readln
end.
