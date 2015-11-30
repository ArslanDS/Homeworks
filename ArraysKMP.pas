{Алгоритм Кнута - Морриса - Пратта для поиска подстроки в строке}

var
  F: array of Integer;
  k, i, result: integer;
  pattern, str: string;
begin
  readln(pattern);
  readln(str);
  setlength(F, 1 + length(pattern));
  F[1] := 0;
  k := 0;
  for i := 2 to Length(pattern) do
  begin
    while (k > 0) and (pattern[k+1] <> pattern[i]) do
      k := F[k];
    if pattern[k+1] = pattern[i] then
      inc(k);
    F[i] := k;
  end;
  k := 0;
  for i := 1 to length(str) do
   begin
    while (k > 0) and (pattern[k+1] <> str[i]) do
      k := F[k];
    if pattern[k+1] = str[i] Then
      inc(k);
    if k = length(pattern) Then
    begin
      result := i-length(pattern)+1;
      break;
    end;
  end;
  writeln(result);
end.
