program n03;
 	var
 		s, content: String;
 		f: text;
 		tmp: text;
begin
 	s := '12331231adads132213';

 	assign(f, 'file.txt');
 	append(f);
 	writeln(f, s);

 	assign(tmp, 'tmp.txt');
 	rewrite(tmp);
 	writeln(tmp, s);

 	reset(f);
 	while not Eof(f) do
	begin
		Readln(f, content);
		Writeln(tmp, content);
	end;

	reset(tmp);
	rewrite(f);
 	while not Eof(tmp) do
	begin
		Readln(tmp, content);
		Writeln(f, content);
	end;

 	close(f);
 	close(tmp);
 	erase(tmp);

end.
