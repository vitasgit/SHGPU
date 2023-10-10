program calc;
	var
		x, y: Real;
		arg: Real;
		a, b: Real;
		result: Real;
begin
	writeln('Enter two real numbers(x, y)');
	readln(x, y);

	arg := x + y;
	a := sin(arg) * cos(arg);
	b := sin(arg) + cos(arg) + sin(arg) / cos(arg);

	result := a / b;
	writeln('sin(x+y)*cos(x+y) / sin(x+y)+cos(x+y)+tg(x+y) = ', result:2:3);
	readln();
end.