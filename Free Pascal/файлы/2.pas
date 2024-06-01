program n02;
var
	f, f2: text;
	f_name, line: string;
begin
	writeln('Введите имя файла: ');
	readln(f_name);

	assign(f, 'OurFile.txt');
	assign(f2, f_name + '.txt');
	reset(f);
	rewrite(f2);

	while not eof(f) do
	begin
		readln(f, line);
		writeln(line);
		writeln(f2, line);
	end;

	close(f);
	close(f2);
end.
