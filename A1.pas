program a1;
uses crt;
var a,b:string;
i,j,k,m:integer; c,d,x:array[1..10000] of integer;
begin
clrscr;
readln(a);
readln(b);
j:=length(a);
for i:=1 to length(a) do
begin
val(a[i],c[j],m); j:=j-1;
end;
j:=length(b);
for i:=1 to length(b) do
begin
val(b[i],d[j],m); j:=j-1;
end;
if length(a)<length(b) then k:=length(b) else k:=length(a);
k:=k+1;
for i:=1 to k do
x[i]:=0;
for i:=1 to k do
begin
x[i]:=c[i]+d[i]+x[i];
if x[i]>=10 then
begin
x[i+1]:=x[i+1]+1;
x[i]:=x[i] mod 10;
end;
end;
if x[k]=0 then k:=k-1;
for i:=k downto 1 do write(x[i]);
readkey;
end.
