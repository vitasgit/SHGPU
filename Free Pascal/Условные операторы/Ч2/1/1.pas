program n01;
	var
		a, b: Integer;
begin
	writeln('Введите два целых числа: ');
	readln(a, b);

	if a >= b then a := 0
	else
		begin
			a := a*a;
			b := b*b;
		end;

	writeln(a, ' ', b);
end.
