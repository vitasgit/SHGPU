program n02;
var
	num, stop, count, pass: Integer;

begin
	stop := 3;
	pass := 9;
	count := 0;
	
	writeln('Введите числа:');
	readln(num);

	while num <> stop do
		begin
			if num <> pass then count := count + 1;
			readln(num);
		end;

	writeln('Кол-во попыток ввода: ', count);
end.