program S2;
const nmax=1000;
type index=1..nmax;
myset=array[index] of boolean;
var a, b, c: myset; startind, endind: index; i:integer;

function isbelong(ind:index; ms:myset): boolean;
  begin
    isbelong:=ms[ind]; 
  end;
 
function define (startind:index; endind:index; empty: boolean;false:myset);
  var res:myset; i:integer;
  begin
    for i:= 1 to nmax do
    begin 
      res[i]:=false;
    end;
    for i:= startind to endind do 
      begin
        res[i]:= not empty;
      end;
      define:=res;
  end;

function association ( ms1:myset; ms2 : myset):myset;
  var res: myset; i:integer;
  begin
    for i:=1 to nmax do 
    begin 
      res[i]:= (ms1[i]= true) or ( ms2[i]=true);
    end;
association:= res;
  end;

function intersection (ms1:myset; ms:myset):myset;
  var res:myset; i:=integer;
  begin
    for i:=1 to nmax do 
    begin
      res[i] := ( ms1[i]=true) and (ms2[i]=true);
    end;
    intersection:=res;
  end;
  
function difference (ms1:myset; ms2: myset):myset;
 var res:myset; i:integer;
  begin
    for i:=1 to nmax do 
    begin
      res[i]:= (ms1[i]=true) and (ms2[i]=false);
    end;
    difference:=res;
  end;

function complement (ms:myset):myset;
 var res:myset; i: integer;
  begin
    for i:=1 to nmax do
    begin
      res[i]:= not ms[i];
    end;
    complement:= res;
  end;

function symmetricdif (ms1:myset; ms2:myset): myset;
 var res: myset; i:integer;
  begin
    for i:=1 to nmax do 
    begin 
      res[i]:= not (ms1[i] = true) and (ms2[i] = true);
    end;
    symmetricdif :=res;
  end;

function sieveofEra (n:index):myset;
 var res:myset; i, j:index;
  begin
    res:=define (2,n); 
    i:= 2;
    while i<=n do
    begin 
      j:=2;
      while i*j <= n do
      begin
        res:=difference (res, define (i*j, i*j));
        inc(j);
      end;
      inc(i);
    end;
    sieveofEra:=res;
  end;
begin  
end.
 
