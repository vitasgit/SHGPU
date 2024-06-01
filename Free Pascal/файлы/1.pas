program n01;
var
	f: file of integer;
	number, stop: integer;
begin
	stop := 5;
	assign(f, 'Newfile');
	rewrite(f);

	writeln('Введите числа: ');
	readln(number);
	while (number <> stop) do
	begin
		write(f, number);
		readln(number);
	end;

	close(f);
end.
