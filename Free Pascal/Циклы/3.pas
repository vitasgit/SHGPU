program table;

var
  i, j: Integer;

begin
	for i := 1 to 10 do
		begin
			for j := 1 to 10 do
				begin
				    write(i * j:4);
				end;
			writeln;
		end;
end.
