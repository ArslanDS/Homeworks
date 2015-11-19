const
	n1 = 10;
	n2 = 4;

var
	arr: array[1..n1] of integer;
	smallArr: array[1..n2] of integer;
	i, j, x, res: integer;

begin
	writeln('array:');
	for i := 1 to n1 do
	begin
		readln(arr[i]);
	end;
	writeln('small array:');
	for i := 1 to n2 do
	begin
		readln(smallArr[i]);
	end;

	for i := 1 to (n1 - n2 + 1) do
	begin
		res := i;
		for j := 1 to n2 do
		begin
			if arr[i + j - 1] <> smallArr[j] then
			begin
				res := -1;
			end;
		end;
		if res = i then break;
	end;
	writeln('result = ', res);
end.
