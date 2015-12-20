const
    N = 7;
var
    arr1,arr2: array[1..N] of integer;
    arr3: array[1..N+N] of integer;
    i,j,k,m: byte;
begin
    writeln('Заполните первый массив:');
    for i := 1 to N do
        read(arr1[i]);
 
    writeln('Заполните второй массив:');
    for i := 1 to N do
        read(arr2[i]);
 
    i := 1; j := 1; k := 1;
    while (i <= N) and (j <= N) do begin
        if arr1[i] < arr2[j] then begin
            arr3[k] := arr1[i];
            i := i + 1
        end
        else begin
            arr3[k] := arr2[j];
            j := j + 1
        end;
        k := k + 1;
    end;
 
    while i <= N do begin
        arr3[k] := arr1[i];
        i := i + 1;
        k := k + 1
    end;
 
    while j <= N do begin
        arr3[k] := arr1[j];
        j := i + 1;
        k := k + 1
    end;
 
    writeln;
    for i := 1 to N+N do
        write(arr3[i]:4);
 
end.	
