program calc;
	var
		a, b: Integer;
		diff, sum, product: Integer;
		division: Real;
begin
	writeln('Enter two numbers(a, b | b != 0): ');
	readln(a, b);

	sum := a + b;
	writeln('a + b = ', sum);

	diff := a - b;
	writeln('a - b = ', diff);

	product := a * b;
	writeln('a * b = ', product);

	division := a / b;
	writeln('a / b = ', division:0:2);
end.