const N = 20;
type arr = array[1..N] of integer;
var
    a: arr;
    i: byte;
    p,q,e: integer;
 
procedure fill(var b: arr; min,max: integer);
    var k: byte;
    begin
        randomize;
        for k:=1 to N do b[k] := random(max-min) + min;
    end;
 
procedure search(var c: arr; elem: integer);
    var m,i,j: integer;
    begin
        m := N div 2;
        i := 1;
        j := N;
        while (c[m] <> elem) and (i <= j) do begin
            if elem > c[m] then i := m + 1
            else j := m - 1;
            m := (i+j) div 2;
        end;
        if i > j then writeln('No')
        else writeln('Yes');
    end;
 
procedure sort(c: arr; elem: integer);
    var j,k,m,id: byte;
    begin
        m := N;
        while m > 1 do begin
            id := 1;
            for j := 2 to m do
                if c[j] > c[id] then id := j;
            k := c[id];
            c[id] := c[m];
            c[m] := k;
            m := m - 1;
        end;
        search(c,elem);
    end;
 
begin
    write('Min: '); readln(p);
    write('Max: '); readln(q);
    write('Element: '); readln(e);
    fill(a, p,q);
    sort(a, e);
    for i:=1 to N do write(a[i],' ');
    writeln;
end.

